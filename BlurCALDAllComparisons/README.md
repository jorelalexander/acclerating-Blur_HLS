# FPGA Image Blur Project

## 1. Project Overview

This project implements an FPGA-oriented image blur system for grayscale images.

The project now has three main parts:

- **CPU baseline**
  - box blur and Gaussian blur
  - 3x3 and 5x5 kernels
  - runs on 256x256, 512x512, and 1024x1024 images
  - generates output images and CPU timing JSON summaries

- **HLS algorithm comparison**
  - runs the four blur/kernel cases in Vitis HLS:
    - box 3x3
    - box 5x5
    - gaussian 3x3
    - gaussian 5x5
  - checks correctness using HLS testbenches
  - generates synthesis results and HLS JSON summaries

- **HLS optimization study**
  - uses box 3x3 as the representative optimization case
  - compares these optimization variants:
    - base
    - bitwidth
    - pipeline
    - pipeline + unroll
    - pipeline + unroll + partition
    - dataflow
    - final
  - generates optimization synthesis results and JSON summaries

The overall goal is to:
1. verify correctness against software/reference behavior
2. compare algorithm variants
3. compare HLS performance and hardware resource usage
4. evaluate the effect of HLS optimizations

---

## 2. Folder Structure

```text
## 2. Current Folder Structure

```text
BlurCALD/
├── cpu_baseline/
│   ├── blur_cpu.cpp
│   └── Makefile
│
├── hls_project/
│   ├── blur_accel.cpp
│   ├── blur_accel.h
│   ├── testbench.cpp
│   └── run_hls.tcl
│
├── hls_optimization/
│   ├── blur_opt.cpp
│   ├── blur_opt.h
│   ├── testbench_opt.cpp
│   └── run_hls_optimizations.tcl
│
├── images/
│   ├── input_256.pgm
│   ├── input_256.png
│   ├── input_512.pgm
│   ├── input_512.png
│   ├── input_1024.pgm
│   ├── input_1024.png
│   └── generated CPU outputs and PNG previews
│
├── results/
│   ├── cpu/
│   ├── hls/
│   └── hls_optimization/
│
├── scripts/
│   ├── run_cpu_pipeline.py
│   ├── extract_hls_json.py
│   └── extract_hls_optimization_json.py
│
└── README.md
```

---

## 3. What Each Folder Does

### `cpu_baseline/`
Contains the C++ software implementation of the blur algorithms.

This part is used to:
- run box and Gaussian blur
- support 3x3 and 5x5 kernels
- generate CPU output images
- measure CPU runtime
- create CPU JSON summaries

### `hls_project/`
Contains the HLS files for the algorithm-comparison stage.

This part is used to:
- synthesize the four blur/kernel cases:
  - box 3x3
  - box 5x5
  - gaussian 3x3
  - gaussian 5x5
- run HLS testbenches for correctness
- generate HLS synthesis reports and HLS JSON summaries

### `hls_optimization/`
Contains the HLS files for the optimization-comparison stage.

This part is used to:
- synthesize optimization variants of box 3x3
- compare base vs optimized HLS implementations
- generate optimization synthesis reports and JSON summaries

### `images/`
Contains the input grayscale test images and generated output/preview images.

### `results/`
Contains generated JSON summary files for:
- CPU baseline
- HLS algorithm comparison
- HLS optimization comparison

### `scripts/`
Contains the helper scripts used to:
- run the CPU pipeline
- extract HLS synthesis results into JSON
- extract HLS optimization synthesis results into JSON

---

## 4. Project Workflow

The intended workflow is:

1. prepare input images from a normal source image
2. run the CPU baseline pipeline
3. confirm the CPU output images and JSON summaries are generated
4. run the HLS algorithm-comparison flow
5. extract HLS JSON summaries
6. run the HLS optimization flow
7. extract optimization JSON summaries
8. use the generated results in the report

In short:

**source image -> CPU baseline -> HLS algorithm comparison -> HLS optimization comparison -> report**

---

## 5. Image Requirements

The project uses:
- grayscale images only
- `.pgm` format for HLS/CPU processing
- 8-bit pixel values
- image sizes:
  - 256x256
  - 512x512
  - 1024x1024

A normal `.jpg` or `.png` source image can be used as input to the CPU pipeline script, which converts it into grayscale `.pgm` files automatically.

---

## 6. Prerequisites

### On the machine used for the CPU baseline
Required:
- Python 3
- Pillow (`pip install pillow`)
- a C++ compiler with `make` or `mingw32-make`

### On the machine used for HLS
Required:
- AMD Vitis HLS
- access to the same project folder, including the `images/` folder

---

## 7. How to Operate the System

This section explains exactly how to use the project.

## 7.1 CPU Baseline Stage

This stage is run first.
It generates the software baseline and CPU JSON results.

### What it does
The CPU pipeline will:
- create `input_256.pgm`, `input_512.pgm`, `input_1024.pgm`
- create preview PNG files for those inputs
- compile the CPU program
- run all four CPU blur cases:
  - box 3x3
  - box 5x5
  - Gaussian 3x3
  - Gaussian 5x5
- save output `.pgm` and preview `.png` files
- save CPU JSON summary files

### Command
Run from the project root:

```bat
python scripts\run_cpu_pipeline.py CALD1024x1024.jpg
```

If your source image has another name, replace `CALD1024x1024.jpg` accordingly.

### Output files generated
Examples:
- `images/input_256.pgm`
- `images/input_256.png`
- `images/output_256_box3_cpu.pgm`
- `images/output_256_box3_cpu.png`
- `images/output_256_gaussian5_cpu.pgm`
- `results/cpu/cpu_box3_256_summary.json`
- `results/cpu/cpu_gaussian5_1024_summary.json`

### What to check
After the CPU pipeline finishes:
- open the `.png` previews in `images/`
- confirm the blurred outputs look softer than the inputs
- confirm the JSON files were created in `results/cpu/`

---

## 7.2 HLS Algorithm-Comparison Stage

This stage compares the four HLS blur/kernel cases.

### What it does
The HLS project stage runs these HLS cases:
- box 3x3
- box 5x5
- Gaussian 3x3
- Gaussian 5x5

For each case, Vitis HLS will:
- run C simulation
- check correctness using the testbench
- run synthesis
- generate latency/resource reports

### Command
From inside `hls_project/`:

```bash
vitis_hls -f run_hls.tcl
```

### Extract JSON summaries
After Vitis finishes, go back to the project root and run:

```bat
python scripts\extract_hls_json.py hls_project
```

### Output files generated
Examples:
- `results/hls/hls_box3_summary.json`
- `results/hls/hls_box5_summary.json`
- `results/hls/hls_gaussian3_summary.json`
- `results/hls/hls_gaussian5_summary.json`
- `results/hls/hls_summary.json`

### What to check
After this stage:
- C simulation should pass
- Vitis should generate project/report folders
- the JSON files should appear in `results/hls/`

---

## 7.3 HLS Optimization Stage

This stage compares optimization variants of the HLS design.

### What it does
The optimization flow runs multiple HLS versions of the same representative blur design.
Typical variants include:
- base
- bitwidth optimized
- pipelined
- pipelined + unroll
- pipelined + unroll + partition
- final optimized version

For each variant, Vitis HLS will:
- run C simulation
- run synthesis
- generate latency/resource reports

### Command
From inside `hls_optimization/`:

```bash
vitis_hls -f run_hls_optimizations.tcl
```

### Extract JSON summaries
After Vitis finishes, go back to the project root and run:

```bat
python scripts\extract_hls_optimization_json.py hls_optimization
```

### Output files generated
Examples:
- `results/hls_optimization/hls_opt_base_summary.json`
- `results/hls_optimization/hls_opt_bitwidth_summary.json`
- `results/hls_optimization/hls_opt_pipeline_summary.json`
- `results/hls_optimization/hls_opt_pipeline_unroll_summary.json`
- `results/hls_optimization/hls_opt_pipeline_unroll_partition_summary.json`
- `results/hls_optimization/hls_opt_final_summary.json`
- `results/hls_optimization/hls_optimization_summary.json`

### What to check
After this stage:
- the testbench should pass for each optimization case
- the JSON files should appear in `results/hls_optimization/`
- these JSON files are used to compare optimization tradeoffs

---

## 8. What Each Main File Does

### CPU files
#### `cpu_baseline/blur_cpu.cpp`
Runs the CPU blur implementation for:
- box 3x3
- box 5x5
- Gaussian 3x3
- Gaussian 5x5

#### `cpu_baseline/Makefile`
Compiles the CPU program.

#### `scripts/run_cpu_pipeline.py`
Automates the whole CPU baseline workflow.

### HLS algorithm-comparison files
#### `hls_project/blur_accel.h`
Declares the HLS top functions for the blur/kernel cases.

#### `hls_project/blur_accel.cpp`
Implements the four HLS blur/kernel cases.

#### `hls_project/testbench.cpp`
Checks whether HLS output matches the reference output.

#### `hls_project/run_hls.tcl`
Runs the HLS algorithm-comparison flow in Vitis.

#### `scripts/extract_hls_json.py`
Extracts HLS synthesis results into JSON.

### HLS optimization files
#### `hls_optimization/blur_opt.h`
Declares the optimization-study HLS top functions.

#### `hls_optimization/blur_opt.cpp`
Implements the optimization-study HLS variants.

#### `hls_optimization/testbench_opt.cpp`
Checks correctness of the optimization-study variants.

#### `hls_optimization/run_hls_optimizations.tcl`
Runs the optimization-study HLS flow in Vitis.

#### `scripts/extract_hls_optimization_json.py`
Extracts optimization-study HLS synthesis results into JSON.

---

## 9. What Results Are Used in the Report

### CPU results
Use these for:
- CPU runtime comparison
- output image examples
- software baseline discussion

### HLS algorithm-comparison results
Use these for comparing:
- box vs Gaussian
- 3x3 vs 5x5
- latency and resources across the four HLS blur/kernel cases

### HLS optimization results
Use these for comparing:
- baseline HLS vs optimized HLS variants
- latency improvement
- resource tradeoffs
- hardware-efficiency discussion

---

## 10. Recommended Operating Order

Use the project in this exact order:

1. run the CPU baseline pipeline
2. verify CPU images and CPU JSON files
3. run the HLS algorithm-comparison flow
4. extract HLS JSON files
5. run the HLS optimization flow
6. extract HLS optimization JSON files
7. write the report using the generated results

This order matters because:
- CPU baseline should exist first
- HLS correctness should be confirmed before comparing synthesis results
- optimization comparison should come after the working HLS design exists

---

## 11. Notes

- On Windows Command Prompt, use `blur_cpu.exe`, not `./blur_cpu`
- Input/output paths are relative to the folder from which the command is run
- The CPU side is run from the project root through `scripts/run_cpu_pipeline.py`
- The HLS algorithm-comparison stage is run from `hls_project/`
- The HLS optimization stage is run from `hls_optimization/`
- The JSON extraction scripts are run from the project root
- The `images/` folder must stay available because both HLS flows use the `.pgm` inputs

---

## 12. Quick Start

If you just want the minimum sequence, do this:

### CPU baseline
```bat
python scripts\run_cpu_pipeline.py aerial.jpg
```

### HLS algorithm comparison
```bat
cd hls_project
vitis_hls -f run_hls.tcl
cd ..
python scripts\extract_hls_json.py hls_project
```

### HLS optimization comparison
```bat
cd hls_optimization
vitis_hls -f run_hls_optimizations.tcl
cd ..
python scripts\extract_hls_optimization_json.py hls_optimization
```
