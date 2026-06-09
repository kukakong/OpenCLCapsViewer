.class public final synthetic Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtInputDelegate;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lorg/qtproject/qt/android/QtLayout;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtInputDelegate;Landroid/app/Activity;Lorg/qtproject/qt/android/QtLayout;IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$0:Lorg/qtproject/qt/android/QtInputDelegate;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$2:Lorg/qtproject/qt/android/QtLayout;

    iput p4, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$3:I

    iput p5, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$4:I

    iput p6, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$5:I

    iput p7, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$6:I

    iput p8, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$7:I

    iput p9, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$8:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$0:Lorg/qtproject/qt/android/QtInputDelegate;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$2:Lorg/qtproject/qt/android/QtLayout;

    iget v3, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$3:I

    iget v4, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$4:I

    iget v5, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$5:I

    iget v6, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$6:I

    iget v7, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$7:I

    iget v8, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$8:I

    invoke-virtual/range {v0 .. v8}, Lorg/qtproject/qt/android/QtInputDelegate;->lambda$probeForKeyboardHeight$3$org-qtproject-qt-android-QtInputDelegate(Landroid/app/Activity;Lorg/qtproject/qt/android/QtLayout;IIIIII)V

    return-void
.end method
