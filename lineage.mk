#
# Copyright (C) 2015-2016 The CyanogenMod Project
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

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device_m2note.mk)

TARGET_OTA_ASSERT_DEVICE := m2note,m2n,M2Note,M2N

# Sign the build with real certs
# PS: if you're not me you need to generate your own certs
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/moyster/keys/releasekey

# Device identifier
PRODUCT_BRAND := MEIZU
PRODUCT_DEVICE := m2note
PRODUCT_MANUFACTURER := MEIZU
PRODUCT_MODEL := M2Note
PRODUCT_NAME := lineage_m2note
PRODUCT_RELEASE_NAME := m2note
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION := US

