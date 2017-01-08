# Default.prop
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.zygote=zygote64_32 \
    persist.service.acm.enable=0 \
    ro.mount.fs=EXT4 \
    persist.sys.dun.override=0

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    ro.telephony.ril_class=MT6753 \
    ro.telephony.ril.config=fakeiccid \
    persist.call_recording.enabled=true \
    persist.call_recording.src=1

# MultiWindow
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.debug.multi_window=true

# Dalvik
PRODUCT_TAGS += dalvik.gc.type-precise

