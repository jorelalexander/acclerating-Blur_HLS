<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" top="blur_opt_final" name="blur_opt_final_proj" ideType="classic">
    <files>
        <file name="blur_opt.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="blur_opt.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../../../images/input_1024.pgm" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="../../../images/input_512.pgm" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="../../../images/input_256.pgm" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="../../testbench_opt.cpp" sc="0" tb="1" cflags="-DOPT_FINAL -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
</AutoPilot:project>
