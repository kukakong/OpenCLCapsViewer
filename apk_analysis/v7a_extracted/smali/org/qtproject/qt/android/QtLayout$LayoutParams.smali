.class public Lorg/qtproject/qt/android/QtLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "QtLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/QtLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 160
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 161
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 153
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 154
    iput p3, p0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->x:I

    .line 155
    iput p4, p0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->y:I

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    return-void
.end method
