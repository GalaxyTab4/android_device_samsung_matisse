#
# Copyright (C) 2014 The Android Open-Source Project
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

# This file includes all definitions that apply to ALL lt03lte devices, and
# are also specific to lt03lte devices
#
# Everything in this directory will become public


ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/samsung/lt03lte-kernel/zImage
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES := \
    $(LOCAL_KERNEL):kernel


PRODUCT_COPY_FILES += \
    device/samsung/lt03lte/google/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_COPY_FILES += \
    device/samsung/lt03lte/rootdir/etc/init.qcom.rc:root/init.qcom.rc \
    device/samsung/lt03lte/rootdir/etc/init.qcom.power.rc:root/init.qcom.power.rc \
    device/samsung/lt03lte/rootdir/etc/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/samsung/lt03lte/rootdir/etc/fstab.qcom:root/fstab.qcom \
    device/samsung/lt03lte/rootdir/etc/ueventd.qcom.rc:root/ueventd.qcom.rc

# Input device files for lt03lte
PRODUCT_COPY_FILES += \
    device/samsung/lt03lte/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/samsung/lt03lte/keylayout/sec_e-pen.kl:system/usr/keylayout/sec_e-pen.kl \
    device/samsung/lt03lte/keylayout/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl

# Prebuilt input device calibration files
PRODUCT_COPY_FILES += \
    device/samsung/lt03lte/idc/sec_e-pen.idc:system/usr/idc/sec_e-pen.idc

PRODUCT_COPY_FILES += \
    device/samsung/lt03lte/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/samsung/lt03lte/audio/mixer_paths.xml:system/etc/mixer_paths.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    device/samsung/lt03lte/media_profiles.xml:system/etc/media_profiles.xml \
    device/samsung/lt03lte/media_codecs.xml:system/etc/media_codecs.xml

PRODUCT_COPY_FILES += \
    device/samsung/lt03lte/bluetooth/bcmdhd.cal:system/etc/wifi/bcmdhd.cal

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.webview.xml:system/etc/permissions/android.software.webview.xml \

# For GPS
PRODUCT_COPY_FILES += \
    device/samsung/lt03lte/sec_config:system/etc/sec_config

PRODUCT_COPY_FILES += \
    device/samsung/lt03lte/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf



# Add WiFi Firmware
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4356/device-bcm.mk)

# WiFi cal NVRAM file

# For SPN display
PRODUCT_COPY_FILES += \
    device/samsung/lt03lte/spn-conf.xml:system/etc/spn-conf.xml

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_CHARACTERISTICS := tablet

DEVICE_PACKAGE_OVERLAYS := \
    device/samsung/lt03lte/overlay

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

PRODUCT_PACKAGES := \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    librs_jni

PRODUCT_PACKAGES += \
    gralloc.msm8974 \
    libgenlock \
    hwcomposer.msm8974 \
    memtrack.msm8974 \
    libqdutils \
    libqdMetaData

PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libstagefrighthw \
    libOmxCore \
    libmm-omxcore \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc

PRODUCT_PACKAGES += \
    audiod \
    audio.primary.msm8974 \
    audio_policy.msm8974 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    tinymix

PRODUCT_PROPERTY_OVERRIDES += \
    ro.audio.monitorRotation=true

# Audio effects
PRODUCT_PACKAGES += \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libqcomvoiceprocessingdescriptors \
    libqcompostprocbundle

PRODUCT_COPY_FILES += \
    device/samsung/lt03lte/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf

PRODUCT_PACKAGES += \
    libqomx_core \
    libmmcamera_interface \
    libmmjpeg_interface \
    camera.msm8974 \
    mm-jpeg-interface-test \
    mm-qcamera-app \
    libxml2

PRODUCT_PACKAGES += \
    keystore.msm8974

PRODUCT_PACKAGES += \
    power.msm8974

# GPS configuration
#PRODUCT_COPY_FILES += \
#    device/samsung/lt03lte/gps/gps.conf:system/etc/gps.conf \
#    device/samsung/lt03lte/gps/sap.conf:system/etc/sap.conf

# GPS
#See proprietary packages

PRODUCT_PACKAGES += \
    libion

PRODUCT_PACKAGES += \
    lights.lt03lte


PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck

# for off charging mode
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_PACKAGES += \
    bdAddrLoader \
    hwtest \
    strace

PRODUCT_PACKAGES += \
    power.lt03lte

PRODUCT_PACKAGES += \
    consumerir.lt03lte

PRODUCT_PACKAGES += \
    copybit.msm8974

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608

PRODUCT_PROPERTY_OVERRIDES += \
    qcom.hw.aac.encoder=true

PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=c2d \
    debug.egl.hw=1 \
    debug.mdpcomp.logs=0 \
    debug.sf.hw=1

PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.buffer.size.kb=32
    audio.offload.gapless.enabled=false

#libmmparser.so
PRODUCT_PROPERTY_OVERRIDES += \
    mm.enable.qcom_parser=37491

#libstagefright.so
PRODUCT_PROPERTY_OVERRIDES += \
    mm.enable.smoothstreaming=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

#PRODUCT_PROPERTY_OVERRIDES += \
#    persist.hwc.mdpcomp.enable=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.texture_cache_size=72 \
    ro.hwui.layer_cache_size=48 \
    ro.hwui.r_buffer_cache_size=8 \
    ro.hwui.path_cache_size=32 \
    ro.hwui.gradient_cache_size=1 \
    ro.hwui.drop_shadow_cache_size=6 \
    ro.hwui.texture_cache_flushrate=0.4 \
    ro.hwui.text_small_cache_width=1024 \
    ro.hwui.text_small_cache_height=1024 \
    ro.hwui.text_large_cache_width=2048 \
    ro.hwui.text_large_cache_height=1024

# Ril sends only one RIL_UNSOL_CALL_RING, so set call_ring.multiple to false
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.telephony.call_ring.multiple=0

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

# Enable AAC 5.1 output
PRODUCT_PROPERTY_OVERRIDES += \
    media.aac_51_output_enabled=true \
    media.enable-commonsource=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-fma2dp=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-player=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-scan=true \


# update 1x signal strength after 2s
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.radio.snapshot_enabled=1 \
    persist.radio.snapshot_timer=2

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.radio.use_cc_names=true

# If data_no_toggle is 1 then active and dormancy enable at all times.
# If data_no_toggle is 0 there are no reports if the screen is off.
#PRODUCT_PROPERTY_OVERRIDES += \
#    persist.radio.data_no_toggle=1

# Audio Configuration
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicerec=false \
    persist.audio.fluence.speaker=true

# set default USB configuration
# ORG
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Camera configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    camera.disable_zsl_mode=1

# setup dalvik vm configs.
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

$(call inherit-product-if-exists, hardware/qcom/msm8x74/msm8x74.mk)
$(call inherit-product-if-exists, vendor/qcom/gpu/msm8x74/msm8x74-gpu-vendor.mk)
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4339/device-bcm.mk)
$(call inherit-product-if-exists, vendor/samsung/lt03lte/lt03lte-vendor.mk)
