LOCAL_PATH := device/motorola/msm8610-common/config/keylayout
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
        $(LOCAL_PATH)/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl