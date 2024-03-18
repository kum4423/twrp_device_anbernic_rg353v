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

# Inherit from RG353V device
$(call inherit-product, device/rockchip/RG353V/device.mk)

PRODUCT_DEVICE := RG353V
PRODUCT_NAME := omni_RG353V
PRODUCT_BRAND := RG353V
PRODUCT_MODEL := RG353V
PRODUCT_MANUFACTURER := rockchip

PRODUCT_GMS_CLIENTID_BASE := android-rockchip

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rk3566_rgo-userdebug 11 RQ3A.210705.001 eng.dell.20220921.222751 release-keys"

BUILD_FINGERPRINT := rockchip/rk3566_rgo/rk3566_rgo:11/RQ3A.210705.001/dell09212225:userdebug/release-keys
