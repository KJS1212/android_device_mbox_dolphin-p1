#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from dolphin-p1 device
$(call inherit-product, device/mbox/dolphin-p1/device.mk)

PRODUCT_DEVICE := dolphin-p1
PRODUCT_NAME := omni_dolphin-p1
PRODUCT_BRAND := Allwinner
PRODUCT_MODEL := MBOX
PRODUCT_MANUFACTURER := mbox

PRODUCT_GMS_CLIENTID_BASE := android-mbox

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dolphin_p1-userdebug 10 QP1A.190711.020 eng.willie.20201017.184323 test-keys"

BUILD_FINGERPRINT := Allwinner/dolphin_p1/dolphin-p1:10/QP1A.190711.020/willie10171840:userdebug/test-keys
