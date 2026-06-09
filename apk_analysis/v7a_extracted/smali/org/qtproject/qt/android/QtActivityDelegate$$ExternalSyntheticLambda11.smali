.class public final synthetic Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtActivityDelegate;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda11;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda11;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->lambda$setUpLayout$1$org-qtproject-qt-android-QtActivityDelegate()Z

    move-result v0

    return v0
.end method
