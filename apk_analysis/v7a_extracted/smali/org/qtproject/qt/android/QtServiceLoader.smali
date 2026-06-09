.class public Lorg/qtproject/qt/android/QtServiceLoader;
.super Lorg/qtproject/qt/android/QtLoader;
.source "QtServiceLoader.java"


# instance fields
.field private final m_service:Landroid/app/Service;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 1

    .line 15
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtLoader;-><init>(Landroid/content/ContextWrapper;)V

    .line 16
    iput-object p1, p0, Lorg/qtproject/qt/android/QtServiceLoader;->m_service:Landroid/app/Service;

    .line 18
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtServiceLoader;->extractContextMetaData()V

    .line 19
    return-void
.end method


# virtual methods
.method protected finish()V
    .locals 2

    .line 23
    iget-object v0, p0, Lorg/qtproject/qt/android/QtServiceLoader;->m_service:Landroid/app/Service;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 26
    :cond_0
    const-string v0, "QtLoader"

    const-string v1, "finish() called when service object is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :goto_0
    return-void
.end method
