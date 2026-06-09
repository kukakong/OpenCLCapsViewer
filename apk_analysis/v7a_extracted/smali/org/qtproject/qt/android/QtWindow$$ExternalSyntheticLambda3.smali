.class public final synthetic Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtWindow;

.field public final synthetic f$1:Lorg/qtproject/qt/android/QtWindow;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtWindow;Lorg/qtproject/qt/android/QtWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda3;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda3;->f$1:Lorg/qtproject/qt/android/QtWindow;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda3;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda3;->f$1:Lorg/qtproject/qt/android/QtWindow;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtWindow;->lambda$addChildWindow$5$org-qtproject-qt-android-QtWindow(Lorg/qtproject/qt/android/QtWindow;)V

    return-void
.end method
