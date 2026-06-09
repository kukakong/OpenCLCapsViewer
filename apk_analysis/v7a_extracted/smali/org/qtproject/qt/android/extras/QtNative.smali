.class public Lorg/qtproject/qt/android/extras/QtNative;
.super Ljava/lang/Object;
.source "QtNative.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native onServiceConnected(JLjava/lang/String;Landroid/os/IBinder;)V
.end method

.method public static native onServiceDisconnected(JLjava/lang/String;)V
.end method

.method public static native onTransact(JILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.end method
