.class Lorg/qtproject/qt/android/QtClipboardManager;
.super Ljava/lang/Object;
.source "QtClipboardManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QtClipboardManager"


# instance fields
.field private m_clipboardManager:Landroid/content/ClipboardManager;

.field private final m_nativePointer:J

.field private m_usePrimaryClip:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_usePrimaryClip:Z

    .line 30
    iput-wide p2, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_nativePointer:J

    .line 31
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtClipboardManager;->registerClipboardManager(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private getClipboardUris()[Ljava/lang/String;
    .locals 4

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    :try_start_0
    iget-object v1, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    .line 219
    if-eqz v1, :cond_1

    .line 220
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 221
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 222
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    :cond_1
    goto :goto_1

    .line 225
    :catch_0
    move-exception v1

    .line 226
    const-string v2, "QtClipboardManager"

    const-string v3, "Failed to get clipboard data"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 229
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 230
    return-object v0
.end method

.method private hasClipboardMimeType(Ljava/lang/String;)Z
    .locals 4

    .line 156
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 157
    return v1

    .line 159
    :cond_0
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 161
    if-nez v0, :cond_1

    .line 162
    return v1

    .line 164
    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 165
    invoke-virtual {v0, v2}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-virtual {v3, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    const/4 p1, 0x1

    return p1

    .line 164
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    :cond_3
    return v1
.end method

.method public static hasClipboardText(Landroid/content/Context;)Z
    .locals 4

    .line 81
    nop

    .line 82
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    .line 84
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 85
    return v0

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object p0

    .line 89
    if-nez p0, :cond_1

    .line 90
    return v0

    .line 92
    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 93
    invoke-virtual {p0, v1}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    const-string v3, "text/(.*)"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    const/4 p0, 0x1

    return p0

    .line 92
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_3
    return v0
.end method

.method public static native onClipboardDataChanged(J)V
.end method

.method private registerClipboardManager(Landroid/content/Context;)V
    .locals 2

    .line 36
    if-eqz p1, :cond_0

    .line 37
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 38
    new-instance v1, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/QtClipboardManager;Landroid/content/Context;Ljava/util/concurrent/Semaphore;)V

    invoke-static {v1}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 48
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    :cond_0
    :goto_0
    return-void
.end method

.method private updatePrimaryClip(Landroid/content/ClipData;Landroid/content/Context;)V
    .locals 4

    .line 127
    :try_start_0
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_usePrimaryClip:Z

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 129
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 130
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 131
    invoke-virtual {p1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    .line 130
    invoke-virtual {v1, p2, p1}, Landroid/content/ClipData;->addItem(Landroid/content/ContentResolver;Landroid/content/ClipData$Item;)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipData;

    invoke-virtual {p1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 135
    :goto_0
    iget-object p1, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 136
    goto :goto_1

    .line 137
    :cond_1
    iget-object p2, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 138
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_usePrimaryClip:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_1
    goto :goto_2

    .line 140
    :catch_0
    move-exception p1

    .line 141
    const-string p2, "QtClipboardManager"

    const-string v0, "Failed to set clipboard data"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    :goto_2
    return-void
.end method


# virtual methods
.method public clearClipData()V
    .locals 4

    .line 58
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_1

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->clearPrimaryClip()V

    goto :goto_0

    .line 62
    :cond_0
    const-string v0, "application/octet-stream"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Landroid/content/ClipData;

    new-instance v2, Landroid/content/ClipData$Item;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-direct {v2, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    const-string v3, ""

    invoke-direct {v1, v3, v0, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 64
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 67
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_usePrimaryClip:Z

    .line 68
    return-void
.end method

.method public getClipboardHtml()Ljava/lang/String;
    .locals 3

    .line 182
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_1

    .line 185
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 185
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_1
    goto :goto_1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    const-string v1, "QtClipboardManager"

    const-string v2, "Failed to get clipboard data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public getClipboardText()Ljava/lang/String;
    .locals 3

    .line 110
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_1

    .line 113
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 113
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :cond_1
    goto :goto_1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    const-string v1, "QtClipboardManager"

    const-string v2, "Failed to get clipboard data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public hasClipboardHtml()Z
    .locals 1

    .line 175
    const-string v0, "text/html"

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtClipboardManager;->hasClipboardMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasClipboardText()Z
    .locals 1

    .line 103
    const-string v0, "text/(.*)"

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtClipboardManager;->hasClipboardMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasClipboardUri()Z
    .locals 1

    .line 209
    const-string v0, "text/uri-list"

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtClipboardManager;->hasClipboardMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$registerClipboardManager$0$org-qtproject-qt-android-QtClipboardManager()V
    .locals 2

    .line 43
    iget-wide v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_nativePointer:J

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtClipboardManager;->onClipboardDataChanged(J)V

    return-void
.end method

.method synthetic lambda$registerClipboardManager$1$org-qtproject-qt-android-QtClipboardManager(Landroid/content/Context;Ljava/util/concurrent/Semaphore;)V
    .locals 1

    .line 39
    nop

    .line 40
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iput-object p1, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    .line 41
    if-eqz p1, :cond_0

    .line 42
    new-instance v0, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda1;-><init>(Lorg/qtproject/qt/android/QtClipboardManager;)V

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 45
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 46
    return-void
.end method

.method public setClipboardHtml(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "text/html"

    invoke-static {v0, p2, p3}, Landroid/content/ClipData;->newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object p2

    .line 150
    invoke-direct {p0, p2, p1}, Lorg/qtproject/qt/android/QtClipboardManager;->updatePrimaryClip(Landroid/content/ClipData;Landroid/content/Context;)V

    .line 152
    :cond_0
    return-void
.end method

.method public setClipboardText(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "text/plain"

    invoke-static {v0, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    .line 75
    invoke-direct {p0, p2, p1}, Lorg/qtproject/qt/android/QtClipboardManager;->updatePrimaryClip(Landroid/content/ClipData;Landroid/content/Context;)V

    .line 77
    :cond_0
    return-void
.end method

.method public setClipboardUri(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 199
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 201
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 200
    const-string v1, "text/uri-list"

    invoke-static {v0, v1, p2}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p2

    .line 202
    invoke-direct {p0, p2, p1}, Lorg/qtproject/qt/android/QtClipboardManager;->updatePrimaryClip(Landroid/content/ClipData;Landroid/content/Context;)V

    .line 204
    :cond_0
    return-void
.end method
