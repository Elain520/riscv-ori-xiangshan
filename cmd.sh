#!/bin/sh


export https_proxy=http://10.200.2.1:8586; export http_proxy=http://10.200.2.1:8586

# source riscv-linux kernel
git clone https://github.com/OpenXiangShan/riscv-linux.git


make mrproper

make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- -j$(nproc) defconfig xiangshan.config
make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- -j$(nproc) menuconfig
CONFIG_INITRAMFS_SOURCE置空

make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- -j$(nproc)

make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- -j$(nproc) Image


ps aux | grep qemu
pgrep -f qemu 
sudo kill

# 启动内核环境之后，检查是否支持ftrace功能
zcat /proc/config.gz | grep -E "FTRACE|FUNCTION_TRACER|DEBUG_FS"


df -lh
du -sh *







