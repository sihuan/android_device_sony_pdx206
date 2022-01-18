#
# Copyright (C) 2018 The LineageOS Project
# Copyright (C) 2021 The PixelExperience Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/sony/pdx206/pdx206-vendor.mk)

# Inherit from common
$(call inherit-product, device/sony/edo-common/edo.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi


# DTBO
LOCAL_DTB := $(LOCAL_PATH)/prebuilt/dtb.img

PRODUCT_COPY_FILES += \
    $(LOCAL_DTB):dtb.img



# Shims
PRODUCT_PACKAGES += \
    lib-imsvtshim

PRODUCT_EXTRA_VNDK_VERSIONS := 30

# For userdebug builds
PRODUCT_PRODUCT_PROPERTIES += \
	ro.secure=0 \
	ro.adb.secure=0 \
	ro.debuggable=1

# MTP
PRODUCT_PRODUCT_PROPERTIES += \
	persist.sys.usb.config=mtp,adb


# Device specific overlay
DEVICE_PACKAGE_OVERLAYS += \
     $(LOCAL_PATH)/overlay-pe
