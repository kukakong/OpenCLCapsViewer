.class Lorg/qtproject/qt/android/QtDisplayManager$1;
.super Ljava/lang/Object;
.source "QtDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtDisplayManager;->initDisplayListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtDisplayManager;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtDisplayManager;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/qtproject/qt/android/QtDisplayManager$1;->this$0:Lorg/qtproject/qt/android/QtDisplayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    .line 62
    invoke-static {p1}, Lorg/qtproject/qt/android/QtDisplayManager;->handleScreenAdded(I)V

    .line 63
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lorg/qtproject/qt/android/QtDisplayManager$1;->this$0:Lorg/qtproject/qt/android/QtDisplayManager;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->access$000(Lorg/qtproject/qt/android/QtDisplayManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtDisplayManager$1;->this$0:Lorg/qtproject/qt/android/QtDisplayManager;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->access$000(Lorg/qtproject/qt/android/QtDisplayManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 70
    :goto_0
    invoke-static {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->getRefreshRate(Landroid/view/Display;)F

    move-result v0

    .line 71
    invoke-static {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->handleRefreshRateChanged(F)V

    .line 72
    invoke-static {p1}, Lorg/qtproject/qt/android/QtDisplayManager;->handleScreenChanged(I)V

    .line 73
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .line 77
    invoke-static {p1}, Lorg/qtproject/qt/android/QtDisplayManager;->handleScreenRemoved(I)V

    .line 78
    return-void
.end method
