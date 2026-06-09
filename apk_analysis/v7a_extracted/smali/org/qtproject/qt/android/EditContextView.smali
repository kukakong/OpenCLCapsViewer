.class public Lorg/qtproject/qt/android/EditContextView;
.super Landroid/widget/LinearLayout;
.source "EditContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/EditContextView$ContextButton;,
        Lorg/qtproject/qt/android/EditContextView$OnClickListener;
    }
.end annotation


# static fields
.field public static final COPY_BUTTON:I = 0x2

.field public static final CUT_BUTTON:I = 0x1

.field public static final PASTE_BUTTON:I = 0x4

.field public static final SELECT_ALL_BUTTON:I = 0x8


# instance fields
.field m_buttons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/qtproject/qt/android/EditContextView$ContextButton;",
            ">;"
        }
    .end annotation
.end field

.field m_onClickListener:Lorg/qtproject/qt/android/EditContextView$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/qtproject/qt/android/EditContextView$OnClickListener;)V
    .locals 1

    .line 110
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lorg/qtproject/qt/android/EditContextView;->m_buttons:Ljava/util/HashMap;

    .line 111
    iput-object p2, p0, Lorg/qtproject/qt/android/EditContextView;->m_onClickListener:Lorg/qtproject/qt/android/EditContextView$OnClickListener;

    .line 112
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/EditContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    const p1, 0x1040003

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/EditContextView;->addButton(I)V

    .line 115
    const p1, 0x1040001

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/EditContextView;->addButton(I)V

    .line 116
    const p1, 0x104000b

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/EditContextView;->addButton(I)V

    .line 117
    const p1, 0x104000d

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/EditContextView;->addButton(I)V

    .line 118
    return-void
.end method


# virtual methods
.method addButton(I)V
    .locals 2

    .line 68
    new-instance v0, Lorg/qtproject/qt/android/EditContextView$ContextButton;

    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/qtproject/qt/android/EditContextView$ContextButton;-><init>(Lorg/qtproject/qt/android/EditContextView;Landroid/content/Context;I)V

    .line 69
    iget-object v1, p0, Lorg/qtproject/qt/android/EditContextView;->m_buttons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/EditContextView;->addView(Landroid/view/View;)V

    .line 71
    return-void
.end method

.method public getCalculatedSize()Landroid/graphics/Point;
    .locals 6

    .line 94
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 95
    iget-object v2, p0, Lorg/qtproject/qt/android/EditContextView;->m_buttons:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/qtproject/qt/android/EditContextView$ContextButton;

    .line 96
    invoke-virtual {v3}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 97
    invoke-virtual {v3, v1, v1}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->measure(II)V

    .line 98
    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v3}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 99
    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v3}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->getMeasuredHeight()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 101
    :cond_0
    goto :goto_0

    .line 103
    :cond_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditContextView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditContextView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 104
    iget v1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditContextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditContextView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 106
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 62
    check-cast p1, Lorg/qtproject/qt/android/EditContextView$ContextButton;

    .line 63
    iget-object v0, p0, Lorg/qtproject/qt/android/EditContextView;->m_onClickListener:Lorg/qtproject/qt/android/EditContextView$OnClickListener;

    iget p1, p1, Lorg/qtproject/qt/android/EditContextView$ContextButton;->m_buttonId:I

    invoke-interface {v0, p1}, Lorg/qtproject/qt/android/EditContextView$OnClickListener;->contextButtonClicked(I)V

    .line 64
    return-void
.end method

.method public updateButtons(I)V
    .locals 4

    .line 75
    iget-object v0, p0, Lorg/qtproject/qt/android/EditContextView;->m_buttons:Ljava/util/HashMap;

    const v1, 0x1040003

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/qtproject/qt/android/EditContextView$ContextButton;

    .line 76
    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 77
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setVisibility(I)V

    .line 79
    :cond_1
    iget-object v0, p0, Lorg/qtproject/qt/android/EditContextView;->m_buttons:Ljava/util/HashMap;

    const v3, 0x1040001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/qtproject/qt/android/EditContextView$ContextButton;

    .line 80
    if-eqz v0, :cond_3

    .line 81
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setVisibility(I)V

    .line 83
    :cond_3
    iget-object v0, p0, Lorg/qtproject/qt/android/EditContextView;->m_buttons:Ljava/util/HashMap;

    const v3, 0x104000b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/qtproject/qt/android/EditContextView$ContextButton;

    .line 84
    if-eqz v0, :cond_5

    .line 85
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setVisibility(I)V

    .line 87
    :cond_5
    iget-object v0, p0, Lorg/qtproject/qt/android/EditContextView;->m_buttons:Ljava/util/HashMap;

    const v3, 0x104000d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/qtproject/qt/android/EditContextView$ContextButton;

    .line 88
    if-eqz v0, :cond_7

    .line 89
    and-int/2addr p1, v2

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setVisibility(I)V

    .line 90
    :cond_7
    return-void
.end method
