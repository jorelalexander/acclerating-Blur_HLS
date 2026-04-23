#include "blur_accel.h"

template <int K>
static void convolve_fixed(
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

void blur_accel_box3(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    const int kernel[3][3] = {
        {1, 1, 1},
        {1, 1, 1},
        {1, 1, 1}
    };

    convolve_fixed<3>(input, output, width, height, kernel, 9);
}

void blur_accel_box5(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    const int kernel[5][5] = {
        {1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1}
    };

    convolve_fixed<5>(input, output, width, height, kernel, 25);
}

void blur_accel_gaussian3(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    const int kernel[3][3] = {
        {1, 2, 1},
        {2, 4, 2},
        {1, 2, 1}
    };

    convolve_fixed<3>(input, output, width, height, kernel, 16);
}

void blur_accel_gaussian5(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    const int kernel[5][5] = {
        {1,  4,  6,  4, 1},
        {4, 16, 24, 16, 4},
        {6, 24, 36, 24, 6},
        {4, 16, 24, 16, 4},
        {1,  4,  6,  4, 1}
    };

    convolve_fixed<5>(input, output, width, height, kernel, 256);
}