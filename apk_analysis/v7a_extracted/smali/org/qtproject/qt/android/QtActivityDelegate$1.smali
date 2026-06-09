.class Lorg/qtproject/qt/android/QtActivityDelegate$1;
.super Ljava/lang/Object;
.source "QtActivityDelegate.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtActivityDelegate;->startNativeApplicationImpl(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

.field final synthetic val$appParams:Ljava/lang/String;

.field final synthetic val$mainLib:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$1;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$1;->val$appParams:Ljava/lang/String;

    iput-object p3, p0, Lorg/qtproject/qt/android/QtActivityDelegate$1;->val$mainLib:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 84
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$1;->val$appParams:Ljava/lang/String;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$1;->val$mainLib:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtNative;->startApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$1;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$000(Lorg/qtproject/qt/android/QtActivityDelegate;)Lorg/qtproject/qt/android/QtRootLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtRootLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 86
    return-void
.end method
