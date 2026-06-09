.class public Lorg/qtproject/qt/android/QtActivityBase;
.super Landroid/app/Activity;
.source "QtActivityBase.java"


# static fields
.field public static final EXTRA_SOURCE_INFO:Ljava/lang/String; = "org.qtproject.qt.android.sourceInfo"


# instance fields
.field private m_applicationParams:Ljava/lang/String;

.field private m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

.field private m_isCustomThemeSet:Z

.field private m_retainNonConfigurationInstance:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_applicationParams:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_isCustomThemeSet:Z

    .line 26
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_retainNonConfigurationInstance:Z

    return-void
.end method

.method private addReferrer(Landroid/content/Intent;)V
    .locals 4

    .line 34
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "org.qtproject.qt.android.sourceInfo"

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    return-void

    .line 37
    :cond_0
    nop

    .line 38
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "com.android.browser.application_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_1
    move-object v0, v2

    .line 41
    :goto_0
    nop

    .line 42
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 43
    move-object v2, v0

    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityBase;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android-app://"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    :cond_3
    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    return-void
.end method

.method private restartApplication()V
    .locals 2

    .line 73
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityBase;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 75
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->quitApp()V

    .line 76
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exit(I)V

    .line 77
    return-void
.end method


# virtual methods
.method public appendApplicationParameters(Ljava/lang/String;)V
    .locals 2

    .line 58
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_applicationParams:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_applicationParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_applicationParams:Ljava/lang/String;

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_applicationParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_applicationParams:Ljava/lang/String;

    .line 64
    return-void

    .line 59
    :cond_2
    :goto_0
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 207
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->getInputDelegate()Lorg/qtproject/qt/android/QtInputDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtInputDelegate;->handleDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 208
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getStateDetails()Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object v1

    iget-boolean v1, v1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 209
    const/4 p1, 0x1

    return p1

    .line 211
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 197
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->getInputDelegate()Lorg/qtproject/qt/android/QtInputDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtInputDelegate;->handleDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 198
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getStateDetails()Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object v1

    iget-boolean v1, v1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 199
    const/4 p1, 0x1

    return p1

    .line 201
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method getActivityDelegate()Lorg/qtproject/qt/android/QtActivityDelegateBase;
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    return-object v0
.end method

.method public hideSplashScreen(I)V
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->hideSplashScreen(I)V

    .line 319
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 305
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 306
    invoke-static {p1, p2, p3}, Lorg/qtproject/qt/android/QtNative;->onActivityResult(IILandroid/content/Intent;)V

    .line 307
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 167
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->handleUiModeChange(I)V

    .line 168
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 173
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->setContextMenuVisible(Z)V

    .line 174
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/QtNative;->onContextItemSelected(IZ)Z

    move-result p1

    return p1
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->isContextMenuVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->setContextMenuVisible(Z)V

    .line 183
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 184
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtActivityBase;->requestWindowFeature(I)Z

    .line 85
    iget-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_isCustomThemeSet:Z

    if-nez p1, :cond_1

    .line 86
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_0

    .line 87
    const p1, 0x10302e3

    goto :goto_0

    .line 88
    :cond_0
    const p1, 0x103006e

    .line 86
    :goto_0
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtActivityBase;->setTheme(I)V

    .line 91
    :cond_1
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getStateDetails()Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object p1

    iget-boolean p1, p1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz p1, :cond_2

    .line 95
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtActivityBase;->restartApplication()V

    .line 98
    :cond_2
    new-instance p1, Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-direct {p1, p0}, Lorg/qtproject/qt/android/QtActivityDelegate;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    .line 100
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtActivityBase;->addReferrer(Landroid/content/Intent;)V

    .line 102
    new-instance p1, Lorg/qtproject/qt/android/QtActivityLoader;

    invoke-direct {p1, p0}, Lorg/qtproject/qt/android/QtActivityLoader;-><init>(Landroid/app/Activity;)V

    .line 103
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_applicationParams:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/QtActivityLoader;->appendApplicationParameters(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtActivityLoader;->loadQtLibraries()V

    .line 106
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtActivityLoader;->getApplicationParameters()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtActivityLoader;->getMainLibraryPath()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {v0, v1, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->startNativeApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 189
    invoke-interface {p1}, Landroid/view/ContextMenu;->clearHeader()V

    .line 190
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 191
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/qtproject/qt/android/QtActivityDelegate;->setContextMenuVisible(Z)V

    .line 192
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 237
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 238
    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 155
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_retainNonConfigurationInstance:Z

    if-nez v0, :cond_0

    .line 156
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->terminateQt()V

    .line 157
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setActivity(Landroid/app/Activity;)V

    .line 158
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getQtThread()Lorg/qtproject/qt/android/QtThread;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtThread;->exit()V

    .line 159
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 161
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 217
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getStateDetails()Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object v0

    .line 218
    iget-boolean v1, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->nativePluginIntegrationReady:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->getInputDelegate()Lorg/qtproject/qt/android/QtInputDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/qtproject/qt/android/QtInputDelegate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 219
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 227
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getStateDetails()Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object v0

    .line 228
    iget-boolean v1, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->nativePluginIntegrationReady:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->getInputDelegate()Lorg/qtproject/qt/android/QtInputDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/qtproject/qt/android/QtInputDelegate;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 229
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 298
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtActivityBase;->addReferrer(Landroid/content/Intent;)V

    .line 299
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->onNewIntent(Landroid/content/Intent;)V

    .line 300
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 252
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/QtNative;->onOptionsItemSelected(IZ)Z

    move-result p1

    return p1
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 258
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 259
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityBase;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setApplicationState(I)V

    .line 128
    :cond_1
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->displayManager()Lorg/qtproject/qt/android/QtDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->unregisterDisplayListener()V

    .line 129
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 244
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 245
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->setActionBarVisibility(Z)V

    .line 246
    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 312
    invoke-static {p1, p2, p3}, Lorg/qtproject/qt/android/QtNative;->sendRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 313
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 120
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 264
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 265
    const-string v0, "Started"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setStarted(Z)V

    .line 266
    const-string v0, "SystemUiVisibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 267
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->displayManager()Lorg/qtproject/qt/android/QtDisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtDisplayManager;->setSystemUiVisibility(I)V

    .line 269
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 135
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setApplicationState(I)V

    .line 136
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getStateDetails()Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->displayManager()Lorg/qtproject/qt/android/QtDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->registerDisplayListener()V

    .line 138
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->updateWindow()V

    .line 140
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->displayManager()Lorg/qtproject/qt/android/QtDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->updateFullScreen()V

    .line 142
    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 274
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_retainNonConfigurationInstance:Z

    .line 276
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 282
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 283
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->displayManager()Lorg/qtproject/qt/android/QtDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->systemUiVisibility()I

    move-result v0

    const-string v1, "SystemUiVisibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getStateDetails()Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    const-string v1, "Started"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 285
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 114
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 148
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setApplicationState(I)V

    .line 149
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 290
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 291
    if-eqz p1, :cond_0

    .line 292
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->displayManager()Lorg/qtproject/qt/android/QtDisplayManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtDisplayManager;->updateFullScreen()V

    .line 293
    :cond_0
    return-void
.end method

.method public setTheme(I)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 69
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_isCustomThemeSet:Z

    .line 70
    return-void
.end method
