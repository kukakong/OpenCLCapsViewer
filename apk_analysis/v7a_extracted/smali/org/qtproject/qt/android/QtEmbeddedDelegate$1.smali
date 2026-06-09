.class Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;
.super Ljava/lang/Object;
.source "QtEmbeddedDelegate.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtEmbeddedDelegate;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtEmbeddedDelegate;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 45
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_activity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    invoke-static {p1}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->access$000(Lorg/qtproject/qt/android/QtEmbeddedDelegate;)Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object p1

    iget-boolean p1, p1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    iget-object p1, p1, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 82
    iget-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->unregisterAppStateListener(Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;)V

    .line 83
    iget-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    iget-object p1, p1, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {p1}, Lorg/qtproject/qt/android/QtEmbeddedDelegateFactory;->remove(Landroid/app/Activity;)V

    .line 84
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->terminateQt()V

    .line 85
    const/4 p1, 0x0

    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->setActivity(Landroid/app/Activity;)V

    .line 86
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getQtThread()Lorg/qtproject/qt/android/QtThread;

    move-result-object p1

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtThread;->exit()V

    .line 87
    iget-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->onDestroy()V

    .line 89
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_activity:Landroid/app/Activity;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->access$000(Lorg/qtproject/qt/android/QtEmbeddedDelegate;)Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz v0, :cond_1

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 63
    :cond_0
    const/4 p1, 0x2

    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->setApplicationState(I)V

    .line 66
    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_activity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    invoke-static {p1}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->access$000(Lorg/qtproject/qt/android/QtEmbeddedDelegate;)Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object p1

    iget-boolean p1, p1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz p1, :cond_0

    .line 53
    const/4 p1, 0x4

    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->setApplicationState(I)V

    .line 54
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->updateWindow()V

    .line 56
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 76
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 48
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_activity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    invoke-static {p1}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->access$000(Lorg/qtproject/qt/android/QtEmbeddedDelegate;)Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object p1

    iget-boolean p1, p1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz p1, :cond_0

    .line 71
    const/4 p1, 0x0

    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->setApplicationState(I)V

    .line 73
    :cond_0
    return-void
.end method
