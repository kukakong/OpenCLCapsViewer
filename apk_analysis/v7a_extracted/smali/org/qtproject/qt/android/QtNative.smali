.class public Lorg/qtproject/qt/android/QtNative;
.super Ljava/lang/Object;
.source "QtNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;,
        Lorg/qtproject/qt/android/QtNative$ApplicationState;,
        Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;
    }
.end annotation


# static fields
.field public static final QtTAG:Ljava/lang/String; = "Qt JAVA"

.field private static m_activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_appStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_appStateListenersLock:Ljava/lang/Object;

.field private static m_classLoader:Ljava/lang/ClassLoader;

.field private static final m_lostActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final m_mainActivityMutex:Ljava/lang/Object;

.field private static final m_qtThread:Lorg/qtproject/qt/android/QtThread;

.field private static m_service:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

.field private static final runPendingCppRunnablesRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_activity:Ljava/lang/ref/WeakReference;

    .line 36
    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_service:Ljava/lang/ref/WeakReference;

    .line 37
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    .line 39
    new-instance v1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    invoke-direct {v1}, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;-><init>()V

    sput-object v1, Lorg/qtproject/qt/android/QtNative;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lorg/qtproject/qt/android/QtNative;->m_lostActions:Ljava/util/ArrayList;

    .line 46
    new-instance v1, Lorg/qtproject/qt/android/QtThread;

    invoke-direct {v1}, Lorg/qtproject/qt/android/QtThread;-><init>()V

    sput-object v1, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    .line 47
    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_classLoader:Ljava/lang/ClassLoader;

    .line 49
    new-instance v0, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/QtNative;->runPendingCppRunnablesRunnable:Ljava/lang/Runnable;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_appStateListeners:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_appStateListenersLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activity()Landroid/app/Activity;
    .locals 2

    .line 81
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_activity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static checkSelfPermission(Ljava/lang/String;)I
    .locals 3

    .line 353
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 355
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 356
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    .line 357
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static classLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 56
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static native fillContextMenu(Landroid/view/Menu;)V
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 106
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    .line 108
    :cond_0
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->service()Landroid/app/Service;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentMethodNameLog()Ljava/lang/String;
    .locals 3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getQtThread()Lorg/qtproject/qt/android/QtThread;
    .locals 1

    .line 195
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    return-object v0
.end method

