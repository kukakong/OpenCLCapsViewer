.class public Lorg/qtproject/qt/android/QtTextureView;
.super Landroid/view/TextureView;
.source "QtTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private m_staysOnTop:Z

.field private m_surface:Landroid/view/Surface;

.field private m_surfaceCallback:Lorg/qtproject/qt/android/QtSurfaceInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/qtproject/qt/android/QtSurfaceInterface;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtTextureView;->setFocusable(Z)V

    .line 24
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtTextureView;->setFocusableInTouchMode(Z)V

    .line 25
    iput-object p2, p0, Lorg/qtproject/qt/android/QtTextureView;->m_surfaceCallback:Lorg/qtproject/qt/android/QtSurfaceInterface;

    .line 26
    invoke-virtual {p0, p0}, Lorg/qtproject/qt/android/QtTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 27
    invoke-virtual {p0, p3}, Lorg/qtproject/qt/android/QtTextureView;->setOpaque(Z)V

    .line 28
    new-instance p2, Landroid/graphics/SurfaceTexture;

    invoke-direct {p2, p1}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/QtTextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 29
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 33
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lorg/qtproject/qt/android/QtTextureView;->m_surface:Landroid/view/Surface;

    .line 34
    iget-object p1, p0, Lorg/qtproject/qt/android/QtTextureView;->m_surfaceCallback:Lorg/qtproject/qt/android/QtSurfaceInterface;

    invoke-interface {p1, p2}, Lorg/qtproject/qt/android/QtSurfaceInterface;->onSurfaceChanged(Landroid/view/Surface;)V

    .line 35
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 45
    iget-object p1, p0, Lorg/qtproject/qt/android/QtTextureView;->m_surfaceCallback:Lorg/qtproject/qt/android/QtSurfaceInterface;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/qtproject/qt/android/QtSurfaceInterface;->onSurfaceChanged(Landroid/view/Surface;)V

    .line 46
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 39
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lorg/qtproject/qt/android/QtTextureView;->m_surface:Landroid/view/Surface;

    .line 40
    iget-object p1, p0, Lorg/qtproject/qt/android/QtTextureView;->m_surfaceCallback:Lorg/qtproject/qt/android/QtSurfaceInterface;

    invoke-interface {p1, p2}, Lorg/qtproject/qt/android/QtSurfaceInterface;->onSurfaceChanged(Landroid/view/Surface;)V

    .line 41
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 51
    return-void
.end method
