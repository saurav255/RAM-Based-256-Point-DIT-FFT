# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Vivado_Projects\FFT_FPGA\vitis\FFT_sw\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Vivado_Projects\FFT_FPGA\vitis\FFT_sw\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {FFT_sw}\
-hw {C:\Vivado_Projects\FFT_FPGA\design_2_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/Vivado_Projects/FFT_FPGA/vitis}

platform write
platform generate -domains 
platform active {FFT_sw}
platform generate
bsp reload
platform generate
platform active {FFT_sw}
bsp reload
platform generate -domains 
domain active {zynq_fsbl}
bsp reload
domain active {standalone_domain}
bsp reload
platform generate -domains 
bsp reload
platform generate -domains 
bsp reload
bsp reload
bsp reload
bsp write
platform generate -domains 
platform clean
bsp reload
platform generate
platform active {FFT_sw}
platform generate -domains 
bsp reload
