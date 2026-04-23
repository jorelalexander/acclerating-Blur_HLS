#include "blur_opt.h"

static const int BOX3_KERNEL[3][3] = {
    {1, 1, 1},
    {1, 1, 1},
    {1, 1, 1}
};

static void copy_image_int(
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

static void convolve_base_impl(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    copy_image_int(input, output, width, height);

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

static void convolve_bitwidth_impl(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    copy_image_int(input, output, width, height);

    if (width < 3 || height < 3) {
        return;
    }

    for (int y = 1; y < height - 1; y++) {
        for (int x = 1; x < width - 1; x++) {
            uint16_t sum = 0;

            for (int ky = 0; ky < 3; ky++) {
                for (int kx = 0; kx < 3; kx++) {
                    int iy = y + ky - 1;
                    int ix = x + kx - 1;
                    sum += static_cast<uint16_t>(input[iy][ix]) *
                           static_cast<uint16_t>(BOX3_KERNEL[ky][kx]);
                }
            }

            output[y][x] = static_cast<uint8_t>(sum / 9);
        }
    }
}

static void convolve_pipeline_impl(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    copy_image_int(input, output, width, height);

    if (width < 3 || height < 3) {
        return;
    }

    for (int y = 1; y < height - 1; y++) {
        for (int x = 1; x < width - 1; x++) {
#pragma HLS PIPELINE II=1
            uint16_t sum = 0;

            for (int ky = 0; ky < 3; ky++) {
                for (int kx = 0; kx < 3; kx++) {
                    int iy = y + ky - 1;
                    int ix = x + kx - 1;
                    sum += static_cast<uint16_t>(input[iy][ix]) *
                           static_cast<uint16_t>(BOX3_KERNEL[ky][kx]);
                }
            }

            output[y][x] = static_cast<uint8_t>(sum / 9);
        }
    }
}

static void convolve_pipeline_unroll_impl(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    copy_image_int(input, output, width, height);

    if (width < 3 || height < 3) {
        return;
    }

    for (int y = 1; y < height - 1; y++) {
        for (int x = 1; x < width - 1; x++) {
#pragma HLS PIPELINE II=1
            uint16_t sum = 0;

            for (int ky = 0; ky < 3; ky++) {
#pragma HLS UNROLL
                for (int kx = 0; kx < 3; kx++) {
#pragma HLS UNROLL
                    int iy = y + ky - 1;
                    int ix = x + kx - 1;
                    sum += static_cast<uint16_t>(input[iy][ix]) *
                           static_cast<uint16_t>(BOX3_KERNEL[ky][kx]);
                }
            }

            output[y][x] = static_cast<uint8_t>(sum / 9);
        }
    }
}

static void convolve_pipeline_unroll_partition_impl(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
#pragma HLS ARRAY_PARTITION variable=BOX3_KERNEL complete dim=0
    copy_image_int(input, output, width, height);

    if (width < 3 || height < 3) {
        return;
    }

    for (int y = 1; y < height - 1; y++) {
        for (int x = 1; x < width - 1; x++) {
#pragma HLS PIPELINE II=1
            uint16_t sum = 0;

            for (int ky = 0; ky < 3; ky++) {
#pragma HLS UNROLL
                for (int kx = 0; kx < 3; kx++) {
#pragma HLS UNROLL
                    int iy = y + ky - 1;
                    int ix = x + kx - 1;
                    sum += static_cast<uint16_t>(input[iy][ix]) *
                           static_cast<uint16_t>(BOX3_KERNEL[ky][kx]);
                }
            }

            output[y][x] = static_cast<uint8_t>(sum / 9);
        }
    }
}

static void read_stage(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t stage_in[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
#pragma HLS INLINE off
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            stage_in[y][x] = input[y][x];
        }
    }
}

static void compute_stage(
    uint8_t stage_in[MAX_HEIGHT][MAX_WIDTH],
    uint8_t stage_out[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=BOX3_KERNEL complete dim=0
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            stage_out[y][x] = stage_in[y][x];
        }
    }

    if (width < 3 || height < 3) {
        return;
    }

    for (int y = 1; y < height - 1; y++) {
        for (int x = 1; x < width - 1; x++) {
#pragma HLS PIPELINE II=1
            uint16_t sum = 0;

            for (int ky = 0; ky < 3; ky++) {
#pragma HLS UNROLL
                for (int kx = 0; kx < 3; kx++) {
#pragma HLS UNROLL
                    int iy = y + ky - 1;
                    int ix = x + kx - 1;
                    sum += static_cast<uint16_t>(stage_in[iy][ix]) *
                           static_cast<uint16_t>(BOX3_KERNEL[ky][kx]);
                }
            }

            stage_out[y][x] = static_cast<uint8_t>(sum / 9);
        }
    }
}

static void write_stage(
    uint8_t stage_out[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
#pragma HLS INLINE off
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            output[y][x] = stage_out[y][x];
        }
    }
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

static void mac_3x3_inline(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    int y,
    int x,
    uint16_t &sum
) {
#pragma HLS INLINE
#pragma HLS ARRAY_PARTITION variable=BOX3_KERNEL complete dim=0
    for (int ky = 0; ky < 3; ky++) {
#pragma HLS UNROLL
        for (int kx = 0; kx < 3; kx++) {
#pragma HLS UNROLL
            int iy = y + ky - 1;
            int ix = x + kx - 1;
            sum += static_cast<uint16_t>(input[iy][ix]) *
                   static_cast<uint16_t>(BOX3_KERNEL[ky][kx]);
        }
    }
}

void blur_opt_base(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    convolve_base_impl(input, output, width, height);
}

void blur_opt_bitwidth(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    convolve_bitwidth_impl(input, output, width, height);
}

void blur_opt_pipeline(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    convolve_pipeline_impl(input, output, width, height);
}

void blur_opt_pipeline_unroll(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    convolve_pipeline_unroll_impl(input, output, width, height);
}

void blur_opt_pipeline_unroll_partition(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    convolve_pipeline_unroll_partition_impl(input, output, width, height);
}

void blur_opt_dataflow(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
#pragma HLS DATAFLOW
    static uint8_t stage_in[MAX_HEIGHT][MAX_WIDTH];
    static uint8_t stage_out[MAX_HEIGHT][MAX_WIDTH];

    read_stage(input, stage_in, width, height);
    compute_stage(stage_in, stage_out, width, height);
    write_stage(stage_out, output, width, height);
}

void blur_opt_final(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
#pragma HLS ARRAY_PARTITION variable=BOX3_KERNEL complete dim=0
    copy_image_inline(input, output, width, height);

    if (width < 3 || height < 3) {
        return;
    }

    for (int y = 1; y < height - 1; y++) {
        for (int x = 1; x < width - 1; x++) {
#pragma HLS PIPELINE II=1
            uint16_t sum = 0;
            mac_3x3_inline(input, y, x, sum);
            output[y][x] = static_cast<uint8_t>(sum / 9);
        }
    }
}
