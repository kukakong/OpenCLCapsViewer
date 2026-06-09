.class public Lorg/qtproject/qt/android/EditPopupMenu;
.super Ljava/lang/Object;
.source "EditPopupMenu.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lorg/qtproject/qt/android/EditContextView$OnClickListener;


# instance fields
.field private final m_activity:Landroid/app/Activity;

.field private m_buttons:I

.field private m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

.field private final m_layout:Landroid/view/View;

.field private m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

.field private m_popup:Landroid/widget/PopupWindow;

.field private m_posX:I

.field private m_posY:I

.field private m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

.field private final m_view:Lorg/qtproject/qt/android/EditContextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    .line 32
    iput-object p1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_activity:Landroid/app/Activity;

    .line 33
    new-instance v0, Lorg/qtproject/qt/android/EditContextView;

    invoke-direct {v0, p1, p0}, Lorg/qtproject/qt/android/EditContextView;-><init>(Landroid/content/Context;Lorg/qtproject/qt/android/EditContextView$OnClickListener;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    .line 34
    invoke-virtual {v0, p0}, Lorg/qtproject/qt/android/EditContextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 36
    iput-object p2, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    .line 37
    return-void
.end method

.method private initOverlay()V
    .locals 4

    .line 41
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 42
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    .line 46
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 47
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 48
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 49
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 50
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 52
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 53
    return-void
.end method


# virtual methods
.method public contextButtonClicked(I)V
    .locals 0

    .line 137
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 148
    :sswitch_0
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->selectAll()Z

    goto :goto_0

    .line 145
    :sswitch_1
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->paste()Z

    .line 146
    goto :goto_0

    .line 139
    :sswitch_2
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->cut()Z

    .line 140
    goto :goto_0

    .line 142
    :sswitch_3
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->copy()Z

    .line 143
    nop

    .line 151
    :goto_0
    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditPopupMenu;->hide()V

    .line 152
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1040001 -> :sswitch_3
        0x1040003 -> :sswitch_2
        0x104000b -> :sswitch_1
        0x104000d -> :sswitch_0
    .end sparse-switch
.end method

.method public hide()V
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    .line 113
    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 130
    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_0

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 132
    iget p3, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posX:I

    iget p4, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posY:I

    iget p5, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_buttons:I

    iget-object p6, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    iget-object p7, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    iget-object p8, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lorg/qtproject/qt/android/EditPopupMenu;->setPosition(IIILorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;)V

    .line 133
    :cond_1
    return-void
.end method

.method public onPreDraw()Z
    .locals 8

    .line 120
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget v2, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posX:I

    iget v3, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posY:I

    iget v4, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_buttons:I

    iget-object v5, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    iget-object v6, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    iget-object v7, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/qtproject/qt/android/EditPopupMenu;->setPosition(IIILorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;)V

    .line 123
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setPosition(IIILorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;)V
    .locals 8

    .line 59
    invoke-direct {p0}, Lorg/qtproject/qt/android/EditPopupMenu;->initOverlay()V

    .line 61
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    invoke-virtual {v0, p3}, Lorg/qtproject/qt/android/EditContextView;->updateButtons(I)V

    .line 62
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/EditContextView;->getCalculatedSize()Landroid/graphics/Point;

    move-result-object v0

    .line 64
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 65
    iget-object v3, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 68
    new-array v3, v1, [I

    .line 69
    new-array v4, v1, [I

    .line 70
    iget-object v5, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 71
    iget-object v5, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 73
    const/4 v5, 0x0

    aget v6, v2, v5

    add-int/2addr v6, p1

    aget v7, v3, v5

    sub-int/2addr v6, v7

    .line 74
    const/4 v7, 0x1

    aget v2, v2, v7

    add-int/2addr v2, p2

    aget v4, v4, v7

    aget v3, v3, v7

    sub-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 76
    iget v3, v0, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v1

    sub-int/2addr v6, v3

    .line 78
    iget v3, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    .line 79
    if-gez v2, :cond_1

    .line 80
    if-eqz p4, :cond_0

    .line 81
    invoke-virtual {p4}, Lorg/qtproject/qt/android/CursorHandle;->bottom()I

    move-result v2

    goto :goto_0

    .line 82
    :cond_0
    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    .line 83
    invoke-virtual {p5}, Lorg/qtproject/qt/android/CursorHandle;->bottom()I

    move-result v2

    invoke-virtual {p6}, Lorg/qtproject/qt/android/CursorHandle;->bottom()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 84
    if-gtz v2, :cond_1

    .line 85
    iget-object v3, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 89
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v1

    add-int/2addr v4, p1

    if-ge v3, v4, :cond_2

    .line 90
    iget-object v1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int v6, v1, v0

    .line 92
    :cond_2
    if-gez v6, :cond_3

    .line 93
    const/4 v6, 0x0

    .line 95
    :cond_3
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    invoke-virtual {v0, v6, v2, v1, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_1

    .line 98
    :cond_4
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    invoke-virtual {v0, v1, v5, v6, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 100
    :goto_1
    iput p1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posX:I

    .line 101
    iput p2, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posY:I

    .line 102
    iput p3, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_buttons:I

    .line 103
    iput-object p4, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 104
    iput-object p5, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 105
    iput-object p6, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 106
    return-void
.end method
