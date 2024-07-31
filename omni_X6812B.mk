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

# Inherit from X6812B device
$(call inherit-product, device/infinix/X6812B/device.mk)

PRODUCT_DEVICE := X6812B
PRODUCT_NAME := omni_X6812B
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix HOT 11s NFC
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_X6812B-eng 16.1.0 RQ1A.210205.004 eng.root.20220705.115906 test-keys"

BUILD_FINGERPRINT := Infinix/twrp_X6812B/X6812B:16.1.0/RQ1A.210205.004/root07051156:eng/test-keys
