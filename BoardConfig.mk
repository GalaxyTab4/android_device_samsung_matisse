USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/matisse/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := matissewifi,matissewifiue,matisse3g,matisselte,matisse

# Vendor init
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := device/samsung/matisse/init/init_matisse.cpp
TARGET_UNIFIED_DEVICE := true

BLOCK_BASED_OTA := false

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := MSM8226
TARGET_BOARD_PLATFORM := msm8226
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
TARGET_CPU_SMP := true

BOARD_VENDOR := samsung
BOARD_USES_QCOM_HARDWARE := true

# Kernel
TARGET_KERNEL_CONFIG := cyanogenmod_s3ve3g_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/s3ve3g
BOARD_KERNEL_CMDLINE := console=null androidboot.console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x37 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_CUSTOM_MKBOOTIMG := device/samsung/matisse/mkbootimg
BOARD_MKBOOTIMG_ARGS := --dt device/samsung/matisse/dt.img --ramdisk_offset 0x02000000 --tags_offset 0x1e00000

# This is actually 1610612736, but reducing to 1049 MB to support users using repartition.
# Feel free to increase when needed
# See: http://forum.xda-developers.com/showpost.php?p=55293011&postcount=1
#BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1099956224
BOARD_SYSTEMIMAGE_PARTITION_SIZE    := 2097152000
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 12562627584
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 4404019200
BOARD_BOOTIMAGE_PARTITION_SIZE      := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE  := 0x00A7DEA0

#BOARD_CACHEIMAGE_PARTITION_SIZE := 1073741824
#BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Audio
AUDIO_FEATURE_ENABLED_LOW_LATENCY_CAPTURE := true
AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/matisse/bluetooth

# Connectivity - Wi-Fi
BOARD_HAS_QCOM_WLAN              := true
BOARD_HAS_QCOM_WLAN_SDK          := true
BOARD_WLAN_DEVICE                := qcwcn
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
#TARGET_PROVIDES_WCNSS_QMI        := true
TARGET_USES_QCOM_WCNSS_QMI       := true
TARGET_USES_WCNSS_CTRL           := true
WPA_SUPPLICANT_VERSION           := VER_0_8_X
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME          := "wlan"

WLAN_MODULES:
	mkdir -p $(KERNEL_MODULES_OUT)/pronto
	mv $(KERNEL_MODULES_OUT)/wlan.ko $(KERNEL_MODULES_OUT)/pronto/pronto_wlan.ko
	ln -sf /system/lib/modules/pronto/pronto_wlan.ko $(TARGET_OUT)/lib/modules/wlan.ko

TARGET_KERNEL_MODULES += WLAN_MODULES

# Hardware rendering
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/matisse/ril/

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/matisse/fstab.qcom
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888

# Healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd.qcom

# CMHW
BOARD_HARDWARE_CLASS := hardware/samsung/cmhw/ device/samsung/matisse/cmhw/

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/samsung/matisse/include

# Compat
TARGET_USES_LOGD := false

# jemalloc causes a lot of random crash on free()
MALLOC_IMPL := dlmalloc

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/matisse/sepolicy
