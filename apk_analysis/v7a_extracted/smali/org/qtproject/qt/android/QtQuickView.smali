.class public Lorg/qtproject/qt/android/QtQuickView;
.super Lorg/qtproject/qt/android/QtView;
.source "QtQuickView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/QtQuickView$StatusChangeListener;,
        Lorg/qtproject/qt/android/QtQuickView$SignalListener;
    }
.end annotation


# static fields
.field public static final STATUS_ERROR:I = 0x3

.field public static final STATUS_LOADING:I = 0x2

.field public static final STATUS_NULL:I = 0x0

.field public static final STATUS_READY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "QtQuickView"


# instance fields
.field private m_hasQueuedStatus:Z

.field private m_lastStatus:I

.field private m_qmlImportPaths:[Ljava/lang/String;

.field private m_qmlUri:Ljava/lang/String;

.field private m_statusChangeListener:Lorg/qtproject/qt/android/QtQuickView$StatusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/qtproject/qt/android/QtQuickView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1, p3}, Lorg/qtproject/qt/android/QtView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_qmlImportPaths:[Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_statusChangeListener:Lorg/qtproject/qt/android/QtQuickView$StatusChangeListener;

    .line 86
    const/4 p1, 0x0

    iput p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_lastStatus:I

    .line 87
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_hasQueuedStatus:Z

    .line 133
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 137
    iput-object p2, p0, Lorg/qtproject/qt/android/QtQuickView;->m_qmlUri:Ljava/lang/String;

    .line 138
    iput-object p4, p0, Lorg/qtproject/qt/android/QtQuickView;->m_qmlImportPaths:[Ljava/lang/String;

    .line 139
    return-void

    .line 134
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "QtQuickView: argument \'qmlUri\' may not be empty or null"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleStatusChange(I)V
    .locals 1

    .line 257
    iput p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_lastStatus:I

    .line 259
    iget-object v0, p0, Lorg/qtproject/qt/android/QtQuickView;->m_statusChangeListener:Lorg/qtproject/qt/android/QtQuickView$StatusChangeListener;

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Lorg/qtproject/qt/android/QtQuickView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtQuickView$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/QtQuickView;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 262
    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_hasQueuedStatus:Z

    .line 263
    :goto_0
    return-void
.end method


# virtual methods
.method native addRootObjectSignalListener(JLjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)I
.end method

.method public connectSignalListener(Ljava/lang/String;Ljava/lang/Class;Lorg/qtproject/qt/android/QtQuickView$SignalListener;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/qtproject/qt/android/QtQuickView$SignalListener<",
            "TT;>;)I"
        }
    .end annotation

    .line 201
    nop

    .line 202
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickView;->windowReference()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/qtproject/qt/android/QtQuickView;->addRootObjectSignalListener(JLjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)I

    move-result p2

    .line 203
    if-gez p2, :cond_0

    .line 204
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The signal "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " does not exist in the root object or the arguments do not match with the listener."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "QtQuickView"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    return p2
.end method

.method native createQuickView(Ljava/lang/String;IIJ[Ljava/lang/String;)V
.end method

.method protected createWindow(J)V
    .locals 7

    .line 143
    iget-object v1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_qmlUri:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickView;->getHeight()I

    move-result v3

    iget-object v6, p0, Lorg/qtproject/qt/android/QtQuickView;->m_qmlImportPaths:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lorg/qtproject/qt/android/QtQuickView;->createQuickView(Ljava/lang/String;IIJ[Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public disconnectSignalListener(I)Z
    .locals 2

    .line 221
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickView;->windowReference()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lorg/qtproject/qt/android/QtQuickView;->removeRootObjectSignalListener(JI)Z

    move-result p1

    return p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickView;->windowReference()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lorg/qtproject/qt/android/QtQuickView;->getRootObjectProperty(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method native getRootObjectProperty(JLjava/lang/String;)Ljava/lang/Object;
.end method

.method public getStatus()I
    .locals 1

    .line 237
    iget v0, p0, Lorg/qtproject/qt/android/QtQuickView;->m_lastStatus:I

    return v0
.end method

.method synthetic lambda$handleStatusChange$1$org-qtproject-qt-android-QtQuickView(I)V
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/qtproject/qt/android/QtQuickView;->m_statusChangeListener:Lorg/qtproject/qt/android/QtQuickView$StatusChangeListener;

    invoke-interface {v0, p1}, Lorg/qtproject/qt/android/QtQuickView$StatusChangeListener;->onStatusChanged(I)V

    return-void
.end method

.method synthetic lambda$setStatusChangeListener$0$org-qtproject-qt-android-QtQuickView()V
    .locals 2

    .line 250
    iget-object v0, p0, Lorg/qtproject/qt/android/QtQuickView;->m_statusChangeListener:Lorg/qtproject/qt/android/QtQuickView$StatusChangeListener;

    iget v1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_lastStatus:I

    invoke-interface {v0, v1}, Lorg/qtproject/qt/android/QtQuickView$StatusChangeListener;->onStatusChanged(I)V

    return-void
.end method

.method public bridge synthetic onLayout(ZIIII)V
    .locals 0

    .line 32
    invoke-super/range {p0 .. p5}, Lorg/qtproject/qt/android/QtView;->onLayout(ZIIII)V

    return-void
.end method

.method native removeRootObjectSignalListener(JI)Z
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 162
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickView;->windowReference()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/qtproject/qt/android/QtQuickView;->setRootObjectProperty(JLjava/lang/String;Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public bridge synthetic setQtWindowListener(Lorg/qtproject/qt/android/QtView$QtWindowListener;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lorg/qtproject/qt/android/QtView;->setQtWindowListener(Lorg/qtproject/qt/android/QtView$QtWindowListener;)V

    return-void
.end method

.method native setRootObjectProperty(JLjava/lang/String;Ljava/lang/Object;)V
.end method

.method public setStatusChangeListener(Lorg/qtproject/qt/android/QtQuickView$StatusChangeListener;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_statusChangeListener:Lorg/qtproject/qt/android/QtQuickView$StatusChangeListener;

    .line 249
    iget-boolean p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_hasQueuedStatus:Z

    if-eqz p1, :cond_0

    .line 250
    new-instance p1, Lorg/qtproject/qt/android/QtQuickView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/qtproject/qt/android/QtQuickView$$ExternalSyntheticLambda1;-><init>(Lorg/qtproject/qt/android/QtQuickView;)V

    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 251
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_hasQueuedStatus:Z

    .line 253
    :cond_0
    return-void
.end method
