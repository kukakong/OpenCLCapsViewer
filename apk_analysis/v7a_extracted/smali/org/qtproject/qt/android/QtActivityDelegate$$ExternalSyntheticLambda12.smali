.class public final synthetic Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/view/View;

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate;IIILandroid/view/View;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda12;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda12;->f$1:I

    iput p3, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda12;->f$2:I

    iput p4, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda12;->f$3:I

    iput-object p5, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda12;->f$4:Landroid/view/View;

    iput p6, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda12;->f$5:I

    iput p7, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda12;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda12;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iget v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda12;->f$1:I

    iget v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda12;->f$2:I

    iget v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda12;->f$3:I

    iget-object v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda12;->f$4:Landroid/view/View;

    iget v5, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda12;->f$5:I

    iget v6, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda12;->f$6:I

    invoke-virtual/range {v0 .. v6}, Lorg/qtproject/qt/android/QtActivityDelegate;->lambda$insertNativeView$14$org-qtproject-qt-android-QtActivityDelegate(IIILandroid/view/View;II)V

    return-void
.end method
