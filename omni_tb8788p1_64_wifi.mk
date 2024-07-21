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

# Inherit from tb8788p1_64_wifi device
$(call inherit-product, device/alps/tb8788p1_64_wifi/device.mk)

PRODUCT_DEVICE := tb8788p1_64_wifi
PRODUCT_NAME := omni_tb8788p1_64_wifi
PRODUCT_BRAND := alps
PRODUCT_MODEL := TALIH-PD1
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_tb8788p1_64_wifi-user 11 RP1A.200720.011 1701937278 release-keys"

BUILD_FINGERPRINT := alps/full_tb8788p1_64_wifi/tb8788p1_64_wifi:11/RP1A.200720.011/1701937278:user/release-keys
