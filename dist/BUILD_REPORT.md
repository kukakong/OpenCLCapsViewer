# OpenCL Hardware Capability Viewer - Build Report

## 项目概述

OpenCL Hardware Capability Viewer 是一个用于显示支持 OpenCL API 的设备硬件实现细节的客户端应用程序。

## 编译环境

- **操作系统**: Ubuntu 24.04.3 LTS
- **Qt版本**: 6.8.3
- **编译器**: GCC 13.3.0
- **构建日期**: 2026-06-04

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
# 安装Qt 6.8.3 (Linux)
aqt install-qt linux desktop 6.8.3 linux_gcc_64 -O /opt/Qt -m all

# 安装Qt 6.8.3 (Windows MinGW)
aqt install-qt windows desktop 6.8.3 win64_mingw -O /opt/Qt -m all
```

### 3. 初始化子模块

```bash
git submodule update --init --recursive
```

### 4. 编译 Linux GUI 版本

```bash
mkdir -p build_linux_gui
cd build_linux_gui
/opt/Qt/6.8.3/gcc_64/bin/qmake ../OpenCLCapsViewer.pro -spec linux-g++ CONFIG+=release
make -j$(nproc)
```

**编译结果**: 成功生成 `OpenCLCapsViewer` 可执行文件

**编译警告**:
- main.cpp:168 和 main.cpp:191 存在符号比较警告（int 与 size_t 比较）
- deviceinfo.cpp:415 存在可能的 fall-through 警告

### 5. 编译 Linux CLI 版本（无UI命令行版本）

```bash
mkdir -p build_linux_cli
cd build_linux_cli
/opt/Qt/6.8.3/gcc_64/bin/qmake ../OpenCLCapsViewerCLI.pro -spec linux-g++ CONFIG+=release
make -j$(nproc)
```

**编译结果**: 成功生成 `OpenCLCapsViewer` 可执行文件

### 6. Windows 版本编译说明

Windows 版本需要在 Windows 环境下使用 Qt Creator 或 MSVC 编译，或使用交叉编译工具链。

推荐方法：
1. 在 Windows 上安装 Qt 6.8.3 (MinGW 或 MSVC)
2. 使用 Qt Creator 打开 `OpenCLCapsViewer.pro`
3. 选择 Release 配置进行编译

### 7. Android 版本编译说明

Android 版本需要：
1. 安装 Android SDK 和 NDK
2. 安装 Qt for Android (Qt 6.8.5 或更高版本)
3. 配置 Android 设备或模拟器
4. 使用 Qt Creator 选择 Android 构建套件

## 编译产物

| 平台 | 类型 | 文件名 | 大小 |
|------|------|--------|------|
| Linux | GUI | OpenCLCapsViewer_linux_gui | ~500KB |
| Linux | CLI | OpenCLCapsViewer_linux_cli | ~317KB |

## 依赖说明

### 运行时依赖

- Qt 6.8.3 或更高版本
- OpenCL ICD 加载器
- 图形库 (GUI版本): OpenGL, X11/Wayland

### Linux 运行时配置

确保安装了 Qt 运行时库：
```bash
# 设置 Qt 库路径
export LD_LIBRARY_PATH=/opt/Qt/6.8.3/gcc_64/lib:$LD_LIBRARY_PATH
```

## 问题修复记录

### 编译警告修复

1. **符号比较警告**: 在 main.cpp 中，`deviceIndex` 与 `devices.size()` 比较时类型不匹配。建议将 `deviceIndex` 改为 `size_t` 类型。

2. **Fall-through 警告**: 在 deviceinfo.cpp 的 switch 语句中，存在可能的 fall-through。建议添加 `[[fallthrough]]` 属性或 `break` 语句。

## 构建状态

- ✅ Linux GUI 版本: 编译成功
- ✅ Linux CLI 版本: 编译成功
- ⚠️ Windows 版本: 需要在 Windows 环境编译
- ⚠️ Android 版本: 需要 Android SDK/NDK 配置

---
*报告生成时间: 2026-06-04*
