#
# Copyright (C) 2020 - 2021 Doritos™ Motorola | Developers
# Copyright (C) 2019 - 2021 LineageOS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

STAR_PATH := device/motorola/astro

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := generic
TARGET_CPU_VARIANT := kryo385

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a75

TARGET_BOARD_SUFFIX := _64
TARGET_BOARD_PLATFORM_GPU := qcom-adreno616
TARGET_USES_64_BIT_BINDER := true
TARGET_SUPPORTS_64_BIT_APPS := true
QCOM_BOARD_PLATFORMS += sdm710

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm710
TARGET_BOARD_PLATFORM := sdm710
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# Decryption Qualcomm Technologies™ Common
BOARD_USES_QCOM_FBE_DECRYPTION := true

# GPT Utils
BOARD_PROVIDES_GPTUTILS := true

# Partition - Size
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_FLASH_BLOCK_SIZE :=
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_DTBOIMG_PARTITION_SIZE :=
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE :=
BOARD_USERDATAIMAGE_PARTITION_SIZE :=

# Partition - Types
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Kernel - CMDLINE
BOARD_KERNEL_CMDLINE := \
	console=ttyMSM0,115200,n8 \
	androidboot.hardware=qcom  \
	androidboot.console=ttyMSM0 \
	androidboot.memcg=1 \
	lpm_levels.sleep_disabled=1 \
	video=vfb:640x400,bpp=32,memsize=3072000 \
	msm_rtb.filter=0x237 \
	service_locator.enable=1 \
	swiotlb=1 \
    earlycon=msm_geni_serial,0xA84000 \
	ehci-hcd.park=3 \
    androidboot.configfs=true \
	cgroup.memory=nokmem,nosocket \
    androidboot.usbcontroller=a600000.dwc3 \
	printk.devkmsg=on \
	androidboot.hab.csv=10 \
	androidboot.hab.product=astro \
	androidboot.hab.cid=50 \
	firmware_class.path=/vendor/firmware_mnt/image \
	androidboot.fastboot=1 \
	androidboot.selinux=permissive

BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x01000000

BOARD_MKBOOTIMG_ARGS += \
	--kernel_offset $(BOARD_KERNEL_OFFSET) \
	--ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
	--tags_offset $(BOARD_KERNEL_TAGS_OFFSET) \
	--header_version $(BOARD_BOOTIMG_HEADER_VERSION)

TARGET_PREBUILT_KERNEL := $(STAR_PATH)/prebuilt/Image.gz-dtb
TARGET_PREBUILT_DTB := $(STAR_PATH)/prebuilt/dtb.img
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/motorola/sdm710
TARGET_KERNEL_CONFIG := astro_defconfig

# Team Win Recovery Configuration
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_USES_LOGD := true

TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_EXTRA_LANGUAGES := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXCLUDE_TWRPAPP := true

RECOVERY_SDCARD_ON_DATA := true

TWRP_INCLUDE_LOGCAT := true
TW_INCLUDE_REPACKTOOLS := true
TW_INPUT_BLACKLIST := "hbtp_vm"

TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_CRYPTO := true
TW_NEW_ION_HEAP := true
TW_NO_SCREEN_TIMEOUT := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_THEME := portrait_hdpi

TW_USE_TOOLBOX := true
TW_Y_OFFSET := 80
TW_H_OFFSET := -80


