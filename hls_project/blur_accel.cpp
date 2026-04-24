#include "blur_accel.h"

template <int K, typename SumT>
static void convolve_linebuffer(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height,
    const int kernel[K][K],
    int divisor
) {
    uint8_t linebuf[(K > 1) ? (K - 1) : 1][MAX_WIDTH] = {};
    uint8_t window[K][K] = {};

    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            output[y][x] = input[y][x];
        }
    }

    if (width < K || height < K) {
        return;
    }

    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            for (int r = 0; r < K; r++) {
                for (int c = 0; c < K - 1; c++) {
                    window[r][c] = window[r][c + 1];
                }
            }

            for (int r = 0; r < K - 1; r++) {
                window[r][K - 1] = linebuf[K - 2 - r][x];
            }
            window[K - 1][K - 1] = input[y][x];

            for (int r = K - 2; r >= 1; r--) {
                linebuf[r][x] = linebuf[r - 1][x];
            }
            linebuf[0][x] = input[y][x];

            if (y >= K - 1 && x >= K - 1) {
                SumT sum = 0;
                for (int ky = 0; ky < K; ky++) {
                    for (int kx = 0; kx < K; kx++) {
                        sum += static_cast<SumT>(window[ky][kx]) *
                               static_cast<SumT>(kernel[ky][kx]);
                    }
                }

                const int out_y = y - (K / 2);
                const int out_x = x - (K / 2);
                output[out_y][out_x] = static_cast<uint8_t>(sum / divisor);
            }
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

    convolve_linebuffer<3, int>(input, output, width, height, kernel, 9);
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

    convolve_linebuffer<5, int>(input, output, width, height, kernel, 25);
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

    convolve_linebuffer<3, int>(input, output, width, height, kernel, 16);
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

    convolve_linebuffer<5, int>(input, output, width, height, kernel, 256);
}
