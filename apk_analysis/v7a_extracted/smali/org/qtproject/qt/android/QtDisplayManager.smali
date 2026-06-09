.class Lorg/qtproject/qt/android/QtDisplayManager;
.super Ljava/lang/Object;
.source "QtDisplayManager.java"


# static fields
.field public static final SYSTEM_UI_VISIBILITY_FULLSCREEN:I = 0x1

.field public static final SYSTEM_UI_VISIBILITY_NORMAL:I = 0x0

.field public static final SYSTEM_UI_VISIBILITY_TRANSLUCENT:I = 0x2

.field private static m_previousRotation:I


# instance fields
.field private final m_activity:Landroid/app/Activity;

.field private m_displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private m_systemUiVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/4 v0, -0x1

    sput v0, Lorg/qtproject/qt/android/QtDisplayManager;->m_previousRotation:I

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_systemUiVisibility:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 54
    iput-object p1, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_activity:Landroid/app/Activity;

    .line 55
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtDisplayManager;->initDisplayListener()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt/android/QtDisplayManager;)Landroid/app/Activity;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static getAvailableDisplays(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation

    .line 203
    nop

    .line 204
    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 205
    if-eqz p0, :cond_0

    .line 206
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    .line 207
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 209
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static getDisplay(Landroid/content/Context;I)Landroid/view/Display;
    .locals 1

    .line 192
    nop

    .line 193
    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 194
    if-eqz p0, :cond_0

    .line 195
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0

    .line 197
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 2

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object p0

    .line 97
    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getDisplaySize(Landroid/content/Context;Landroid/view/Display;)Landroid/util/Size;
    .locals 2

    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 216
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 217
    invoke-virtual {p1, p0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 218
    new-instance p1, Landroid/util/Size;

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    .line 221
    :cond_0
    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p0

    .line 223
    nop

    .line 224
    const-string p1, "window"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 225
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    .line 226
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 227
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method private static getNativeOrientation(Landroid/app/Activity;I)I
    .locals 3

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 104
    :goto_1
    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    const/4 v0, 0x1

    .line 105
    :cond_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    .line 106
    :cond_4
    return v2

    .line 108
    :cond_5
    return v1
.end method

.method static getRefreshRate(Landroid/view/Display;)F
    .locals 0

    .line 113
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x42700000    # 60.0f

    :goto_0
    return p0
.end method

.method public static getXDpi(Landroid/util/DisplayMetrics;)F
    .locals 2

    .line 277
    iget v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v1, 0x42f00000    # 120.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 278
    return v1

    .line 279
    :cond_0
    iget p0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    return p0
.end method

.method public static getYDpi(Landroid/util/DisplayMetrics;)F
    .locals 2

    .line 283
    iget v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    const/high16 v1, 0x42f00000    # 120.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 284
    return v1

    .line 285
    :cond_0
    iget p0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    return p0
.end method

.method public static native handleOrientationChanged(II)V
.end method

.method static handleOrientationChanges(Landroid/app/Activity;)V
    .locals 2

    .line 84
    invoke-static {p0}, Lorg/qtproject/qt/android/QtDisplayManager;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 85
    sget v1, Lorg/qtproject/qt/android/QtDisplayManager;->m_previousRotation:I

    if-ne v1, v0, :cond_0

    .line 86
    return-void

    .line 87
    :cond_0
    invoke-static {p0, v0}, Lorg/qtproject/qt/android/QtDisplayManager;->getNativeOrientation(Landroid/app/Activity;I)I

    move-result p0

    .line 88
    invoke-static {v0, p0}, Lorg/qtproject/qt/android/QtDisplayManager;->handleOrientationChanged(II)V

    .line 89
    sput v0, Lorg/qtproject/qt/android/QtDisplayManager;->m_previousRotation:I

    .line 90
    return-void
.end method

.method public static native handleRefreshRateChanged(F)V
.end method

.method public static native handleScreenAdded(I)V
.end method

.method public static native handleScreenChanged(I)V
.end method

.method public static native handleScreenRemoved(I)V
.end method

.method public static native handleUiDarkModeChanged(I)V
.end method

.method private initDisplayListener()V
    .locals 1

    .line 59
    new-instance v0, Lorg/qtproject/qt/android/QtDisplayManager$1;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtDisplayManager$1;-><init>(Lorg/qtproject/qt/android/QtDisplayManager;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 80
    return-void
.end method

.method public static setApplicationDisplayMetrics(Landroid/app/Activity;II)V
    .locals 20

    .line 232
    if-nez p0, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 236
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 245
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_1

    .line 246
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 248
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 249
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 250
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 251
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 253
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v4

    .line 254
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v0

    .line 255
    move v8, v0

    move v6, v2

    move v5, v3

    move v7, v4

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v2

    .line 258
    invoke-interface {v1}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 260
    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 262
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Insets;->left:I

    .line 263
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->top:I

    move v8, v0

    move v6, v1

    move-object v1, v2

    move v5, v3

    move v7, v4

    .line 266
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 268
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    .line 269
    iget v4, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    float-to-double v13, v4

    .line 271
    nop

    .line 272
    invoke-static {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->getXDpi(Landroid/util/DisplayMetrics;)F

    move-result v4

    float-to-double v11, v4

    invoke-static {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->getYDpi(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-double v9, v0

    .line 273
    invoke-static {v1}, Lorg/qtproject/qt/android/QtDisplayManager;->getRefreshRate(Landroid/view/Display;)F

    move-result v19

    .line 271
    move-wide v0, v9

    move/from16 v9, p1

    move/from16 v10, p2

    move-wide v15, v13

    move-wide v13, v0

    move-wide/from16 v17, v2

    invoke-static/range {v5 .. v19}, Lorg/qtproject/qt/android/QtDisplayManager;->setDisplayMetrics(IIIIIIDDDDF)V

    .line 274
    return-void
.end method

.method public static native setDisplayMetrics(IIIIIIDDDDF)V
.end method


# virtual methods
.method public registerDisplayListener()V
    .locals 3

    .line 118
    iget-object v0, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_activity:Landroid/app/Activity;

    .line 119
    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 120
    iget-object v1, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 121
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .locals 4

    .line 132
    iget v0, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_systemUiVisibility:I

    if-ne v0, p1, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    iput p1, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_systemUiVisibility:I

    .line 137
    nop

    .line 138
    const/16 v0, 0x1c

    const/16 v1, 0x800

    const/4 v2, 0x0

    const/16 v3, 0x400

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 163
    :pswitch_0
    iget-object p1, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0xc000800

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 166
    iget-object p1, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 167
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_2

    .line 168
    iget-object p1, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_0

    .line 148
    :pswitch_1
    iget-object p1, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 149
    iget-object p1, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 150
    nop

    .line 157
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_1

    .line 158
    iget-object p1, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 173
    :cond_1
    const/16 v2, 0x1706

    goto :goto_0

    .line 140
    :pswitch_2
    iget-object p1, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 141
    iget-object p1, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 142
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_2

    .line 143
    iget-object p1, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 173
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 174
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public systemUiVisibility()I
    .locals 1

    .line 178
    iget v0, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_systemUiVisibility:I

    return v0
.end method

.method public unregisterDisplayListener()V
    .locals 2

    .line 125
    iget-object v0, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_activity:Landroid/app/Activity;

    .line 126
    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 127
    iget-object v1, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 128
    return-void
.end method

.method public updateFullScreen()V
    .locals 2

    .line 183
    iget v0, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_systemUiVisibility:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_systemUiVisibility:I

    .line 185
    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/QtDisplayManager;->setSystemUiVisibility(I)V

    .line 187
    :cond_0
    return-void
.end method
