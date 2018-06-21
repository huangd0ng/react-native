LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := reactnative

LOCAL_SRC_FILES := \
  CxxNativeModule.cpp \
  Instance.cpp \
  JSBigString.cpp \
  JSBundleType.cpp \
  JSDeltaBundleClient.cpp \
  JSExecutor.cpp \
  JSIndexedRAMBundle.cpp \
  MethodCall.cpp \
  ModuleRegistry.cpp \
  NativeToJsBridge.cpp \
  RAMBundleRegistry.cpp \
  ReactMarker.cpp \

  #Platform.cpp \
  #JSCExecutor.cpp \
  #JSCLegacyTracing.cpp \
  #JSCMemory.cpp \
  #JSCNativeModules.cpp \
  #JSCPerfStats.cpp \
  #JSCSamplingProfiler.cpp \
  #JSCTracing.cpp \
  #JSCUtils.cpp \

LOCAL_C_INCLUDES := $(LOCAL_PATH)/..
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

LOCAL_CFLAGS := \
  -DLOG_TAG=\"ReactNative\"

LOCAL_CFLAGS += -Wall -Werror -fexceptions -frtti
CXX11_FLAGS := -std=c++11
LOCAL_CFLAGS += $(CXX11_FLAGS)
LOCAL_EXPORT_CPPFLAGS := $(CXX11_FLAGS)

LOCAL_SHARED_LIBRARIES := libfb libfolly_json libglog

include $(BUILD_STATIC_LIBRARY)

$(call import-module,fb)
$(call import-module,folly)
$(call import-module,glog)
$(call import-module,jsinspector)
$(call import-module,privatedata)
