.class public final synthetic Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtActivityDelegate;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->lambda$openContextMenu$6$org-qtproject-qt-android-QtActivityDelegate(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
