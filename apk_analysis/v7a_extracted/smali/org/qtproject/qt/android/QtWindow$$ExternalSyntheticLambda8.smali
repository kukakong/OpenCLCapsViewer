.class public final synthetic Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtWindow;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtWindow;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda8;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iput-boolean p2, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda8;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda8;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iget-boolean v1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda8;->f$1:Z

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtWindow;->lambda$setVisible$1$org-qtproject-qt-android-QtWindow(Z)V

    return-void
.end method
