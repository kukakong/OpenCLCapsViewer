.class Lorg/qtproject/qt/android/QtInputDelegate$2;
.super Landroid/os/ResultReceiver;
.source "QtInputDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtInputDelegate;->hideSoftwareKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtInputDelegate;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtInputDelegate;Landroid/os/Handler;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$2;->this$0:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .line 298
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 305
    :pswitch_0
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$2;->this$0:Lorg/qtproject/qt/android/QtInputDelegate;

    const/4 p2, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/qtproject/qt/android/QtInputDelegate;->setKeyboardVisibility(ZJ)V

    goto :goto_0

    .line 301
    :pswitch_1
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$2;->this$0:Lorg/qtproject/qt/android/QtInputDelegate;

    const/4 p2, 0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/qtproject/qt/android/QtInputDelegate;->setKeyboardVisibility(ZJ)V

    .line 302
    nop

    .line 308
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
