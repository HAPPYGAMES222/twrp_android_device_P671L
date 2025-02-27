#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from P671L device
$(call inherit-product, device/itel/P671L/device.mk)

PRODUCT_DEVICE := P671L
PRODUCT_NAME := twrp_P671L
PRODUCT_BRAND := Itel
PRODUCT_MODEL := P671L
PRODUCT_MANUFACTURER := itel

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="P671L_full-user 14 UP1A.231005.007 1136 release-keys"

BUILD_FINGERPRINT := Itel/P671L-OP/itel-P671L:14/UP1A.231005.007/241024V1957:user/release-keys
