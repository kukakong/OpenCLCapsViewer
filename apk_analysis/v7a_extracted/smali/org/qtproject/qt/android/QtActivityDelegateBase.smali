.class abstract Lorg/qtproject/qt/android/QtActivityDelegateBase;
.super Ljava/lang/Object;
.source "QtActivityDelegateBase.java"


# instance fields
.field protected m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

.field protected m_activity:Landroid/app/Activity;

.field private m_contextMenuVisible:Z

.field protected m_displayManager:Lorg/qtproject/qt/android/QtDisplayManager;

.field protected m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

.field private m_membersInitialized:Z

.field protected m_topLevelWindows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/qtproject/qt/android/QtWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    .line 43
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_displayManager:Lorg/qtproject/qt/android/QtDisplayManager;

    .line 44
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_membersInitialized:Z

    .line 47
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_contextMenuVisible:Z

    .line 68
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    .line 70
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->setActivity(Landroid/app/Activity;)V

    .line 71
    return-void
.end method


# virtual methods
.method addTopLevelWindow(Lorg/qtproject/qt/android/QtWindow;)V
    .locals 0

    .line 60
    return-void
.end method

.method bringChildToBack(I)V
    .locals 0

    .line 63
    return-void
.end method

.method bringChildToFront(I)V
    .locals 0

    .line 62
    return-void
.end method

