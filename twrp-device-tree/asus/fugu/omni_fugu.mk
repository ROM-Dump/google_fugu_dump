#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from fugu device
$(call inherit-product, device/asus/fugu/device.mk)

PRODUCT_DEVICE := fugu
PRODUCT_NAME := omni_fugu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus Player
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fugu-user 7.1.2 N2G47H 3783593 release-keys"

BUILD_FINGERPRINT := google/fugu/fugu:7.1.2/N2G47H/3783593:user/release-keys
