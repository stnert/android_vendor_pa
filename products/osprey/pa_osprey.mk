# Copyright (C) 2019 Paranoid Android
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

# Check for target product
ifeq (pa_osprey,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Include Paranoid Android common configuration
TARGET_BOOT_ANIMATION_RES := 720

include device/qcom/common/common.mk
include vendor/pa/config/common_full_phone.mk

# Inherit AOSP device configuration
$(call inherit-product, device/motorola/osprey/full_osprey.mk)

# Override AOSP build properties
PRODUCT_NAME := pa_osprey
PRODUCT_DEVICE := osprey
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := MotoG3
PRODUCT_MANUFACTURER := Motorola
PRODUCT_RELEASE_NAME := osprey

PRODUCT_GMS_CLIENTID_BASE := android-motorola

BUILD_FINGERPRINT := "motorola/osprey_retus/osprey_umts:6.0/MPI24.65-25.1/1:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=osprey \
    TARGET_DEVICE="osprey"
    PRIVATE_BUILD_DESC="osprey_retus-user 6.0 MPI24.65-25.1 1 release-keys"

endif
