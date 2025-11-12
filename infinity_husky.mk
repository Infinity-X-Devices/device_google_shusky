#
# SPDX-FileCopyrightText: 2021-2025 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2025 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Inherit device configuration
DEVICE_CODENAME := husky
DEVICE_PATH := device/google/shusky
VENDOR_PATH := vendor/google/husky
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)
$(call inherit-product, device/google/zuma/infinity_common.mk)
$(call inherit-product, $(DEVICE_PATH)/$(DEVICE_CODENAME)/device-infinity.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_NAME := infinity_$(DEVICE_CODENAME)

# Infinity Build Flags
INFINITY_MAINTAINER := Libra420T
INFINITY_BUILD_TYPE := OFFICIAL

WITH_GMS := false
WITH_GAPPS := false

BYPASS_CHARGE_SUPPORTED := true

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_SCREEN_HEIGHT := 2992
TARGET_SCREEN_WIDTH := 1344

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="husky-user 16 BP2A.250805.005 13691446 release-keys" \
    BuildFingerprint=google/husky/husky:16/BP2A.250805.005/13691446:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
