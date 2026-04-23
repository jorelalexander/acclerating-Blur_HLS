#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <cstring>
#include <cstdint>

#include "blur_accel.h"

typedef void (*blur_fn_t)(
    uint8_t [MAX_HEIGHT][MAX_WIDTH],
    uint8_t [MAX_HEIGHT][MAX_WIDTH],
    int,
    int
);

static const int BOX3_KERNEL[3][3] = {
    {1, 1, 1},
    {1, 1, 1},
    {1, 1, 1}
};

static const int BOX5_KERNEL[5][5] = {
    {1, 1, 1, 1, 1},
    {1, 1, 1, 1, 1},
    {1, 1, 1, 1, 1},
    {1, 1, 1, 1, 1},
    {1, 1, 1, 1, 1}
};

static const int GAUSSIAN3_KERNEL[3][3] = {
    {1, 2, 1},
    {2, 4, 2},
    {1, 2, 1}
};

static const int GAUSSIAN5_KERNEL[5][5] = {
    {1,  4,  6,  4, 1},
    {4, 16, 24, 16, 4},
    {6, 24, 36, 24, 6},
    {4, 16, 24, 16, 4},
    {1,  4,  6,  4, 1}
};

static void skip_comments(std::ifstream &fin) {
    fin >> std::ws;
    while (fin.peek() == '#') {
        std::string line;
        std::getline(fin, line);
        fin >> std::ws;
    }
}

static bool read_pgm(const std::string &filename,
                     std::vector<uint8_t> &image,
                     int &width,
                     int &height) {
    std::ifstream fin(filename, std::ios::binary);
    if (!fin) {
        std::cerr << "Error: cannot open input file: " << filename << "\n";
        return false;
    }

    std::string magic;
    fin >> magic;
    if (magic != "P5") {
        std::cerr << "Error: only binary PGM (P5) is supported.\n";
        return false;
    }

    skip_comments(fin);
    fin >> width;
    skip_comments(fin);
    fin >> height;
    skip_comments(fin);

    int maxval = 0;
    fin >> maxval;
    fin.get();

    if (maxval != 255) {
        std::cerr << "Error: only 8-bit PGM files are supported.\n";
        return false;
    }

    image.resize(width * height);
    fin.read(reinterpret_cast<char*>(image.data()), image.size());

    if (!fin) {
        std::cerr << "Error: failed to read image data.\n";
        return false;
    }

    return true;
}

template <int K>
static void reference_convolve(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height,
    const int kernel[K][K],
    int divisor
) {
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            output[y][x] = input[y][x];
        }
    }

    if (width < K || height < K) {
        return;
    }

    const int radius = K / 2;

    for (int y = radius; y < height - radius; y++) {
        for (int x = radius; x < width - radius; x++) {
            int sum = 0;

            for (int ky = 0; ky < K; ky++) {
                for (int kx = 0; kx < K; kx++) {
                    int iy = y + ky - radius;
                    int ix = x + kx - radius;
                    sum += input[iy][ix] * kernel[ky][kx];
                }
            }

            output[y][x] = static_cast<uint8_t>(sum / divisor);
        }
    }
}

int main() {
    const char* case_name = "";
    blur_fn_t blur_fn = 0;
    int kernel_size = 0;
    bool use_gaussian = false;

#if defined(TOP_BOX3)
    case_name = "box3";
    blur_fn = blur_accel_box3;
    kernel_size = 3;
    use_gaussian = false;
#elif defined(TOP_BOX5)
    case_name = "box5";
    blur_fn = blur_accel_box5;
    kernel_size = 5;
    use_gaussian = false;
#elif defined(TOP_GAUSSIAN3)
    case_name = "gaussian3";
    blur_fn = blur_accel_gaussian3;
    kernel_size = 3;
    use_gaussian = true;
#elif defined(TOP_GAUSSIAN5)
    case_name = "gaussian5";
    blur_fn = blur_accel_gaussian5;
    kernel_size = 5;
    use_gaussian = true;
#else
    std::cerr << "Error: no top-function selection macro defined.\n";
    return 1;
#endif

    const char* input_files[] = {
        "input_256.pgm",
        "input_512.pgm",
        "input_1024.pgm"
    };

    int total_mismatches = 0;

    for (int file_idx = 0; file_idx < 3; file_idx++) {
        static uint8_t input[MAX_HEIGHT][MAX_WIDTH];
        static uint8_t output_hls[MAX_HEIGHT][MAX_WIDTH];
        static uint8_t output_ref[MAX_HEIGHT][MAX_WIDTH];

        std::memset(input, 0, sizeof(input));
        std::memset(output_hls, 0, sizeof(output_hls));
        std::memset(output_ref, 0, sizeof(output_ref));

        std::vector<uint8_t> image;
        int width = 0, height = 0;

        if (!read_pgm(input_files[file_idx], image, width, height)) {
            return 1;
        }

        if (width > MAX_WIDTH || height > MAX_HEIGHT) {
            std::cerr << "Error: image exceeds MAX_WIDTH/MAX_HEIGHT for "
                      << input_files[file_idx] << "\n";
            return 1;
        }

        for (int y = 0; y < height; y++) {
            for (int x = 0; x < width; x++) {
                input[y][x] = image[y * width + x];
            }
        }

        if (!use_gaussian && kernel_size == 3) {
            reference_convolve<3>(input, output_ref, width, height, BOX3_KERNEL, 9);
        } else if (!use_gaussian && kernel_size == 5) {
            reference_convolve<5>(input, output_ref, width, height, BOX5_KERNEL, 25);
        } else if (use_gaussian && kernel_size == 3) {
            reference_convolve<3>(input, output_ref, width, height, GAUSSIAN3_KERNEL, 16);
        } else if (use_gaussian && kernel_size == 5) {
            reference_convolve<5>(input, output_ref, width, height, GAUSSIAN5_KERNEL, 256);
        } else {
            std::cerr << "Error: invalid case selection.\n";
            return 1;
        }

        blur_fn(input, output_hls, width, height);

        int mismatches_this_file = 0;

        for (int y = 0; y < height; y++) {
            for (int x = 0; x < width; x++) {
                if (output_ref[y][x] != output_hls[y][x]) {
                    mismatches_this_file++;
                    total_mismatches++;

                    if (mismatches_this_file <= 10) {
                        std::cout << "[" << case_name << "] Mismatch in "
                                  << input_files[file_idx]
                                  << " at (" << y << ", " << x << "): "
                                  << "ref=" << static_cast<int>(output_ref[y][x])
                                  << ", hls=" << static_cast<int>(output_hls[y][x])
                                  << "\n";
                    }
                }
            }
        }

        if (mismatches_this_file == 0) {
            std::cout << "[PASS] " << case_name
                      << " on " << input_files[file_idx] << "\n";
        } else {
            std::cout << "[FAIL] " << case_name
                      << " on " << input_files[file_idx]
                      << " mismatches=" << mismatches_this_file << "\n";
        }
    }

    if (total_mismatches == 0) {
        std::cout << "TEST PASSED: " << case_name
                  << " passed all input images.\n";
        return 0;
    } else {
        std::cout << "TEST FAILED: " << case_name
                  << " total mismatches = " << total_mismatches << "\n";
        return 1;
    }
}