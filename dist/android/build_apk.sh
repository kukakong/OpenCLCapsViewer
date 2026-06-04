#!/bin/bash
# Android APK Build Script for OpenCL Hardware Capability Viewer
# This script creates an APK from prebuilt native libraries

set -e

# Configuration
APP_NAME="OpenCLCapsViewer"
PACKAGE_NAME="de.saschawillems.openclcapsviewer"
VERSION_CODE=5
VERSION_NAME="1.30"

# Directories
BUILD_DIR="build_apk"
LIBS_DIR="libs"
RES_DIR="res"
ASSETS_DIR="assets"

# Android SDK/NDK paths (customize these)
ANDROID_SDK="${ANDROID_SDK_ROOT:-/path/to/android-sdk}"
ANDROID_NDK="${ANDROID_NDK_ROOT:-/path/to/android-ndk}"
BUILD_TOOLS="$ANDROID_SDK/build-tools/34.0.0"
PLATFORM="$ANDROID_SDK/platforms/android-34"

# Check for required tools
check_requirements() {
    echo "Checking requirements..."
    
    if [ ! -d "$ANDROID_SDK" ]; then
        echo "ERROR: ANDROID_SDK_ROOT not set or invalid"
        echo "Please set ANDROID_SDK_ROOT to your Android SDK directory"
        exit 1
    fi
    
    if [ ! -d "$ANDROID_NDK" ]; then
        echo "ERROR: ANDROID_NDK_ROOT not set or invalid"
        echo "Please set ANDROID_NDK_ROOT to your Android NDK directory"
        exit 1
    fi
    
    echo "Android SDK: $ANDROID_SDK"
    echo "Android NDK: $ANDROID_NDK"
}

# Create APK structure
create_structure() {
    echo "Creating APK directory structure..."
    
    rm -rf "$BUILD_DIR"
    mkdir -p "$BUILD_DIR/lib/arm64-v8a"
    mkdir -p "$BUILD_DIR/lib/armeabi-v7a"
    mkdir -p "$BUILD_DIR/res"
    mkdir -p "$BUILD_DIR/assets"
}

# Copy native libraries
copy_libs() {
    echo "Copying native libraries..."
    
    # ARM64
    if [ -f "libOpenCLCapsViewer_arm64-v8a.so" ]; then
        cp libOpenCLCapsViewer_arm64-v8a.so "$BUILD_DIR/lib/arm64-v8a/libOpenCLCapsViewer.so"
    fi
    
    # ARM32
    if [ -f "libOpenCLCapsViewer_armeabi-v7a.so" ]; then
        cp libOpenCLCapsViewer_armeabi-v7a.so "$BUILD_DIR/lib/armeabi-v7a/libOpenCLCapsViewer.so"
    fi
}

# Build APK using aapt
build_apk() {
    echo "Building APK..."
    
    # Package resources
    "$BUILD_TOOLS/aapt" package -f \
        -M AndroidManifest.xml \
        -S "$RES_DIR" \
        -I "$PLATFORM/android.jar" \
        -F "$BUILD_DIR/resources.apk" \
        "$BUILD_DIR"
    
    # Add native libraries
    cd "$BUILD_DIR"
    "$BUILD_TOOLS/aapt" add resources.apk lib/arm64-v8a/*.so
    "$BUILD_TOOLS/aapt" add resources.apk lib/armeabi-v7a/*.so
    cd ..
    
    # Align APK
    "$BUILD_TOOLS/zipalign" -v 4 "$BUILD_DIR/resources.apk" "$BUILD_DIR/${APP_NAME}-aligned.apk"
    
    # Sign APK (requires debug keystore)
    # For release, use apksigner with your signing key
    echo "APK needs to be signed before installation"
    echo "Use: $BUILD_TOOLS/apksigner sign --ks your.keystore $BUILD_DIR/${APP_NAME}-aligned.apk"
    
    mv "$BUILD_DIR/${APP_NAME}-aligned.apk" "${APP_NAME}.apk"
    echo "APK created: ${APP_NAME}.apk"
}

# Main
main() {
    echo "=== OpenCL Hardware Capability Viewer APK Builder ==="
    check_requirements
    create_structure
    copy_libs
    build_apk
    echo "=== Build Complete ==="
}

main "$@"
