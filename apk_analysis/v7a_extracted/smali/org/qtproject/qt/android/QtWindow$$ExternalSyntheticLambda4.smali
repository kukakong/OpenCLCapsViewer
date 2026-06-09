.class public final synthetic Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtWindow;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda4;->f$0:Lorg/qtproject/qt/android/QtWindow;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda4;->f$0:Lorg/qtproject/qt/android/QtWindow;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtWindow;->lambda$removeNativeView$10$org-qtproject-qt-android-QtWindow()V

    return-void
.end method
