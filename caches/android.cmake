set(CMAKE_TOOLCHAIN_FILE "$ENV{ANDROID_SDK_ROOT}/ndk-bundle/build/cmake/android.toolchain.cmake" CACHE STRING "")
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE BOTH CACHE STRING "")
set(ANDROID_ABI "arm64-v8a" CACHE STRING "")
set(ANDROID_BUILD_ABI_arm64-v8a ON CACHE BOOL "")
set(ANDROID_BUILD_ABI_armeabi ON CACHE BOOL "")
set(ANDROID_BUILD_ABI_x86 ON CACHE BOOL "")
set(ANDROID_BUILD_ABI_x86_64 ON CACHE BOOL "")
