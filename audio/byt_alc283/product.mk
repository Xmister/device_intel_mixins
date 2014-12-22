#
# Audio HAL
#
byt_alc283_path := device/intel/mixins/audio/byt_alc283

TARGET_KERNEL_CONFIG_OVERRIDES += $(byt_alc283_path)/kernel_defconfig_overlay

# Hardware HAL
PRODUCT_PACKAGES += \
	audio_hal_configurable \
    libaudioresample \
    audio.primary.$(TARGET_PRODUCT) \
    audio.a2dp.default \
    audio.hsp.default

# Tinyalsa tools
PRODUCT_PACKAGES += \
    tinyplay \
    tinycap \
    tinymix \
    tinypcminfo
    
PRODUCT_PACKAGES += \
    alsa_aplay \
    alsa_ctl \
    alsa_amixer \
    
# Parameter-framework files
PRODUCT_PACKAGES += \
    parameter-framework.audio.bayleybay \
    libparameter \
    parameter-connector-test \
    libxmlserializer \
    liblpe-subsystem \
    libtinyamixer-subsystem \
    libtinyalsactl-subsystem \
    libfs-subsystem \
    libproperty-subsystem \
    parameter

# HDMI audio HAL
PRODUCT_PACKAGES += \
   audio.hdmi.$(PRODUCT_NAME)


# NXP audio effects
PRODUCT_PACKAGES += \
    libbundlewrapper.so \
    libreverbwrapper.so \
    libxmlparser.so \
    LvmDefaultControlParams.xml \
    LvmSessionConfigurationMinus1.xml

# Remote submix audio
PRODUCT_PACKAGES += \
     audio.r_submix.default

PRODUCT_COPY_FILES += \
    $(byt_alc283_path)/audio_policy.conf:system/etc/audio_policy.conf \
    $(byt_alc283_path)/mixer_paths_Analog_Devices.xml:system/etc/mixer_paths_Analog_Devices.xml \
    $(byt_alc283_path)/mixer_paths_unknown.xml:system/etc/mixer_paths_unknown.xml \
    $(byt_alc283_path)/mixer_paths_ALC283.xml:system/etc/mixer_paths_ALC283.xml
