#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable Virtual A/B OTA

ENABLE_VIRTUAL_AB := true
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/compression.mk)


PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service \
    libhealthd.$(PRODUCT_PLATFORM)

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

LOCAL_PATH := device/itel/P671L
# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=erofs \
    POSTINSTALL_OPTIONAL_system=true



PRODUCT_PACKAGES += \
    bootctrl.ums9230 \
    bootctrl \
    boitctrl.recovery

PRODUCT_PACKAGES += \
    vendor.sprd.hardware.boot@1.2-impl
    vendor.sprd.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload
PRODUCT_PACKAGES_DEBUG += \
    bootctrl
PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd
