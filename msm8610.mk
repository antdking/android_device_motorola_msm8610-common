# Copyright (C) 2013 The CyanogenMod Project
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

LOCAL_PATH := device/motorola/msm8610-common

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

## overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Audio
PRODUCT_PACKAGES += \
    audio_policy.msm8610 \
    libaudioparameter \
    libqcomvisualizer \
    libqcomvoiceprocessing

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# HAL
PRODUCT_PACKAGES += \
    copybit.msm8610 \
    gps.msm8610 \
    gralloc.msm8610 \
    hwcomposer.msm8610 \
    keystore.msm8610 \
    lights.MSM8610 \
    memtrack.msm8610 \
    power.msm8610

# QRNG
PRODUCT_PACKAGES += qrngp

# Utilities
PRODUCT_PACKAGES += \
    charge_only_mode \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    wcnss_service

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/etc/firmware/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    $(LOCAL_PATH)/config/etc/firmware/WCNSS_qcom_wlan_factory_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_factory_nv.bin \
    $(LOCAL_PATH)/config/etc/firmware/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/config/etc/firmware/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini

# Modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/ansi_cprng.ko/:/system/lib/modules/ansi_cprng.ko \
    $(LOCAL_PATH)/prebuilt/gpio_axis.ko/:/system/lib/modules/gpio_axis.ko \
    $(LOCAL_PATH)/prebuilt/gpio_event.ko:/system/lib/modules/gpio_event.ko \
    $(LOCAL_PATH)/prebuilt/gpio_input.ko:/system/lib/modules/gpio_input.ko \
    $(LOCAL_PATH)/prebuilt/gpio_matrix.ko:/system/lib/modules/gpio_matrix.ko \
    $(LOCAL_PATH)/prebuilt/gpio_output.ko:/system/lib/modules/gpio_output.ko \
    $(LOCAL_PATH)/prebuilt/msm-buspm-dev.ko:/system/lib/modules/msm-buspm-dev.ko \
    $(LOCAL_PATH)/prebuilt/oprofile.ko:/system/lib/modules/oprofile.ko \
    $(LOCAL_PATH)/prebuilt/qcedev.ko:/system/lib/modules/qcedev.ko \
    $(LOCAL_PATH)/prebuilt/qcrypto.ko:/system/lib/modules/qcrypto.ko \
    $(LOCAL_PATH)/prebuilt/radio-iris-transport.ko:/system/lib/modules/radio-iris-transport.ko \
    $(LOCAL_PATH)/prebuilt/rdbg.ko:/system/lib/modules/rdbg.ko \
    $(LOCAL_PATH)/prebuilt/reset_modem.ko:/system/lib/modules/reset_modem.ko \
    $(LOCAL_PATH)/prebuilt/scsi_wait_scan.ko:/system/lib/modules/scsi_wait_scan.ko \

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.target.rc \
    ueventd.qcom.rc \
    init.mmi.rc \
    init.mmi.usb.rc

# Init scripts
PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.mdm.sh \
    init.mmi.boot.sh \
    init.mmi.radio.sh \
    init.mmi.touch.sh \
    init.mmi.usb.sh \
    init.qcom.class_core.sh \
    init.qcom.early_boot.sh \
    init.qcom.post_boot.sh \
    init.qcom.ril.sh \
    init.qcom.sh \
    init.qcom.ssr.sh \
    init.qcom.syspart_fixup.sh \
    init.qcom.wifi.sh

# TWRP
PRODUCT_PACKAGES += \
    twrp.fstab

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/config/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/config/etc/mixer_paths.xml:system/etc/mixer_paths.xml

# Charger - moto uses a funky ro.bootmode=mot-charger
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/bin/moto_com.sh:system/bin/moto_com.sh

# EGL config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/egl.cfg:system/lib/egl/egl.cfg

# Sap/location secuity configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/etc/sap.conf:system/etc/sap.conf \
    $(LOCAL_PATH)/config/etc/sec_config:system/etc/sec_config

# Media config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/config/etc/media_codecs.xml:system/etc/media_codecs.xml

# QCOM Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.fb_always_on=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-fma2dp=true \
    media.stagefright.enable-scan=true \
    mmp.enable.3g2=true \
    ro.audio.fm_max_volume=4096 \
    ro.qualcomm.cabl=0 \
    use.voice.path.for.pcm.voip=true \
    qcom.bt.le_dev_pwr_class=1 \
    ro.qc.sdk.audio.ssr=false \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicerec=false \
    ro.qc.sdk.audio.fluencetype=fluence \
    persist.audio.fluence.speaker=true \
    use.voice.path.for.pcm.voip=true \
    use.dedicated.device.for.voip=true \
    audio.offload.buffer.size.kb=32 \
    audio.offload.gapless.enabled=true \
    av.offload.enable=true \
    mm.enable.smoothstreaming=true \
    qcom.hw.aac.encoder=true

# Misc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.usb.mtp=0x2e82 \
    ro.usb.mtp_adb=0x2e76 \
    ro.usb.ptp=0x2e83 \
    ro.usb.ptp_adb=0x2e84 \
    ro.usb.bpt=0x2e28 \
    ro.usb.bpt_adb=0x2e29 \
    ro.usb.bpteth=0x2e2a \
    ro.usb.bpteth_adb=0x2e2b \
    persist.gps.qc_nlp_in_use=0 \
    persist.fuse_sdcard=true \
    ro.crypto.fuse_sdcard=true \
    ro.nfc.port=I2C \
    ro.cwm.forbid_format="/fsg,/firmware,/persist,/boot"

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/vendor/lib/libril-qc-qmi-1.so \
    persist.radio.msgtunnel.start=false \
    persist.sys.ssr.restart_level=3 \
    persist.sys.qc.sub.rdump.on=1 \
    ro.telephony.default_network=7 \
    telephony.lteOnCdmaDevice=0 \
    persist.radio.no_wait_for_card=1 \
    persist.radio.dfr_mode_set=1

# Opengles version 3
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608

# QCOM Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

# QC Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/vendor/lib/libqc-opt.so

$(call inherit-product, device/motorola/qcom-common/qcom-common.mk)
