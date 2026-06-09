.class public Lorg/qtproject/qt/android/QtServiceBase;
.super Landroid/app/Service;
.source "QtServiceBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 47
    monitor-enter p0

    .line 48
    :try_start_0
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 49
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onCreate()V
    .locals 2

    .line 15
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 18
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getStateDetails()Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz v0, :cond_0

    .line 19
    const-string v0, "Qt JAVA"

    const-string v1, "A QtService tried to start in the same process as an initiated QtActivity. That is not supported. This results in the service functioning as an Android Service detached from Qt."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void

    .line 26
    :cond_0
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->setService(Landroid/app/Service;)V

    .line 28
    new-instance v0, Lorg/qtproject/qt/android/QtServiceLoader;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtServiceLoader;-><init>(Landroid/app/Service;)V

    .line 29
    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtServiceLoader;->loadQtLibraries()V

    .line 30
    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtServiceLoader;->getApplicationParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtServiceLoader;->getMainLibraryPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/qtproject/qt/android/QtNative;->startApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setApplicationState(I)V

    .line 32
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 37
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 38
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->quitQtCoreApplication()V

    .line 39
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->terminateQt()V

    .line 40
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setService(Landroid/app/Service;)V

    .line 41
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getQtThread()Lorg/qtproject/qt/android/QtThread;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtThread;->exit()V

    .line 42
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 43
    return-void
.end method
