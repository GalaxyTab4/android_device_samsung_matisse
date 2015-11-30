# Copyright (C) 2014 The CyanogenMod Project
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

LOCAL_PATH := device/samsung/millet-common

PRODUCT_CHARACTERISTICS := tablet

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Proprietary files
$(call inherit-product, vendor/samsung/matisse-matisse/millet-common-vendor.mk)

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl

# Doze
PRODUCT_PACKAGES += \
    SamsungDoze

# Lights
PRODUCT_PACKAGES += \
    lights.msm8226

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-8226.conf:system/etc/thermal-engine-8226.conf

# Wifi
PRODUCT_COPY_FILES += \
    kernel/samsung/matisse/drivers/staging/prima/firmware_bin/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    kernel/samsung/matisse/drivers/staging/prima/firmware_bin/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini

PRODUCT_PACKAGES += \
    hostapd_default.conf \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# Radio (needed for audio controls even on wifi-only)
PRODUCT_PACKAGES += \
    libsecril-client \
    libsecril-client-sap

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0

# Common build.props
PRODUCT_PROPERTY_OVERRIDES += \
	audio.offload.buffer.size.kb=32 \
	audio.offload.gapless.enabled=false \
	audio.offload.multiple.enabled=false \
	av.offload.enable=false \
	av.streaming.offload.enable=false \
	media.aac_51_output_enabled=true \
	mm.enable.qcom_parser=3314291 \
	mm.enable.smoothstreaming=true \
	ro.qc.sdk.audio.fluencetype=none \
	use.voice.path.for.pcm.voip=false \
	ro.bluetooth.hfp.ver=1.6 \
	ro.qualcomm.bt.hci_transport=smd \
	camera2.portability.force_api=1 \
	debug.composition.type=c2d \
	ro.opengles.version=196608 \
	ro.sf.lcd_density=160 \
	persist.gps.qc_nlp_in_use=1 \
	ro.gps.agps_provider=1 \
	ro.qc.sdk.izat.premium_enabled=0 \
	ro.qc.sdk.izat.service_mask=0x0 \
	persist.timed.enable=true \
	ro.qualcomm.cabl=0 \
	ro.vendor.extension_library=/system/vendor/lib/libqc-opt.so \
	persist.data.netmgrd.qos.enable=false \
	persist.radio.add_power_save=1 \
	ro.use_data_netmgrd=false \
	ro.qc.sdk.gestures.camera=false \
	ro.qc.sdk.camera.facialproc=false \
	ro.qc.sdk.sensors.gestures=true \
	wifi.interface=wlan0

# Inherit from qcom-common
$(call inherit-product, device/samsung/msm8226-common/msm8226.mk)
