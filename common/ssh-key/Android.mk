LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := default_authorized_keys
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/ssh
LOCAL_SRC_FILES := default_authorized_keys.android
include $(BUILD_PREBUILT)
