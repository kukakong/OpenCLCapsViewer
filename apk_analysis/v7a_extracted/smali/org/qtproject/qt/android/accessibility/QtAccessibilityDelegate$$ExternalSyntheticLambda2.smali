.class public final synthetic Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda2;->f$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda2;->f$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    iget v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda2;->f$1:I

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->lambda$notifyScrolledEvent$0$org-qtproject-qt-android-accessibility-QtAccessibilityDelegate(I)V

    return-void
.end method
