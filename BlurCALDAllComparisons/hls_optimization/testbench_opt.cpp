#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <cstring>
#include <cstdint>

#include "blur_opt.h"

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

static void reference_box3(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            output[y][x] = input[y][x];
        }
    }

    if (width < 3 || height < 3) {
        return;
    }

    for (int y = 1; y < height - 1; y++) {
        for (int x = 1; x < width - 1; x++) {
            int sum = 0;

            for (int ky = 0; ky < 3; ky++) {
                for (int kx = 0; kx < 3; kx++) {
                    int iy = y + ky - 1;
                    int ix = x + kx - 1;
                    sum += input[iy][ix] * BOX3_KERNEL[ky][kx];
                }
            }

            output[y][x] = static_cast<uint8_t>(sum / 9);
        }
    }
}

int main() {
    const char* case_name = "";
    blur_fn_t blur_fn = 0;

#if defined(OPT_BASE)
    case_name = "opt_base";
    blur_fn = blur_opt_base;
#elif defined(OPT_BITWIDTH)
    case_name = "opt_bitwidth";
    blur_fn = blur_opt_bitwidth;
#elif defined(OPT_PIPELINE)
    case_name = "opt_pipeline";
    blur_fn = blur_opt_pipeline;
#elif defined(OPT_PIPELINE_UNROLL)
    case_name = "opt_pipeline_unroll";
    blur_fn = blur_opt_pipeline_unroll;
#elif defined(OPT_PIPELINE_UNROLL_PARTITION)
    case_name = "opt_pipeline_unroll_partition";
    blur_fn = blur_opt_pipeline_unroll_partition;
#elif defined(OPT_DATAFLOW)
    case_name = "opt_dataflow";
    blur_fn = blur_opt_dataflow;
#elif defined(OPT_FINAL)
    case_name = "opt_final";
    blur_fn = blur_opt_final;
#else
    std::cerr << "Error: no optimization macro defined.\n";
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

        reference_box3(input, output_ref, width, height);
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
