#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/lmi/device.mk)

# Inherit some common aicp stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true

#GAPPS
CHERISH_WITHGAPPS=true

#Official
CHERISH_BUILD_TYPE:=OFFICIAL

# Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cherish.maintainer=Dinh San

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cherish_lmi
PRODUCT_DEVICE := lmi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := F2 Pro
PRODUCT_MANUFACTURER := Xiaomi

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ1A.210205.004/7038034:user/release-keys"
