#include "blur_opt.h"

static const int BOX3_KERNEL[3][3] = {
    {1, 1, 1},
    {1, 1, 1},
    {1, 1, 1}
};

static void copy_image_plain(
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
}

template <typename SumT>
static void linebuffer_box3_base(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    uint8_t linebuf[2][MAX_WIDTH] = {};
    uint8_t window[3][3] = {};

    copy_image_plain(input, output, width, height);
    if (width < 3 || height < 3) {
        return;
    }

    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            for (int r = 0; r < 3; r++) {
                for (int c = 0; c < 2; c++) {
                    window[r][c] = window[r][c + 1];
                }
            }

            window[0][2] = linebuf[1][x];
            window[1][2] = linebuf[0][x];
            window[2][2] = input[y][x];

            linebuf[1][x] = linebuf[0][x];
            linebuf[0][x] = input[y][x];

            if (y >= 2 && x >= 2) {
                SumT sum = 0;
                for (int ky = 0; ky < 3; ky++) {
                    for (int kx = 0; kx < 3; kx++) {
                        sum += static_cast<SumT>(window[ky][kx]) *
                               static_cast<SumT>(BOX3_KERNEL[ky][kx]);
                    }
                }
                output[y - 1][x - 1] = static_cast<uint8_t>(sum / 9);
            }
        }
    }
}

static void linebuffer_box3_pipeline(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    uint8_t linebuf[2][MAX_WIDTH] = {};
    uint8_t window[3][3] = {};

    copy_image_plain(input, output, width, height);
    if (width < 3 || height < 3) {
        return;
    }

    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
#pragma HLS PIPELINE II=1
            for (int r = 0; r < 3; r++) {
                for (int c = 0; c < 2; c++) {
                    window[r][c] = window[r][c + 1];
                }
            }

            window[0][2] = linebuf[1][x];
            window[1][2] = linebuf[0][x];
            window[2][2] = input[y][x];

            linebuf[1][x] = linebuf[0][x];
            linebuf[0][x] = input[y][x];

            if (y >= 2 && x >= 2) {
                uint16_t sum = 0;
                for (int ky = 0; ky < 3; ky++) {
                    for (int kx = 0; kx < 3; kx++) {
                        sum += static_cast<uint16_t>(window[ky][kx]) *
                               static_cast<uint16_t>(BOX3_KERNEL[ky][kx]);
                    }
                }
                output[y - 1][x - 1] = static_cast<uint8_t>(sum / 9);
            }
        }
    }
}

static void linebuffer_box3_pipeline_unroll(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    uint8_t linebuf[2][MAX_WIDTH] = {};
    uint8_t window[3][3] = {};

    copy_image_plain(input, output, width, height);
    if (width < 3 || height < 3) {
        return;
    }

    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
#pragma HLS PIPELINE II=1
            for (int r = 0; r < 3; r++) {
#pragma HLS UNROLL
                for (int c = 0; c < 2; c++) {
#pragma HLS UNROLL
                    window[r][c] = window[r][c + 1];
                }
            }

            window[0][2] = linebuf[1][x];
            window[1][2] = linebuf[0][x];
            window[2][2] = input[y][x];

            linebuf[1][x] = linebuf[0][x];
            linebuf[0][x] = input[y][x];

            if (y >= 2 && x >= 2) {
                uint16_t sum = 0;
                for (int ky = 0; ky < 3; ky++) {
#pragma HLS UNROLL
                    for (int kx = 0; kx < 3; kx++) {
#pragma HLS UNROLL
                        sum += static_cast<uint16_t>(window[ky][kx]) *
                               static_cast<uint16_t>(BOX3_KERNEL[ky][kx]);
                    }
                }
                output[y - 1][x - 1] = static_cast<uint8_t>(sum / 9);
            }
        }
    }
}

