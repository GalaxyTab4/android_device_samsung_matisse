#Bliss Audio Mod
BLISS_AUDIO_MOD := viper

# Inherit some common BOSP stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/matisse/full_matisse.mk)

# Release name
PRODUCT_RELEASE_NAME := SM-T53X
PRODUCT_NAME := bliss_matisse
