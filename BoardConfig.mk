#
# Copyright 2016 The AOSP-OMS Project
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

# inherit from msm8916-common
-include device/huawei/msm8916-common/BoardConfigCommon.mk

DEVICE_PATH := device/huawei/hwY635

# Assert
TARGET_OTA_ASSERT_DEVICE := hwY635,Y635-L01,Y635-L02,Y635-L03,Y635-L11,Y635-L21,hwY550,Y550-L01,Y550-L02,Y550-L03,Y550-L11,y550,c8817d,g620s,C8817D,C8817E,G621-TL00,G620S-UL00,G620S-L01,Che1-CL20,Che1-L04

# Kernel
BOARD_KERNEL_BASE        := 0x80000000
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1
BOARD_KERNEL_SEPARATED_DT := true
BOARD_DTBTOOL_ARGS := -2
TARGET_KERNEL_SOURCE := kernel/huawei/hwY635
TARGET_KERNEL_CONFIG := gr2_hwY635_defconfig

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000 # (20M)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01900000 # (25M)
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1070596096
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1860648960
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)/releasetools

# inherit from the proprietary version
-include vendor/huawei/hwY635/BoardConfigVendor.mk
