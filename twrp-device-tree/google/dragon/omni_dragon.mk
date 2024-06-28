#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from dragon device
$(call inherit-product, device/google/dragon/device.mk)

PRODUCT_DEVICE := dragon
PRODUCT_NAME := omni_dragon
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel C
PRODUCT_MANUFACTURER := google

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ryu-user 8.1.0 OPM1.171019.026 4609799 release-keys"

BUILD_FINGERPRINT := google/ryu/dragon:8.1.0/OPM1.171019.026/4609799:user/release-keys
