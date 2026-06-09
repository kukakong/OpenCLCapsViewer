.class public final synthetic Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtLoader;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:[Z


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtLoader;Ljava/lang/String;[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtLoader;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda0;->f$2:[Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtLoader;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda0;->f$2:[Z

    invoke-virtual {v0, v1, v2}, Lorg/qtproject/qt/android/QtLoader;->lambda$loadMainLibrary$0$org-qtproject-qt-android-QtLoader(Ljava/lang/String;[Z)V

    return-void
.end method
