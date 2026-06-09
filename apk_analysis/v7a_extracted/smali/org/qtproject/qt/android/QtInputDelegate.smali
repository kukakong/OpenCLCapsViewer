.class public Lorg/qtproject/qt/android/QtInputDelegate;
.super Ljava/lang/Object;
.source "QtInputDelegate.java"

# interfaces
.implements Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/QtInputDelegate$KeyboardVisibilityListener;
    }
.end annotation


# static fields
.field private static final CursorHandleNotShown:I = 0x0

.field private static final CursorHandleShowEdit:I = 0x100

.field private static final CursorHandleShowNormal:I = 0x1

.field private static final CursorHandleShowSelection:I = 0x2

.field public static final IdCursorHandle:I = 0x1

.field public static final IdLeftHandle:I = 0x2

.field public static final IdRightHandle:I = 0x3

.field private static m_oldX:I

.field private static m_oldY:I

.field private static m_tabletEventSupported:Ljava/lang/Boolean;


# instance fields
.field private m_backKeyPressedSent:Z

.field private m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

.field private m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

.field private m_editPopupMenu:Lorg/qtproject/qt/android/EditPopupMenu;

.field private final m_imm:Landroid/view/inputmethod/InputMethodManager;

.field private m_isKeyboardHidingAnimationOngoing:Z

.field private m_keyboardIsVisible:Z

.field private final m_keyboardVisibilityListener:Lorg/qtproject/qt/android/QtInputDelegate$KeyboardVisibilityListener;

.field private m_landscapeKeyboardHeight:I

.field private m_lastChar:I

.field private m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

.field private m_metaState:J

.field private m_portraitKeyboardHeight:I

.field private m_probeKeyboardHeightDelayMs:I

.field private m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

.field private m_showHideTimeStamp:J

.field private m_softInputMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_tabletEventSupported:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lorg/qtproject/qt/android/QtInputDelegate$KeyboardVisibilityListener;)V
    .locals 3

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_keyboardIsVisible:Z

    .line 45
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_isKeyboardHidingAnimationOngoing:Z

    .line 46
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_showHideTimeStamp:J

    .line 47
    iput v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_portraitKeyboardHeight:I

    .line 48
    iput v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_landscapeKeyboardHeight:I

    .line 49
    const/16 v1, 0x32

    iput v1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_probeKeyboardHeightDelayMs:I

    .line 55
    iput v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_softInputMode:I

    .line 74
    iput v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_lastChar:I

    .line 75
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_backKeyPressedSent:Z

    .line 88
    iput-object p2, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_keyboardVisibilityListener:Lorg/qtproject/qt/android/QtInputDelegate$KeyboardVisibilityListener;

    .line 89
    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt/android/QtInputDelegate;)I
    .locals 0

    .line 24
    iget p0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_softInputMode:I

    return p0
.end method

.method static synthetic access$100(Lorg/qtproject/qt/android/QtInputDelegate;Lorg/qtproject/qt/android/QtLayout;Landroid/app/Activity;IIIIII)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p8}, Lorg/qtproject/qt/android/QtInputDelegate;->probeForKeyboardHeight(Lorg/qtproject/qt/android/QtLayout;Landroid/app/Activity;IIIIII)V

    return-void
.end method

.method public static native dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end method

.method public static native dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method private static getAction(ILandroid/view/MotionEvent;)I
    .locals 7

    .line 520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 521
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 523
    if-lez v0, :cond_3

    .line 524
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 525
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 526
    nop

    :goto_0
    if-ge v1, v0, :cond_2

    .line 527
    invoke-virtual {p1, p0, v1}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v6

    cmpl-float v6, v6, v4

    if-nez v6, :cond_1

    .line 528
    invoke-virtual {p1, p0, v1}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v6

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_0

    goto :goto_1

    .line 526
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 529
    :cond_1
    :goto_1
    return v2

    .line 531
    :cond_2
    return v3

    .line 533
    :cond_3
    return v2

    .line 535
    :cond_4
    if-eqz v0, :cond_8

    const/4 v4, 0x5

    if-ne v0, v4, :cond_5

    .line 536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-ne p0, v4, :cond_5

    goto :goto_3

    .line 538
    :cond_5
    if-eq v0, v2, :cond_7

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    if-ne p0, p1, :cond_6

    goto :goto_2

    .line 542
    :cond_6
    return v3

    .line 540
    :cond_7
    :goto_2
    const/4 p0, 0x3

    return p0

    .line 537
    :cond_8
    :goto_3
    return v1
