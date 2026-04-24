#ifndef BLUR_ACCEL_H
#define BLUR_ACCEL_H

#include <cstdint>

const int MAX_WIDTH  = 1024;
const int MAX_HEIGHT = 1024;

void blur_accel_box3(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
);

void blur_accel_box5(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
);

void blur_accel_gaussian3(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
);

void blur_accel_gaussian5(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
);

#endif