# This file includes all definitions that apply to ALL find7a devices, and
# are also specific to find7a devices
#
# Everything in this directory will become public

# Include common makefile
$(call inherit-product, device/samsung/msm8226-common/common.mk)

LOCAL_PATH := device/samsung/matisse

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/configs/init.qcom.power.rc:root/init.qcom.power.rc \
    $(LOCAL_PATH)/configs/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/configs/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/configs/ueventd.qcom.rc:root/ueventd.qcom.rc


    $(LOCAL_PATH)/configs/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/configs/twrp.fstab:recovery/root/etc/twrp.fstab

# Sensor configuration from Oppo
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensor/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160 
