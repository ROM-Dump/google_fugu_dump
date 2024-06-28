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

# Inherit from angler device
$(call inherit-product, device/huawei/angler/device.mk)

PRODUCT_DEVICE := angler
PRODUCT_NAME := omni_angler
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6P
PRODUCT_MANUFACTURER := huawei

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="angler-user 7.1.2 N2G47H 3783593 release-keys"

BUILD_FINGERPRINT := google/angler/angler:7.1.2/N2G47H/3783593:user/release-keys
