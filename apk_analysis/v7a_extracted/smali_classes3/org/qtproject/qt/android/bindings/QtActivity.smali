.class public Lorg/qtproject/qt/android/bindings/QtActivity;
.super Lorg/qtproject/qt/android/QtActivityBase;
.source "QtActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 16
    invoke-super {p0, p1}, Lorg/qtproject/qt/android/QtActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 17
    return-void
.end method
