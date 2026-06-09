.class Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "QtAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 452
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$300(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Lorg/qtproject/qt/android/QtLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 455
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$600(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 453
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$500(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 2

    .line 461
    nop

    .line 463
    const/4 v0, 0x1

    sparse-switch p2, :sswitch_data_0

    .line 490
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 491
    iget-object p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 476
    :sswitch_0
    iget-object p3, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {p3}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$700(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)I

    move-result p3

    if-ne p3, p1, :cond_0

    .line 477
    iget-object p3, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    const/16 v1, 0x14d

    invoke-static {p3, v1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$702(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;I)I

    .line 483
    :cond_0
    iget-object p3, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {p3}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    .line 484
    iget-object p3, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    const/high16 v1, 0x10000

    invoke-virtual {p3, p1, v1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)V

    .line 486
    nop

    .line 487
    goto :goto_0

    .line 467
    :sswitch_1
    iget-object p3, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {p3}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$700(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)I

    move-result p3

    if-eq p3, p1, :cond_1

    .line 468
    iget-object p3, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {p3, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$702(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;I)I

    .line 469
    iget-object p3, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {p3}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    .line 470
    iget-object p3, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    const v1, 0x8000

    invoke-virtual {p3, p1, v1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)V

    .line 472
    goto :goto_0

    .line 494
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p3, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-virtual {p3, p1, p2}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->performActionForVirtualViewId(II)Z

    move-result p1

    or-int/2addr p1, v0

    .line 496
    return p1

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method
