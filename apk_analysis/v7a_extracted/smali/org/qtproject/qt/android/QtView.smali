.class abstract Lorg/qtproject/qt/android/QtView;
.super Landroid/view/ViewGroup;
.source "QtView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/QtView$QtWindowListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QtView"


# instance fields
.field protected m_delegate:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

.field protected m_window:Lorg/qtproject/qt/android/QtWindow;

.field protected m_windowListener:Lorg/qtproject/qt/android/QtView$QtWindowListener;

.field protected m_windowReference:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 54
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lorg/qtproject/qt/android/QtEmbeddedLoader;

    invoke-direct {v0, p1}, Lorg/qtproject/qt/android/QtEmbeddedLoader;-><init>(Landroid/content/Context;)V

    .line 60
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lorg/qtproject/qt/android/QtEmbeddedDelegateFactory;->create(Landroid/app/Activity;)Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtView;->m_delegate:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    .line 61
    invoke-virtual {v0, p2}, Lorg/qtproject/qt/android/QtEmbeddedLoader;->setMainLibraryName(Ljava/lang/String;)V

    .line 62
    new-instance p1, Lorg/qtproject/qt/android/QtView$1;

    invoke-direct {p1, p0}, Lorg/qtproject/qt/android/QtView$1;-><init>(Lorg/qtproject/qt/android/QtView;)V

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 78
    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtEmbeddedLoader;->loadQtLibraries()V

    .line 80
    iget-object p1, p0, Lorg/qtproject/qt/android/QtView;->m_delegate:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtEmbeddedLoader;->getApplicationParameters()Ljava/lang/String;

    move-result-object p2

    .line 81
    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtEmbeddedLoader;->getMainLibraryPath()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p1, p2, v0}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->startNativeApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void

    .line 55
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "QtView: argument \'appLibName\' may not be empty or null"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(JIIII)V
    .locals 0

    .line 21
    invoke-static/range {p0 .. p5}, Lorg/qtproject/qt/android/QtView;->resizeWindow(JIIII)V

    return-void
.end method

.method private static native resizeWindow(JIIII)V
.end method

.method private static native setWindowVisible(JZ)V
.end method


# virtual methods
.method addQtWindow(Lorg/qtproject/qt/android/QtWindow;JJ)V
    .locals 0

    .line 158
    invoke-virtual {p0, p2, p3}, Lorg/qtproject/qt/android/QtView;->setWindowReference(J)V

    .line 159
    iget-object p2, p0, Lorg/qtproject/qt/android/QtView;->m_delegate:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    invoke-virtual {p2, p4, p5}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->setRootWindowRef(J)V

    .line 160
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 161
    new-instance p3, Lorg/qtproject/qt/android/QtView$2;

    invoke-direct {p3, p0, p1}, Lorg/qtproject/qt/android/QtView$2;-><init>(Lorg/qtproject/qt/android/QtView;Lorg/qtproject/qt/android/QtWindow;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    return-void
.end method

.method protected abstract createWindow(J)V
.end method

.method destroyWindow()V
    .locals 5

    .line 179
    iget-wide v0, p0, Lorg/qtproject/qt/android/QtView;->m_windowReference:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 180
    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->deleteWindow(J)V

    .line 181
    :cond_0
    iput-wide v2, p0, Lorg/qtproject/qt/android/QtView;->m_windowReference:J

    .line 182
    return-void
.end method

.method getQtWindow()Lorg/qtproject/qt/android/QtWindow;
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/qtproject/qt/android/QtView;->m_window:Lorg/qtproject/qt/android/QtWindow;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 86
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 87
    iget-object v0, p0, Lorg/qtproject/qt/android/QtView;->m_delegate:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    invoke-virtual {v0, p0}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->setView(Lorg/qtproject/qt/android/QtView;)V

    .line 88
    iget-object v0, p0, Lorg/qtproject/qt/android/QtView;->m_delegate:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->queueLoadWindow()V

    .line 89
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 93
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 94
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtView;->destroyWindow()V

    .line 95
    iget-object v0, p0, Lorg/qtproject/qt/android/QtView;->m_delegate:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->setView(Lorg/qtproject/qt/android/QtView;)V

    .line 96
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 100
    iget-object p1, p0, Lorg/qtproject/qt/android/QtView;->m_window:Lorg/qtproject/qt/android/QtWindow;

    if-eqz p1, :cond_0

    .line 101
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p4, p5}, Lorg/qtproject/qt/android/QtWindow;->layout(IIII)V

    .line 102
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 107
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtView;->measureChildren(II)V

    .line 109
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtView;->getChildCount()I

    move-result v0

    .line 111
    nop

    .line 112
    nop

    .line 115
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtView;->measureChildren(II)V

    .line 118
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 119
    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/QtView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 120
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 121
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 122
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 118
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 128
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 130
    invoke-static {v1, p1}, Lorg/qtproject/qt/android/QtView;->resolveSize(II)I

    move-result p1

    .line 131
    invoke-static {v0, p2}, Lorg/qtproject/qt/android/QtView;->resolveSize(II)I

    move-result p2

    .line 130
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtView;->setMeasuredDimension(II)V

    .line 132
    return-void
.end method

.method public setQtWindowListener(Lorg/qtproject/qt/android/QtView$QtWindowListener;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/qtproject/qt/android/QtView;->m_windowListener:Lorg/qtproject/qt/android/QtView$QtWindowListener;

    .line 137
    return-void
.end method

.method setWindowReference(J)V
    .locals 0

    .line 140
    iput-wide p1, p0, Lorg/qtproject/qt/android/QtView;->m_windowReference:J

    .line 141
    return-void
.end method

.method setWindowVisible(Z)V
    .locals 4

    .line 150
    iget-wide v0, p0, Lorg/qtproject/qt/android/QtView;->m_windowReference:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 151
    const/4 p1, 0x1

    invoke-static {v0, v1, p1}, Lorg/qtproject/qt/android/QtView;->setWindowVisible(JZ)V

    .line 152
    :cond_0
    return-void
.end method

.method windowReference()J
    .locals 2

    .line 144
    iget-wide v0, p0, Lorg/qtproject/qt/android/QtView;->m_windowReference:J

    return-wide v0
.end method
