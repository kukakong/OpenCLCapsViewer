.class Lorg/qtproject/qt/android/QtWindow$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "QtWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtWindow;-><init>(Landroid/content/Context;Lorg/qtproject/qt/android/QtWindow;Lorg/qtproject/qt/android/QtInputDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtWindow;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtWindow;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$1;->this$0:Lorg/qtproject/qt/android/QtWindow;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$1;->this$0:Lorg/qtproject/qt/android/QtWindow;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {v0, v1, p1}, Lorg/qtproject/qt/android/QtInputDelegate;->longPress(III)V

    .line 48
    return-void
.end method