.method public closeContextMenu()V
    .locals 1

    .line 232
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegateBase$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtActivityDelegateBase$$ExternalSyntheticLambda3;-><init>(Lorg/qtproject/qt/android/QtActivityDelegateBase;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method

.method abstract createAccessibilityDelegate()Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;
.end method

.method displayManager()Lorg/qtproject/qt/android/QtDisplayManager;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_displayManager:Lorg/qtproject/qt/android/QtDisplayManager;

    return-object v0
.end method

.method getInputDelegate()Lorg/qtproject/qt/android/QtInputDelegate;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

    return-object v0
.end method

.method abstract getQtLayout()Lorg/qtproject/qt/android/QtLayout;
.end method

.method handleUiModeChange(I)V
    .locals 8

    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 189
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_1

    .line 193
    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->luminance(I)F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const/16 v0, 0x8

    cmpl-double v7, v3, v5

    if-lez v7, :cond_0

    .line 194
    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 195
    :goto_0
    invoke-interface {v1, v3, v0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    .line 199
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 205
    :sswitch_0
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->runIfNeeded(Landroid/content/Context;Z)V

    .line 206
    invoke-static {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->handleUiDarkModeChanged(I)V

    goto :goto_1

    .line 201
    :sswitch_1
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    invoke-static {p1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->runIfNeeded(Landroid/content/Context;Z)V

    .line 202
    invoke-static {v2}, Lorg/qtproject/qt/android/QtDisplayManager;->handleUiDarkModeChanged(I)V

    .line 203
    nop

    .line 209
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public hideSplashScreen()V
    .locals 1

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtActivityDelegateBase;->hideSplashScreen(I)V

    .line 126
    return-void
.end method

.method hideSplashScreen(I)V
    .locals 0

    .line 57
    return-void
.end method

.method initMembers()V
    .locals 3

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_membersInitialized:Z

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_topLevelWindows:Ljava/util/HashMap;

    .line 105
    new-instance v0, Lorg/qtproject/qt/android/QtDisplayManager;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/qtproject/qt/android/QtDisplayManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_displayManager:Lorg/qtproject/qt/android/QtDisplayManager;

    .line 106
    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->registerDisplayListener()V

    .line 108
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegateBase$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtActivityDelegateBase$$ExternalSyntheticLambda1;-><init>(Lorg/qtproject/qt/android/QtActivityDelegateBase;)V

    .line 110
    new-instance v1, Lorg/qtproject/qt/android/QtInputDelegate;

    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lorg/qtproject/qt/android/QtInputDelegate;-><init>(Landroid/app/Activity;Lorg/qtproject/qt/android/QtInputDelegate$KeyboardVisibilityListener;)V

    iput-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

    .line 113
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {v1, v0}, Lorg/qtproject/qt/android/QtInputDelegate;->setSoftInputMode(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 120
    :goto_0
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegateBase;->setUpLayout()V

    .line 121
    return-void
.end method

.method public initializeAccessibility()V
    .locals 1

    .line 179
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegateBase$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtActivityDelegateBase$$ExternalSyntheticLambda2;-><init>(Lorg/qtproject/qt/android/QtActivityDelegateBase;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 182
    return-void
.end method

.method isContextMenuVisible()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_contextMenuVisible:Z

    return v0
.end method

.method synthetic lambda$closeContextMenu$4$org-qtproject-qt-android-QtActivityDelegateBase()V
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    return-void
.end method

.method synthetic lambda$initMembers$0$org-qtproject-qt-android-QtActivityDelegateBase()V
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_displayManager:Lorg/qtproject/qt/android/QtDisplayManager;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->updateFullScreen()V

    return-void
.end method

.method synthetic lambda$initializeAccessibility$1$org-qtproject-qt-android-QtActivityDelegateBase()V
    .locals 1

    .line 180
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegateBase;->createAccessibilityDelegate()Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    .line 181
    return-void
.end method

.method synthetic lambda$openOptionsMenu$3$org-qtproject-qt-android-QtActivityDelegateBase()V
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->openOptionsMenu()V

    return-void
.end method

.method synthetic lambda$resetOptionsMenu$2$org-qtproject-qt-android-QtActivityDelegateBase()V
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public notifyLocationChange(I)V
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    if-nez v0, :cond_0

    .line 132
    return-void

    .line 133
    :cond_0
    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->notifyLocationChange(I)V

    .line 134
    return-void
.end method

.method public notifyObjectFocus(I)V
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    if-nez v0, :cond_0

    .line 156
    return-void

    .line 157
    :cond_0
    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->notifyObjectFocus(I)V

    .line 158
    return-void
.end method

.method public notifyObjectHide(II)V
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    if-nez v0, :cond_0

    .line 140
    return-void

    .line 141
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->notifyObjectHide(II)V

    .line 142
    return-void
.end method

.method public notifyObjectShow(I)V
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    if-nez v0, :cond_0

    .line 148
    return-void

    .line 149
    :cond_0
    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->notifyObjectShow(I)V

    .line 150
    return-void
.end method

.method public notifyScrolledEvent(I)V
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    if-nez v0, :cond_0

    .line 172
    return-void

    .line 173
    :cond_0
    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->notifyScrolledEvent(I)V

    .line 174
    return-void
.end method

.method public notifyValueChanged(ILjava/lang/String;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    if-nez v0, :cond_0

    .line 164
    return-void

    .line 165
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->notifyValueChanged(ILjava/lang/String;)V

    .line 166
    return-void
.end method

.method public onCreatePopupMenu(Landroid/view/Menu;)V
    .locals 0

    .line 225
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->fillContextMenu(Landroid/view/Menu;)V

    .line 226
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_contextMenuVisible:Z

    .line 227
    return-void
.end method

.method openContextMenu(IIII)V
    .locals 0

    .line 58
    return-void
.end method

.method public openOptionsMenu()V
    .locals 1

    .line 220
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegateBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtActivityDelegateBase$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/QtActivityDelegateBase;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method

.method removeTopLevelWindow(I)V
    .locals 0

    .line 61
    return-void
.end method

.method public resetOptionsMenu()V
    .locals 1

    .line 214
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegateBase$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtActivityDelegateBase$$ExternalSyntheticLambda4;-><init>(Lorg/qtproject/qt/android/QtActivityDelegateBase;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 215
    return-void
.end method

.method setActionBarVisibility(Z)V
    .locals 0

    .line 59
    return-void
.end method

.method setContextMenuVisible(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_contextMenuVisible:Z

    .line 85
    return-void
.end method

.method setSystemUiVisibility(I)V
    .locals 0

    .line 64
    return-void
.end method

.method setUpLayout()V
    .locals 0

    .line 55
    return-void
.end method

.method setUpSplashScreen(I)V
    .locals 0

    .line 56
    return-void
.end method

.method public startNativeApplication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 94
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_membersInitialized:Z

    if-eqz v0, :cond_0

    .line 95
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegateBase;->initMembers()V

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtActivityDelegateBase;->startNativeApplicationImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method abstract startNativeApplicationImpl(Ljava/lang/String;Ljava/lang/String;)V
.end method
