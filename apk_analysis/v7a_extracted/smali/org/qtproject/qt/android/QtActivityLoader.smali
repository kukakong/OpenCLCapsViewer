.class public Lorg/qtproject/qt/android/QtActivityLoader;
.super Lorg/qtproject/qt/android/QtLoader;
.source "QtActivityLoader.java"


# instance fields
.field private final m_activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 30
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtLoader;-><init>(Landroid/content/ContextWrapper;)V

    .line 31
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityLoader;->m_activity:Landroid/app/Activity;

    .line 33
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityLoader;->extractContextMetaData()V

    .line 34
    return-void
.end method

.method private getDecodedUtfString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 64
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 65
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private setupStyleExtraction()V
    .locals 4

    .line 87
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityLoader;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 88
    const-string v1, "QT_ANDROID_THEME_DISPLAY_DPI"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/QtActivityLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "android.app.extract_android_style"

    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/QtActivityLoader;->getMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    const-string v2, "full"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "QT_USE_ANDROID_NATIVE_STYLE"

    invoke-virtual {p0, v3, v2}, Lorg/qtproject/qt/android/QtActivityLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityLoader;->m_activity:Landroid/app/Activity;

    invoke-static {v2, v1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->setup(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v1, "ANDROID_STYLE_PATH"

    invoke-virtual {p0, v1, v0}, Lorg/qtproject/qt/android/QtActivityLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private showErrorDialog()V
    .locals 5

    .line 37
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityLoader;->m_activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 38
    const-string v0, "QtLoader"

    const-string v1, "cannot show the error dialog from a null activity object"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void

    .line 41
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityLoader;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 43
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/qtproject/qt/android/QtActivityLoader;->m_activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 44
    const-string v3, "fatal_error_msg"

    const-string v4, "string"

    invoke-virtual {v0, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 47
    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/qtproject/qt/android/QtActivityLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/QtActivityLoader$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/QtActivityLoader;)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 49
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 50
    return-void
.end method


# virtual methods
.method protected extractContextMetaData()V
    .locals 4

    .line 101
    invoke-super {p0}, Lorg/qtproject/qt/android/QtLoader;->extractContextMetaData()V

    .line 103
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "QT_USE_ANDROID_NATIVE_DIALOGS"

    invoke-virtual {p0, v2, v1}, Lorg/qtproject/qt/android/QtActivityLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityLoader;->getAppIconSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "QT_ANDROID_APP_ICON_SIZE"

    invoke-virtual {p0, v2, v1}, Lorg/qtproject/qt/android/QtActivityLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtActivityLoader;->setupStyleExtraction()V

    .line 108
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityLoader;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 109
    const-string v2, "QtLoader"

    if-nez v1, :cond_0

    .line 110
    const-string v0, "Null Intent from the current Activity."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void

    .line 114
    :cond_0
    const-string v3, "applicationArguments"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    if-eqz v3, :cond_1

    .line 116
    invoke-virtual {p0, v3}, Lorg/qtproject/qt/android/QtActivityLoader;->appendApplicationParameters(Ljava/lang/String;)V

    .line 118
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 119
    if-nez v1, :cond_2

    .line 120
    const-string v0, "Null extras from the Activity\'s intent."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 124
    :cond_2
    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityLoader;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 125
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 127
    :goto_0
    if-eqz v0, :cond_5

    .line 128
    const-string v0, "extraenvvars"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 129
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtActivityLoader;->getDecodedUtfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtActivityLoader;->setEnvironmentVariables(Ljava/lang/String;)V

    .line 133
    :cond_4
    const-string v0, "extraappparams"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 134
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtActivityLoader;->getDecodedUtfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtActivityLoader;->appendApplicationParameters(Ljava/lang/String;)V

    .line 136
    goto :goto_1

    .line 138
    :cond_5
    const-string v0, "Qt JAVA"

    const-string v1, "Not in debug mode! It is not allowed to use extra arguments in non-debug mode."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_6
    :goto_1
    return-void
.end method

.method protected finish()V
    .locals 2

    .line 54
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityLoader;->m_activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 55
    const-string v0, "QtLoader"

    const-string v1, "finish() called when activity object is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void

    .line 58
    :cond_0
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtActivityLoader;->showErrorDialog()V

    .line 59
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityLoader;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 60
    return-void
.end method

.method getAppIconSize()I
    .locals 4

    .line 70
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityLoader;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x1050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 71
    const/16 v1, 0x200

    const/16 v2, 0x24

    if-lt v0, v2, :cond_0

    if-le v0, v1, :cond_2

    .line 72
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 73
    iget-object v3, p0, Lorg/qtproject/qt/android/QtActivityLoader;->m_activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 74
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x3

    .line 75
    if-ge v0, v2, :cond_1

    .line 76
    const/16 v0, 0x24

    .line 78
    :cond_1
    if-le v0, v1, :cond_2

    .line 79
    const/16 v0, 0x200

    .line 82
    :cond_2
    return v0
.end method

.method synthetic lambda$showErrorDialog$0$org-qtproject-qt-android-QtActivityLoader(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityLoader;->finish()V

    return-void
.end method
