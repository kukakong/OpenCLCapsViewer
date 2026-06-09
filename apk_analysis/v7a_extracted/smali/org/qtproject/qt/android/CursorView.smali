.class Lorg/qtproject/qt/android/CursorView;
.super Landroid/widget/ImageView;
.source "CursorHandle.java"


# instance fields
.field private final mHandle:Lorg/qtproject/qt/android/CursorHandle;

.field private m_offsetX:F

.field private m_offsetY:F

.field private m_pressed:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/qtproject/qt/android/CursorHandle;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/qtproject/qt/android/CursorView;->m_pressed:Z

    .line 32
    iput-object p2, p0, Lorg/qtproject/qt/android/CursorView;->mHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 33
    return-void
.end method


# virtual methods
.method public adjusted(II)V
    .locals 1

    .line 37
    iget v0, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetX:F

    int-to-float p1, p1

    add-float/2addr v0, p1

    iput v0, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetX:F

    .line 38
    iget p1, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetY:F

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetY:F

    .line 39
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 52
    :pswitch_0
    iget-boolean v0, p0, Lorg/qtproject/qt/android/CursorView;->m_pressed:Z

    if-nez v0, :cond_0

    .line 53
    return v1

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorView;->mHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetX:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v3, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetY:F

    sub-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 54
    invoke-virtual {v0, v1, p1}, Lorg/qtproject/qt/android/CursorHandle;->updatePosition(II)V

    .line 56
    goto :goto_0

    .line 61
    :pswitch_1
    iput-boolean v1, p0, Lorg/qtproject/qt/android/CursorView;->m_pressed:Z

    goto :goto_0

    .line 45
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetX:F

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p0}, Lorg/qtproject/qt/android/CursorView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    iput p1, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetY:F

    .line 47
    iput-boolean v2, p0, Lorg/qtproject/qt/android/CursorView;->m_pressed:Z

    .line 48
    nop

    .line 64
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
