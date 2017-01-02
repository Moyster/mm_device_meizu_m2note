#
# Copyright (C) 2016 The LineageOS Project
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

# Device path
LOCAL_PATH := device/meizu/m2note

# Device board elements
include $(LOCAL_PATH)/PlatformConfig.mk
include $(LOCAL_PATH)/board/*.mk

# Headers include
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

TARGET_BOOTLOADER_BOARD_NAME := mt6753
TARGET_NO_BOOTLOADER := true

# misc flags
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

# MTK Hardware
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_LEGACY_MTK_AV_BLOB := true
COMMON_GLOBAL_CFLAGS += -DDISABLE_ASHMEM_TRACKING
# Mtk LP Camera Hal compat
COMMON_GLOBAL_CFLAGS += -DCAMERA_VENDOR_L_COMPAT

#TODO: rewrite gps hal (libEPOS)
MTK_K64_SUPPORT := yes

# EGL
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
DISABLE_ASHMEM_TRACKING := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0
MTK_HWC_SUPPORT := yes
MTK_HWC_VERSION := 1.4.1

# Screen resolution
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Bootanimation
TARGET_BOOTANIMATION_NAME := 1080
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_HALF_RES := true

# system.prop
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

