.class Lorg/qtproject/qt/android/QtEmbeddedDelegate;
.super Lorg/qtproject/qt/android/QtActivityDelegateBase;
.source "QtEmbeddedDelegate.java"

# interfaces
.implements Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;


# instance fields
.field private m_rootWindowRef:J

.field private m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

.field private m_view:Lorg/qtproject/qt/android/QtView;

.field private m_windowLoaded:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegateBase;-><init>(Landroid/app/Activity;)V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_rootWindowRef:J

    .line 31
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_windowLoaded:Z

    .line 39
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getStateDetails()Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    .line 40
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->registerAppStateListener(Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;)V

    .line 42
    iget-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    new-instance v0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;-><init>(Lorg/qtproject/qt/android/QtEmbeddedDelegate;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt/android/QtEmbeddedDelegate;)Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    return-object p0
.end method

.method private createRootWindow()V
    .locals 5

    .line 169
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_view:Lorg/qtproject/qt/android/QtView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_windowLoaded:Z

    if-nez v1, :cond_0

    .line 170
    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_view:Lorg/qtproject/qt/android/QtView;

    invoke-virtual {v2}, Lorg/qtproject/qt/android/QtView;->getTop()I

    move-result v2

    iget-object v3, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_view:Lorg/qtproject/qt/android/QtView;

    invoke-virtual {v3}, Lorg/qtproject/qt/android/QtView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_view:Lorg/qtproject/qt/android/QtView;

    invoke-virtual {v4}, Lorg/qtproject/qt/android/QtView;->getHeight()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->createRootWindow(Landroid/view/View;IIII)V

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_windowLoaded:Z

    .line 173
    :cond_0
    return-void
.end method

.method private static native createRootWindow(Landroid/view/View;IIII)V
.end method

.method static native deleteWindow(J)V
.end method

.method private updateInputDelegate()V
    .locals 4

    .line 150
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_view:Lorg/qtproject/qt/android/QtView;

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtInputDelegate;->setEditPopupMenu(Lorg/qtproject/qt/android/EditPopupMenu;)V

    .line 152
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

    new-instance v1, Lorg/qtproject/qt/android/EditPopupMenu;

    iget-object v2, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_activity:Landroid/app/Activity;

    iget-object v3, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_view:Lorg/qtproject/qt/android/QtView;

    invoke-direct {v1, v2, v3}, Lorg/qtproject/qt/android/EditPopupMenu;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtInputDelegate;->setEditPopupMenu(Lorg/qtproject/qt/android/EditPopupMenu;)V

    .line 155
    return-void
.end method


# virtual methods
.method createAccessibilityDelegate()Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;
    .locals 1

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method getQtLayout()Lorg/qtproject/qt/android/QtLayout;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_view:Lorg/qtproject/qt/android/QtView;

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 133
    :cond_0
    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtView;->getQtWindow()Lorg/qtproject/qt/android/QtWindow;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onAppStateDetailsChanged$0$org-qtproject-qt-android-QtEmbeddedDelegate()V
    .locals 3

    .line 99
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_activity:Landroid/app/Activity;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2, v0}, Lorg/qtproject/qt/android/QtDisplayManager;->setApplicationDisplayMetrics(Landroid/app/Activity;II)V

    .line 104
    return-void
.end method

.method public onAppStateDetailsChanged(Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;)V
    .locals 0

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iput-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    .line 97
    iget-boolean p1, p1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->nativePluginIntegrationReady:Z

    if-eqz p1, :cond_0

    .line 98
    new-instance p1, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/QtEmbeddedDelegate;)V

    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 105
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->createRootWindow()V

    .line 107
    :cond_0
    monitor-exit p0

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onDestroy()V
    .locals 5

    .line 163
    iget-wide v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_rootWindowRef:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 164
    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->deleteWindow(J)V

    .line 165
    :cond_0
    iput-wide v2, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_rootWindowRef:J

    .line 166
    return-void
.end method

.method public queueLoadWindow()V
    .locals 1

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    iget-boolean v0, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->nativePluginIntegrationReady:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->createRootWindow()V

    .line 141
    :cond_0
    monitor-exit p0

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRootWindowRef(J)V
    .locals 0

    .line 159
    iput-wide p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_rootWindowRef:J

    .line 160
    return-void
.end method

.method setView(Lorg/qtproject/qt/android/QtView;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_view:Lorg/qtproject/qt/android/QtView;

    .line 146
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->updateInputDelegate()V

    .line 147
    return-void
.end method

.method startNativeApplicationImpl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 113
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNative;->startApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method
