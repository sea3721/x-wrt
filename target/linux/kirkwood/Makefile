# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2009-2015 OpenWrt.org

include $(TOPDIR)/rules.mk

ARCH:=arm
BOARD:=kirkwood
BOARDNAME:=Marvell Kirkwood
FEATURES:=rtc usb nand squashfs ramdisk
CPU_TYPE:=xscale
SUBTARGETS:=generic

KERNEL_PATCHVER:=5.15
KERNEL_TESTING_PATCHVER:=6.1

include $(INCLUDE_DIR)/target.mk

KERNELNAME:=zImage dtbs

DEFAULT_PACKAGES += uboot-envtools kmod-usb2 wpad-basic-mbedtls

$(eval $(call BuildTarget))
