.class public final synthetic Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda2;->f$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda2;->f$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->lambda$show$1$org-qtproject-qt-android-QtMessageDialogHelper(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
