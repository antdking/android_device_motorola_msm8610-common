#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

BOARD_VENDOR := motorola-qcom

# Platform
TARGET_BOARD_PLATFORM_GPU := qcom-adreno302
TARGET_BOARD_PLATFORM := msm8610
TARGET_BOOTLOADER_BOARD_NAME := MSM8610
TARGET_CPU_VARIANT := krait
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_HAVE_HDMI_OUT := false
TARGET_USES_OVERLAY := true
TARGET_NO_RPC := true

-include device/motorola/qcom-common/BoardConfigCommon.mk

LOCAL_PATH := device/motorola/msm8610-common

TARGET_SPECIFIC_HEADER_PATH += $(LOCAL_PATH)/include

BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00B00000

BOARD_KERNEL_SEPARATED_DT := true
TARGET_KERNEL_SOURCE := kernel/motorola/msm8610
TARGET_KERNEL_CONFIG := msm8610_defconfig
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 utags.blkdev=/dev/block/platform/msm_sdcc.1/by-name/utags vmalloc=400M androidboot.write_protect=0 androidboot.secure_hardware=0 androidboot.selinux=permissive ro.secure=0
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --dt $(LOCAL_PATH)/prebuilt/dt.img
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/wlan.ko:system/lib/modules/wlan.ko

# Enables Adreno RS driver
# OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# QCOM BSP
TARGET_USES_QCOM_BSP := true
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP

# Audio
AUDIO_FEATURE_DISABLED_FM := true
AUDIO_FEATURE_DISABLED_SSR := true
BOARD_HAVE_QCOM_FM :=
AUDIO_FEATURE_DISABLED_ANC_HEADSET := true

# Graphics
BOARD_EGL_CFG := $(LOCAL_PATH)/config/egl.cfg
TARGET_DISPLAY_USE_RETIRE_FENCE :=
TARGET_USES_C2D_COMPOSITION :=
TARGET_QCOM_DISPLAY_VARIANT := caf-new

TARGET_QCOM_MEDIA_VARIANT := caf-new

# Enable suspend during charger mode
BOARD_CHARGER_ENABLE_SUSPEND := true

TARGET_INIT_VENDOR_LIB := libinit_msm

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery/init.rc
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_RECOVERY_SWIPE := true
