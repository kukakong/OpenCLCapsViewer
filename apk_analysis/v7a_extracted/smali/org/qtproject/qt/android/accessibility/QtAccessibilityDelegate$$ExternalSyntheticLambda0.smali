.class public final synthetic Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    iget v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->lambda$notifyObjectHide$2$org-qtproject-qt-android-accessibility-QtAccessibilityDelegate(II)V

    return-void
.end method
