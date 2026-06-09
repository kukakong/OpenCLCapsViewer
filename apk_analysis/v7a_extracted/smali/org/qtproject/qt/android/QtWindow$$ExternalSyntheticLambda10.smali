.class public final synthetic Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtWindow;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:Z

.field public final synthetic f$7:I

.field public final synthetic f$8:Z


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtWindow;IIIIIZIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iput p2, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;->f$1:I

    iput p3, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;->f$2:I

    iput p4, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;->f$3:I

    iput p5, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;->f$4:I

    iput p6, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;->f$5:I

    iput-boolean p7, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;->f$6:Z

    iput p8, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;->f$7:I

    iput-boolean p9, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;->f$8:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iget v1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;->f$1:I

    iget v2, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;->f$2:I

    iget v3, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;->f$3:I

    iget v4, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;->f$4:I

    iget v5, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;->f$5:I

    iget-boolean v6, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;->f$6:Z

    iget v7, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;->f$7:I

    iget-boolean v8, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;->f$8:Z

    invoke-virtual/range {v0 .. v8}, Lorg/qtproject/qt/android/QtWindow;->lambda$createSurface$2$org-qtproject-qt-android-QtWindow(IIIIIZIZ)V

    return-void
.end method
