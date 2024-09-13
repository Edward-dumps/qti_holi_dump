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

# Inherit from holi device
$(call inherit-product, device/qualcomm/holi/device.mk)

PRODUCT_DEVICE := holi
PRODUCT_NAME := omni_holi
PRODUCT_BRAND := qti
PRODUCT_MODEL := Holi for arm64
PRODUCT_MANUFACTURER := qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="holi-userdebug 11 RKQ1.230130.001 lnxbuild02161942 test-keys"

BUILD_FINGERPRINT := qti/holi/holi:11/RKQ1.230130.001/lnxbuild02161942:userdebug/test-keys
