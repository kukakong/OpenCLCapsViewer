.class Lorg/qtproject/qt/android/QtInputConnection$HideKeyboardRunnable;
.super Ljava/lang/Object;
.source "QtInputConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/QtInputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HideKeyboardRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtInputConnection;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtInputConnection;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputConnection$HideKeyboardRunnable;->this$0:Lorg/qtproject/qt/android/QtInputConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 75
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activity()Landroid/app/Activity;

    move-result-object v0

    .line 76
    if-nez v0, :cond_0

    .line 77
    const-string v0, "QtInputConnection"

    const-string v1, "HideKeyboardRunnable: The activity reference is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void

    .line 81
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 82
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 85
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_1

    .line 86
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 87
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 88
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 93
    :goto_0
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 94
    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 95
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputConnection$HideKeyboardRunnable;->this$0:Lorg/qtproject/qt/android/QtInputConnection;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtInputConnection;->access$000(Lorg/qtproject/qt/android/QtInputConnection;)Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;->onHideKeyboardRunnableDone(ZJ)V

    .line 96
    :cond_2
    return-void
.end method
