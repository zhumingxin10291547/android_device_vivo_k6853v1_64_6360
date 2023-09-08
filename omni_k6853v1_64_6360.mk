#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from k6853v1_64_6360 device
$(call inherit-product, device/vivo/k6853v1_64_6360/device.mk)

PRODUCT_DEVICE := k6853v1_64_6360
PRODUCT_NAME := omni_k6853v1_64_6360
PRODUCT_BRAND := vivo
PRODUCT_MODEL := vivo
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k6853v1_64_6360-user 10 QP1A.190711.020 compiler12021806 release-keys"

BUILD_FINGERPRINT := vivo/PD2057/PD2057:10/QP1A.190711.020/compiler12021806:user/release-keys
