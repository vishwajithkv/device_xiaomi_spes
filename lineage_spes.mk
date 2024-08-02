#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Inherit some common risingOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Camera
$(call inherit-product-if-exists, vendor/xiaomi/camera/config.mk)

# Rising OS
RISING_MAINTAINER := leoxvis(vishwajithkv)
RISING_CHIPSET := Snapdragon680
PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_MAINTAINER="leoxvis(vishwajithkv)"

# Product Specifics
PRODUCT_NAME := lineage_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Fingerprint
BUILD_FINGERPRINT := "Redmi/spes/spes:13/TKQ1.221114.001/V14.0.5.0.TGCINXM:user/release-keys"
