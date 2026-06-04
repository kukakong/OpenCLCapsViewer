# Android APK Build Instructions

由于网络限制，无法在CI环境中自动构建APK。请按以下步骤在本地构建APK。

## 前提条件

1. 安装 Qt 6.7.3 或更高版本（包含Android支持）
2. 安装 Android SDK (API 34+)
3. 安装 Android NDK r25c 或更高版本
4. 安装 JDK 17 或更高版本

## 使用 Qt Creator 构建（推荐）

1. 打开 Qt Creator
2. 打开项目文件 `OpenCLCapsViewer.pro`
3. 配置 Android 构建套件：
   - 选择 Qt for Android
   - 设置 Android SDK 路径
   - 设置 Android NDK 路径
   - 设置 JDK 路径
4. 选择 Release 构建
5. 运行构建

## 使用命令行构建

### ARM64 版本

```bash
mkdir build_android_arm64
cd build_android_arm64

export ANDROID_NDK_ROOT=/path/to/android-ndk
export ANDROID_SDK_ROOT=/path/to/android-sdk
export JAVA_HOME=/path/to/jdk

/path/to/qt/6.7.3/android_arm64_v8a/bin/qmake ../OpenCLCapsViewer.pro -spec android-clang CONFIG+=release
make -j$(nproc)
make apk
```

### ARM32 版本

```bash
mkdir build_android_arm32
cd build_android_arm32

export ANDROID_NDK_ROOT=/path/to/android-ndk
export ANDROID_SDK_ROOT=/path/to/android-sdk
export JAVA_HOME=/path/to/jdk

/path/to/qt/6.7.3/android_armv7/bin/qmake ../OpenCLCapsViewer.pro -spec android-clang CONFIG+=release
make -j$(nproc)
make apk
```

## 预编译的 Native 库

本目录包含预编译的 `.so` 文件：

| 文件 | 架构 | 大小 |
|------|------|------|
| libOpenCLCapsViewer_arm64-v8a.so | ARM64 (arm64-v8a) | ~627KB |
| libOpenCLCapsViewer_armeabi-v7a.so | ARM32 (armeabi-v7a) | ~558KB |

这些库可以用于手动打包APK。

## 手动打包 APK

如果需要手动打包APK，可以使用以下步骤：

```bash
# 创建APK目录结构
mkdir -p apk_template/lib/arm64-v8a
mkdir -p apk_template/lib/armeabi-v7a

# 复制native库
cp libOpenCLCapsViewer_arm64-v8a.so apk_template/lib/arm64-v8a/libOpenCLCapsViewer.so
cp libOpenCLCapsViewer_armeabi-v7a.so apk_template/lib/armeabi-v7a/libOpenCLCapsViewer.so

# 复制Qt Android依赖（需要从Qt安装目录复制）
# 复制AndroidManifest.xml和其他资源

# 使用aapt打包
aapt package -f -M AndroidManifest.xml -S res -I android.jar -F temp.apk apk_template

# 使用d8转换Java代码
# 使用apksigner签名
```

## 注意事项

- 需要设备支持 OpenCL
- Android 7.0 (API 25) 或更高版本
- 部分设备可能需要额外配置才能访问OpenCL库

---
*文档生成时间: 2026-06-04*
