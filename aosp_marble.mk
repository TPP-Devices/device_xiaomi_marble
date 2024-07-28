#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from marble device
$(call inherit-product, device/xiaomi/marble/device.mk)

# Inherit from common aosp configuration
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Device identifier
PRODUCT_BRAND := POCO
PRODUCT_DEVICE := marble
PRODUCT_MODEL := 23049PCD8G
PRODUCT_NAME := aosp_marble
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_SYSTEM_NAME := marble_global
PRODUCT_SYSTEM_DEVICE := marble

# PixelPlus OS
TARGET_SUPPORTS_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_SUPPORTS_QUICK_TAP := true
CUSTOM_BUILD_TYPE := Official

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="marble_global-user 14 UKQ1.230804.001 V816.0.8.0.UMREUXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := POCO/marble_global/marble:14/UKQ1.230804.001/V816.0.8.0.UMREUXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
