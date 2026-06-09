.class public final synthetic Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda4;->f$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda4;->f$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    iget v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda4;->f$1:I

    iget-object v2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->lambda$notifyValueChanged$5$org-qtproject-qt-android-accessibility-QtAccessibilityDelegate(ILjava/lang/String;)V

    return-void
.end method
