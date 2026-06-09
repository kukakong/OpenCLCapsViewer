.class public final synthetic Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtClipboardManager;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtClipboardManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtClipboardManager;

    return-void
.end method


# virtual methods
.method public final onPrimaryClipChanged()V
    .locals 1

    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtClipboardManager;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtClipboardManager;->lambda$registerClipboardManager$0$org-qtproject-qt-android-QtClipboardManager()V

    return-void
.end method
