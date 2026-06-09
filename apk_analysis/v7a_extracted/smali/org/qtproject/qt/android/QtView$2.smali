.class Lorg/qtproject/qt/android/QtView$2;
.super Ljava/lang/Object;
.source "QtView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtView;->addQtWindow(Lorg/qtproject/qt/android/QtWindow;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtView;

.field final synthetic val$window:Lorg/qtproject/qt/android/QtWindow;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtView;Lorg/qtproject/qt/android/QtWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lorg/qtproject/qt/android/QtView$2;->this$0:Lorg/qtproject/qt/android/QtView;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtView$2;->val$window:Lorg/qtproject/qt/android/QtWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 164
    iget-object v0, p0, Lorg/qtproject/qt/android/QtView$2;->this$0:Lorg/qtproject/qt/android/QtView;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtView$2;->val$window:Lorg/qtproject/qt/android/QtWindow;

    iput-object v1, v0, Lorg/qtproject/qt/android/QtView;->m_window:Lorg/qtproject/qt/android/QtWindow;

    .line 165
    iget-object v0, p0, Lorg/qtproject/qt/android/QtView$2;->this$0:Lorg/qtproject/qt/android/QtView;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtView;->m_window:Lorg/qtproject/qt/android/QtWindow;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtWindow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v0, p0, Lorg/qtproject/qt/android/QtView$2;->this$0:Lorg/qtproject/qt/android/QtView;

    iget-object v1, v0, Lorg/qtproject/qt/android/QtView;->m_window:Lorg/qtproject/qt/android/QtWindow;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/qtproject/qt/android/QtView;->addView(Landroid/view/View;I)V

    .line 170
    iget-object v0, p0, Lorg/qtproject/qt/android/QtView$2;->this$0:Lorg/qtproject/qt/android/QtView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtView;->setWindowVisible(Z)V

    .line 171
    iget-object v0, p0, Lorg/qtproject/qt/android/QtView$2;->this$0:Lorg/qtproject/qt/android/QtView;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtView;->m_windowListener:Lorg/qtproject/qt/android/QtView$QtWindowListener;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/qtproject/qt/android/QtView$2;->this$0:Lorg/qtproject/qt/android/QtView;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtView;->m_windowListener:Lorg/qtproject/qt/android/QtView$QtWindowListener;

    invoke-interface {v0}, Lorg/qtproject/qt/android/QtView$QtWindowListener;->onQtWindowLoaded()V

    .line 173
    :cond_0
    return-void
.end method
