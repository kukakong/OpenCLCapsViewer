# OpenCL Hardware Capability Viewer - Build Report

## 项目概述

OpenCL Hardware Capability Viewer 是一个用于显示支持 OpenCL API 的设备硬件实现细节的客户端应用程序。

## 编译环境

- **操作系统**: Ubuntu 24.04.3 LTS
- **Qt版本**: 6.7.3 (Android), 6.8.3 (Linux)
- **编译器**: GCC 13.3.0 (Linux), Clang 14.0.7 (Android NDK r25c)
- **Java**: OpenJDK 25.0.2
- **Gradle**: 8.14.4
- **Android SDK**: Build-Tools 35.0.0, Platform android-35
- **Android Gradle Plugin**: 8.5.0
- **构建日期**: 2026-06-09

## 编译过程

### 1. 环境准备

```bash
# 安装基础编译工具
apt-get install -y build-essential cmake git wget curl unzip pkg-config

# 安装图形库依赖
apt-get install -y libgl1-mesa-dev libxkbcommon-dev wayland-protocols \
    libwayland-dev libx11-dev libx11-xcb-dev libxcb1-dev \
    libxcb-icccm4-dev libxcb-image0-dev libxcb-keysyms1-dev \
    libxcb-randr0-dev libxcb-render-util0-dev libxcb-shape0-dev \
    libxcb-sync-dev libxcb-xfixes0-dev libxcb-xinerama0-dev \
    libxcb-cursor-dev libegl-dev libgles2-mesa-dev libopengl-dev

# 安装OpenCL开发库
apt-get install -y ocl-icd-opencl-dev opencl-headers

# 安装Qt安装工具
pip3 install aqtinstall
```

### 2. Qt 安装

```bash
# 安装Qt 6.7.3 (Android arm64 + armv7)
aqt install-qt linux android 6.7.3 android_arm64_v8a -O /opt/Qt -m all
aqt install-qt linux android 6.7.3 android_armv7 -O /opt/Qt -m all

# 安装Qt 6.8.3 (Linux)
aqt install-qt linux desktop 6.8.3 linux_gcc_64 -O /opt/Qt -m all
```

### 3. Android SDK / NDK 安装

```bash
# 解压 NDK r25c
tar xf android-ndk-r25c-linux.zip -C /opt/android-ndk/

# 安装 Android SDK Build-Tools 35.0.0
# (需要接受许可并下载 platforms;android-35)
```

### 4. 初始化子模块

```bash
git submodule update --init --recursive
```

### 5. 编译 Linux GUI 版本

```bash
mkdir -p build_linux_gui
cd build_linux_gui
/opt/Qt/6.8.3/gcc_64/bin/qmake ../OpenCLCapsViewer.pro -spec linux-g++ CONFIG+=release
make -j$(nproc)
```

**编译结果**: 成功生成 `OpenCLCapsViewer` 可执行文件 (509 KB)

### 6. 编译 Linux CLI 版本（无UI命令行版本）

```bash
mkdir -p build_linux_cli
cd build_linux_cli
/opt/Qt/6.8.3/gcc_64/bin/qmake ../OpenCLCapsViewerCLI.pro -spec linux-g++ CONFIG+=release
make -j$(nproc)
```

**编译结果**: 成功生成 `OpenCLCapsViewer` 可执行文件 (317 KB)

### 7. 编译 Android ARM64 (arm64-v8a) APK

```bash
mkdir -p build_android_arm64
cd build_android_arm64
export ANDROID_NDK_ROOT=/opt/android-ndk/android-ndk-r25c
export ANDROID_SDK_ROOT=/opt/android-sdk
/opt/Qt/6.7.3/android_arm64_v8a/bin/qmake ../OpenCLCapsViewer.pro -spec android-clang CONFIG+=release
make -j$(nproc)
make INSTALL_ROOT=android-build install
/opt/Qt/6.7.3/gcc_64/bin/androiddeployqt \
    --input android-OpenCLCapsViewer-deployment-settings.json \
    --output android-build --android-platform android-35 --gradle

# 修改 build.gradle 中：
# 1. 将 apply plugin: qtGradlePluginType 替换为 apply plugin: 'com.android.application'
# 2. 将 classpath 'com.android.tools.build:gradle:8.8.0' 改为 '7.4.2'
# 3. 将 androidx.core:core:1.16.0 改为 1.10.1
# 4. 移除 android.bundle.enableUncompressedNativeLibs=false

cd android-build
gradle assembleDebug
```

