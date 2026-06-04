# OpenCL Hardware Capability Viewer - 使用说明

## 简介

OpenCL Hardware Capability Viewer 是一个用于显示支持 OpenCL API 的设备硬件实现细节的客户端应用程序。硬件报告可以提交到公共[在线数据库](https://opencl.gpuinfo.org/)，用于比较不同设备、浏览可用功能、扩展、格式等。

## 支持的平台

- **Linux** (x64) - GUI 和 CLI 版本
- **Windows** (x64) - GUI 版本
- **Android** - GUI 版本

**注意**: 需要 OpenCL 兼容设备（GPU、CPU）

## 版本说明

### GUI 版本
带有图形用户界面的版本，推荐使用方式。提供完整的设备信息显示、报告保存和上传功能。

### CLI 版本
无图形界面的命令行版本，适用于：
- 无图形界面的服务器环境
- 自动化脚本
- CI/CD 集成

## 命令行参数

| 参数 | 描述 | 示例 |
|------|------|------|
| `--help` | 打印所有可用的命令行参数 | |
| `--log` | 将日志消息写入文本文件用于调试 (log.txt) | |
| `--devices` | 列出可用的 OpenCL 设备及其索引 | |
| `--save <文件>` | 保存报告到磁盘 | `--save opencl_report.json` |
| `--upload` | 上传指定设备索引的报告到数据库（无交互） | |
| `--deviceindex <索引>` | 设置设备索引（从0开始），用于报告上传 | `--deviceindex 2` |
| `--submitter <名称>` | 设置报告提交者名称 | `--submitter "Some person"` |
| `--comment <注释>` | 设置报告注释 | `--comment "Beta driver"` |
| `--noproxy` | 禁用代理设置 | |

## 使用示例

### GUI 版本

直接运行程序：
```bash
./OpenCLCapsViewer_linux_gui
```

### CLI 版本

1. 列出所有 OpenCL 设备：
```bash
./OpenCLCapsViewer_linux_cli --devices
```

2. 保存设备报告到文件：
```bash
./OpenCLCapsViewer_linux_cli --save opencl_report.json
```

3. 上传第二个设备的报告到数据库：
```bash
./OpenCLCapsViewer_linux_cli --upload --deviceindex 1 --submitter "My Name" --comment "Beta driver"
```

4. 启用日志记录：
```bash
./OpenCLCapsViewer_linux_cli --log --devices
```

## 运行时依赖

### Linux

确保已安装以下依赖：

```bash
# Ubuntu/Debian
sudo apt-get install libgl1 libx11-6 libxcb1 libxkbcommon0 \
    libopengl0 libegl1 libwayland-client0

# OpenCL 运行时
sudo apt-get install ocl-icd-libopencl1
```

设置 Qt 库路径（如果需要）：
```bash
export LD_LIBRARY_PATH=/opt/Qt/6.8.3/gcc_64/lib:$LD_LIBRARY_PATH
./OpenCLCapsViewer_linux_gui
```

### Windows

需要安装：
- Visual C++ Redistributable
- OpenCL 驱动（通常随 GPU 驱动安装）

### Android

- Android 7.0 (API 25) 或更高版本
- 设备需要支持 OpenCL

## 功能说明

### 设备信息显示

程序会显示以下信息：
- 平台信息（厂商、版本、扩展等）
- 设备信息（名称、类型、厂商、驱动版本等）
- 计算能力（最大工作组大小、计算单元等）
- 内存信息（全局内存、本地内存、常量内存等）
- 支持的图像格式
- 支持的扩展

### 报告上传

可以将设备报告上传到公共数据库：
1. 选择目标设备
2. 填写提交者名称和注释（可选）
3. 点击上传按钮

### 报告保存

支持将报告保存为 JSON 格式文件，包含完整的设备能力信息。

## 配置文件

程序会在以下位置存储配置：
- Linux: `~/.config/OpenCLCapsViewer/`
- Windows: `%APPDATA%\OpenCLCapsViewer\`
- Android: 应用数据目录

配置文件包含：
- 数据库服务器设置
- 代理设置
- 上传历史

## 数据库

报告上传到：https://opencl.gpuinfo.org/

可以在网站上：
- 查看所有已上传的设备报告
- 比较不同设备的能力
- 搜索特定功能或扩展

## 故障排除

### 找不到 OpenCL 设备

1. 确保安装了 OpenCL 驱动：
   - NVIDIA: 安装 CUDA 驱动
   - AMD: 安装 AMDGPU-PRO 或 ROCm
   - Intel: 安装 Intel OpenCL Runtime

2. 检查 `/etc/OpenCL/vendors/` 目录是否存在 ICD 文件

### 程序无法启动

1. 检查 Qt 库是否正确安装
2. 设置正确的 `LD_LIBRARY_PATH`
3. 检查系统架构是否匹配

### 上传失败

1. 检查网络连接
2. 检查防火墙设置
3. 尝试使用 `--noproxy` 参数

## 从源码编译

详见 [BUILD_REPORT.md](BUILD_REPORT.md)

## 许可证

本项目遵循其原始许可证。详见 LICENSE 文件。

## 相关链接

- [OpenCL 官方网站](https://www.khronos.org/opencl/)
- [在线数据库](https://opencl.gpuinfo.org/)
- [项目仓库](https://github.com/SaschaWillems/OpenCLCapsViewer)

---
*文档更新时间: 2026-06-04*
