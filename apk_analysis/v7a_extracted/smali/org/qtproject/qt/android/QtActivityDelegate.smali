.class public Lorg/qtproject/qt/android/QtActivityDelegate;
.super Lorg/qtproject/qt/android/QtActivityDelegateBase;
.source "QtActivityDelegate.java"


# static fields
.field private static final QtTAG:Ljava/lang/String; = "QtActivityDelegate"


# instance fields
.field private m_contextMenuVisible:Z

.field private m_dummyView:Landroid/view/View;

.field private m_layout:Lorg/qtproject/qt/android/QtRootLayout;

.field private m_nativeViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private m_splashScreen:Landroid/widget/ImageView;

.field private m_splashScreenSticky:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegateBase;-><init>(Landroid/app/Activity;)V

    .line 42
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    .line 43
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreenSticky:Z

    .line 46
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    .line 47
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    .line 252
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_contextMenuVisible:Z

    .line 54
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->setActionBarVisibility(Z)V

    .line 55
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->setActivityBackgroundDrawable()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt/android/QtActivityDelegate;)Lorg/qtproject/qt/android/QtRootLayout;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    return-object p0
.end method

.method private setActivityBackgroundDrawable()V
    .locals 4

    .line 376
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 377
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010054

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 380
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 382
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    .line 384
    :cond_0
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    .line 385
    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 388
    :goto_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    return-void
.end method


# virtual methods
.method public addTopLevelWindow(Lorg/qtproject/qt/android/QtWindow;)V
    .locals 1

    .line 302
    if-nez p1, :cond_0

    .line 303
    return-void

    .line 305
    :cond_0
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda8;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;Lorg/qtproject/qt/android/QtWindow;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 322
    return-void
.end method

.method bringChildToBack(I)V
    .locals 1

    .line 357
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda15;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 362
    return-void
.end method

.method bringChildToFront(I)V
    .locals 1

    .line 346
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda6;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 351
    return-void
.end method

.method public closeContextMenu()V
    .locals 1

    .line 284
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda4;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 285
    return-void
.end method

