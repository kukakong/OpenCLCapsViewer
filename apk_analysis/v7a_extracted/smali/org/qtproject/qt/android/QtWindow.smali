.class Lorg/qtproject/qt/android/QtWindow;
.super Lorg/qtproject/qt/android/QtLayout;
.source "QtWindow.java"

# interfaces
.implements Lorg/qtproject/qt/android/QtSurfaceInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "QtWindow"


# instance fields
.field private m_childWindows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/qtproject/qt/android/QtWindow;",
            ">;"
        }
    .end annotation
.end field

.field private final m_editText:Lorg/qtproject/qt/android/QtEditText;

.field private m_gestureDetector:Landroid/view/GestureDetector;

.field private final m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

.field private m_nativeView:Landroid/view/View;

.field private m_parentWindow:Lorg/qtproject/qt/android/QtWindow;

.field private m_surfaceContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/qtproject/qt/android/QtWindow;Lorg/qtproject/qt/android/QtInputDelegate;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtLayout;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_childWindows:Ljava/util/HashMap;

    .line 33
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtWindow;->setId(I)V

    .line 34
    new-instance v0, Lorg/qtproject/qt/android/QtEditText;

    invoke-direct {v0, p1, p3}, Lorg/qtproject/qt/android/QtEditText;-><init>(Landroid/content/Context;Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    .line 35
    iput-object p3, p0, Lorg/qtproject/qt/android/QtWindow;->m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

    .line 36
    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/QtWindow;->setParent(Lorg/qtproject/qt/android/QtWindow;)V

    .line 37
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/QtWindow;->setFocusableInTouchMode(Z)V

    .line 38
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/QtWindow;->setDefaultFocusHighlightEnabled(Z)V

    .line 40
    new-instance p2, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p2}, Lorg/qtproject/qt/android/QtWindow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    new-instance p2, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p1}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda7;-><init>(Lorg/qtproject/qt/android/QtWindow;Landroid/content/Context;)V

    invoke-static {p2}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method

.method private static native setSurface(ILandroid/view/Surface;)V
.end method

.method static native windowFocusChanged(ZI)V
.end method


