.class public Lorg/qtproject/qt/android/CursorHandle;
.super Ljava/lang/Object;
.source "CursorHandle.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# static fields
.field private static final QtTag:Ljava/lang/String; = "QtCursorHandle"


# instance fields
.field private final m_activity:Landroid/app/Activity;

.field private final m_attr:I

.field private m_cursorView:Lorg/qtproject/qt/android/CursorView;

.field private final m_id:I

.field private m_lastX:I

.field private m_lastY:I

.field private final m_layout:Landroid/view/View;

.field private m_popup:Landroid/widget/PopupWindow;

.field private m_posX:I

.field private m_posY:I

.field private final m_rtl:Z

.field m_yShift:I

.field tolerance:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;IIZ)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    .line 74
    iput-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posX:I

    .line 79
    iput v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posY:I

    .line 87
    iput-object p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_activity:Landroid/app/Activity;

    .line 88
    iput p3, p0, Lorg/qtproject/qt/android/CursorHandle;->m_id:I

    .line 89
    iput p4, p0, Lorg/qtproject/qt/android/CursorHandle;->m_attr:I

    .line 90
    iput-object p2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_layout:Landroid/view/View;

    .line 91
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 92
    const/4 p2, 0x5

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p2, p3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_yShift:I

    .line 93
    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->tolerance:I

    .line 94
    rsub-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastY:I

    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastX:I

    .line 95
    iput-boolean p5, p0, Lorg/qtproject/qt/android/CursorHandle;->m_rtl:Z

    .line 96
    return-void
.end method

.method private initOverlay()V
    .locals 7

    .line 99
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 100
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    const/4 v1, 0x1

    new-array v2, v1, [I

    iget v3, p0, Lorg/qtproject/qt/android/CursorHandle;->m_attr:I

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 105
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 107
    new-instance v3, Lorg/qtproject/qt/android/CursorView;

    invoke-direct {v3, v0, p0}, Lorg/qtproject/qt/android/CursorView;-><init>(Landroid/content/Context;Lorg/qtproject/qt/android/CursorHandle;)V

    iput-object v3, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    .line 108
    invoke-virtual {v3, v2}, Lorg/qtproject/qt/android/CursorView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    const v6, 0x10102c8

    invoke-direct {v3, v0, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    .line 111
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 112
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 113
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 114
    if-eqz v2, :cond_1

    .line 115
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 116
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_0

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initOverlay(): cannot get width/height for popup from null drawable for attribute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_attr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtCursorHandle"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 123
    return-void
.end method


# virtual methods
.method public bottom()I
    .locals 2

    .line 162
    invoke-direct {p0}, Lorg/qtproject/qt/android/CursorHandle;->initOverlay()V

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 164
    iget-object v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    invoke-virtual {v1, v0}, Lorg/qtproject/qt/android/CursorView;->getLocationOnScreen([I)V

    .line 165
    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    invoke-virtual {v1}, Lorg/qtproject/qt/android/CursorView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hide()V
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 172
    :cond_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    .line 194
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posX:I

    iget v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posY:I

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/CursorHandle;->setPosition(II)V

    .line 197
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setPosition(II)V
    .locals 8

    .line 127
    invoke-direct {p0}, Lorg/qtproject/qt/android/CursorHandle;->initOverlay()V

    .line 129
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 130
    iget-object v2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_layout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 133
    new-array v2, v0, [I

    .line 134
    new-array v3, v0, [I

    .line 135
    iget-object v4, p0, Lorg/qtproject/qt/android/CursorHandle;->m_activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 136
    iget-object v4, p0, Lorg/qtproject/qt/android/CursorHandle;->m_activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 138
    const/4 v4, 0x0

    aget v5, v1, v4

    add-int/2addr v5, p1

    aget v6, v2, v4

    sub-int/2addr v5, v6

    .line 139
    const/4 v6, 0x1

    aget v1, v1, v6

    add-int/2addr v1, p2

    iget v7, p0, Lorg/qtproject/qt/android/CursorHandle;->m_yShift:I

    add-int/2addr v1, v7

    aget v3, v3, v6

    aget v2, v2, v6

    sub-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 141
    iget v2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_id:I

    if-ne v2, v6, :cond_0

    .line 142
    iget-object v2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    sub-int/2addr v5, v2

    goto :goto_0

    .line 143
    :cond_0
    const/4 v3, 0x3

    if-ne v2, v0, :cond_1

    iget-boolean v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_rtl:Z

    if-eqz v0, :cond_2

    :cond_1
    if-ne v2, v3, :cond_3

    iget-boolean v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_rtl:Z

    if-eqz v0, :cond_3

    .line 144
    :cond_2
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    sub-int/2addr v5, v0

    goto :goto_0

    .line 146
    :cond_3
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    sub-int/2addr v5, v0

    .line 149
    :goto_0
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-virtual {v0, v5, v1, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 151
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    iget v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posX:I

    sub-int v1, p1, v1

    iget v2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posY:I

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lorg/qtproject/qt/android/CursorView;->adjusted(II)V

    goto :goto_1

    .line 153
    :cond_4
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_layout:Landroid/view/View;

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 156
    :goto_1
    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posX:I

    .line 157
    iput p2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posY:I

    .line 158
    return-void
.end method

.method public updatePosition(II)V
    .locals 3

    .line 181
    iget v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_yShift:I

    sub-int/2addr p2, v0

    .line 182
    iget v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastX:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lorg/qtproject/qt/android/CursorHandle;->tolerance:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastY:I

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lorg/qtproject/qt/android/CursorHandle;->tolerance:I

    if-le v0, v1, :cond_1

    .line 183
    :cond_0
    iget v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_id:I

    iget v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posX:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posY:I

    add-int/2addr v2, p2

    invoke-static {v0, v1, v2}, Lorg/qtproject/qt/android/QtInputDelegate;->handleLocationChanged(III)V

    .line 184
    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastX:I

    .line 185
    iput p2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastY:I

    .line 187
    :cond_1
    return-void
.end method

.method public width()I
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/CursorView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method
