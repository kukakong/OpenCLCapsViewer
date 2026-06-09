.class public final synthetic Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtEmbeddedDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->lambda$onAppStateDetailsChanged$0$org-qtproject-qt-android-QtEmbeddedDelegate()V

    return-void
.end method