# virtual methods
.method public addChildWindow(Lorg/qtproject/qt/android/QtWindow;)V
    .locals 1

    .line 146
    new-instance v0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda3;-><init>(Lorg/qtproject/qt/android/QtWindow;Lorg/qtproject/qt/android/QtWindow;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method public bringChildToBack(I)V
    .locals 1

    .line 187
    new-instance v0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda9;-><init>(Lorg/qtproject/qt/android/QtWindow;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method

.method public bringChildToFront(I)V
    .locals 1

    .line 177
    new-instance v0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda5;-><init>(Lorg/qtproject/qt/android/QtWindow;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method public createSurface(ZIIIIIZI)V
    .locals 11

    .line 106
    new-instance v10, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;

    move-object v0, v10

    move-object v1, p0

    move v2, p4

    move/from16 v3, p5

    move v4, p2

    move v5, p3

    move/from16 v6, p8

    move v7, p1

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;-><init>(Lorg/qtproject/qt/android/QtWindow;IIIIIZIZ)V

    invoke-static {v10}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method public destroySurface()V
    .locals 2

    .line 128
    new-instance v0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda2;-><init>(Lorg/qtproject/qt/android/QtWindow;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;Z)V

    .line 134
    return-void
.end method

.method synthetic lambda$addChildWindow$5$org-qtproject-qt-android-QtWindow(Lorg/qtproject/qt/android/QtWindow;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_childWindows:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/QtWindow;->addView(Landroid/view/View;I)V

    .line 149
    return-void
.end method

.method synthetic lambda$bringChildToBack$9$org-qtproject-qt-android-QtWindow(I)V
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_childWindows:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 189
    if-eqz p1, :cond_0

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/QtWindow;->moveChild(Landroid/view/View;I)V

    .line 192
    :cond_0
    return-void
.end method

.method synthetic lambda$bringChildToFront$8$org-qtproject-qt-android-QtWindow(I)V
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_childWindows:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 179
    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/QtWindow;->moveChild(Landroid/view/View;I)V

    .line 183
    :cond_0
    return-void
.end method

.method synthetic lambda$createSurface$2$org-qtproject-qt-android-QtWindow(IIIIIZIZ)V
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_surfaceContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtWindow;->removeView(Landroid/view/View;)V

    .line 110
    :cond_0
    new-instance v0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtWindow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    if-nez p5, :cond_1

    .line 112
    new-instance p1, Lorg/qtproject/qt/android/QtSurface;

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0, p6, p7}, Lorg/qtproject/qt/android/QtSurface;-><init>(Landroid/content/Context;Lorg/qtproject/qt/android/QtSurfaceInterface;ZI)V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow;->m_surfaceContainer:Landroid/view/View;

    goto :goto_0

    .line 115
    :cond_1
    new-instance p1, Lorg/qtproject/qt/android/QtTextureView;

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0, p8}, Lorg/qtproject/qt/android/QtTextureView;-><init>(Landroid/content/Context;Lorg/qtproject/qt/android/QtSurfaceInterface;Z)V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow;->m_surfaceContainer:Landroid/view/View;

    .line 117
    :goto_0
    iget-object p1, p0, Lorg/qtproject/qt/android/QtWindow;->m_surfaceContainer:Landroid/view/View;

    new-instance p2, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object p1, p0, Lorg/qtproject/qt/android/QtWindow;->m_surfaceContainer:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtWindow;->addView(Landroid/view/View;I)V

    .line 123
    return-void
.end method

.method synthetic lambda$destroySurface$3$org-qtproject-qt-android-QtWindow()V
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_surfaceContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtWindow;->removeView(Landroid/view/View;)V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_surfaceContainer:Landroid/view/View;

    .line 133
    :cond_0
    return-void
.end method

.method synthetic lambda$new$0$org-qtproject-qt-android-QtWindow(Landroid/content/Context;)V
    .locals 2

    .line 44
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lorg/qtproject/qt/android/QtWindow$1;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/QtWindow$1;-><init>(Lorg/qtproject/qt/android/QtWindow;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_gestureDetector:Landroid/view/GestureDetector;

    .line 50
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 51
    return-void
.end method

.method synthetic lambda$removeChildWindow$6$org-qtproject-qt-android-QtWindow(I)V
    .locals 2

    .line 155
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_childWindows:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_childWindows:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtWindow;->removeView(Landroid/view/View;)V

    .line 157
    :cond_0
    return-void
.end method

.method synthetic lambda$removeNativeView$10$org-qtproject-qt-android-QtWindow()V
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_nativeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtWindow;->removeView(Landroid/view/View;)V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_nativeView:Landroid/view/View;

    .line 202
    :cond_0
    return-void
.end method

.method synthetic lambda$setGeometry$4$org-qtproject-qt-android-QtWindow(IIII)V
    .locals 1

    .line 139
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lorg/qtproject/qt/android/QtActivityBase;

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtWindow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    :cond_0
    return-void
.end method

.method synthetic lambda$setNativeView$7$org-qtproject-qt-android-QtWindow(Landroid/view/View;IIII)V
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_nativeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtWindow;->removeView(Landroid/view/View;)V

    .line 167
    :cond_0
    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow;->m_nativeView:Landroid/view/View;

    .line 168
    new-instance p1, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    invoke-direct {p1, p2, p3, p4, p5}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtWindow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object p1, p0, Lorg/qtproject/qt/android/QtWindow;->m_nativeView:Landroid/view/View;

    new-instance p2, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object p1, p0, Lorg/qtproject/qt/android/QtWindow;->m_nativeView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtWindow;->addView(Landroid/view/View;)V

    .line 172
    return-void
.end method

.method synthetic lambda$setVisible$1$org-qtproject-qt-android-QtWindow(Z)V
    .locals 0

    .line 56
    if-eqz p1, :cond_0

    .line 57
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtWindow;->setVisibility(I)V

    goto :goto_0

    .line 59
    :cond_0
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtWindow;->setVisibility(I)V

    .line 60
    :goto_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 92
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lorg/qtproject/qt/android/QtInputDelegate;->sendGenericMotionEvent(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1
.end method

.method public onSurfaceChanged(Landroid/view/Surface;)V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v0

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/QtWindow;->setSurface(ILandroid/view/Surface;)V

    .line 67
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 72
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lorg/qtproject/qt/android/QtWindow;->windowFocusChanged(ZI)V

    .line 73
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/qtproject/qt/android/QtWindow;->m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/QtInputDelegate;->setFocusedView(Lorg/qtproject/qt/android/QtEditText;)V

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getX()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 77
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lorg/qtproject/qt/android/QtInputDelegate;->sendTouchEvent(Landroid/view/MotionEvent;I)V

    .line 78
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 79
    return v1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 85
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lorg/qtproject/qt/android/QtInputDelegate;->sendTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 86
    const/4 p1, 0x1

    return p1
.end method

.method parent()Lorg/qtproject/qt/android/QtWindow;
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_parentWindow:Lorg/qtproject/qt/android/QtWindow;

    return-object v0
.end method

.method public removeChildWindow(I)V
    .locals 1

    .line 154
    new-instance v0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda6;-><init>(Lorg/qtproject/qt/android/QtWindow;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public removeNativeView()V
    .locals 1

    .line 197
    new-instance v0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda4;-><init>(Lorg/qtproject/qt/android/QtWindow;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method

.method public removeWindow()V
    .locals 2

    .line 97
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_parentWindow:Lorg/qtproject/qt/android/QtWindow;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtWindow;->removeChildWindow(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public setGeometry(IIII)V
    .locals 7

    .line 138
    new-instance v6, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda1;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move v3, p4

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda1;-><init>(Lorg/qtproject/qt/android/QtWindow;IIII)V

    invoke-static {v6}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method public setNativeView(Landroid/view/View;IIII)V
    .locals 8

    .line 163
    new-instance v7, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p5

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/QtWindow;Landroid/view/View;IIII)V

    invoke-static {v7}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method setParent(Lorg/qtproject/qt/android/QtWindow;)V
    .locals 2

    .line 207
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_parentWindow:Lorg/qtproject/qt/android/QtWindow;

    if-ne v0, p1, :cond_0

    .line 208
    return-void

    .line 210
    :cond_0
    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtWindow;->removeChildWindow(I)V

    .line 213
    :cond_1
    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow;->m_parentWindow:Lorg/qtproject/qt/android/QtWindow;

    .line 214
    if-eqz p1, :cond_2

    .line 215
    invoke-virtual {p1, p0}, Lorg/qtproject/qt/android/QtWindow;->addChildWindow(Lorg/qtproject/qt/android/QtWindow;)V

    .line 216
    :cond_2
    return-void
.end method

.method setVisible(Z)V
    .locals 1

    .line 55
    new-instance v0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda8;-><init>(Lorg/qtproject/qt/android/QtWindow;Z)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method
