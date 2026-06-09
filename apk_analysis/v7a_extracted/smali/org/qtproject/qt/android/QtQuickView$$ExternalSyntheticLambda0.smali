.class public final synthetic Lorg/qtproject/qt/android/QtQuickView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtQuickView;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtQuickView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtQuickView$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtQuickView;

    iput p2, p0, Lorg/qtproject/qt/android/QtQuickView$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/qtproject/qt/android/QtQuickView$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtQuickView;

    iget v1, p0, Lorg/qtproject/qt/android/QtQuickView$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtQuickView;->lambda$handleStatusChange$1$org-qtproject-qt-android-QtQuickView(I)V

    return-void
.end method