.end method

.method public static native handleLocationChanged(III)V
.end method

.method public static native isTabletEventSupported()Z
.end method

.method public static native keyDown(IIIZ)V
.end method

.method public static native keyUp(IIIZ)V
.end method

.method public static native keyboardGeometryChanged(IIII)V
.end method

.method public static native keyboardVisibilityChanged(Z)V
.end method

.method private keyboardVisibilityUpdated(Z)V
    .locals 1

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_isKeyboardHidingAnimationOngoing:Z

    .line 140
    invoke-static {p1}, Lorg/qtproject/qt/android/QtInputDelegate;->keyboardVisibilityChanged(Z)V

    .line 141
    return-void
.end method

.method public static native longPress(III)V
.end method

.method public static native mouseDown(IIII)V
.end method

.method public static native mouseMove(III)V
.end method

.method public static native mouseUp(IIII)V
.end method

.method public static native mouseWheel(IIIFF)V
.end method

.method private probeForKeyboardHeight(Lorg/qtproject/qt/android/QtLayout;Landroid/app/Activity;IIIIII)V
    .locals 11

    .line 257
    new-instance v10, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;-><init>(Lorg/qtproject/qt/android/QtInputDelegate;Landroid/app/Activity;Lorg/qtproject/qt/android/QtLayout;IIIIII)V

    move-object v0, p0

    iget v1, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_probeKeyboardHeightDelayMs:I

    int-to-long v1, v1

    invoke-virtual {p1, v10, v1, v2}, Lorg/qtproject/qt/android/QtLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 285
    return-void
.end method

