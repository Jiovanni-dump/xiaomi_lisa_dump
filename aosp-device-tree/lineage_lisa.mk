#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from lisa device
$(call inherit-product, device/xiaomi/lisa/device.mk)

PRODUCT_DEVICE := lisa
PRODUCT_NAME := lineage_lisa
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2109119DG
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lisa_global-user 13 RKQ1.211001.001 V14.0.7.0.TKOMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/lisa_global/lisa:13/RKQ1.211001.001/V14.0.7.0.TKOMIXM:user/release-keys
