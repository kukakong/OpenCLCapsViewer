.class public final synthetic Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtInputDelegate;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtInputDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;->f$0:Lorg/qtproject/qt/android/QtInputDelegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;->f$0:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtInputDelegate;->lambda$hideSoftwareKeyboard$4$org-qtproject-qt-android-QtInputDelegate()V

    return-void
.end method
