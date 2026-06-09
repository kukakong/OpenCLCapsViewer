.class public Lorg/qtproject/qt/android/QtThread;
.super Ljava/lang/Object;
.source "QtThread.java"


# instance fields
.field private m_exit:Z

.field private final m_pendingRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final m_qtThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtThread;->m_pendingRunnables:Ljava/util/ArrayList;

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtThread;->m_exit:Z

    .line 12
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/qtproject/qt/android/QtThread$1;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/QtThread$1;-><init>(Lorg/qtproject/qt/android/QtThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    .line 34
    const-string v1, "qtMainLoopThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt/android/QtThread;)Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lorg/qtproject/qt/android/QtThread;->m_exit:Z

    return p0
.end method

.method static synthetic access$100(Lorg/qtproject/qt/android/QtThread;)Ljava/lang/Thread;
    .locals 0

    .line 9
    iget-object p0, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$200(Lorg/qtproject/qt/android/QtThread;)Ljava/util/ArrayList;
    .locals 0

    .line 9
    iget-object p0, p0, Lorg/qtproject/qt/android/QtThread;->m_pendingRunnables:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic lambda$run$0(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .line 57
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 58
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 59
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 2

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtThread;->m_exit:Z

    .line 72
    iget-object v0, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 74
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :try_start_1
    iget-object v0, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 80
    :goto_0
    return-void

    .line 74
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lorg/qtproject/qt/android/QtThread;->m_pendingRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object p1, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 42
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run(Ljava/lang/Runnable;)V
    .locals 4

    .line 54
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 55
    iget-object v1, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v2, p0, Lorg/qtproject/qt/android/QtThread;->m_pendingRunnables:Ljava/util/ArrayList;

    new-instance v3, Lorg/qtproject/qt/android/QtThread$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v0}, Lorg/qtproject/qt/android/QtThread$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object p1, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 61
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    goto :goto_0

    .line 64
    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 67
    :goto_0
    return-void

    .line 61
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public sleep(I)V
    .locals 2

    .line 47
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 48
    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 51
    :goto_0
    return-void
.end method
