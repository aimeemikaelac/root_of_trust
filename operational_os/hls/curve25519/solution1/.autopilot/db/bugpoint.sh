export PATH=/Xilinx/Vivado/2017.1/bin:/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin:/Xilinx/Vivado_HLS/2017.1/msys/bin:/Xilinx/Vivado_HLS/2017.1/bin:/Xilinx/Vivado_HLS/2017.1/lnx64/bin:/Xilinx/Vivado_HLS/2017.1/lnx64/tools/bin:/Xilinx/Vivado_HLS/2017.1/lnx64/tools/clang/bin:/Xilinx/Vivado_HLS/2017.1/tps/lnx64/libxslt/bin:/Xilinx/Vivado_HLS/2017.1/bin:/Xilinx/Vivado_HLS/2017.1/tps/lnx64/jre/bin:/Xilinx/SDK/2017.1/bin:/Xilinx/Vivado/2017.1/bin:/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin:/Xilinx/Vivado_HLS/2017.1/msys/bin:/Xilinx/Vivado_HLS/2017.1/lnx64/bin:/Xilinx/Vivado_HLS/2017.1/lnx64/tools/bin:/Xilinx/Vivado_HLS/2017.1/lnx64/tools/clang/bin:/home/michael/.rbenv/plugins/ruby-build/bin:/home/michael/.rbenv/shims:/home/michael/.rbenv/bin:/usr/bin/:/Xilinx/DocNav:/Xilinx/SDK/2017.1/gnu/microblaze/lin/bin:/Xilinx/SDK/2017.1/gnu/arm/lin/bin:/Xilinx/SDK/2017.1/gnu/microblaze/linux_toolchain/lin64_be/bin:/Xilinx/SDK/2017.1/gnu/microblaze/linux_toolchain/lin64_le/bin:/Xilinx/SDK/2017.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin:/Xilinx/SDK/2017.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin:/Xilinx/SDK/2017.1/gnu/aarch64/lin/aarch64-linux/bin:/Xilinx/SDK/2017.1/gnu/aarch64/lin/aarch64-none/bin:/Xilinx/SDK/2017.1/gnu/armr5/lin/gcc-arm-none-eabi/bin:/Xilinx/SDK/2017.1/tps/lnx64/cmake-3.3.2/bin:/home/michael/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/michael/storm/bin/:/home/michael/CodeSourcery/Sourcery_CodeBench_Lite_for_Xilinx_GNU_Linux/bin:/opt/msb-4.0.10:/home/michael/eclipse:/home/michael/Android/Sdk/tools/:/home/michael/bin/flex_sdk/bin:/home/michael/toolchains/gcc-linaro-arm-linux-gnueabihf-4.9-2014.08_linux/bin
export LD_LIBRARY_PATH=/Xilinx/Vivado_HLS/2017.1/lnx64/tools/graphviz/lib:/Xilinx/Vivado_HLS/2017.1/lnx64/bin:/Xilinx/Vivado_HLS/2017.1/tps/lnx64/libxslt/lib:/Xilinx/Vivado_HLS/2017.1/lib/lnx64.o:/Xilinx/Vivado_HLS/2017.1/tps/lnx64/jre/lib/amd64:/Xilinx/Vivado_HLS/2017.1/tps/lnx64/jre/lib/amd64/server:/Xilinx/Vivado_HLS/2017.1/tps/lnx64/jre/lib/amd64/server:/Xilinx/Vivado_HLS/2017.1/tps/lnx64/jre/lib/amd64:/Xilinx/Vivado_HLS/2017.1/tps/lnx64/jre/../lib/amd64:/Xilinx/Vivado_HLS/2017.1/lnx64/tools/graphviz/lib:/Xilinx/Vivado_HLS/2017.1/lnx64/bin:/Xilinx/Vivado_HLS/2017.1/tps/lnx64/libxslt/lib:/Xilinx/Vivado_HLS/2017.1/lib/lnx64.o:/Xilinx/Vivado_HLS/2017.1/tps/lnx64/jre/lib/amd64:/Xilinx/Vivado_HLS/2017.1/tps/lnx64/jre/lib/amd64/server:/Xilinx/Vivado_HLS/2017.1/bin/../lnx64/tools/dot/lib:/Xilinx/Vivado_HLS/2017.1/lnx64/tools/fpo_v6_1:/Xilinx/Vivado_HLS/2017.1/lnx64/tools/fpo_v7_0:/Xilinx/Vivado_HLS/2017.1/lnx64/tools/fft_v9_0:/Xilinx/Vivado_HLS/2017.1/lnx64/tools/opencv:/Xilinx/Vivado_HLS/2017.1/lnx64/tools/fir_v7_0:/Xilinx/Vivado_HLS/2017.1/lnx64/tools/dds_v6_0:/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gdb_v7_2:/Xilinx/Vivado_HLS/2017.1/bin/../lnx64/tools/dot/lib:/Xilinx/Vivado_HLS/2017.1/lnx64/tools/fpo_v6_1:/Xilinx/Vivado_HLS/2017.1/lnx64/tools/fpo_v7_0:/Xilinx/Vivado_HLS/2017.1/lnx64/tools/fft_v9_0:/Xilinx/Vivado_HLS/2017.1/lnx64/tools/opencv:/Xilinx/Vivado_HLS/2017.1/lnx64/tools/fir_v7_0:/Xilinx/Vivado_HLS/2017.1/lnx64/tools/dds_v6_0:/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gdb_v7_2
export HDI_APPROOT=/Xilinx/Vivado_HLS/2017.1
export XILINX_OPENCL_CLANG=/Xilinx/Vivado_HLS/2017.1/lnx64/tools/clang
export RDI_PLATFORM=lnx64
bugpoint -mlimit=32000  --load libhls_support.so  --load libhls_bugpoint.so  -hls -strip  -function-uniquify -auto-function-inline -globaldce  -ptrArgReplace -mem2reg -instcombine -dce  -reset-lda  -loop-simplify -indvars -licm -loop-dep  -loop-bound -licm -loop-simplify -flattenloopnest  -array-flatten -gvn -instcombine -dce  -array-map -dce -func-legal  -gvn -adce -instcombine -cfgopt -simplifycfg -loop-simplify   -array-burst -promote-global-argument -dce  -axi4-lower -array-seg-normalize  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -gvn -gvn  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -dse -adse -adce -licm  -inst-simplify -dce  -globaldce -instcombine -array-stream -eliminate-keepreads -instcombine  -dce   -deadargelim -doublePtrSimplify  -doublePtrElim -dce -doublePtrSimplify -promote-dbg-pointer  -dce -scalarrepl -mem2reg -disaggr -norm-name -mem2reg  -instcombine  -dse -adse -adce -ptrLegalization -dce -auto-rom-infer -array-flatten -dce -instcombine  -loop-rot -constprop -cfgopt -simplifycfg -loop-simplify -indvars -pointer-simplify -dce -loop-bound  -loop-simplify -loop-preproc  -constprop -global-constprop -gvn -mem2reg -instcombine -dce  -loop-bound  -loop-merge -dce  -bitwidthmin  -deadargelim -dce  -canonicalize-dataflow -dce  -scalar-propagation -deadargelim -globaldce -mem2reg   -interface-preproc -interface-gen  -deadargelim -directive-preproc -inst-simplify -dce  -gvn -mem2reg -instcombine -dce -adse  -loop-bound  -instcombine -cfgopt -simplifycfg -loop-simplify  -clean-region -io-protocol  -find-region -mem2reg  -bitop-raise  -inst-simplify -inst-rectify -instcombine -adce -deadargelim  -loop-simplify -phi-opt -bitop-raise  -cfgopt -simplifycfg -strip-dead-prototypes  -interface-lower -bitop-lower -intrinsic-lower -auto-function-inline  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa  -inst-simplify -simplifycfg   -loop-simplify  -mergereturn -inst-simplify -inst-rectify  -dce -bitop-lower  -loop-rewind -pointer-simplify -dce -cfgopt  -read-loop-dep -dce -bitwidth -loop-dep -norm-name -legalize  -validate-dataflow  /home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls/curve25519/solution1/.autopilot/db/a.o.2.bc
llvm-dis bugpoint-reduced-simplified.bc 