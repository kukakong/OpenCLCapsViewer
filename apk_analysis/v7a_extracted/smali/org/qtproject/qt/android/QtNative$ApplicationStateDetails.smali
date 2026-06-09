.class public Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;
.super Ljava/lang/Object;
.source "QtNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/QtNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplicationStateDetails"
.end annotation


# instance fields
.field isStarted:Z

.field nativePluginIntegrationReady:Z

.field state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->state:I

    .line 212
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->nativePluginIntegrationReady:Z

    .line 213
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    return-void
.end method
