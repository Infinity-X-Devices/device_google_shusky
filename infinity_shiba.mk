#
# SPDX-FileCopyrightText: 2021-2025 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2025 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Inherit device configuration
DEVICE_CODENAME := shiba
DEVICE_PATH := device/google/shusky
VENDOR_PATH := vendor/google/shiba
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)
$(call inherit-product, device/google/zuma/infinity_common.mk)
$(call inherit-product, $(DEVICE_PATH)/$(DEVICE_CODENAME)/device-infinity.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8
PRODUCT_NAME := infinity_$(DEVICE_CODENAME)

# Infinity Build Flags
INFINITY_MAINTAINER := Libra420T
INFINITY_BUILD_TYPE := OFFICIAL

# Blur
TARGET_SUPPORTS_BLUR := true
# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true
# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true
# UDFPS
TARGET_HAS_UDFPS := true

# GMS
WITH_GMS := true
WITH_GAPPS := true
TARGET_BUILD_GOOGLE_TELEPHONY := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# Aperture
PRODUCT_NO_CAMERA := true
# AudioFX
TARGET_SHIPS_AUDIOFX := true

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="shiba-user 16 BP2A.250805.005 13691446 release-keys" \
    BuildFingerprint=google/shiba/shiba:16/BP2A.250805.005/13691446:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
