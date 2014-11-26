LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := init_parttion.sh
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SBIN
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT_SBIN)
LOCAL_SRC_FILES := init_parttion.sh
include $(BUILD_PREBUILT)
