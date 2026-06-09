.class public Lorg/qtproject/qt/android/QtApplicationBase;
.super Landroid/app/Application;
.source "QtApplicationBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onTerminate()V
    .locals 1

    .line 11
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->terminateQt()V

    .line 12
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getQtThread()Lorg/qtproject/qt/android/QtThread;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtThread;->exit()V

    .line 13
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 14
    return-void
.end method
