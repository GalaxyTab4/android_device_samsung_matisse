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

<<<<<<< HEAD
LOCAL_PATH := device/samsung/millet-common

PRODUCT_CHARACTERISTICS := tablet

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

=======
PRODUCT_CHARACTERISTICS := tablet

>>>>>>> refs/remotes/GalaxyTab4/cm-13.0
# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Proprietary files
<<<<<<< HEAD
$(call inherit-product, vendor/samsung/matisse-matisse/millet-common-vendor.mk)
=======
$(call inherit-product, vendor/samsung/matisse/matisse-vendor.mk)
>>>>>>> refs/remotes/GalaxyTab4/cm-13.0

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

<<<<<<< HEAD
# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl

=======
>>>>>>> refs/remotes/GalaxyTab4/cm-13.0
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
<<<<<<< HEAD
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml
=======
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.target.rc
>>>>>>> refs/remotes/GalaxyTab4/cm-13.0

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-8226.conf:system/etc/thermal-engine-8226.conf

# Wifi
<<<<<<< HEAD
PRODUCT_COPY_FILES += \
    kernel/samsung/matisse/drivers/staging/prima/firmware_bin/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    kernel/samsung/matisse/drivers/staging/prima/firmware_bin/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini

=======
>>>>>>> refs/remotes/GalaxyTab4/cm-13.0
PRODUCT_PACKAGES += \
    hostapd_default.conf \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
<<<<<<< HEAD
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# Radio (needed for audio controls even on wifi-only)
PRODUCT_PACKAGES += \
    libsecril-client \
    libsecril-client-sap
    ro.telephony.ril_class=SamsungMSM8226RIL\
    ro.telephony.lteOnGsmDevice=0\
    ro.telephony.default_network=0\

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0\
  ro.build.fingerprint=samsung/millet3gxx/millet3g:5.0.2/LRX22G/T331XXU1BOD8:user/release-keys\
    ro.build.description=millet3gxx-user 5.0.2 LRX22G T331XXU1BOD8 release-keys\
    ro.product.model=SM-T331\
    ro.product.device=millet3g\

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
=======
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

PRODUCT_COPY_FILES += \
		    $(LOCAL_PATH)/prebuilt/boot_matisse3g.img:install/kernel/boot_matisse3g.img \
		    $(LOCAL_PATH)/prebuilt/boot_matisselte.img:install/kernel/boot_matisselte.img
>>>>>>> refs/remotes/GalaxyTab4/cm-13.0

# Inherit from qcom-common
$(call inherit-product, device/samsung/msm8226-common/msm8226.mk)
