#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# OMX 
TARGET_SUPPORTS_OMX_SERVICE := false

# Inherit from raphael device
$(call inherit-product, device/xiaomi/raphael/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot animation
scr_resolution := 1080
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Rising
PRODUCT_BUILD_PROP_OVERRIDES += \
 	RisingChipset="Snapdragon 855" \
 	RisingMaintainer="Tactus"

# Blur
TARGET_ENABLE_BLUR := true

# Launchers
#TARGET_DEFAULT_PIXEL_LAUNCHER := true
#TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

# Extra stuff
TARGET_PREBUILT_BCR := true

# Camera
TARGET_PREBUILT_GOOGLE_CAMERA := true
 		
# Gapps
WITH_GMS := true

# Exclude QCOM powerhal manifest
TARGET_PROVIDES_POWERHAL := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_raphael
PRODUCT_DEVICE := raphael
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Xiaomi/raphael/raphael:11/RKQ1.200826.002/V12.5.2.0.RFKMIXM:user/release-keys
