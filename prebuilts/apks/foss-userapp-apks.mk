PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/preinstall.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/foss-preinstall.rc                       \
    $(LOCAL_PATH)/preinstall.sh:$(TARGET_COPY_OUT_VENDOR)/etc/preinstall/foss-preinstall.sh

ifneq ($(BLISS_SUPER_VANILLA),true)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/termux.apk:$(TARGET_COPY_OUT_VENDOR)/etc/preinstall/termux.apk_all \

endif

ifneq ($(BLISS_REMOVE_KSU),true)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernelsu.apk:$(TARGET_COPY_OUT_VENDOR)/etc/preinstall/kernelsu.apk_all \

endif

ifeq ($(BLISS_BUILD_VARIANT),foss)

ifeq ($(USE_AURORA_STORE),foss)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/aurorastore.apk:$(TARGET_COPY_OUT_VENDOR)/etc/preinstall/aurorastore.apk_all

endif

ifeq ($(USE_DROIDIFY_APP),true)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/droidify.apk:$(TARGET_COPY_OUT_VENDOR)/etc/preinstall/droidify.apk_all
    
else 
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/neostore.apk:$(TARGET_COPY_OUT_VENDOR)/etc/preinstall/neostore.apk_all

endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/obtainium.apk:$(TARGET_COPY_OUT_VENDOR)/etc/preinstall/obtainium.apk_all

endif
