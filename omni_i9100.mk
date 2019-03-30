#
# Copyright 2012 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := i9100

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Overlay
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=220

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    resize2fs_static \
    setup_fs

# F2FS Filesystem
PRODUCT_PACKAGES += \
    fsck.f2fs \
    mkfs.f2fs    
    
# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    sensors.exynos4

# Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_i9100
PRODUCT_DEVICE := i9100
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I9100
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100 TARGET_DEVICE=GT-I9100
BUILD_FINGERPRINT=samsung/GT-I9100/GT-I9100:4.1.2/JZO54K/I9100XWMS2:user/release-keys
PRIVATE_BUILD_DESC="GT-I9100-user 4.1.2 JZO54K I9100XWMS2 release-keys"
