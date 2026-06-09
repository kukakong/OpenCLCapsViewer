.class public final synthetic Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtClipboardManager;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/util/concurrent/Semaphore;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtClipboardManager;Landroid/content/Context;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtClipboardManager;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtClipboardManager;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0, v1, v2}, Lorg/qtproject/qt/android/QtClipboardManager;->lambda$registerClipboardManager$1$org-qtproject-qt-android-QtClipboardManager(Landroid/content/Context;Ljava/util/concurrent/Semaphore;)V

    return-void
.end method