.method public static sendGenericMotionEvent(Landroid/view/MotionEvent;I)Z
    .locals 3

    .line 608
    nop

    .line 609
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    .line 610
    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 612
    :goto_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 615
    :cond_1
    invoke-static {p0, p1}, Lorg/qtproject/qt/android/QtInputDelegate;->sendMouseEvent(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0

    .line 613
    :cond_2
    :goto_1
    return v2
.end method

.method public static sendMouseEvent(Landroid/view/MotionEvent;I)Z
    .locals 4

    .line 620
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 650
    :pswitch_0
    return v1

    .line 645
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 646
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 647
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p0

    .line 645
    invoke-static {p1, v0, v1, v2, p0}, Lorg/qtproject/qt/android/QtInputDelegate;->mouseWheel(IIIFF)V

    .line 648
    goto/16 :goto_0

    .line 632
    :pswitch_2
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 633
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    float-to-int p0, p0

    invoke-static {p1, v0, p0}, Lorg/qtproject/qt/android/QtInputDelegate;->mouseMove(III)V

    goto :goto_0

    .line 635
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sget v1, Lorg/qtproject/qt/android/QtInputDelegate;->m_oldX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 636
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sget v2, Lorg/qtproject/qt/android/QtInputDelegate;->m_oldY:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 637
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x5

    if-gt v0, v2, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_2

    .line 638
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1, v0, v1}, Lorg/qtproject/qt/android/QtInputDelegate;->mouseMove(III)V

    .line 639
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    sput p1, Lorg/qtproject/qt/android/QtInputDelegate;->m_oldX:I

    .line 640
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    float-to-int p0, p0

    sput p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_oldY:I

    .line 643
    :cond_2
    goto :goto_0

    .line 622
    :pswitch_3
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Lorg/qtproject/qt/android/QtInputDelegate;->mouseUp(IIII)V

    .line 623
    goto :goto_0

    .line 626
    :pswitch_4
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lorg/qtproject/qt/android/QtInputDelegate;->mouseDown(IIII)V

    .line 627
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    sput p1, Lorg/qtproject/qt/android/QtInputDelegate;->m_oldX:I

    .line 628
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    float-to-int p0, p0

    sput p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_oldY:I

    .line 629
    nop

    .line 652
    :goto_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static sendTouchEvent(Landroid/view/MotionEvent;I)V
    .locals 14

    .line 547
    nop

    .line 549
    sget-object v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_tabletEventSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 550
    invoke-static {}, Lorg/qtproject/qt/android/QtInputDelegate;->isTabletEventSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_tabletEventSupported:Ljava/lang/Boolean;

    .line 552
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v9, 0x0

    goto :goto_0

    .line 557
    :pswitch_1
    const/4 v9, 0x3

    goto :goto_0

    .line 554
    :pswitch_2
    nop

    .line 555
    const/4 v9, 0x1

    .line 561
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 562
    invoke-static {p0, p1}, Lorg/qtproject/qt/android/QtInputDelegate;->sendMouseEvent(Landroid/view/MotionEvent;I)Z

    goto/16 :goto_3

    .line 563
    :cond_1
    sget-object v1, Lorg/qtproject/qt/android/QtInputDelegate;->m_tabletEventSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v9, :cond_2

    .line 564
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 565
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    .line 566
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPressure()F

    move-result v13

    .line 564
    move v4, p1

    invoke-static/range {v4 .. v13}, Lorg/qtproject/qt/android/QtInputDelegate;->tabletEvent(IIJIIIFFF)V

    goto :goto_3

    .line 568
    :cond_2
    invoke-static {p1}, Lorg/qtproject/qt/android/QtInputDelegate;->touchBegin(I)V

    .line 569
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 570
    nop

    .line 571
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 572
    invoke-static {v1, p0}, Lorg/qtproject/qt/android/QtInputDelegate;->getAction(ILandroid/view/MotionEvent;)I

    move-result v6

    if-nez v1, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 574
    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v8, v2

    .line 575
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v9, v2

    .line 576
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v10

    .line 577
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v11

    .line 578
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v12

    .line 579
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v13

    .line 570
    move v4, p1

    invoke-static/range {v4 .. v13}, Lorg/qtproject/qt/android/QtInputDelegate;->touchAdd(IIIZIIFFFF)V

    .line 569
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 582
    :cond_4
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    packed-switch p0, :pswitch_data_1

    .line 596
    :pswitch_3
    invoke-static {p1, v3}, Lorg/qtproject/qt/android/QtInputDelegate;->touchEnd(II)V

    goto :goto_3

    .line 592
    :pswitch_4
    invoke-static {p1}, Lorg/qtproject/qt/android/QtInputDelegate;->touchCancel(I)V

    .line 593
    goto :goto_3

    .line 588
    :pswitch_5
    const/4 p0, 0x2

    invoke-static {p1, p0}, Lorg/qtproject/qt/android/QtInputDelegate;->touchEnd(II)V

    .line 589
    goto :goto_3

    .line 584
    :pswitch_6
    invoke-static {p1, v0}, Lorg/qtproject/qt/android/QtInputDelegate;->touchEnd(II)V

    .line 585
    nop

    .line 599
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static sendTrackballEvent(Landroid/view/MotionEvent;I)V
    .locals 0

    .line 603
    invoke-static {p0, p1}, Lorg/qtproject/qt/android/QtInputDelegate;->sendMouseEvent(Landroid/view/MotionEvent;I)Z

    .line 604
    return-void
.end method

.method public static native tabletEvent(IIJIIIFFF)V
.end method

.method public static native touchAdd(IIIZIIFFFF)V
.end method

.method public static native touchBegin(I)V
.end method

