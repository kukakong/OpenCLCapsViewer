.class Lorg/qtproject/qt/android/QtEmbeddedLoader;
.super Lorg/qtproject/qt/android/QtLoader;
.source "QtEmbeddedLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QtEmbeddedLoader"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 38
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtLoader;-><init>(Landroid/content/ContextWrapper;)V

    .line 40
    iget-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 41
    const-string v0, "QT_ANDROID_THEME_DISPLAY_DPI"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/QtEmbeddedLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedLoader;->m_context:Landroid/content/ContextWrapper;

    const-string v1, "minimal"

    invoke-static {v0, v1, p1}, Lorg/qtproject/qt/android/ExtractStyle;->setup(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 43
    const-string v0, "ANDROID_STYLE_PATH"

    invoke-virtual {p0, v0, p1}, Lorg/qtproject/qt/android/QtEmbeddedLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected finish()V
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtEmbeddedDelegateFactory;->remove(Landroid/app/Activity;)V

    .line 51
    return-void
.end method
