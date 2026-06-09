.class Lorg/qtproject/qt/android/EditContextView$ContextButton;
.super Landroid/widget/TextView;
.source "EditContextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/EditContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextButton"
.end annotation


# instance fields
.field public m_buttonId:I

.field final synthetic this$0:Lorg/qtproject/qt/android/EditContextView;


# direct methods
.method public constructor <init>(Lorg/qtproject/qt/android/EditContextView;Landroid/content/Context;I)V
    .locals 2

    .line 38
    iput-object p1, p0, Lorg/qtproject/qt/android/EditContextView$ContextButton;->this$0:Lorg/qtproject/qt/android/EditContextView;

    .line 39
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 40
    iput p3, p0, Lorg/qtproject/qt/android/EditContextView$ContextButton;->m_buttonId:I

    .line 41
    invoke-virtual {p0, p3}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setText(I)V

    .line 42
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p3, v0, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, p3}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    const/16 p3, 0x11

    invoke-virtual {p0, p3}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setGravity(I)V

    .line 45
    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 46
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 45
    const v1, 0x106000a

    invoke-virtual {p3, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    invoke-virtual {p0, p3}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setTextColor(I)V

    .line 47
    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 48
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    .line 47
    const v0, 0x1080019

    invoke-virtual {p3, v0, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/qtproject/qt/android/EditContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 50
    const/high16 p3, 0x41800000    # 16.0f

    mul-float p3, p3, p2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 51
    const/high16 v1, 0x41000000    # 8.0f

    mul-float p2, p2, v1

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 52
    invoke-virtual {p0, p3, p2, p3, p2}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setPadding(IIII)V

    .line 53
    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setSingleLine()V

    .line 54
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 55
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method
