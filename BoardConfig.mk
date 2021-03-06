# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := msm8953

# Platform
TARGET_BOARD_PLATFORM := msm8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78af000 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80008000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000

BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_APPEND_DTB := true
TARGET_KERNEL_CONFIG := ze552kl-userdebug_defconfig
TARGET_PREBUILT_KERNEL := device/asus/ze552kl/recovery/kernel
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-

TARGET_LDPRELOAD := libNimsWrap.so

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# Recovery
RECOVERY_VARIANT := twrp
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Partitions

# Keystore
TARGET_PROVIDES_KEYMASTER := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# TWRP-Specific
TW_THEME := portrait_hdpi
TW_INCLUDE_CRYPTO := true
TW_NO_EXFAT_FUSE := true
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_EXTERNAL_STORAGE := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_SUPPRESS_SECURE_ERASE := true
#TW_TARGET_USES_QCOM_BSP := true
#TW_NEW_ION_HEAP := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_EXCLUDE_SUPERSU := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_NO_SCREEN_BLANK := true
# TW_NO_SCREEN_TIMEOUT := true

# original path was /sys/devices/soc/1a00000.qcom,mdss_mdp/1a00000.qcom,mdss_mdp:qcom,mdss_fb_primary/leds/lcd-backlight/brightness
TW_BRIGHTNESS_PATH := "/sys/devices/soc/1a00000.qcom\x2mdss_mdp/1a00000.qcom\x2mdss_mdp:qcom\x2mdss_fb_primary/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255

TARGET_RECOVERY_DEVICE_MODULES := \
    libbinder \
    libgui \
    libui \
    libEGL \
    libGLES_trace \
    libGLESv2 \
    libprotobuf-cpp-lite \
    libsync \
    qseecomd

TW_RECOVERY_ADDITIONAL_RELINK_FILES := \
    $(OUT)/system/lib64/libbinder.so \
    $(OUT)/system/lib64/libgui.so \
    $(OUT)/system/lib64/libui.so \
    $(OUT)/system/lib64/libEGL.so \
    $(OUT)/system/lib64/libGLES_trace.so \
    $(OUT)/system/lib64/libGLESv2.so \
    $(OUT)/system/lib64/libprotobuf-cpp-lite.so \
    $(OUT)/system/lib64/libsync.so \
    $(OUT)/system/bin/qseecomd

TARGET_UNIFIED_DEVICE := true
TARGET_SYSTEM_PROP := device/asus/ze552kl/system.prop
