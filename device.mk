#
# Copyright (C) 2022 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit proprietary files
$(call inherit-product-if-exists, vendor/xiaomi/whyred/whyred-vendor.mk)

# AID/fs configs
PRODUCT_PACKAGES += \
    fs_config_files

# Board Platform
TARGET_BOARD_PLATFORM := sdm660

# IPC router config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config

# Kernel
TARGET_KERNEL_VERSION := 4.19

# Public Libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