.method public static native touchCancel(I)V
.end method

.method public static native touchEnd(II)V
.end method

.method private updateHandleImpl(Landroid/app/Activity;Lorg/qtproject/qt/android/QtLayout;IIIIIIIIZ)V
    .locals 17

    .line 354
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p7

    move/from16 v3, p8

    and-int/lit16 v4, v1, 0xff

    const/4 v10, 0x0

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 386
    :pswitch_0
    iget-object v4, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-nez v4, :cond_2

    .line 387
    new-instance v11, Lorg/qtproject/qt/android/CursorHandle;

    const/4 v7, 0x2

    .line 388
    const v12, 0x10102c5

    const v13, 0x10102c6

    if-nez p11, :cond_0

    const v8, 0x10102c5

    goto :goto_0

    .line 389
    :cond_0
    const v8, 0x10102c6

    :goto_0
    move-object v4, v11

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, p11

    invoke-direct/range {v4 .. v9}, Lorg/qtproject/qt/android/CursorHandle;-><init>(Landroid/app/Activity;Landroid/view/View;IIZ)V

    iput-object v11, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 391
    new-instance v11, Lorg/qtproject/qt/android/CursorHandle;

    const/4 v7, 0x3

    .line 392
    if-nez p11, :cond_1

    const v8, 0x10102c6

    goto :goto_1

    .line 393
    :cond_1
    const v8, 0x10102c5

    :goto_1
    move-object v4, v11

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, p11

    invoke-direct/range {v4 .. v9}, Lorg/qtproject/qt/android/CursorHandle;-><init>(Landroid/app/Activity;Landroid/view/View;IIZ)V

    iput-object v11, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 396
    :cond_2
    iget-object v4, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {v4, v2, v3}, Lorg/qtproject/qt/android/CursorHandle;->setPosition(II)V

    .line 397
    iget-object v2, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    move/from16 v3, p9

    move/from16 v4, p10

    invoke-virtual {v2, v3, v4}, Lorg/qtproject/qt/android/CursorHandle;->setPosition(II)V

    .line 398
    iget-object v2, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v2, :cond_3

    .line 399
    invoke-virtual {v2}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 400
    iput-object v10, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 402
    :cond_3
    or-int/lit16 v1, v1, 0x100

    goto :goto_2

    .line 372
    :pswitch_1
    iget-object v4, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-nez v4, :cond_4

    .line 373
    new-instance v4, Lorg/qtproject/qt/android/CursorHandle;

    const/4 v14, 0x1

    const v15, 0x10102c7

    const/16 v16, 0x0

    move-object v11, v4

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v11 .. v16}, Lorg/qtproject/qt/android/CursorHandle;-><init>(Landroid/app/Activity;Landroid/view/View;IIZ)V

    iput-object v4, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 376
    :cond_4
    iget-object v4, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {v4, v2, v3}, Lorg/qtproject/qt/android/CursorHandle;->setPosition(II)V

    .line 377
    iget-object v2, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v2, :cond_7

    .line 378
    invoke-virtual {v2}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 379
    iget-object v2, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {v2}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 380
    iput-object v10, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 381
    iput-object v10, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    goto :goto_2

    .line 357
    :pswitch_2
    iget-object v2, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v2, :cond_5

    .line 358
    invoke-virtual {v2}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 359
    iput-object v10, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 361
    :cond_5
    iget-object v2, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v2, :cond_6

    .line 362
    invoke-virtual {v2}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 363
    iget-object v2, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {v2}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 364
    iput-object v10, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 365
    iput-object v10, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 367
    :cond_6
    iget-object v2, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_editPopupMenu:Lorg/qtproject/qt/android/EditPopupMenu;

    if-eqz v2, :cond_7

    .line 368
    invoke-virtual {v2}, Lorg/qtproject/qt/android/EditPopupMenu;->hide()V

    .line 406
    :cond_7
    :goto_2
    invoke-static/range {p1 .. p1}, Lorg/qtproject/qt/android/QtClipboardManager;->hasClipboardText(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 407
    and-int/lit8 v2, p6, -0x5

    move v6, v2

    goto :goto_3

    .line 406
    :cond_8
    move/from16 v6, p6

    .line 409
    :goto_3
    iget-object v3, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_editPopupMenu:Lorg/qtproject/qt/android/EditPopupMenu;

    if-eqz v3, :cond_a

    .line 410
    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    if-eqz v6, :cond_9

    .line 411
    iget-object v7, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    iget-object v8, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    iget-object v9, v0, Lorg/qtproject/qt/android/QtInputDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v3 .. v9}, Lorg/qtproject/qt/android/EditPopupMenu;->setPosition(IIILorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;)V

    goto :goto_4

    .line 414
    :cond_9
    invoke-virtual {v3}, Lorg/qtproject/qt/android/EditPopupMenu;->hide()V

    .line 417
    :cond_a
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSoftInputMode(Landroid/app/Activity;I)Z
    .locals 3

    .line 222
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 223
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 229
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_1

    .line 230
    iget v1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_portraitKeyboardHeight:I

    if-eqz v1, :cond_0

    .line 231
    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v1, v0, 0x5

    goto :goto_0

    .line 233
    :cond_1
    iget v1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_landscapeKeyboardHeight:I

    if-eqz v1, :cond_2

    .line 234
    goto :goto_0

    :cond_2
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x3

    move v1, v0

    .line 237
    :goto_0
    iget v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_softInputMode:I

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 238
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget p2, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_softInputMode:I

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 239
    nop

    .line 240
    iget p1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_softInputMode:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    .line 242
    :cond_4
    nop

    .line 243
    if-le p2, v1, :cond_5

    .line 244
    nop

    .line 245
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 246
    goto :goto_1

    .line 247
    :cond_5
    nop

    .line 248
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x21

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 251
    :goto_1
    return v2
