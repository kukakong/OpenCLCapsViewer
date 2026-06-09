.class public final synthetic Lorg/qtproject/qt/android/QtQuickView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtQuickView;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtQuickView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtQuickView$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtQuickView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/qtproject/qt/android/QtQuickView$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtQuickView;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtQuickView;->lambda$setStatusChangeListener$0$org-qtproject-qt-android-QtQuickView()V

    return-void
.end method
