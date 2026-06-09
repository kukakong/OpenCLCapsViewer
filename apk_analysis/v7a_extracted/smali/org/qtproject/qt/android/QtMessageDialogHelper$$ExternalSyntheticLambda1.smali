.class public final synthetic Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->lambda$show$0$org-qtproject-qt-android-QtMessageDialogHelper(Landroid/content/DialogInterface;)V

    return-void
.end method
