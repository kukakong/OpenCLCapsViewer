.class public Lorg/qtproject/qt/android/QtSurface;
.super Landroid/view/SurfaceView;
.source "QtSurface.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private m_surfaceCallback:Lorg/qtproject/qt/android/QtSurfaceInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/qtproject/qt/android/QtSurfaceInterface;ZI)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtSurface;->setFocusable(Z)V

    .line 23
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtSurface;->setFocusableInTouchMode(Z)V

    .line 24
    invoke-virtual {p0, p3}, Lorg/qtproject/qt/android/QtSurface;->setZOrderMediaOverlay(Z)V

    .line 25
    iput-object p2, p0, Lorg/qtproject/qt/android/QtSurface;->m_surfaceCallback:Lorg/qtproject/qt/android/QtSurfaceInterface;

    .line 26
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 27
    const/16 p1, 0x10

    if-ne p4, p1, :cond_0

    .line 28
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 31
    :goto_0
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 41
    const/4 p2, 0x1

    if-lt p3, p2, :cond_2

    if-ge p4, p2, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    iget-object p2, p0, Lorg/qtproject/qt/android/QtSurface;->m_surfaceCallback:Lorg/qtproject/qt/android/QtSurfaceInterface;

    if-eqz p2, :cond_1

    .line 44
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/qtproject/qt/android/QtSurfaceInterface;->onSurfaceChanged(Landroid/view/Surface;)V

    .line 45
    :cond_1
    return-void

    .line 42
    :cond_2
    :goto_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 36
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 50
    iget-object p1, p0, Lorg/qtproject/qt/android/QtSurface;->m_surfaceCallback:Lorg/qtproject/qt/android/QtSurfaceInterface;

    if-eqz p1, :cond_0

    .line 51
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/qtproject/qt/android/QtSurfaceInterface;->onSurfaceChanged(Landroid/view/Surface;)V

    .line 52
    :cond_0
    return-void
.end method
