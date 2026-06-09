.class public Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "QtAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;,
        Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$HoverEventListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = "$VirtualChild"

.field public static final INVALID_ID:I = 0x14d

.field private static final TAG:Ljava/lang/String; = "Qt A11Y"


# instance fields
.field private m_focusedVirtualViewId:I

.field private final m_globalOffset:[I

.field private m_hoveredVirtualViewId:I

.field private final m_layout:Lorg/qtproject/qt/android/QtLayout;

.field private final m_manager:Landroid/view/accessibility/AccessibilityManager;

.field private final m_nodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

.field private m_oldOffsetX:I

.field private m_oldOffsetY:I

.field private m_view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/qtproject/qt/android/QtLayout;)V
    .locals 3

    .line 69
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    .line 47
    const/16 v1, 0x14d

    iput v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    .line 49
    iput v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_hoveredVirtualViewId:I

    .line 54
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_globalOffset:[I

    .line 55
    const/4 v1, 0x0

    iput v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_oldOffsetX:I

    .line 56
    iput v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_oldOffsetY:I

    .line 447
    new-instance v1, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;-><init>(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)V

    iput-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_nodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 70
    iput-object p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    .line 72
    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    .line 73
    if-eqz p1, :cond_1

    .line 74
    new-instance v1, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;

    invoke-direct {v1, p0, v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;-><init>(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;)V

    .line 75
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const-string v0, "Qt A11y"

    const-string v2, "Could not register a11y state change listener"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 78
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->onAccessibilityStateChanged(Z)V

    .line 80
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$202(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 29
    iput-object p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Lorg/qtproject/qt/android/QtLayout;
    .locals 0

    .line 29
    iget-object p0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    return-object p0
.end method

.method static synthetic access$500(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->getNodeForView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->getNodeForVirtualViewId(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)I
    .locals 0

    .line 29
    iget p0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    return p0
.end method

.method static synthetic access$702(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;I)I
    .locals 0

    .line 29
    iput p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    return p1
.end method

.method private dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 141
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const/4 p1, 0x0

    return p1

    .line 145
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->hitTest(FF)I

    move-result v0

    .line 146
    const/16 v1, 0x14d

    if-ne v0, v1, :cond_1

    .line 147
    const/4 v0, -0x1

    .line 150
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 154
    :pswitch_1
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->setHoveredVirtualViewId(I)V

    .line 158
    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private dumpNodes(I)V
    .locals 7

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A11Y hierarchy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->parentId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Qt A11Y"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    desc: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->descriptionForAccessibleObject(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " rect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->screenRect(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " NODE: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->getNodeForVirtualViewId(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->childIdListForAccessibleObject(I)[I

    move-result-object v0

    .line 327
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v0, v3

    .line 328
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has child: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-direct {p0, v4}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->dumpNodes(I)V

    .line 327
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 331
    :cond_0
    return-void
.end method

.method private getEventForVirtualViewId(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 3

    .line 297
    const/16 v0, 0x14d

    const/4 v1, 0x0

    const-string v2, "Qt A11Y"

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 303
    return-object v1

    .line 305
    :cond_1
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 307
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$VirtualChild"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 310
    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->descriptionForAccessibleObject(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 311
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    const-string v0, "AccessibilityEvent with empty description"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_2
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 316
    return-object p2

    .line 298
    :cond_3
    :goto_0
    const-string p1, "getEventForVirtualViewId for invalid view"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-object v1
.end method

.method private getNodeForView()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8

    .line 337
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 339
    iget-object v2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 342
    iget-object v2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    iget-object v3, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_globalOffset:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 343
    iget-object v2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_globalOffset:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    .line 344
    const/4 v5, 0x1

    aget v2, v2, v5

    .line 347
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 348
    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 349
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 351
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 352
    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 353
    invoke-virtual {v5, v4, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 354
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 357
    iget-object v5, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 358
    instance-of v6, v5, Landroid/view/View;

    if-eqz v6, :cond_0

    .line 359
    check-cast v5, Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 362
    :cond_0
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 363
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 364
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {v1}, Lorg/qtproject/qt/android/QtLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    const/4 v1, -0x1

    invoke-static {v1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->childIdListForAccessibleObject(I)[I

    move-result-object v1

    .line 371
    array-length v5, v1

    :goto_0
    if-ge v3, v5, :cond_1

    aget v6, v1, v3

    .line 372
    iget-object v7, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0, v7, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 371
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 378
    :cond_1
    iget v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_oldOffsetX:I

    if-ne v1, v4, :cond_2

    iget v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_oldOffsetY:I

    if-eq v1, v2, :cond_3

    .line 379
    :cond_2
    iput v4, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_oldOffsetX:I

    .line 380
    iput v2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_oldOffsetY:I

    .line 381
    iget v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    const/16 v2, 0x14d

    if-eq v1, v2, :cond_3

    .line 382
    iget-object v2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_nodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/16 v4, 0x80

    invoke-virtual {v2, v1, v4, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 385
    iget-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_nodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    iget v2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/16 v4, 0x40

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 391
    :cond_3
    return-object v0
.end method

.method private getNodeForVirtualViewId(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    .line 396
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$VirtualChild"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {v1}, Lorg/qtproject/qt/android/QtLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p1, v0}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->populateNode(ILandroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 406
    :cond_0
    iget-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 408
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccessibilityNodeInfo with empty contentDescription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Qt A11Y"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_1
    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->parentId(I)I

    move-result v1

    .line 412
    iget-object v2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 414
    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->screenRect(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 415
    iget-object v3, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_globalOffset:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    .line 416
    const/4 v6, 0x1

    aget v3, v3, v6

    .line 417
    invoke-virtual {v2, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 418
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 420
    invoke-static {v1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->screenRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 421
    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 422
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 425
    iget v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    if-ne v1, p1, :cond_2

    .line 426
    invoke-virtual {v0, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 427
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0

    .line 429
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 430
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 433
    :goto_0
    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->childIdListForAccessibleObject(I)[I

    move-result-object p1

    .line 434
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget v3, p1, v2

    .line 435
    iget-object v5, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 436
    :cond_3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 437
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_4

    .line 438
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    array-length p1, p1

    invoke-direct {v1, p1, v6, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    goto :goto_2

    .line 440
    :cond_4
    array-length p1, p1

    invoke-static {p1, v6, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 444
    :cond_5
    :goto_2
    return-object v0

    .line 402
    :cond_6
    :goto_3
    return-object v0
.end method

.method private setHoveredVirtualViewId(I)V
    .locals 2

    .line 285
    iget v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_hoveredVirtualViewId:I

    if-ne v0, p1, :cond_0

    .line 286
    return-void

    .line 289
    :cond_0
    nop

    .line 290
    iput p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_hoveredVirtualViewId:I

    .line 291
    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)V

    .line 292
    const/16 p1, 0x100

    invoke-virtual {p0, v0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)V

    .line 293
    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 0

    .line 134
    iget-object p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_nodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object p1
.end method

.method public invalidateVirtualViewId(I)V
    .locals 1

    .line 274
    const/16 v0, 0x800

    invoke-direct {p0, p1, v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->getEventForVirtualViewId(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 276
    if-nez p1, :cond_0

    .line 277
    return-void

    .line 279
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 280
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 281
    return-void
.end method

.method synthetic lambda$notifyLocationChange$1$org-qtproject-qt-android-accessibility-QtAccessibilityDelegate(I)V
    .locals 1

    .line 170
    iget v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    if-ne v0, p1, :cond_0

    .line 171
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->invalidateVirtualViewId(I)V

    .line 172
    :cond_0
    return-void
.end method

.method synthetic lambda$notifyObjectFocus$4$org-qtproject-qt-android-accessibility-QtAccessibilityDelegate(I)V
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    if-nez v0, :cond_0

    .line 207
    return-void

    .line 208
    :cond_0
    iput p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    .line 209
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 210
    const v0, 0x8000

    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)V

    .line 212
    return-void
.end method

.method synthetic lambda$notifyObjectHide$2$org-qtproject-qt-android-accessibility-QtAccessibilityDelegate(II)V
    .locals 1

    .line 182
    iget v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    if-ne v0, p1, :cond_0

    .line 183
    const/16 v0, 0x14d

    iput v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    .line 184
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 185
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)V

    .line 190
    :cond_0
    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->invalidateVirtualViewId(I)V

    .line 191
    return-void
.end method

.method synthetic lambda$notifyObjectShow$3$org-qtproject-qt-android-accessibility-QtAccessibilityDelegate(I)V
    .locals 0

    .line 199
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->invalidateVirtualViewId(I)V

    .line 200
    return-void
.end method

.method synthetic lambda$notifyScrolledEvent$0$org-qtproject-qt-android-accessibility-QtAccessibilityDelegate(I)V
    .locals 1

    .line 163
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)V

    return-void
.end method

.method synthetic lambda$notifyValueChanged$5$org-qtproject-qt-android-accessibility-QtAccessibilityDelegate(ILjava/lang/String;)V
    .locals 5

    .line 220
    const/16 v0, 0x14d

    const-string v1, "Qt A11Y"

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 226
    if-nez v0, :cond_1

    .line 227
    const-string p1, "Could not announce value because ViewGroup was null."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void

    .line 231
    :cond_1
    nop

    .line 232
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 234
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$VirtualChild"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {v2, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No value to announce for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 244
    :cond_2
    iget-object p2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 245
    iget-object p2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v2, p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 247
    iget-object p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0, p1, v2}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to send value change announcement for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_3
    return-void

    .line 221
    :cond_4
    :goto_0
    const-string p1, "notifyValueChanged() for invalid view"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method public notifyLocationChange(I)V
    .locals 1

    .line 169
    new-instance v0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda5;-><init>(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method public notifyObjectFocus(I)V
    .locals 1

    .line 205
    new-instance v0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda3;-><init>(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method

.method public notifyObjectHide(II)V
    .locals 1

    .line 177
    new-instance v0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;II)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method

.method public notifyObjectShow(I)V
    .locals 1

    .line 196
    new-instance v0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda1;-><init>(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method

.method public notifyScrolledEvent(I)V
    .locals 1

    .line 163
    new-instance v0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda2;-><init>(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method public notifyValueChanged(ILjava/lang/String;)V
    .locals 1

    .line 217
    new-instance v0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$$ExternalSyntheticLambda4;-><init>(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;ILjava/lang/String;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 250
    return-void
.end method

.method protected performActionForVirtualViewId(II)Z
    .locals 1

    .line 507
    nop

    .line 508
    const/16 v0, 0x1000

    sparse-switch p2, :sswitch_data_0

    const/4 p2, 0x0

    goto :goto_0

    .line 520
    :sswitch_0
    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->scrollBackward(I)Z

    move-result p2

    .line 521
    if-eqz p2, :cond_0

    .line 522
    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)V

    goto :goto_0

    .line 515
    :sswitch_1
    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->scrollForward(I)Z

    move-result p2

    .line 516
    if-eqz p2, :cond_0

    .line 517
    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)V

    goto :goto_0

    .line 510
    :sswitch_2
    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->clickAction(I)Z

    move-result p2

    .line 511
    if-eqz p2, :cond_0

    .line 512
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)V

    .line 525
    :cond_0
    :goto_0
    return p2

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 260
    if-nez p1, :cond_0

    .line 261
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 264
    if-nez v0, :cond_1

    .line 265
    const-string p1, "Qt A11Y"

    const-string v0, "Could not send AccessibilityEvent because group was null. This should really not happen."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void

    .line 269
    :cond_1
    iget-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 270
    return-void
.end method

.method public sendEventForVirtualViewId(II)V
    .locals 0

    .line 254
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->getEventForVirtualViewId(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 255
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 256
    return-void
.end method
