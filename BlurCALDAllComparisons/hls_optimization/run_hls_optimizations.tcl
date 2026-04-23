proc run_opt_case {project_name top_name cflags} {
    open_project -reset $project_name
    set_top $top_name

    add_files blur_opt.cpp
    add_files blur_opt.h

    add_files -tb testbench_opt.cpp -cflags $cflags
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

run_opt_case blur_opt_base_proj                      blur_opt_base                      "-DOPT_BASE"
run_opt_case blur_opt_bitwidth_proj                  blur_opt_bitwidth                  "-DOPT_BITWIDTH"
run_opt_case blur_opt_pipeline_proj                  blur_opt_pipeline                  "-DOPT_PIPELINE"
run_opt_case blur_opt_pipeline_unroll_proj           blur_opt_pipeline_unroll           "-DOPT_PIPELINE_UNROLL"
run_opt_case blur_opt_pipeline_unroll_partition_proj blur_opt_pipeline_unroll_partition "-DOPT_PIPELINE_UNROLL_PARTITION"
run_opt_case blur_opt_dataflow_proj                  blur_opt_dataflow                  "-DOPT_DATAFLOW"
run_opt_case blur_opt_final_proj                     blur_opt_final                     "-DOPT_FINAL"

exit
