$(call inherit-product, device/softwinner/wing-common/ProductCommon.mk)

# Overrides
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_BRAND := Android
PRODUCT_NAME := PFO
PRODUCT_DEVICE := PFO
PRODUCT_MODEL := AOSP on wing
PRODUCT_MANUFACTURER := Philippe FOUQUET

$(call inherit-product, device/softwinner/PFO/device.mk)