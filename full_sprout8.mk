#
# Copyright 2016 Nitrogen Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_NAME := full_sprout8
PRODUCT_DEVICE := sprout8
PRODUCT_BRAND := Google
PRODUCT_MODEL := Sprout 8
PRODUCT_MANUFACTURER := Google

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/google/sprout8/device.mk)

# Call the proprietary setup
$(call inherit-product, vendor/google/sprout/sprout-vendor.mk)
