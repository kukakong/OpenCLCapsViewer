.class Lorg/qtproject/qt/android/QtView$1;
.super Ljava/lang/Object;
.source "QtView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtView;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtView;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtView;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/qtproject/qt/android/QtView$1;->this$0:Lorg/qtproject/qt/android/QtView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6

    .line 66
    iget-object p1, p0, Lorg/qtproject/qt/android/QtView$1;->this$0:Lorg/qtproject/qt/android/QtView;

    iget-wide v0, p1, Lorg/qtproject/qt/android/QtView;->m_windowReference:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 67
    sub-int/2addr p8, p6

    .line 68
    sub-int/2addr p9, p7

    .line 69
    sub-int v4, p4, p2

    .line 70
    sub-int v5, p5, p3

    .line 71
    if-ne p8, v4, :cond_0

    if-ne p9, v5, :cond_0

    if-ne p2, p6, :cond_0

    if-eq p3, p7, :cond_1

    .line 73
    :cond_0
    iget-object p1, p0, Lorg/qtproject/qt/android/QtView$1;->this$0:Lorg/qtproject/qt/android/QtView;

    iget-wide v0, p1, Lorg/qtproject/qt/android/QtView;->m_windowReference:J

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lorg/qtproject/qt/android/QtView;->access$000(JIIII)V

    .line 76
    :cond_1
    return-void
.end method
