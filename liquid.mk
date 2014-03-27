# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

$(call inherit-product, device/samsung/hercules/full_hercules.mk)

# Enhanced NFC
$(call inherit-product, vendor/liquid/config/nfc_enhanced.mk)

# Inherit some common liquid stuff.
$(call inherit-product, vendor/liquid/config/common_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T989 TARGET_DEVICE=SGH-T989 BUILD_FINGERPRINT="samsung/SGH-T989/SGH-T989:4.4/KRT16M/T989UVMC6:user/release-keys" PRIVATE_BUILD_DESC="SGH-T989-user 4.4 KRT16M UVMC6 release-keys"

PRODUCT_NAME := liquid_hercules
PRODUCT_DEVICE := hercules

