#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from T0801LAV2 device
$(call inherit-product, device/nuu/T0801LAV2/device.mk)

PRODUCT_DEVICE := T0801LAV2
PRODUCT_NAME := omni_T0801LAV2
PRODUCT_BRAND := NUU
PRODUCT_MODEL := T0801L
PRODUCT_MANUFACTURER := nuu

PRODUCT_GMS_CLIENTID_BASE := android-suncupid

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_tb8765ap1_bsp_1g_k419-user 12 SP1A.210812.016 1676369420 release-keys"

BUILD_FINGERPRINT := NUU/Tab_8P/T0801LAV2:12/SP1A.210812.016/1676369420:user/release-keys