.method createAccessibilityDelegate()Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;
    .locals 2

    .line 367
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    invoke-direct {v0, v1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;-><init>(Lorg/qtproject/qt/android/QtLayout;)V

    return-object v0

    .line 370
    :cond_0
    const-string v0, "QtActivityDelegate"

    const-string v1, "Null layout, failed to initialize accessibility delegate."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v0, 0x0

    return-object v0
.end method

.method getQtLayout()Lorg/qtproject/qt/android/QtLayout;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    return-object v0
.end method

.method handleUiModeChange(I)V
    .locals 8

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 218
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->luminance(I)F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const/16 v0, 0x8

    cmpl-double v7, v3, v5

    if-lez v7, :cond_0

    .line 223
    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 224
    :goto_0
    invoke-interface {v1, v3, v0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    .line 228
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 234
    :sswitch_0
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->runIfNeeded(Landroid/content/Context;Z)V

    .line 235
    invoke-static {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->handleUiDarkModeChanged(I)V

    goto :goto_1

    .line 230
    :sswitch_1
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {p1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->runIfNeeded(Landroid/content/Context;Z)V

    .line 231
    invoke-static {v2}, Lorg/qtproject/qt/android/QtDisplayManager;->handleUiDarkModeChanged(I)V

    .line 232
    nop

    .line 238
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic hideSplashScreen()V
    .locals 0

    .line 38
    invoke-super {p0}, Lorg/qtproject/qt/android/QtActivityDelegateBase;->hideSplashScreen()V

    return-void
.end method

.method protected hideSplashScreen(I)V
    .locals 1

    .line 168
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda9;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method

.method public initializeAccessibility()V
    .locals 1

    .line 204
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda7;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 211
    return-void
.end method

.method public insertNativeView(ILandroid/view/View;IIII)V
    .locals 9

    .line 395
    new-instance v8, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda12;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p5

    move v4, p6

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda12;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;IIILandroid/view/View;II)V

    invoke-static {v8}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 415
    return-void
.end method

.method synthetic lambda$addTopLevelWindow$10$org-qtproject-qt-android-QtActivityDelegate(Lorg/qtproject/qt/android/QtWindow;)V
    .locals 2

    .line 306
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_topLevelWindows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 308
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    invoke-virtual {v1, v0}, Lorg/qtproject/qt/android/QtRootLayout;->removeView(Landroid/view/View;)V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    .line 313
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/QtWindow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_topLevelWindows:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/qtproject/qt/android/QtRootLayout;->addView(Landroid/view/View;I)V

    .line 318
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_topLevelWindows:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreenSticky:Z

    if-nez p1, :cond_1

    .line 320
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->hideSplashScreen()V

    .line 321
    :cond_1
    return-void
.end method

.method synthetic lambda$bringChildToBack$13$org-qtproject-qt-android-QtActivityDelegate(I)V
    .locals 2

    .line 358
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_topLevelWindows:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/qtproject/qt/android/QtWindow;

    .line 359
    if-eqz p1, :cond_0

    .line 360
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/qtproject/qt/android/QtRootLayout;->moveChild(Landroid/view/View;I)V

    .line 361
    :cond_0
    return-void
.end method

.method synthetic lambda$bringChildToFront$12$org-qtproject-qt-android-QtActivityDelegate(I)V
    .locals 2

    .line 347
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_topLevelWindows:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/qtproject/qt/android/QtWindow;

    .line 348
    if-eqz p1, :cond_0

    .line 349
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_topLevelWindows:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/qtproject/qt/android/QtRootLayout;->moveChild(Landroid/view/View;I)V

    .line 350
    :cond_0
    return-void
.end method

.method synthetic lambda$closeContextMenu$9$org-qtproject-qt-android-QtActivityDelegate()V
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    return-void
.end method

.method synthetic lambda$hideSplashScreen$2$org-qtproject-qt-android-QtActivityDelegate(I)V
    .locals 3

    .line 169
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 170
    return-void

    .line 172
    :cond_0
    if-gtz p1, :cond_1

    .line 173
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/QtRootLayout;->removeView(Landroid/view/View;)V

    .line 174
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    .line 175
    return-void

    .line 178
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 179
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 180
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 182
    new-instance p1, Lorg/qtproject/qt/android/QtActivityDelegate$2;

    invoke-direct {p1, p0}, Lorg/qtproject/qt/android/QtActivityDelegate$2;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 197
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 198
    return-void
.end method

.method synthetic lambda$initializeAccessibility$3$org-qtproject-qt-android-QtActivityDelegate()V
    .locals 2

    .line 206
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    invoke-direct {v0, v1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;-><init>(Lorg/qtproject/qt/android/QtLayout;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    goto :goto_0

    .line 209
    :cond_0
    const-string v0, "QtActivityDelegate"

    const-string v1, "Null layout, failed to initialize accessibility delegate."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_0
    return-void
.end method

.method synthetic lambda$insertNativeView$14$org-qtproject-qt-android-QtActivityDelegate(IIILandroid/view/View;II)V
    .locals 3

    .line 396
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 397
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    invoke-virtual {v1, v0}, Lorg/qtproject/qt/android/QtRootLayout;->removeView(Landroid/view/View;)V

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    .line 401
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtRootLayout;->removeView(Landroid/view/View;)V

    .line 404
    :cond_1
    if-ltz p2, :cond_3

    if-gez p3, :cond_2

    goto :goto_0

    .line 408
    :cond_2
    new-instance v0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    invoke-direct {v0, p2, p3, p5, p6}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 405
    :cond_3
    :goto_0
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p4, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    :goto_1
    invoke-virtual {p4, p1}, Landroid/view/View;->setId(I)V

    .line 412
    iget-object p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    invoke-virtual {p2, p4}, Lorg/qtproject/qt/android/QtRootLayout;->addView(Landroid/view/View;)V

    .line 413
    iget-object p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    return-void
.end method

.method synthetic lambda$openContextMenu$6$org-qtproject-qt-android-QtActivityDelegate(Landroid/view/MenuItem;)Z
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$openContextMenu$7$org-qtproject-qt-android-QtActivityDelegate(Landroid/widget/PopupMenu;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method synthetic lambda$openContextMenu$8$org-qtproject-qt-android-QtActivityDelegate(IIII)V
    .locals 3

    .line 265
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtInputDelegate;->getCurrentQtEditText()Lorg/qtproject/qt/android/QtEditText;

    move-result-object v0

    .line 266
    if-nez v0, :cond_0

    .line 267
    const-string p1, "QtActivityDelegate"

    const-string p2, "No focused view when trying to open context menu"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void

    .line 270
    :cond_0
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    new-instance v2, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    const/4 p1, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lorg/qtproject/qt/android/QtRootLayout;->setLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V

    .line 271
    new-instance p1, Landroid/widget/PopupMenu;

    iget-object p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-direct {p1, p2, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 272
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/QtActivityDelegate;->onCreatePopupMenu(Landroid/view/Menu;)V

    .line 273
    new-instance p2, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda1;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 275
    new-instance p2, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda2;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 277
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    .line 278
    return-void
.end method

.method synthetic lambda$openOptionsMenu$5$org-qtproject-qt-android-QtActivityDelegate()V
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->openOptionsMenu()V

    return-void
.end method

.method synthetic lambda$removeTopLevelWindow$11$org-qtproject-qt-android-QtActivityDelegate(I)V
    .locals 2

    .line 329
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_topLevelWindows:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_topLevelWindows:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/qtproject/qt/android/QtWindow;

    .line 331
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_topLevelWindows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    goto :goto_0

    .line 336
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtRootLayout;->removeView(Landroid/view/View;)V

    .line 339
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$resetOptionsMenu$4$org-qtproject-qt-android-QtActivityDelegate()V
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method synthetic lambda$setNativeViewGeometry$15$org-qtproject-qt-android-QtActivityDelegate(IIIII)V
    .locals 2

    .line 422
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 424
    new-instance v0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    invoke-direct {v0, p2, p3, p4, p5}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    goto :goto_0

    .line 426
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "View "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " not found!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QtActivityDelegate"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :goto_0
    return-void
.end method

.method synthetic lambda$setSystemUiVisibility$0$org-qtproject-qt-android-QtActivityDelegate(I)V
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_displayManager:Lorg/qtproject/qt/android/QtDisplayManager;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtDisplayManager;->setSystemUiVisibility(I)V

    .line 72
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtRootLayout;->requestLayout()V

    .line 73
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->updateWindow()V

    .line 74
    return-void
.end method

.method synthetic lambda$setUpLayout$1$org-qtproject-qt-android-QtActivityDelegate()Z
    .locals 6

    .line 111
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtInputDelegate;->isKeyboardVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 112
    return v1

    .line 114
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 115
    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 116
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 117
    iget-object v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 118
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 119
    const/4 v3, 0x0

    if-gez v2, :cond_1

    .line 120
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/qtproject/qt/android/QtInputDelegate;->setKeyboardVisibility(ZJ)V

    .line 121
    return v1

    .line 123
    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 124
    iget-object v5, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    invoke-virtual {v5, v4}, Lorg/qtproject/qt/android/QtRootLayout;->getLocationOnScreen([I)V

    .line 125
    aget v3, v4, v3

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    aget v4, v4, v1

    sub-int/2addr v5, v4

    .line 126
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 125
    invoke-static {v3, v5, v0, v2}, Lorg/qtproject/qt/android/QtInputDelegate;->keyboardGeometryChanged(IIII)V

    .line 127
    return v1
.end method

.method public bridge synthetic notifyLocationChange(I)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegateBase;->notifyLocationChange(I)V

    return-void
.end method

.method public bridge synthetic notifyObjectFocus(I)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegateBase;->notifyObjectFocus(I)V

    return-void
.end method

.method public bridge synthetic notifyObjectHide(II)V
    .locals 0

    .line 38
    invoke-super {p0, p1, p2}, Lorg/qtproject/qt/android/QtActivityDelegateBase;->notifyObjectHide(II)V

    return-void
.end method

.method public bridge synthetic notifyObjectShow(I)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegateBase;->notifyObjectShow(I)V

    return-void
.end method

.method public bridge synthetic notifyScrolledEvent(I)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegateBase;->notifyScrolledEvent(I)V

    return-void
.end method

.method public bridge synthetic notifyValueChanged(ILjava/lang/String;)V
    .locals 0

    .line 38
    invoke-super {p0, p1, p2}, Lorg/qtproject/qt/android/QtActivityDelegateBase;->notifyValueChanged(ILjava/lang/String;)V

    return-void
.end method

.method public onCreatePopupMenu(Landroid/view/Menu;)V
    .locals 0

    .line 256
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->fillContextMenu(Landroid/view/Menu;)V

    .line 257
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_contextMenuVisible:Z

    .line 258
    return-void
.end method

.method public openContextMenu(IIII)V
    .locals 8

    .line 264
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    new-instance v7, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move v4, p4

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;IIII)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v7, p1, p2}, Lorg/qtproject/qt/android/QtRootLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 279
    return-void
.end method

.method public openOptionsMenu()V
    .locals 1

    .line 249
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda14;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 250
    return-void
.end method

.method removeTopLevelWindow(I)V
    .locals 1

    .line 328
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda3;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 340
    return-void
.end method

.method public resetOptionsMenu()V
    .locals 1

    .line 243
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda13;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 244
    return-void
.end method

.method setActionBarVisibility(Z)V
    .locals 1

    .line 290
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 291
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 295
    :cond_1
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->show()V

    goto :goto_1

    .line 293
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 296
    :goto_1
    return-void
.end method

.method public setNativeViewGeometry(IIIII)V
    .locals 8

    .line 421
    new-instance v7, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda5;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p4

    move v4, p5

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda5;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;IIIII)V

    invoke-static {v7}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 429
    return-void
.end method

.method setSystemUiVisibility(I)V
    .locals 1

    .line 70
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda10;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method protected setUpLayout()V
    .locals 4

    .line 93
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 94
    new-instance v1, Lorg/qtproject/qt/android/QtRootLayout;

    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lorg/qtproject/qt/android/QtRootLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    .line 96
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->setUpSplashScreen(I)V

    .line 97
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->handleOrientationChanges(Landroid/app/Activity;)V

    .line 103
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->handleUiModeChange(I)V

    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 108
    :goto_0
    invoke-static {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->getRefreshRate(Landroid/view/Display;)F

    move-result v0

    invoke-static {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->handleRefreshRateChanged(F)V

    .line 110
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtRootLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda11;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 129
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

    new-instance v1, Lorg/qtproject/qt/android/EditPopupMenu;

    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    iget-object v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    invoke-direct {v1, v2, v3}, Lorg/qtproject/qt/android/EditPopupMenu;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtInputDelegate;->setEditPopupMenu(Lorg/qtproject/qt/android/EditPopupMenu;)V

    .line 130
    return-void
.end method

.method protected setUpSplashScreen(I)V
    .locals 4

    .line 136
    const-string v0, "android.app.splash_screen_sticky"

    :try_start_0
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    .line 137
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 136
    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.app.splash_screen_drawable_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 141
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    const-string p1, "landscape"

    goto :goto_0

    :cond_0
    const-string p1, "portrait"

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 142
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    const-string p1, "android.app.splash_screen_drawable"

    .line 145
    :cond_1
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 147
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 148
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreenSticky:Z

    .line 150
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 151
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    .line 152
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    .line 153
    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 152
    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 155
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/QtRootLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_3
    goto :goto_2

    .line 160
    :catch_0
    move-exception p1

    .line 161
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    :goto_2
    return-void
.end method

.method public bridge synthetic startNativeApplication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-super {p0, p1, p2}, Lorg/qtproject/qt/android/QtActivityDelegateBase;->startNativeApplication(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method startNativeApplicationImpl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtRootLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/qtproject/qt/android/QtActivityDelegate$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/qtproject/qt/android/QtActivityDelegate$1;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 88
    return-void
.end method
