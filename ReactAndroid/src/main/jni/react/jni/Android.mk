LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := reactnativejni

LOCAL_SRC_FILES := \
  CatalystInstanceImpl.cpp \
  CxxModuleWrapper.cpp \
  JavaModuleWrapper.cpp \
  JReactMarker.cpp \
  JMessageQueueThread.cpp \
  JSLoader.cpp \
  JSLogging.cpp \
  JniJSModulesUnbundle.cpp \
  MethodInvoker.cpp \
  ModuleRegistryBuilder.cpp \
  NativeArray.cpp \
  NativeCommon.cpp \
  NativeDeltaClient.cpp \
  NativeMap.cpp \
  OnLoad.cpp \
  ProxyExecutor.cpp \
  ReadableNativeArray.cpp \
  ReadableNativeMap.cpp \
  WritableNativeArray.cpp \
  WritableNativeMap.cpp \

LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../..

LOCAL_CFLAGS += -Wall -Werror -fvisibility=hidden -fexceptions -frtti
CXX11_FLAGS := -std=c++11
LOCAL_CFLAGS += $(CXX11_FLAGS)
LOCAL_EXPORT_CPPFLAGS := $(CXX11_FLAGS)

LOCAL_LDLIBS += -landroid
LOCAL_SHARED_LIBRARIES := libfolly_json libfbjni libglog_init libyoga libprivatedata
LOCAL_STATIC_LIBRARIES := libreactnative

include $(BUILD_SHARED_LIBRARY)

$(call import-module,cxxreact)
$(call import-module,privatedata)
$(call import-module,fb)
$(call import-module,fbgloginit)
$(call import-module,folly)
$(call import-module,yogajni)
