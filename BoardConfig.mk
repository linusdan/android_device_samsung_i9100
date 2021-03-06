#
# Copyright 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_TREE := device/samsung/i9100

CM_PLATFORM_SDK_VERSION := 7	# Required for libf2fs.so
override TARGET_OUT_VENDOR_SHARED_LIBRARIES = $(TARGET_OUT_SHARED_LIBRARIES)

# Assert
TARGET_OTA_ASSERT_DEVICE := i9100,GT-I9100,GT-I9100P

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := smdk4210

# Platform
TARGET_BOARD_PLATFORM := exynos4
TARGET_BOARD_PLATFORM_GPU := mali-400mp4

# Flags
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true

# Boot image
TARGET_PREBUILT_KERNEL := $(DEVICE_TREE)/kernel
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_TREE)/mkbootimg.mk
BOARD_KERNEL_CMDLINE := console=ttySAC2,115200 consoleblank=0
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 4096

TARGET_HAL_PATH := hardware/samsung/exynos4/hal

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 671088640
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147467264
BOARD_CACHEIMAGE_PARTITION_SIZE := 104857600
BOARD_FLASH_BLOCK_SIZE := 4096

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_SUPPRESS_SECURE_ERASE := true

# TWRP specific build flags
TW_THEME := portrait_mdpi
TW_USE_BUSYBOX_SH := true
HAVE_SELINUX := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/platform/s5p-tmu/temperature"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
TW_MTP_DEVICE := "/dev/mtp_usb"
RECOVERY_SDCARD_ON_DATA := true

# Encryption support
TW_INCLUDE_CRYPTO := true

# Parted tool
TW_INCLUDE_PARTED := true
