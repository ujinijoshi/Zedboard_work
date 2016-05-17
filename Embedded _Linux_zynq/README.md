##Device tree bob:
[Reference:  ](http://www.wiki.xilinx.com/Build+Device+Tree+Blob)

*edit system.dts bootargs as:* 
"console=ttyPS0,115200 root=/dev/mmcblk0p2 rw earlyprintk rootfstype=ext4 rootwait devtmpfs.mount=0";
#in command line:

`hsm`
`cd TDL_homework/2_zynq_bram_QSPI_8bit_FIFO/git_sdk_work/HLS_Timer_IP_SDK_testing/`
`open_hw_design z_system_wrapper.hdf`
`set_repo_path /media/imranqureshi/40edadaa-013a-44ac-bdd0-e7787032b2e2/linux_zed_build_source/device-tree-xlnx`
`create_sw_design device-tree -os device_tree -proc ps7_cortexa9_0`

`generate_target -dir my_dts`

`cp my_dts files to /linux-xlnx/arch/arm/boot/dts/`
`export CROSS_COMPILE=arm-xilinx-linux-gnueabi-`
`/linux-xlnx run make ARCH=arm system.dtb`

_copy system.dtb to sdcard /boot and rename to devicetree.dtb_
