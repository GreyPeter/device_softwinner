DEVICE_PACKAGE_OVERLAYS := device/softwinner/PFO/overlay

# gps
BOARD_USES_GPS_TYPE := simulator
PRODUCT_PACKAGES += \
    gps.exDroid \
    libcrypto_static \
    libmdnssd

# drm
PRODUCT_PROPERTY_OVERRIDES += \
	drm.service.enabled=true

# for recovery
PRODUCT_COPY_FILES += \
    device/softwinner/PFO/recovery.fstab:recovery.fstab \
    device/softwinner/PFO/modules/modules/disp.ko:obj/disp.ko \
    device/softwinner/PFO/modules/modules/lcd.ko:obj/lcd.ko \
    device/softwinner/PFO/modules/modules/hdmi.ko:obj/hdmi.ko \
    device/softwinner/PFO/modules/modules/hdcp.ko:obj/hdcp.ko \
    device/softwinner/PFO/modules/modules/gt82x.ko:obj/gt82x.ko \
    device/softwinner/PFO/modules/modules/gt811.ko:obj/gt811.ko \
    device/softwinner/PFO/modules/modules/ft5x_ts.ko:obj/ft5x_ts.ko \
    device/softwinner/PFO/modules/modules/zet622x.ko:obj/zet622x.ko \
    device/softwinner/PFO/modules/modules/gslX680.ko:obj/gslX680.ko \
    device/softwinner/PFO/modules/modules/gt9xx_ts.ko:obj/gt9xx_ts.ko \
    device/softwinner/PFO/modules/modules/sw_device.ko:obj/sw_device.ko 

#TARGET_RECOVERY_FSTAB = device/softwinner/PFO/recovery.fstab
	
PRODUCT_COPY_FILES += \
    device/softwinner/PFO/init.sun7i.rc:root/init.sun7i.rc \
    device/softwinner/PFO/init.recovery.sun7i.rc:root/init.recovery.sun7i.rc \
    device/softwinner/PFO/ueventd.sun7i.rc:root/ueventd.sun7i.rc \
    device/softwinner/PFO/modules/modules/nand.ko:root/nand.ko \
    device/softwinner/PFO/fstab.sun7i:root/fstab.sun7i

PRODUCT_COPY_FILES += \
	device/softwinner/PFO/configs/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

	

PRODUCT_COPY_FILES += \
    device/softwinner/PFO/configs/camera.cfg:system/etc/camera.cfg \
    device/softwinner/PFO/configs/cfg-Gallery2.xml:system/etc/cfg-Gallery2.xml \
    device/softwinner/PFO/configs/gsensor.cfg:system/usr/gsensor.cfg \
    device/softwinner/PFO/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/softwinner/PFO/configs/sw-keyboard.kl:system/usr/keylayout/sw-keyboard.kl \
    device/softwinner/PFO/configs/tp.idc:system/usr/idc/tp.idc

#    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml   \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

PRODUCT_COPY_FILES += \
    device/softwinner/PFO/initlogo.rle:root/initlogo.rle \
    device/softwinner/PFO/media/bootanimation.zip:system/media/bootanimation.zip \
    device/softwinner/PFO/media/boot.wav:system/media/boot.wav \
    device/softwinner/PFO/media/bootlogo.bmp:system/media/bootlogo.bmp \
    device/softwinner/PFO/media/initlogo.bmp:system/media/initlogo.bmp 

# wifi & bt config file
PRODUCT_COPY_FILES += \
	device/softwinner/wing-common/hardware/rt73.bin:system/vendor/firmware/rt73.bin \
	device/softwinner/wing-common/hardware/rt2870.bin:system/vendor/firmware/rt2870.bin \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml 
#	system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf

# rtl8723as bt fw and config
#PRODUCT_COPY_FILES += \
#   device/softwinner/wing-common/hardware/realtek/bluetooth/rtl8723as/rlt8723a_chip_b_cut_bt40_fw.bin:system/etc/rlt8723a_chip_b_cut_bt40_fw.bin \
#   device/softwinner/wing-common/hardware/realtek/bluetooth/rtl8723as/rtk8723_bt_config:system/etc/rtk8723_bt_config

# bcm40181 sdio wifi fw and nvram
#PRODUCT_COPY_FILES += \
#   hardware/broadcom/wlan/firmware/bcm40181/fw_bcm40181a2_p2p.bin:system/vendor/modules/fw_bcm40181a2_p2p.bin \
#   hardware/broadcom/wlan/firmware/bcm40181/fw_bcm40181a2_apsta.bin:system/vendor/modules/fw_bcm40181a2_apsta.bin \
#   hardware/broadcom/wlan/firmware/bcm40181/fw_bcm40181a2.bin:system/vendor/modules/fw_bcm40181a2.bin \
#   hardware/broadcom/wlan/firmware/bcm40181/bcm40181_nvram.txt:system/vendor/modules/bcm40181_nvram.txt

# bcm40183 sdio wifi fw and nvram
#PRODUCT_COPY_FILES += \
#   hardware/broadcom/wlan/firmware/bcm40183/fw_bcm40183b2_p2p.bin:system/vendor/modules/fw_bcm40183b2_p2p.bin \
#   hardware/broadcom/wlan/firmware/bcm40183/fw_bcm40183b2_apsta.bin:system/vendor/modules/fw_bcm40183b2_apsta.bin \
#   hardware/broadcom/wlan/firmware/bcm40183/fw_bcm40183b2.bin:system/vendor/modules/fw_bcm40183b2.bin \
#   hardware/broadcom/wlan/firmware/bcm40183/bcm40183_nvram.txt:system/vendor/modules/bcm40183_nvram.txt

# ap6210 sdio wifi fw and nvram
#PRODUCT_COPY_FILES += \
#   hardware/broadcom/wlan/firmware/ap6210/fw_bcm40181a2.bin:system/vendor/modules/fw_bcm40181a2.bin \
#   hardware/broadcom/wlan/firmware/ap6210/fw_bcm40181a2_apsta.bin:system/vendor/modules/fw_bcm40181a2_apsta.bin \
#   hardware/broadcom/wlan/firmware/ap6210/fw_bcm40181a2_p2p.bin:system/vendor/modules/fw_bcm40181a2_p2p.bin \
#   hardware/broadcom/wlan/firmware/ap6210/nvram_ap6210.txt:system/vendor/modules/nvram_ap6210.txt \
#   hardware/broadcom/wlan/firmware/ap6210/bcm20710a1.hcd:system/vendor/modules/bcm20710a1.hcd

PRODUCT_COPY_FILES += \
	device/softwinner/PFO/ilitek_ts.idc:system/usr/idc/ilitek_ts.idc \
	device/softwinner/PFO/ilitek_ts.idc:system/usr/idc/ft5x_ts.idc
	
# When set ro.sys.adaptive_memory=1, firmware can adaptive different dram size.
# And dalvik vm parameters configuration will become invalid.
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sys.adaptive_memory=1

# dalvik vm parameters
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapsize=128m \
    dalvik.vm.heapstartsize=6m \
    dalvik.vm.heapgrowthlimit=64m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512K \
    dalvik.vm.heapmaxfree=2m

# usb
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp \
    ro.udisk.lable=WING \
    ro.adb.secure=1

# ui
PRODUCT_PROPERTY_OVERRIDES += \
    ro.property.tabletUI=false \
    ro.sf.lcd_density=120 \
    ro.property.fontScale=1.0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.firmware=v3.0

# function
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.bootfast=true

# default language setting
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.country=US \
	persist.sys.language=en

$(call inherit-product-if-exists, device/softwinner/PFO/modules/modules.mk)
