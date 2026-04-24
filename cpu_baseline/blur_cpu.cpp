#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <chrono>
#include <cstdint>
#include <iomanip>
#include <algorithm>

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

static bool write_pgm(const std::string &filename,
                      const std::vector<uint8_t> &image,
                      int width,
                      int height) {
    std::ofstream fout(filename, std::ios::binary);
    if (!fout) {
        std::cerr << "Error: cannot open output file: " << filename << "\n";
        return false;
    }

    fout << "P5\n" << width << " " << height << "\n255\n";
    fout.write(reinterpret_cast<const char*>(image.data()), image.size());

    return static_cast<bool>(fout);
}

static std::string to_lower_copy(std::string s) {
    std::transform(s.begin(), s.end(), s.begin(),
                   [](unsigned char c) { return static_cast<char>(std::tolower(c)); });
    return s;
}

static bool get_kernel(const std::string &filter,
                       int kernel_size,
                       std::vector<int> &kernel,
                       int &divisor) {
    kernel.clear();
    divisor = 1;

    std::string f = to_lower_copy(filter);

    if (f == "box" && kernel_size == 3) {
        kernel = {
            1, 1, 1,
            1, 1, 1,
            1, 1, 1
        };
        divisor = 9;
        return true;
    }

    if (f == "box" && kernel_size == 5) {
        kernel = {
            1, 1, 1, 1, 1,
            1, 1, 1, 1, 1,
            1, 1, 1, 1, 1,
            1, 1, 1, 1, 1,
            1, 1, 1, 1, 1
        };
        divisor = 25;
        return true;
    }

    if (f == "gaussian" && kernel_size == 3) {
        kernel = {
            1, 2, 1,
            2, 4, 2,
            1, 2, 1
        };
        divisor = 16;
        return true;
    }

    if (f == "gaussian" && kernel_size == 5) {
        kernel = {
            1,  4,  6,  4, 1,
            4, 16, 24, 16, 4,
            6, 24, 36, 24, 6,
            4, 16, 24, 16, 4,
            1,  4,  6,  4, 1
        };
        divisor = 256;
        return true;
    }

    return false;
}

static void apply_convolution_cpu(const std::vector<uint8_t> &input,
                                  std::vector<uint8_t> &output,
                                  int width,
                                  int height,
                                  const std::vector<int> &kernel,
                                  int kernel_size,
                                  int divisor) {
    output = input; // keep border pixels unchanged

    if (width < kernel_size || height < kernel_size) {
        return;
    }

    int radius = kernel_size / 2;

    for (int y = radius; y < height - radius; y++) {
        for (int x = radius; x < width - radius; x++) {
            int sum = 0;

            for (int ky = -radius; ky <= radius; ky++) {
                for (int kx = -radius; kx <= radius; kx++) {
                    int pixel = input[(y + ky) * width + (x + kx)];
                    int coeff = kernel[(ky + radius) * kernel_size + (kx + radius)];
                    sum += pixel * coeff;
                }
            }

            output[y * width + x] = static_cast<uint8_t>(sum / divisor);
        }
    }
}

static std::string escape_json(const std::string &s) {
    std::string out;
    for (size_t i = 0; i < s.size(); i++) {
        char c = s[i];
        if (c == '\\') out += "\\\\";
        else if (c == '"') out += "\\\"";
        else if (c == '\n') out += "\\n";
        else if (c == '\r') out += "\\r";
        else if (c == '\t') out += "\\t";
        else out += c;
    }
    return out;
}

static bool write_cpu_summary_json(const std::string &json_file,
                                   const std::string &input_file,
                                   const std::string &output_file,
                                   const std::string &filter,
                                   int kernel_size,
                                   int divisor,
                                   int width,
                                   int height,
                                   double elapsed_ms) {
    std::ofstream fout(json_file.c_str());
    if (!fout) {
        std::cerr << "Error: cannot open JSON summary file: " << json_file << "\n";
        return false;
    }

    double pixels = static_cast<double>(width) * static_cast<double>(height);
    double throughput_mpixels_per_s =
        (elapsed_ms > 0.0) ? (pixels / 1e6) / (elapsed_ms / 1000.0) : 0.0;

    fout << std::fixed << std::setprecision(6);
    fout << "{\n";
    fout << "  \"implementation\": \"cpu\",\n";
    fout << "  \"filter\": \"" << escape_json(filter) << "\",\n";
    fout << "  \"kernel_size\": " << kernel_size << ",\n";
    fout << "  \"divisor\": " << divisor << ",\n";
    fout << "  \"input_file\": \"" << escape_json(input_file) << "\",\n";
    fout << "  \"output_file\": \"" << escape_json(output_file) << "\",\n";
    fout << "  \"width\": " << width << ",\n";
    fout << "  \"height\": " << height << ",\n";
    fout << "  \"pixels\": " << static_cast<long long>(pixels) << ",\n";
    fout << "  \"runtime_ms\": " << elapsed_ms << ",\n";
    fout << "  \"throughput_mpixels_per_s\": " << throughput_mpixels_per_s << "\n";
    fout << "}\n";

    return true;
}

int main(int argc, char *argv[]) {
    if (argc < 5 || argc > 6) {
        std::cerr << "Usage: blur_cpu <input.pgm> <output.pgm> <filter> <kernel_size> [summary.json]\n";
        std::cerr << "  filter      : box | gaussian\n";
        std::cerr << "  kernel_size : 3 | 5\n";
        return 1;
    }

    std::string input_file   = argv[1];
    std::string output_file  = argv[2];
    std::string filter       = to_lower_copy(argv[3]);
    int kernel_size          = std::atoi(argv[4]);
    std::string summary_file = (argc == 6) ? argv[5] : "";

    if (!((filter == "box" || filter == "gaussian") &&
          (kernel_size == 3 || kernel_size == 5))) {
        std::cerr << "Error: valid combinations are:\n";
        std::cerr << "  box 3\n";
        std::cerr << "  box 5\n";
        std::cerr << "  gaussian 3\n";
        std::cerr << "  gaussian 5\n";
        return 1;
    }

    std::vector<int> kernel;
    int divisor = 1;
    if (!get_kernel(filter, kernel_size, kernel, divisor)) {
        std::cerr << "Error: failed to build kernel.\n";
        return 1;
    }

    std::vector<uint8_t> input_image;
    std::vector<uint8_t> output_image;
    int width = 0, height = 0;

    if (!read_pgm(input_file, input_image, width, height)) {
        return 1;
    }

    auto start = std::chrono::high_resolution_clock::now();
    apply_convolution_cpu(input_image, output_image, width, height,
                          kernel, kernel_size, divisor);
    auto end = std::chrono::high_resolution_clock::now();

    std::chrono::duration<double, std::milli> elapsed_ms = end - start;

    if (!write_pgm(output_file, output_image, width, height)) {
        return 1;
    }

    std::cout << "CPU blur finished.\n";
    std::cout << "Filter     : " << filter << "\n";
    std::cout << "Kernel     : " << kernel_size << "x" << kernel_size << "\n";
    std::cout << "Image size : " << width << " x " << height << "\n";
    std::cout << "Runtime    : " << elapsed_ms.count() << " ms\n";
    std::cout << "Output     : " << output_file << "\n";

    if (!summary_file.empty()) {
        if (!write_cpu_summary_json(summary_file, input_file, output_file,
                                    filter, kernel_size, divisor,
                                    width, height, elapsed_ms.count())) {
            return 1;
        }
        std::cout << "Summary JSON: " << summary_file << "\n";
    }

    return 0;
}