.method private static getSSLCertificates()[[B
    .locals 9

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 366
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 367
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 369
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 370
    instance-of v6, v5, Ljavax/net/ssl/X509TrustManager;

    if-eqz v6, :cond_0

    .line 371
    check-cast v5, Ljavax/net/ssl/X509TrustManager;

    .line 373
    invoke-interface {v5}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 374
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v8

    .line 375
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 369
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 381
    :cond_1
    goto :goto_2

    .line 379
    :catch_0
    move-exception v1

    .line 380
    const-string v2, "Qt JAVA"

    const-string v3, "Failed to get certificates"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [[B

    .line 384
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 385
    return-object v0
.end method

.method public static getStateDetails()Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;
    .locals 1

    .line 218
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    return-object v0
.end method

.method public static getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 114
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUriWithValidPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5

    .line 127
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    nop

    .line 134
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    return-object p1

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object p0

    .line 141
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 143
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 144
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UriPermission;

    invoke-virtual {v2}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 145
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UriPermission;

    invoke-virtual {v3}, Landroid/content/UriPermission;->isReadPermission()Z

    move-result v3

    .line 147
    const-string v4, "r"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 148
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UriPermission;

    invoke-virtual {v3}, Landroid/content/UriPermission;->isWritePermission()Z

    move-result v3

    .line 150
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 151
    return-object v2

    .line 143
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_3
    return-object p1

    .line 158
    :catch_0
    move-exception p0

    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getCurrentMethodNameLog()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Qt JAVA"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-object p1

    .line 128
    :catch_1
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 130
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isActivityValid()Z
    .locals 1

    .line 88
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_activity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isServiceValid()Z
    .locals 1

    .line 101
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_service:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$quitApp$2()V
    .locals 2

    .line 340
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->quitQtAndroidPlugin()V

    .line 341
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 343
    :cond_0
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->isServiceValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 345
    :cond_1
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    .line 347
    return-void
.end method

.method static synthetic lambda$setViewVisibility$0(Landroid/view/View;Z)V
    .locals 0

    .line 319
    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$startApplication$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 327
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->startQtAndroidPlugin(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 328
    const-string p0, "Qt JAVA"

    const-string p1, "An error occurred while starting the Qt Android plugin"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    return-void
.end method

.method private static listAssetContent(Landroid/content/res/AssetManager;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 394
    if-eqz v2, :cond_2

    .line 395
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 397
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "/"

    if-lez v6, :cond_0

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object v6, v5

    :goto_1
    invoke-virtual {p0, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 398
    if-eqz v6, :cond_1

    array-length v6, v6

    if-lez v6, :cond_1

    .line 399
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 400
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 403
    goto :goto_2

    .line 401
    :catch_0
    move-exception v5

    .line 402
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 395
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 408
    :cond_2
    goto :goto_3

    .line 406
    :catch_1
    move-exception p0

    .line 407
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 409
    :goto_3
    new-array p0, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method static notifyAppStateDetailsChanged(Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;)V
    .locals 3

    .line 262
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_appStateListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_appStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;

    .line 264
    invoke-interface {v2, p0}, Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;->onAppStateDetailsChanged(Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;)V

    goto :goto_0

    .line 265
    :cond_0
    monitor-exit v0

    .line 266
    return-void

    .line 265
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static notifyNativePluginIntegrationReady(Z)V
    .locals 1

    .line 230
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    iput-boolean p0, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->nativePluginIntegrationReady:Z

    .line 231
    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->notifyAppStateDetailsChanged(Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;)V

    .line 232
    return-void
.end method

.method public static native onActivityResult(IILandroid/content/Intent;)V
.end method

.method public static native onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public static native onContextItemSelected(IZ)Z
.end method

.method public static native onContextMenuClosed(Landroid/view/Menu;)V
.end method

.method public static native onCreateContextMenu(Landroid/view/ContextMenu;)V
.end method

.method public static native onNewIntent(Landroid/content/Intent;)V
.end method

.method public static native onOptionsItemSelected(IZ)Z
.end method

.method public static native onOptionsMenuClosed(Landroid/view/Menu;)V
.end method

.method public static native onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public static openURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 167
    const-string v0, "r"

    invoke-static {p0, p1, v0}, Lorg/qtproject/qt/android/QtNative;->getUriWithValidPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 168
    const/4 p1, 0x0

    const-string v0, "Qt JAVA"

    if-nez p0, :cond_0

    .line 169
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getCurrentMethodNameLog()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "received invalid/null Uri"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return p1

    .line 174
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 175
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 176
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    invoke-virtual {v1, p0, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    :cond_1
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activity()Landroid/app/Activity;

    move-result-object p0

    .line 180
    if-nez p0, :cond_2

    .line 181
    const-string p0, "openURL(): The activity reference is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return p1

    .line 185
    :cond_2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    return v2

    .line 188
    :catch_0
    move-exception p0

    .line 189
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getCurrentMethodNameLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return p1
.end method

.method public static quitApp()V
    .locals 1

    .line 339
    new-instance v0, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 348
    return-void
.end method

.method public static native quitQtAndroidPlugin()V
.end method

.method public static native quitQtCoreApplication()V
.end method

.method static registerAppStateListener(Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;)V
    .locals 3

    .line 249
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_appStateListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_appStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_0
    monitor-exit v0

    .line 253
    return-void

    .line 252
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static runAction(Ljava/lang/Runnable;)V
    .locals 1

    .line 272
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;Z)V

    .line 273
    return-void
.end method

.method public static runAction(Ljava/lang/Runnable;Z)V
    .locals 5

    .line 277
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 279
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 281
    if-eqz p1, :cond_6

    .line 282
    sget-object p1, Lorg/qtproject/qt/android/QtNative;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    iget v1, p1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->state:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    iget p1, p1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->state:I

    if-eq p1, v4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 285
    :goto_0
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->isActivityValid()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_2

    :cond_1
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->isServiceValid()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v3, 0x1

    .line 286
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 287
    :cond_4
    sget-object p1, Lorg/qtproject/qt/android/QtNative;->m_lostActions:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_5
    goto :goto_1

    .line 289
    :cond_6
    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    :goto_1
    monitor-exit v0

    .line 292
    return-void

    .line 291
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static native runPendingCppRunnables()V
.end method

.method private static runPendingCppRunnablesOnAndroidThread()V
    .locals 4

    .line 297
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->isActivityValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    iget v1, v1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 300
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    sget-object v2, Lorg/qtproject/qt/android/QtNative;->runPendingCppRunnablesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 302
    :cond_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->runPendingCppRunnablesRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 304
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 305
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    .line 306
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->runPendingCppRunnablesRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 309
    :cond_2
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 310
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->runPendingCppRunnablesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 313
    :goto_0
    monitor-exit v0

    .line 314
    return-void

    .line 313
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static native sendRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end method

.method public static service()Landroid/app/Service;
    .locals 2

    .line 94
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_service:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 2

    .line 66
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/qtproject/qt/android/QtNative;->m_activity:Ljava/lang/ref/WeakReference;

    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setApplicationState(I)V
    .locals 3

    .line 236
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    iput p0, v1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->state:I

    .line 238
    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    .line 239
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_lostActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 240
    invoke-static {v2}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 241
    :cond_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_lostActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 243
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->updateApplicationState(I)V

    .line 245
    sget-object p0, Lorg/qtproject/qt/android/QtNative;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->notifyAppStateDetailsChanged(Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;)V

    .line 246
    return-void

    .line 243
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 61
    sput-object p0, Lorg/qtproject/qt/android/QtNative;->m_classLoader:Ljava/lang/ClassLoader;

    .line 62
    return-void
.end method

.method public static setService(Landroid/app/Service;)V
    .locals 2

    .line 73
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/qtproject/qt/android/QtNative;->m_service:Ljava/lang/ref/WeakReference;

    .line 75
    monitor-exit v0

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setStarted(Z)V
    .locals 1

    .line 223
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    iput-boolean p0, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    .line 224
    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->notifyAppStateDetailsChanged(Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;)V

    .line 225
    return-void
.end method

.method public static native setSurface(ILjava/lang/Object;)V
.end method

.method private static setViewVisibility(Landroid/view/View;Z)V
    .locals 1

    .line 319
    new-instance v0, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Z)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 320
    return-void
.end method

.method public static startApplication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 324
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    new-instance v2, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p0}, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/qtproject/qt/android/QtThread;->run(Ljava/lang/Runnable;)V

    .line 330
    new-instance p0, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, p0}, Lorg/qtproject/qt/android/QtThread;->post(Ljava/lang/Runnable;)V

    .line 331
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->waitForServiceSetup()V

    .line 332
    sget-object p0, Lorg/qtproject/qt/android/QtNative;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    .line 333
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->notifyAppStateDetailsChanged(Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;)V

    .line 334
    monitor-exit v0

    .line 335
    return-void

    .line 334
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static native startQtAndroidPlugin(Ljava/lang/String;)Z
.end method

.method public static native startQtApplication()V
.end method

.method public static native terminateQt()V
.end method

.method static unregisterAppStateListener(Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;)V
    .locals 2

    .line 256
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_appStateListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_appStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 258
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static native updateApplicationState(I)V
.end method

.method public static native updateNativeActivity()Z
.end method

.method public static native updateWindow()V
.end method

.method public static native waitForServiceSetup()V
.end method
