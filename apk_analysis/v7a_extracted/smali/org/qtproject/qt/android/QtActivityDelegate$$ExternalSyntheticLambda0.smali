.class public final synthetic Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;
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


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iget v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/qtproject/qt/android/QtActivityDelegate;->lambda$openContextMenu$8$org-qtproject-qt-android-QtActivityDelegate(IIII)V

    return-void
.end method
