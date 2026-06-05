# OpenCL Hardware Capability Viewer - Android Build

本目录包含Android平台的预编译native库。

## 预编译文件

| 文件 | 架构 | 大小 |
|------|------|------|
| libOpenCLCapsViewer_arm64-v8a.so | ARM64 (arm64-v8a) | ~627KB |
| libOpenCLCapsViewer_armeabi-v7a.so | ARM32 (armeabi-v7a) | ~558KB |

## 构建APK

由于CI环境网络限制，无法自动生成APK。请使用以下方法构建APK：

### 方法1: 使用Qt Creator（推荐）

1. 安装 Qt 6.7.3 或更高版本（包含Android支持）
2. 安装 Android SDK (API 34+) 和 NDK r25c+
3. 安装 JDK 17+
4. 打开 Qt Creator，打开 `OpenCLCapsViewer.pro`
5. 配置 Android 构建套件
6. 构建APK

### 方法2: 使用命令行

```bash
# 设置环境变量
export ANDROID_NDK_ROOT=/path/to/android-ndk
export ANDROID_SDK_ROOT=/path/to/android-sdk
export JAVA_HOME=/path/to/jdk

# ARM64版本
mkdir build_android_arm64 && cd build_android_arm64
/path/to/qt/6.7.3/android_arm64_v8a/bin/qmake ../OpenCLCapsViewer.pro -spec android-clang CONFIG+=release
make -j$(nproc)
make apk

# ARM32版本
mkdir build_android_arm32 && cd build_android_arm32
/path/to/qt/6.7.3/android_armv7/bin/qmake ../OpenCLCapsViewer.pro -spec android-clang CONFIG+=release
make -j$(nproc)
make apk
```

## 系统要求

- Android 7.0 (API 25) 或更高版本
- 设备需要支持 OpenCL

## 注意事项

- 部分设备可能需要额外配置才能访问OpenCL库
- Pixel设备需要使用 `libOpenCL-pixel.so`
- 报告可以上传到 https://opencl.gpuinfo.org/

---
*构建时间: 2026-06-05*
*Qt版本: 6.7.3*
*NDK版本: r25c*
