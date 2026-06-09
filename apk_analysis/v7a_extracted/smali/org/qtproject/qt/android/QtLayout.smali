.class public Lorg/qtproject/qt/android/QtLayout;
.super Landroid/view/ViewGroup;
.source "QtLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/QtLayout$LayoutParams;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 115
    instance-of p1, p1, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 84
    new-instance v0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v2}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 121
    new-instance v0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    invoke-direct {v0, p1}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public moveChild(Landroid/view/View;I)V
    .locals 2

    .line 174
    if-nez p1, :cond_0

    .line 175
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 178
    return-void

    .line 180
    :cond_1
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtLayout;->detachViewFromParent(Landroid/view/View;)V

    .line 181
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->requestLayout()V

    .line 182
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->invalidate()V

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/qtproject/qt/android/QtLayout;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 184
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 93
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->getChildCount()I

    move-result p1

    .line 94
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    .line 95
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    .line 97
    nop

    .line 98
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    .line 100
    iget v3, v2, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->x:I

    .line 101
    iget v4, v2, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->y:I

    .line 102
    iget v5, v2, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 103
    sub-int v5, p4, p2

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    .line 104
    :goto_1
    iget v2, v2, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->height:I

    if-ne v2, v6, :cond_1

    .line 105
    sub-int v2, p5, p3

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v4

    .line 106
    :goto_2
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/View;->layout(IIII)V

    .line 94
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 37
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->getChildCount()I

    move-result v0

    .line 39
    nop

    .line 40
    nop

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtLayout;->measureChildren(II)V

    .line 46
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 47
    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/QtLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 48
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 52
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    if-eqz v5, :cond_0

    .line 53
    nop

    .line 54
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    .line 55
    iget v6, v5, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->x:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 56
    iget v5, v5, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->y:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v5, v4

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 59
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 62
    :goto_1
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 63
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 46
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 69
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 71
    invoke-static {v1, p1}, Lorg/qtproject/qt/android/QtLayout;->resolveSize(II)I

    move-result p1

    .line 72
    invoke-static {v0, p2}, Lorg/qtproject/qt/android/QtLayout;->resolveSize(II)I

    move-result p2

    .line 71
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtLayout;->setMeasuredDimension(II)V

    .line 73
    return-void
.end method

.method public setLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V
    .locals 1

    .line 197
    if-nez p1, :cond_0

    .line 198
    return-void

    .line 201
    :cond_0
    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/QtLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    return-void

    .line 205
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne p0, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 207
    :goto_0
    if-eqz v0, :cond_3

    .line 208
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    if-eqz p3, :cond_4

    .line 210
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->invalidate()V

    goto :goto_1

    .line 212
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    :cond_4
    :goto_1
    return-void
.end method