**编译结果**: 成功生成 `android-build-debug.apk` (~21.7 MB)

### 8. 编译 Android ARM32 (armeabi-v7a) APK

```bash
mkdir -p build_android_arm32
cd build_android_arm32
export ANDROID_NDK_ROOT=/opt/android-ndk/android-ndk-r25c
export ANDROID_SDK_ROOT=/opt/android-sdk
/opt/Qt/6.7.3/android_armv7/bin/qmake ../OpenCLCapsViewer.pro -spec android-clang CONFIG+=release
make -j$(nproc)
make INSTALL_ROOT=android-build install
/opt/Qt/6.7.3/gcc_64/bin/androiddeployqt \
    --input android-OpenCLCapsViewer-deployment-settings.json \
    --output android-build --android-platform android-35 --gradle

# 应用与 ARM64 相同的 build.gradle 修改
cd android-build
gradle assembleDebug
```

**编译结果**: 成功生成 `android-build-debug.apk` (~17.9 MB)

## 编译产物

| 平台 | 类型 | 文件名 | 大小 |
|------|------|--------|------|
| Linux | GUI | OpenCLCapsViewer_linux_gui | 510 KB |
| Linux | CLI | OpenCLCapsViewer_linux_cli | 317 KB |
| Android | ARM64 APK | OpenCLCapsViewer_android_arm64-v8a.apk | 22.3 MB |
| Android | ARM32 APK | OpenCLCapsViewer_android_armeabi-v7a.apk | 18.5 MB |

## APK 安装方法

### ARM64 (arm64-v8a)

```bash
adb install -r OpenCLCapsViewer_android_arm64-v8a.apk
```

适用于：大多数现代 Android 设备（Android 5.0+ / API 25+）

### ARM32 (armeabi-v7a)

```bash
adb install -r OpenCLCapsViewer_android_armeabi-v7a.apk
```

适用于：旧版 Android 设备（Android 5.0+ / API 25+）

## 问题修复记录

### 1. CL/cl.h 文件找不到

**问题**: Android 编译时报 `'CL/cl.h' file not found`

**原因**: OpenCL-Headers 子模块未初始化

**解决**:
```bash
git submodule update --init --recursive
```

### 2. Gradle 8.8.0 与 androidx.core 1.16.0 不兼容

**问题**: 
```
Dependency 'androidx.core:core:1.16.0' requires Android Gradle plugin 8.6.0 or higher
```

**解决**: 
- 将 Android Gradle Plugin 降级到 7.4.2
- 将 androidx.core 降级到 1.10.1

### 3. android.bundle.enableUncompressedNativeLibs 已弃用

**问题**:
```
The option 'android.bundle.enableUncompressedNativeLibs' is deprecated.
```

**解决**: 从 `gradle.properties` 中移除该选项

### 4. 符号比较警告

**位置**: `main.cpp:168` 和 `main.cpp:191`

**类型**: `int` 与 `size_t` 比较

**影响**: 仅警告，不影响功能

### 5. apt mirror 时间超时

**问题**: apt 安装过程中部分包下载超时

**解决**: 重试或使用国内镜像源

## 编译环境配置

### 环境变量

```bash
export ANDROID_NDK_ROOT=/opt/android-ndk/android-ndk-r25c
export ANDROID_SDK_ROOT=/opt/android-sdk
export JAVA_HOME=/path/to/jdk
```

### Gradle 全局配置

创建 `/root/.gradle/gradle.properties`：
```properties
systemProp.http.proxyHost=127.0.0.1
systemProp.http.proxyPort=18080
systemProp.https.proxyHost=127.0.0.1
systemProp.https.proxyPort=18080
org.gradle.jvmargs=-Xmx2500m -XX:MaxMetaspaceSize=768m
```

## 构建状态

- ✅ Linux GUI 版本: 编译成功
- ✅ Linux CLI 版本: 编译成功
- ✅ Android ARM64 (arm64-v8a) APK: 编译成功
- ✅ Android ARM32 (armeabi-v7a) APK: 编译成功
- ⚠️ Windows 版本: 需要在 Windows 环境编译

---
*报告生成时间: 2026-06-06*
