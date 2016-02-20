LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := autohalt
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SBIN
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_STATIC_LIBRARIES += libz libstdc++ libcutils liblog libm libc
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
LOCAL_SRC_FILES := autohalt.c
include $(BUILD_EXECUTABLE)
