#
# Copyright (C) 2021 The Arrow-OS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from common.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Arrow-OS stuff
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit Lawnchair stuff
$(call inherit-product-if-exists, vendor/lawnchair/lawnchair.mk)

TARGET_BOOT_ANIMATION_RES := 1080
IS_PHONE := true
WITH_GAPPS := true
ARROW_GAPPS := true
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := pdx206
PRODUCT_MANUFACTURER := Sony
PRODUCT_NAME := arrow_pdx206
PRODUCT_MODEL := Xperia 5 II
PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

TARGET_VENDOR_PRODUCT_NAME := pdx206

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Sony/pdx206/pdx2062 10 QKQ1.200108.002 1:user release-keys"
BUILD_FINGERPRINT := Sony/pdx206/pdx206:10/QKQ1.200108.002/1:user/release-keys
