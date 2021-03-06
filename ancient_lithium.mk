#
# Copyright (C) 2017-2019 The LineageOS Project
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

# Inherit from lithium device
$(call inherit-product, device/xiaomi/lithium/device.mk)

# Inherit some common Ancient stuff.
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080

#GApps
CURRENT_BUILD_TYPE := gapps
TARGET_GAPPS_ARCH := arm64

qemu.hw.mainkeys := 0

# Device identifier. This must come after all inclusions
PRODUCT_NAME := ancient_lithium
PRODUCT_DEVICE := lithium
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi MIX
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="lithium" \
    PRIVATE_BUILD_DESC="lithium-user 8.0.0 OPR1.170623.032 V9.6.1.0.OAHMIFD release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/lithium/lithium:8.0.0/OPR1.170623.032/V9.6.1.0.OAHMIFD:user/release-keys"
