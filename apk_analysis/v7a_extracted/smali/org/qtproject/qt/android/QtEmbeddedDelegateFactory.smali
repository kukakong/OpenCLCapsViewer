.class Lorg/qtproject/qt/android/QtEmbeddedDelegateFactory;
.super Ljava/lang/Object;
.source "QtEmbeddedDelegateFactory.java"


# static fields
.field private static final m_delegateLock:Ljava/lang/Object;

.field private static final m_delegates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/app/Activity;",
            "Lorg/qtproject/qt/android/QtEmbeddedDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/QtEmbeddedDelegateFactory;->m_delegates:Ljava/util/HashMap;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/QtEmbeddedDelegateFactory;->m_delegateLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/app/Activity;)Lorg/qtproject/qt/android/QtEmbeddedDelegate;
    .locals 3

    .line 24
    sget-object v0, Lorg/qtproject/qt/android/QtEmbeddedDelegateFactory;->m_delegateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/QtEmbeddedDelegateFactory;->m_delegates:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 26
    new-instance v2, Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    invoke-direct {v2, p0}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    monitor-exit v0

    return-object p0

    .line 29
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getActivityDelegate(Landroid/app/Activity;)Lorg/qtproject/qt/android/QtActivityDelegateBase;
    .locals 2

    .line 18
    sget-object v0, Lorg/qtproject/qt/android/QtEmbeddedDelegateFactory;->m_delegateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/QtEmbeddedDelegateFactory;->m_delegates:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;

    monitor-exit v0

    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static remove(Landroid/app/Activity;)V
    .locals 2

    .line 33
    sget-object v0, Lorg/qtproject/qt/android/QtEmbeddedDelegateFactory;->m_delegateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/QtEmbeddedDelegateFactory;->m_delegates:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 35
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
