.class public final synthetic Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate;IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda5;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda5;->f$1:I

    iput p3, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda5;->f$2:I

    iput p4, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda5;->f$3:I

    iput p5, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda5;->f$4:I

    iput p6, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda5;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda5;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iget v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda5;->f$1:I

    iget v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda5;->f$2:I

    iget v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda5;->f$3:I

    iget v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda5;->f$4:I

    iget v5, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda5;->f$5:I

    invoke-virtual/range {v0 .. v5}, Lorg/qtproject/qt/android/QtActivityDelegate;->lambda$setNativeViewGeometry$15$org-qtproject-qt-android-QtActivityDelegate(IIIII)V

    return-void
.end method