static void linebuffer_box3_pipeline_unroll_partition(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    uint8_t linebuf[2][MAX_WIDTH] = {};
    uint8_t window[3][3] = {};
    int kernel_local[3][3] = {
        {1, 1, 1},
        {1, 1, 1},
        {1, 1, 1}
    };
#pragma HLS ARRAY_PARTITION variable=linebuf complete dim=1
#pragma HLS ARRAY_PARTITION variable=window complete dim=0
#pragma HLS ARRAY_PARTITION variable=kernel_local complete dim=0

    copy_image_plain(input, output, width, height);
    if (width < 3 || height < 3) {
        return;
    }

    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
#pragma HLS PIPELINE II=1
            for (int r = 0; r < 3; r++) {
#pragma HLS UNROLL
                for (int c = 0; c < 2; c++) {
#pragma HLS UNROLL
                    window[r][c] = window[r][c + 1];
                }
            }

            window[0][2] = linebuf[1][x];
            window[1][2] = linebuf[0][x];
            window[2][2] = input[y][x];

            linebuf[1][x] = linebuf[0][x];
            linebuf[0][x] = input[y][x];

            if (y >= 2 && x >= 2) {
                uint16_t sum = 0;
                for (int ky = 0; ky < 3; ky++) {
#pragma HLS UNROLL
                    for (int kx = 0; kx < 3; kx++) {
#pragma HLS UNROLL
                        sum += static_cast<uint16_t>(window[ky][kx]) *
                               static_cast<uint16_t>(kernel_local[ky][kx]);
                    }
                }
                output[y - 1][x - 1] = static_cast<uint8_t>(sum / 9);
            }
        }
    }
}

static void copy_stage(
    uint8_t src[MAX_HEIGHT][MAX_WIDTH],
    uint8_t dst[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
#pragma HLS INLINE off
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            dst[y][x] = src[y][x];
        }
    }
}

static void compute_stage_dataflow(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
#pragma HLS INLINE off
    linebuffer_box3_pipeline_unroll_partition(input, output, width, height);
}

static void copy_image_inline(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
#pragma HLS INLINE
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            output[y][x] = input[y][x];
        }
    }
}

static void mac_inline(uint8_t window[3][3], uint16_t &sum) {
#pragma HLS INLINE
    for (int ky = 0; ky < 3; ky++) {
#pragma HLS UNROLL
        for (int kx = 0; kx < 3; kx++) {
#pragma HLS UNROLL
            sum += static_cast<uint16_t>(window[ky][kx]) *
                   static_cast<uint16_t>(BOX3_KERNEL[ky][kx]);
        }
    }
}

static void linebuffer_box3_final(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    uint8_t linebuf[2][MAX_WIDTH] = {};
    uint8_t window[3][3] = {};
#pragma HLS ARRAY_PARTITION variable=linebuf complete dim=1
#pragma HLS ARRAY_PARTITION variable=window complete dim=0

    copy_image_inline(input, output, width, height);
    if (width < 3 || height < 3) {
        return;
    }

    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
#pragma HLS PIPELINE II=1
            for (int r = 0; r < 3; r++) {
#pragma HLS UNROLL
                for (int c = 0; c < 2; c++) {
#pragma HLS UNROLL
                    window[r][c] = window[r][c + 1];
                }
            }

            window[0][2] = linebuf[1][x];
            window[1][2] = linebuf[0][x];
            window[2][2] = input[y][x];

            linebuf[1][x] = linebuf[0][x];
            linebuf[0][x] = input[y][x];

            if (y >= 2 && x >= 2) {
                uint16_t sum = 0;
                mac_inline(window, sum);
                output[y - 1][x - 1] = static_cast<uint8_t>(sum / 9);
            }
        }
    }
}

void blur_opt_base(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    linebuffer_box3_base<int>(input, output, width, height);
}

void blur_opt_bitwidth(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    linebuffer_box3_base<uint16_t>(input, output, width, height);
}

void blur_opt_pipeline(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    linebuffer_box3_pipeline(input, output, width, height);
}

void blur_opt_pipeline_unroll(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    linebuffer_box3_pipeline_unroll(input, output, width, height);
}

void blur_opt_pipeline_unroll_partition(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    linebuffer_box3_pipeline_unroll_partition(input, output, width, height);
}

void blur_opt_dataflow(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
#pragma HLS DATAFLOW
    static uint8_t stage0[MAX_HEIGHT][MAX_WIDTH];
    static uint8_t stage1[MAX_HEIGHT][MAX_WIDTH];

    copy_stage(input, stage0, width, height);
    compute_stage_dataflow(stage0, stage1, width, height);
    copy_stage(stage1, output, width, height);
}

void blur_opt_final(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    linebuffer_box3_final(input, output, width, height);
}
