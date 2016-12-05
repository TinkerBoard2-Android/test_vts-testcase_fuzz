#
# Copyright (C) 2016 The Android Open Source Project
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
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := scalar_mutator_test

LOCAL_SRC_FILES := \
    type_mutators/ProtoFuzzerScalarMutatorTest.cpp \

LOCAL_C_INCLUDES := \
    test/vts-testcase/fuzz/proto_fuzzer/include \
    test/vts-testcase/fuzz/proto_fuzzer/test \

LOCAL_SHARED_LIBRARIES := \
    libprotobuf-cpp-full \
    libvts_multidevice_proto \
    libvts_common \
    libvts_proto_fuzzer \
    libvts_proto_fuzzer_proto \

LOCAL_STATIC_LIBRARIES := \
    libgtest \

LOCAL_CFLAGS := \
    -Wno-unused-parameter \
    -Wno-macro-redefined \
    -Wno-sign-compare \
    -fno-omit-frame-pointer \

include $(BUILD_EXECUTABLE)