#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay-infinity

# ANGLE - Almost Native Graphics Layer Engine
PRODUCT_PACKAGES += \
    ANGLE

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.mep.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.mep.xml \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# IWLAN
PRODUCT_PACKAGES += \
    Iwlan
    
# Always use scudo for memory allocator
PRODUCT_USE_SCUDO := true

# PixelParts <Evolution-X>
include packages/apps/PixelParts/device.mk

# PowerShare
include hardware/google/pixel/powershare/device.mk

# ViPER4AndroidFX
# $(call inherit-product-if-exists, packages/apps/ViPER4AndroidFX/config.mk)

# Googles Face Unlock
include vendor/google/faceunlock/device.mk
# Required packages for Googles Face Unlock
PRODUCT_PACKAGES += \
   SettingsGoogleFutureFaceEnroll \
   PixelTrafficLightFaceOverlay

# wireless_charger HAL service
include device/google/gs-common/wireless_charger/wireless_charger.mk

# Build necessary packages for vendor

# Codec2
PRODUCT_PACKAGES += \
    libexynosv4l2

# GNSS
PRODUCT_PACKAGES += \
    android.hardware.sensors-V2-ndk.vendor:64

# Graphics
PRODUCT_PACKAGES += \
    libEGL_angle \
    libGLESv1_CM_angle \
    libGLESv2_angle

# Sensors
PRODUCT_PACKAGES += \
    sensors.dynamic_sensor_hal