.end method


# virtual methods
.method getCurrentQtEditText()Lorg/qtproject/qt/android/QtEditText;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    return-object v0
.end method

.method public getSelectHandleWidth()I
    .locals 2

    .line 328
    nop

    .line 329
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {v0}, Lorg/qtproject/qt/android/CursorHandle;->width()I

    move-result v0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {v1}, Lorg/qtproject/qt/android/CursorHandle;->width()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 331
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {v0}, Lorg/qtproject/qt/android/CursorHandle;->width()I

    move-result v0

    goto :goto_0

    .line 331
    :cond_1
    const/4 v0, 0x0

    .line 334
    :goto_0
    return v0
.end method

.method public handleDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 490
    invoke-static {p1}, Lorg/qtproject/qt/android/QtInputDelegate;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public handleDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 475
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 476
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 477
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 478
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 479
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 480
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 479
    :goto_0
    invoke-static {v2, v0, v3, v4}, Lorg/qtproject/qt/android/QtInputDelegate;->keyDown(IIIZ)V

    .line 481
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 482
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 481
    :goto_1
    invoke-static {v2, v0, v3, v1}, Lorg/qtproject/qt/android/QtInputDelegate;->keyUp(IIIZ)V

    .line 485
    :cond_2
    invoke-static {p1}, Lorg/qtproject/qt/android/QtInputDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public hideSoftwareKeyboard()V
    .locals 1

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_isKeyboardHidingAnimationOngoing:Z

    .line 290
    new-instance v0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;-><init>(Lorg/qtproject/qt/android/QtInputDelegate;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 311
    return-void
.end method

.method public isKeyboardVisible()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_keyboardIsVisible:Z

    return v0
.end method

.method public isSoftwareKeyboardVisible()Z
    .locals 1

    .line 119
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtInputDelegate;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_isKeyboardHidingAnimationOngoing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$hideSoftwareKeyboard$4$org-qtproject-qt-android-QtInputDelegate()V
    .locals 4

    .line 291
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    if-nez v1, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {v1}, Lorg/qtproject/qt/android/QtEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lorg/qtproject/qt/android/QtInputDelegate$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lorg/qtproject/qt/android/QtInputDelegate$2;-><init>(Lorg/qtproject/qt/android/QtInputDelegate;Landroid/os/Handler;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 310
    return-void

    .line 292
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$probeForKeyboardHeight$3$org-qtproject-qt-android-QtInputDelegate(Landroid/app/Activity;Lorg/qtproject/qt/android/QtLayout;IIIIII)V
    .locals 4

    .line 258
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_keyboardIsVisible:Z

    if-nez v0, :cond_0

    .line 259
    return-void

    .line 260
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 261
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 262
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 263
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 264
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_2

    .line 265
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v0, :cond_1

    .line 266
    iget v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_landscapeKeyboardHeight:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v2, :cond_3

    .line 267
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_landscapeKeyboardHeight:I

    .line 268
    invoke-virtual/range {p0 .. p8}, Lorg/qtproject/qt/android/QtInputDelegate;->showSoftwareKeyboard(Landroid/app/Activity;Lorg/qtproject/qt/android/QtLayout;IIIIII)V

    goto :goto_0

    .line 272
    :cond_1
    iget v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_portraitKeyboardHeight:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v2, :cond_3

    .line 273
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_portraitKeyboardHeight:I

    .line 274
    invoke-virtual/range {p0 .. p8}, Lorg/qtproject/qt/android/QtInputDelegate;->showSoftwareKeyboard(Landroid/app/Activity;Lorg/qtproject/qt/android/QtLayout;IIIIII)V

    goto :goto_0

    .line 281
    :cond_2
    iget p1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_probeKeyboardHeightDelayMs:I

    const/16 p2, 0x3e8

    if-ge p1, p2, :cond_3

    .line 282
    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_probeKeyboardHeightDelayMs:I

    .line 284
    :cond_3
    :goto_0
    return-void
.end method

.method synthetic lambda$resetSoftwareKeyboard$0$org-qtproject-qt-android-QtInputDelegate()V
    .locals 2

    .line 166
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 167
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    .line 168
    return-void
.end method

.method synthetic lambda$showSoftwareKeyboard$1$org-qtproject-qt-android-QtInputDelegate(Lorg/qtproject/qt/android/QtLayout;Landroid/app/Activity;IIIIII)V
    .locals 15

    .line 191
    move-object v11, p0

    iget-object v12, v11, Lorg/qtproject/qt/android/QtInputDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v13, v11, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    new-instance v14, Lorg/qtproject/qt/android/QtInputDelegate$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lorg/qtproject/qt/android/QtInputDelegate$1;-><init>(Lorg/qtproject/qt/android/QtInputDelegate;Landroid/os/Handler;Lorg/qtproject/qt/android/QtLayout;Landroid/app/Activity;IIIIII)V

    const/4 v0, 0x0

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 212
    iget-object v1, v11, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    iget-boolean v1, v1, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, v11, Lorg/qtproject/qt/android/QtInputDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v11, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 214
    iget-object v1, v11, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    iput-boolean v0, v1, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    .line 216
    :cond_0
    return-void
.end method

.method synthetic lambda$showSoftwareKeyboard$2$org-qtproject-qt-android-QtInputDelegate(Landroid/app/Activity;IIILorg/qtproject/qt/android/QtLayout;III)V
    .locals 13

    .line 181
    move-object v10, p0

    iget-object v0, v10, Lorg/qtproject/qt/android/QtInputDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    iget-object v0, v10, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    if-nez v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/QtInputDelegate;->updateSoftInputMode(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    return-void

    .line 187
    :cond_1
    iget-object v0, v10, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    move/from16 v9, p3

    move/from16 v8, p4

    invoke-virtual {v0, v9, v8}, Lorg/qtproject/qt/android/QtEditText;->setEditTextOptions(II)V

    .line 188
    iget-object v0, v10, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtEditText;->requestFocus()Z

    .line 190
    iget-object v11, v10, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    new-instance v12, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p5

    move-object v3, p1

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move v7, p2

    invoke-direct/range {v0 .. v9}, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;-><init>(Lorg/qtproject/qt/android/QtInputDelegate;Lorg/qtproject/qt/android/QtLayout;Landroid/app/Activity;IIIIII)V

    const-wide/16 v0, 0xf

    invoke-virtual {v11, v12, v0, v1}, Lorg/qtproject/qt/android/QtEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    return-void

    .line 182
    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$updateHandles$6$org-qtproject-qt-android-QtInputDelegate(Landroid/app/Activity;Lorg/qtproject/qt/android/QtLayout;IIIIIIIIZ)V
    .locals 0

    .line 346
    invoke-direct/range {p0 .. p11}, Lorg/qtproject/qt/android/QtInputDelegate;->updateHandleImpl(Landroid/app/Activity;Lorg/qtproject/qt/android/QtLayout;IIIIIIIIZ)V

    return-void
.end method

.method synthetic lambda$updateSelection$5$org-qtproject-qt-android-QtInputDelegate(IIII)V
    .locals 6

    .line 318
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 319
    return-void

    .line 321
    :cond_0
    iget-object v1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 322
    return-void
.end method

.method public onHideKeyboardRunnableDone(ZJ)V
    .locals 0

    .line 101
    invoke-virtual {p0, p1, p2, p3}, Lorg/qtproject/qt/android/QtInputDelegate;->setKeyboardVisibility(ZJ)V

    .line 102
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 421
    iget-wide v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_metaState:J

    invoke-static {v0, v1, p1, p2}, Landroid/text/method/MetaKeyKeyListener;->handleKeyDown(JILandroid/view/KeyEvent;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_metaState:J

    .line 422
    invoke-static {v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(J)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    or-int/2addr v0, v1

    .line 423
    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    .line 424
    nop

    .line 425
    iget-wide v1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_metaState:J

    invoke-static {v1, v2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(J)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_metaState:J

    .line 427
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 428
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    .line 429
    iget v2, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_lastChar:I

    invoke-static {v2, v1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v1

    goto :goto_0

    .line 427
    :cond_0
    move v1, v0

    .line 432
    :goto_0
    const/16 v2, 0x18

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    const/16 v2, 0x19

    if-eq p1, v2, :cond_1

    const/16 v2, 0x5b

    if-ne p1, v2, :cond_2

    .line 435
    :cond_1
    const-string v2, "QT_ANDROID_VOLUME_KEYS"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 436
    return v3

    .line 439
    :cond_2
    iput v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_lastChar:I

    .line 440
    const/4 v0, 0x4

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    .line 441
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtInputDelegate;->isKeyboardVisible()Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_backKeyPressedSent:Z

    .line 442
    if-nez v0, :cond_3

    .line 443
    return v2

    .line 446
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-lez p2, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-static {p1, v1, v0, v3}, Lorg/qtproject/qt/android/QtInputDelegate;->keyDown(IIIZ)V

    .line 448
    return v2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 453
    const/16 v0, 0x18

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5b

    if-ne p1, v0, :cond_1

    .line 456
    :cond_0
    const-string v0, "QT_ANDROID_VOLUME_KEYS"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 457
    return v1

    .line 460
    :cond_1
    const/4 v0, 0x4

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_backKeyPressedSent:Z

    if-nez v0, :cond_2

    .line 461
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtInputDelegate;->hideSoftwareKeyboard()V

    .line 462
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    invoke-virtual {p0, v1, p1, p2}, Lorg/qtproject/qt/android/QtInputDelegate;->setKeyboardVisibility(ZJ)V

    .line 463
    return v2

    .line 466
    :cond_2
    iget-wide v3, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_metaState:J

    invoke-static {v3, v4, p1, p2}, Landroid/text/method/MetaKeyKeyListener;->handleKeyUp(JILandroid/view/KeyEvent;)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_metaState:J

    .line 467
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v1, 0x1

    .line 468
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p2

    invoke-static {p1, v0, p2, v1}, Lorg/qtproject/qt/android/QtInputDelegate;->keyUp(IIIZ)V

    .line 470
    return v2
.end method

.method public onSendKeyEventDefaultCase()V
    .locals 0

    .line 106
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtInputDelegate;->hideSoftwareKeyboard()V

    .line 107
    return-void
.end method

.method public onSetClosing(Z)V
    .locals 2

    .line 95
    if-nez p1, :cond_0

    .line 96
    const/4 p1, 0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/qtproject/qt/android/QtInputDelegate;->setKeyboardVisibility(ZJ)V

    .line 97
    :cond_0
    return-void
.end method

.method public resetSoftwareKeyboard()V
    .locals 4

    .line 163
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    if-nez v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    new-instance v1, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda4;-><init>(Lorg/qtproject/qt/android/QtInputDelegate;)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lorg/qtproject/qt/android/QtEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    return-void

    .line 164
    :cond_1
    :goto_0
    return-void
.end method

.method setEditPopupMenu(Lorg/qtproject/qt/android/EditPopupMenu;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_editPopupMenu:Lorg/qtproject/qt/android/EditPopupMenu;

    .line 135
    return-void
.end method

.method setFocusedView(Lorg/qtproject/qt/android/QtEditText;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    .line 174
    return-void
.end method

.method public setKeyboardVisibility(ZJ)V
    .locals 3

    .line 145
    iget-wide v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_showHideTimeStamp:J

    cmp-long v2, v0, p2

    if-lez v2, :cond_0

    .line 146
    return-void

    .line 147
    :cond_0
    iput-wide p2, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_showHideTimeStamp:J

    .line 149
    iget-boolean p2, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_keyboardIsVisible:Z

    if-ne p2, p1, :cond_1

    .line 150
    return-void

    .line 151
    :cond_1
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_keyboardIsVisible:Z

    .line 152
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtInputDelegate;->keyboardVisibilityUpdated(Z)V

    .line 153
    if-nez p1, :cond_2

    .line 155
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_keyboardVisibilityListener:Lorg/qtproject/qt/android/QtInputDelegate$KeyboardVisibilityListener;

    invoke-interface {p1}, Lorg/qtproject/qt/android/QtInputDelegate$KeyboardVisibilityListener;->onKeyboardVisibilityChange()V

    .line 156
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtEditText;->clearFocus()V

    .line 158
    :cond_2
    return-void
.end method

.method setSoftInputMode(I)V
    .locals 0

    .line 124
    iput p1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_softInputMode:I

    .line 125
    return-void
.end method

.method public showSoftwareKeyboard(Landroid/app/Activity;Lorg/qtproject/qt/android/QtLayout;IIIIII)V
    .locals 11

    .line 180
    new-instance v10, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda0;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p6

    move/from16 v4, p8

    move/from16 v5, p7

    move-object v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/QtInputDelegate;Landroid/app/Activity;IIILorg/qtproject/qt/android/QtLayout;III)V

    invoke-static {v10}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method

.method public updateHandles(Landroid/app/Activity;Lorg/qtproject/qt/android/QtLayout;IIIIIIIIZ)V
    .locals 14

    .line 346
    new-instance v13, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda6;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda6;-><init>(Lorg/qtproject/qt/android/QtInputDelegate;Landroid/app/Activity;Lorg/qtproject/qt/android/QtLayout;IIIIIIIIZ)V

    invoke-static {v13}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 348
    return-void
.end method

.method public updateSelection(IIII)V
    .locals 7

    .line 317
    new-instance v6, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda3;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda3;-><init>(Lorg/qtproject/qt/android/QtInputDelegate;IIII)V

    invoke-static {v6}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 323
    return-void
.end method
