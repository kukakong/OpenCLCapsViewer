.class public Lorg/qtproject/qt/android/QtRootLayout;
.super Lorg/qtproject/qt/android/QtLayout;
.source "QtRootLayout.java"


# instance fields
.field private m_activityDisplayRotation:I

.field private m_nativeOrientation:I

.field private m_ownDisplayRotation:I

.field private m_previousRotation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 p1, -0x1

    iput p1, p0, Lorg/qtproject/qt/android/QtRootLayout;->m_activityDisplayRotation:I

    .line 22
    iput p1, p0, Lorg/qtproject/qt/android/QtRootLayout;->m_ownDisplayRotation:I

    .line 23
    iput p1, p0, Lorg/qtproject/qt/android/QtRootLayout;->m_nativeOrientation:I

    .line 24
    iput p1, p0, Lorg/qtproject/qt/android/QtRootLayout;->m_previousRotation:I

    .line 29
    return-void
.end method


# virtual methods
.method public displayRotation()I
    .locals 1

    .line 43
    iget v0, p0, Lorg/qtproject/qt/android/QtRootLayout;->m_ownDisplayRotation:I

    return v0
.end method

.method public isSameSizeForOrientations(II)Z
    .locals 2

    .line 73
    const/4 v0, 0x1

    if-eq p1, p2, :cond_4

    const/4 v1, 0x2

    if-nez p1, :cond_0

    if-eq p2, v1, :cond_4

    :cond_0
    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_4

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v0, :cond_2

    if-eq p2, v1, :cond_4

    :cond_2
    if-ne p1, v1, :cond_3

    if-ne p2, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtRootLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 61
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 62
    check-cast p1, Landroid/app/Activity;

    .line 65
    invoke-static {p1}, Lorg/qtproject/qt/android/QtDisplayManager;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 66
    iget v1, p0, Lorg/qtproject/qt/android/QtRootLayout;->m_previousRotation:I

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/QtRootLayout;->isSameSizeForOrientations(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-static {p1}, Lorg/qtproject/qt/android/QtDisplayManager;->handleOrientationChanges(Landroid/app/Activity;)V

    .line 68
    :cond_0
    iput v0, p0, Lorg/qtproject/qt/android/QtRootLayout;->m_previousRotation:I

    .line 70
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 49
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtRootLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    .line 50
    if-nez p3, :cond_0

    .line 51
    return-void

    .line 53
    :cond_0
    invoke-static {p3, p1, p2}, Lorg/qtproject/qt/android/QtDisplayManager;->setApplicationDisplayMetrics(Landroid/app/Activity;II)V

    .line 54
    invoke-static {p3}, Lorg/qtproject/qt/android/QtDisplayManager;->handleOrientationChanges(Landroid/app/Activity;)V

    .line 55
    return-void
.end method

.method public setActivityDisplayRotation(I)V
    .locals 0

    .line 33
    iput p1, p0, Lorg/qtproject/qt/android/QtRootLayout;->m_activityDisplayRotation:I

    .line 34
    return-void
.end method

.method public setNativeOrientation(I)V
    .locals 0

    .line 38
    iput p1, p0, Lorg/qtproject/qt/android/QtRootLayout;->m_nativeOrientation:I

    .line 39
    return-void
.end method
