#!/bin/bash

OUT_DIR=out
COMMON_ARGS="-j8 -C $(pwd) O=$(pwd)/${OUT_DIR} ARCH=arm CROSS_COMPILE=arm-eabi-"

export PATH=$(pwd)/arm-eabi-4.8/bin:$PATH 

[ -d ${OUT_DIR} ] && rm -rf ${OUT_DIR}
mkdir ${OUT_DIR}

make ${COMMON_ARGS} msm8937_sec_defconfig VARIANT_DEFCONFIG=msm8937_sec_elitelte_kor_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make ${COMMON_ARGS}

cp ${OUT_DIR}/arch/arm/boot/zImage $(pwd)/arch/arm/boot/zImage

