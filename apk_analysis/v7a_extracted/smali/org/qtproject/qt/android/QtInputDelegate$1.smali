.class Lorg/qtproject/qt/android/QtInputDelegate$1;
.super Landroid/os/ResultReceiver;
.source "QtInputDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtInputDelegate;->showSoftwareKeyboard(Landroid/app/Activity;Lorg/qtproject/qt/android/QtLayout;IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtInputDelegate;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$enterKeyType:I

.field final synthetic val$height:I

.field final synthetic val$inputHints:I

.field final synthetic val$layout:Lorg/qtproject/qt/android/QtLayout;

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtInputDelegate;Landroid/os/Handler;Lorg/qtproject/qt/android/QtLayout;Landroid/app/Activity;IIIIII)V
    .locals 0

    .line 191
    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->this$0:Lorg/qtproject/qt/android/QtInputDelegate;

    iput-object p3, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->val$layout:Lorg/qtproject/qt/android/QtLayout;

    iput-object p4, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->val$activity:Landroid/app/Activity;

    iput p5, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->val$x:I

    iput p6, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->val$y:I

    iput p7, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->val$width:I

    iput p8, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->val$height:I

    iput p9, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->val$inputHints:I

    iput p10, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->val$enterKeyType:I

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 9

    .line 194
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 196
    :pswitch_0
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->updateCursorPosition()Z

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->this$0:Lorg/qtproject/qt/android/QtInputDelegate;

    const/4 p2, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/qtproject/qt/android/QtInputDelegate;->setKeyboardVisibility(ZJ)V

    goto :goto_1

    .line 199
    :goto_0
    :pswitch_2
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->this$0:Lorg/qtproject/qt/android/QtInputDelegate;

    const/4 p2, 0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/qtproject/qt/android/QtInputDelegate;->setKeyboardVisibility(ZJ)V

    .line 200
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->this$0:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-static {p1}, Lorg/qtproject/qt/android/QtInputDelegate;->access$000(Lorg/qtproject/qt/android/QtInputDelegate;)I

    move-result p1

    if-nez p1, :cond_0

    .line 201
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->this$0:Lorg/qtproject/qt/android/QtInputDelegate;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->val$layout:Lorg/qtproject/qt/android/QtLayout;

    iget-object v2, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->val$activity:Landroid/app/Activity;

    iget v3, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->val$x:I

    iget v4, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->val$y:I

    iget v5, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->val$width:I

    iget v6, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->val$height:I

    iget v7, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->val$inputHints:I

    iget v8, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->val$enterKeyType:I

    invoke-static/range {v0 .. v8}, Lorg/qtproject/qt/android/QtInputDelegate;->access$100(Lorg/qtproject/qt/android/QtInputDelegate;Lorg/qtproject/qt/android/QtLayout;Landroid/app/Activity;IIIIII)V

    .line 210
    :cond_0
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
