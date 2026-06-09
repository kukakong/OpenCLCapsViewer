.class public Lorg/qtproject/qt/android/extras/QtAndroidBinder;
.super Landroid/os/Binder;
.source "QtAndroidBinder.java"


# instance fields
.field private m_id:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    iput-wide p1, p0, Lorg/qtproject/qt/android/extras/QtAndroidBinder;->m_id:J

    .line 17
    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6

    .line 29
    monitor-enter p0

    .line 31
    :try_start_0
    iget-wide v0, p0, Lorg/qtproject/qt/android/extras/QtAndroidBinder;->m_id:J

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/qtproject/qt/android/extras/QtNative;->onTransact(JILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    monitor-exit p0

    return p1

    .line 32
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setId(J)V
    .locals 0

    .line 21
    monitor-enter p0

    .line 23
    :try_start_0
    iput-wide p1, p0, Lorg/qtproject/qt/android/extras/QtAndroidBinder;->m_id:J

    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 24
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
