proc run_case {project_name top_name cflags} {
    open_project -reset $project_name
    set_top $top_name

    add_files blur_accel.cpp
    add_files blur_accel.h

    add_files -tb testbench.cpp -cflags $cflags
    add_files -tb ../images/input_256.pgm
    add_files -tb ../images/input_512.pgm
    add_files -tb ../images/input_1024.pgm

    open_solution "solution1" -flow_target vivado

    # Change this only if your course/lab uses a different FPGA part
    set_part {xc7z020clg400-1}

    create_clock -period 10 -name default

    csim_design
    csynth_design

    close_project
}

run_case blur_hls_box3       blur_accel_box3       "-DTOP_BOX3"
run_case blur_hls_box5       blur_accel_box5       "-DTOP_BOX5"
run_case blur_hls_gaussian3  blur_accel_gaussian3  "-DTOP_GAUSSIAN3"
run_case blur_hls_gaussian5  blur_accel_gaussian5  "-DTOP_GAUSSIAN5"

exit