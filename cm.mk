# Release name
PRODUCT_RELEASE_NAME := SM-T53X

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/matisse/device_matisse.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := matisse
PRODUCT_NAME := cm_matisse
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-T53X

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=matisse TARGET_DEVICE=matisse BUILD_FINGERPRINT=samsung/matisse/matisse:4.1.2/JZO54K/matisse:user/release-keys PRIVATE_BUILD_DESC="matisse-user 4.1.2 JZO54K matisse release-keys"
