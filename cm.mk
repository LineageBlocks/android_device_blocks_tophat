# Release name
PRODUCT_RELEASE_NAME := tophat

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/cm/config/common.mk)

# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:root/system/usr/share/zoneinfo/tzdata

PRODUCT_RUNTIMES := runtime_libart_default

PRODUCT_NAME := lineage_tophat
PRODUCT_BRAND := BLOCKS
PRODUCT_DEVICE := tophat
PRODUCT_MODEL := BLOCKS modular smartwatch
PRODUCT_MANUFACTURER := blocks

TARGET_VENDOR_PRODUCT_NAME := tophat
TARGET_VENDOR_DEVICE_NAME := tophat
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=tophat PRODUCT_NAME=tophat