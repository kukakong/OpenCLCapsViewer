.class public abstract Lorg/qtproject/qt/android/QtLoader;
.super Ljava/lang/Object;
.source "QtLoader.java"


# static fields
.field protected static final QtTAG:Ljava/lang/String; = "QtLoader"


# instance fields
.field protected m_applicationParameters:Ljava/lang/String;

.field private m_classLoader:Ljava/lang/ClassLoader;

.field protected final m_context:Landroid/content/ContextWrapper;

.field protected m_contextInfo:Landroid/content/pm/ComponentInfo;

.field protected m_environmentVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected m_mainLibName:Ljava/lang/String;

.field protected m_mainLibPath:Ljava/lang/String;

.field private m_nativeLibrariesDir:Ljava/lang/String;

.field private final m_packageName:Ljava/lang/String;

.field private m_preferredAbi:Ljava/lang/String;

.field private final m_resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_preferredAbi:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_nativeLibrariesDir:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_applicationParameters:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_environmentVariables:Ljava/util/HashMap;

    .line 58
    iput-object p1, p0, Lorg/qtproject/qt/android/QtLoader;->m_context:Landroid/content/ContextWrapper;

    .line 59
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    .line 60
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtLoader;->m_packageName:Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtLoader;->initClassLoader()V

    .line 63
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtLoader;->initStaticClasses()V

    .line 64
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLoader;->initContextInfo()V

    .line 65
    return-void
.end method

.method private getApplicationMetaData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 337
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 338
    return-object v1

    .line 340
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 341
    if-nez v0, :cond_1

    .line 342
    return-object v1

    .line 344
    :cond_1
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 345
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 348
    :cond_2
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 346
    :cond_3
    :goto_0
    return-object v1
.end method

.method private getBundledLibs()[Ljava/lang/String;
    .locals 4

    .line 414
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    const-string v1, "array"

    iget-object v2, p0, Lorg/qtproject/qt/android/QtLoader;->m_packageName:Ljava/lang/String;

    const-string v3, "bundled_libs"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 415
    iget-object v1, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLibrariesFullPaths(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 511
    if-nez p1, :cond_0

    .line 512
    const/4 p1, 0x0

    return-object p1

    .line 514
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 515
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 518
    const-string v2, ".so"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 519
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 523
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/qtproject/qt/android/QtLoader;->m_nativeLibrariesDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    goto :goto_0

    .line 527
    :cond_2
    return-object v0
.end method

.method private getLocalLibrariesList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    const-string v1, "array"

    iget-object v2, p0, Lorg/qtproject/qt/android/QtLoader;->m_packageName:Ljava/lang/String;

    const-string v3, "load_local_libs"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 392
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 393
    iget-object v2, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtLoader;->preferredAbiLibs([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 394
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 395
    goto :goto_0

    .line 396
    :cond_0
    return-object v1
.end method

.method private getQtLibrariesList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    const-string v1, "array"

    iget-object v2, p0, Lorg/qtproject/qt/android/QtLoader;->m_packageName:Ljava/lang/String;

    const-string v3, "qt_libs"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 368
    iget-object v1, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtLoader;->preferredAbiLibs([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getStaticInitClasses()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    const-string v1, "string"

    iget-object v2, p0, Lorg/qtproject/qt/android/QtLoader;->m_packageName:Ljava/lang/String;

    const-string v3, "static_init_classes"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 402
    iget-object v1, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 403
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 404
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 405
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 406
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 409
    :cond_1
    return-object v1
.end method

.method private getSystemLibsPrefix()Ljava/lang/String;
    .locals 4

    .line 385
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    const-string v1, "string"

    iget-object v2, p0, Lorg/qtproject/qt/android/QtLoader;->m_packageName:Ljava/lang/String;

    const-string v3, "system_libs_prefix"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 386
    iget-object v1, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initClassLoader()V
    .locals 5

    .line 196
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_context:Landroid/content/ContextWrapper;

    const-string v1, "outdex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lorg/qtproject/qt/android/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 198
    new-instance v2, Ldalvik/system/DexClassLoader;

    iget-object v3, p0, Lorg/qtproject/qt/android/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v1, v0, v4, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v2, p0, Lorg/qtproject/qt/android/QtLoader;->m_classLoader:Ljava/lang/ClassLoader;

    .line 199
    invoke-static {v2}, Lorg/qtproject/qt/android/QtNative;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 200
    return-void
.end method

.method private initStaticClasses()V
    .locals 14

    .line 150
    const-string v0, "QtLoader"

    iget-object v1, p0, Lorg/qtproject/qt/android/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 151
    instance-of v2, v1, Landroid/app/Activity;

    .line 152
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtLoader;->getStaticInitClasses()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 154
    :try_start_0
    iget-object v5, p0, Lorg/qtproject/qt/android/QtLoader;->m_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 155
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_6

    .line 157
    const-string v7, "Class "

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_0

    .line 159
    :try_start_1
    const-string v11, "setActivity"

    new-array v12, v8, [Ljava/lang/Class;

    const-class v13, Landroid/app/Activity;

    aput-object v13, v12, v10

    const-class v13, Ljava/lang/Object;

    aput-object v13, v12, v9

    invoke-virtual {v5, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 160
    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Landroid/app/Activity;

    aput-object v12, v8, v10

    aput-object p0, v8, v9

    invoke-virtual {v11, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_2

    .line 161
    :catch_0
    move-exception v8

    goto :goto_1

    :catch_1
    move-exception v8

    .line 162
    :goto_1
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " does not implement setActivity method"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_6

    .line 164
    :goto_2
    goto :goto_4

    .line 167
    :cond_0
    :try_start_3
    const-string v11, "setService"

    new-array v12, v8, [Ljava/lang/Class;

    const-class v13, Landroid/app/Service;

    aput-object v13, v12, v10

    const-class v13, Ljava/lang/Object;

    aput-object v13, v12, v9

    invoke-virtual {v5, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 168
    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Landroid/app/Service;

    aput-object v12, v8, v10

    aput-object p0, v8, v9

    invoke-virtual {v11, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_6

    .line 172
    goto :goto_4

    .line 169
    :catch_2
    move-exception v8

    goto :goto_3

    :catch_3
    move-exception v8

    .line 170
    :goto_3
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " does not implement setService method"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_6

    .line 177
    :goto_4
    :try_start_5
    const-string v8, "setContext"

    new-array v11, v9, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    aput-object v12, v11, v10

    invoke-virtual {v5, v8, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 178
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v10

    invoke-virtual {v8, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_6

    .line 182
    goto :goto_6

    .line 179
    :catch_4
    move-exception v6

    goto :goto_5

    :catch_5
    move-exception v6

    .line 180
    :goto_5
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not implement setContext method"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_6

    .line 185
    :goto_6
    goto :goto_8

    .line 183
    :catch_6
    move-exception v5

    goto :goto_7

    :catch_7
    move-exception v5

    goto :goto_7

    :catch_8
    move-exception v5

    .line 184
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not instantiate class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_8
    goto/16 :goto_0

    .line 187
    :cond_1
    return-void
.end method

.method private isBackgroundRunningBlocked()Ljava/lang/String;
    .locals 2

    .line 116
    const-string v0, "android.app.background_running"

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtLoader;->getMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const-string v0, "0"

    return-object v0

    .line 119
    :cond_0
    const-string v0, "1"

    return-object v0
.end method

.method private isBundleQtLibs()Z
    .locals 4

    .line 379
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    const-string v1, "string"

    iget-object v2, p0, Lorg/qtproject/qt/android/QtLoader;->m_packageName:Ljava/lang/String;

    const-string v3, "bundle_local_qt_libs"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 380
    iget-object v1, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private loadLibraries(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 558
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 559
    return v0

    .line 561
    :cond_0
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtLoader;->getLibrariesFullPaths(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 563
    const/4 v1, 0x1

    new-array v2, v1, [Z

    aput-boolean v1, v2, v0

    .line 564
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getQtThread()Lorg/qtproject/qt/android/QtThread;

    move-result-object v1

    new-instance v3, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v2}, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda1;-><init>(Lorg/qtproject/qt/android/QtLoader;Ljava/util/ArrayList;[Z)V

    invoke-virtual {v1, v3}, Lorg/qtproject/qt/android/QtThread;->run(Ljava/lang/Runnable;)V

    .line 574
    aget-boolean p1, v2, v0

    return p1
.end method

.method private loadLibraryHelper(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 490
    const-string v0, "\'"

    const-string v1, "QtLoader"

    .line 492
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 494
    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 495
    goto :goto_0

    .line 497
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    .line 501
    :goto_0
    move-object v2, p1

    goto :goto_1

    .line 499
    :catch_0
    move-exception v3

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t load \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    :goto_1
    return-object v2
.end method

.method private loadMainLibrary(Ljava/lang/String;)Z
    .locals 4

    .line 538
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 539
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtLoader;->getLibrariesFullPaths(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 540
    const/4 v1, 0x1

    new-array v2, v1, [Z

    aput-boolean v1, v2, v0

    .line 541
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getQtThread()Lorg/qtproject/qt/android/QtThread;

    move-result-object v1

    new-instance v3, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v2}, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/QtLoader;Ljava/lang/String;[Z)V

    invoke-virtual {v1, v3}, Lorg/qtproject/qt/android/QtThread;->run(Ljava/lang/Runnable;)V

    .line 547
    aget-boolean p1, v2, v0

    return p1
.end method

.method private parseNativeLibrariesDir()V
    .locals 7

    .line 287
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtLoader;->isBundleQtLibs()Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_1

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/qtproject/qt/android/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 292
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    array-length v2, v3

    if-lez v2, :cond_0

    .line 293
    iput-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_nativeLibrariesDir:Ljava/lang/String;

    .line 296
    :cond_0
    goto/16 :goto_0

    .line 298
    :cond_1
    const-string v0, "android.app.system_libs_prefix"

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtLoader;->getApplicationMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 302
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtLoader;->getSystemLibsPrefix()Ljava/lang/String;

    move-result-object v0

    .line 304
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "QtLoader"

    if-eqz v2, :cond_3

    .line 306
    nop

    .line 307
    const-string v0, "Using /system/lib/ as default libraries path. It looks like the app is deployed using Unbundled deployment. It may be necessary to specify the path to the directory where Qt libraries are installed using either android.app.system_libs_prefix metadata variable in your AndroidManifest.xml or QT_ANDROID_SYSTEM_LIBS_PATH in your CMakeLists.txt"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/system/lib/"

    .line 316
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 318
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    const-string v6, "System library directory "

    if-eqz v5, :cond_5

    .line 319
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    array-length v2, v4

    if-lez v2, :cond_4

    .line 320
    iput-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_nativeLibrariesDir:Ljava/lang/String;

    goto :goto_0

    .line 322
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is empty."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 324
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not exist."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_nativeLibrariesDir:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/qtproject/qt/android/QtLoader;->m_nativeLibrariesDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_nativeLibrariesDir:Ljava/lang/String;

    .line 330
    :cond_6
    return-void
.end method

.method private preferredAbiLibs([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 124
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 125
    const-string v5, ";"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 126
    iget-object v5, p0, Lorg/qtproject/qt/android/QtLoader;->m_preferredAbi:Ljava/lang/String;

    if-eqz v5, :cond_0

    aget-object v6, v4, v2

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 127
    goto :goto_1

    .line 128
    :cond_0
    aget-object v5, v4, v2

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 129
    aget-object v5, v4, v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_1
    aget-object v5, v4, v2

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    :cond_2
    iget-object p1, p0, Lorg/qtproject/qt/android/QtLoader;->m_preferredAbi:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 134
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 135
    iget-object p1, p0, Lorg/qtproject/qt/android/QtLoader;->m_preferredAbi:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1

    .line 137
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 140
    :cond_4
    sget-object p1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v1, p1

    :goto_2
    if-ge v2, v1, :cond_6

    aget-object v3, p1, v2

    .line 141
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 142
    iput-object v3, p0, Lorg/qtproject/qt/android/QtLoader;->m_preferredAbi:Ljava/lang/String;

    .line 143
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1

    .line 140
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 146
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method private useLocalQtLibs()Z
    .locals 4

    .line 373
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    const-string v1, "string"

    iget-object v2, p0, Lorg/qtproject/qt/android/QtLoader;->m_packageName:Ljava/lang/String;

    const-string v3, "use_local_qt_libs"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 374
    iget-object v1, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public appendApplicationParameters(Ljava/lang/String;)V
    .locals 2

    .line 236
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_applicationParameters:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/qtproject/qt/android/QtLoader;->m_applicationParameters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_applicationParameters:Ljava/lang/String;

    .line 241
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/qtproject/qt/android/QtLoader;->m_applicationParameters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtLoader;->m_applicationParameters:Ljava/lang/String;

    .line 242
    return-void

    .line 237
    :cond_2
    :goto_0
    return-void
.end method

.method protected extractContextMetaData()V
    .locals 2

    .line 104
    const-string v0, "QT_ANDROID_FONTS"

    const-string v1, "Roboto;Droid Sans;Droid Sans Fallback"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/QtLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    nop

    .line 106
    const-string v0, "QT_ANDROID_FONTS_MONOSPACE"

    const-string v1, "Droid Sans Mono;Droid Sans;Droid Sans Fallback"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/QtLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "QT_ANDROID_FONTS_SERIF"

    const-string v1, "Droid Serif"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/QtLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HOME"

    invoke-virtual {p0, v1, v0}, Lorg/qtproject/qt/android/QtLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMPDIR"

    invoke-virtual {p0, v1, v0}, Lorg/qtproject/qt/android/QtLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "QT_BLOCK_EVENT_LOOPS_WHEN_SUSPENDED"

    invoke-direct {p0}, Lorg/qtproject/qt/android/QtLoader;->isBackgroundRunningBlocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/QtLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "android.app.trace_location"

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtLoader;->getMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTRACE_LOCATION"

    invoke-virtual {p0, v1, v0}, Lorg/qtproject/qt/android/QtLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "android.app.arguments"

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtLoader;->getMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtLoader;->appendApplicationParameters(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method protected abstract finish()V
.end method

.method public getApplicationParameters()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_applicationParameters:Ljava/lang/String;

    return-object v0
.end method

.method public getMainLibraryPath()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_mainLibPath:Ljava/lang/String;

    return-object v0
.end method

.method protected getMetaData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 355
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 356
    return-object v1

    .line 358
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    .line 359
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 362
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 360
    :cond_2
    :goto_0
    return-object v1
.end method

.method protected initContextInfo()V
    .locals 5

    .line 80
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    instance-of v1, v0, Landroid/app/Activity;

    const/16 v2, 0x80

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    check-cast v0, Landroid/app/Activity;

    .line 83
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 82
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    goto :goto_0

    .line 84
    :cond_0
    instance-of v1, v0, Landroid/app/Service;

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v3, Landroid/content/ComponentName;

    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    goto :goto_0

    .line 89
    :cond_1
    const-string v0, "QtLoader"

    const-string v1, "Context is not an instance of Activity or Service, could not get context info for it"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLoader;->finish()V

    .line 96
    :goto_1
    return-void
.end method

.method synthetic lambda$loadLibraries$1$org-qtproject-qt-android-QtLoader(Ljava/util/ArrayList;[Z)V
    .locals 3

    .line 565
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 566
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 567
    invoke-direct {p0, v2}, Lorg/qtproject/qt/android/QtLoader;->loadLibraryHelper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 568
    aput-boolean v0, p2, v0

    .line 569
    goto :goto_1

    .line 565
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 572
    :cond_1
    :goto_1
    return-void
.end method

.method synthetic lambda$loadMainLibrary$0$org-qtproject-qt-android-QtLoader(Ljava/lang/String;[Z)V
    .locals 0

    .line 542
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtLoader;->loadLibraryHelper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtLoader;->m_mainLibPath:Ljava/lang/String;

    .line 543
    if-nez p1, :cond_0

    .line 544
    const/4 p1, 0x0

    aput-boolean p1, p2, p1

    .line 545
    :cond_0
    return-void
.end method

.method public loadQtLibraries()V
    .locals 6

    .line 422
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtLoader;->useLocalQtLibs()Z

    move-result v0

    const-string v1, "QtLoader"

    if-nez v0, :cond_0

    .line 423
    const-string v0, "Use local Qt libs is false"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLoader;->finish()V

    .line 425
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_nativeLibrariesDir:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 429
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtLoader;->parseNativeLibrariesDir()V

    .line 431
    :cond_1
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_nativeLibrariesDir:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 437
    :cond_2
    const-string v0, "QT_PLUGIN_PATH"

    iget-object v2, p0, Lorg/qtproject/qt/android/QtLoader;->m_nativeLibrariesDir:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lorg/qtproject/qt/android/QtLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v0, "QML_PLUGIN_PATH"

    iget-object v2, p0, Lorg/qtproject/qt/android/QtLoader;->m_nativeLibrariesDir:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lorg/qtproject/qt/android/QtLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtLoader;->getQtLibrariesList()Ljava/util/ArrayList;

    move-result-object v0

    .line 442
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtLoader;->getLocalLibrariesList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 444
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 446
    nop

    .line 447
    const-string v2, "QT_ANDROID_DEBUGGER_MAIN_THREAD_SLEEP_MS"

    invoke-static {v2}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 449
    :try_start_0
    invoke-static {v2}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    goto :goto_0

    .line 450
    :catch_0
    move-exception v3

    .line 454
    :cond_3
    const/16 v3, 0xbb8

    :goto_0
    if-lez v3, :cond_4

    .line 455
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sleeping for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms, helping the native debugger to settle. Use the env "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " variable to change this value."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getQtThread()Lorg/qtproject/qt/android/QtThread;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/qtproject/qt/android/QtThread;->sleep(I)V

    .line 463
    :cond_4
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtLoader;->loadLibraries(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 464
    const-string v0, "Loading Qt native libraries failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLoader;->finish()V

    .line 466
    return-void

    .line 470
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/qtproject/qt/android/QtLoader;->getBundledLibs()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/qtproject/qt/android/QtLoader;->preferredAbiLibs([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 471
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtLoader;->loadLibraries(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 472
    const-string v0, "Loading Qt bundled libraries failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLoader;->finish()V

    .line 474
    return-void

    .line 477
    :cond_6
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_mainLibName:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 478
    const-string v0, "android.app.lib_name"

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtLoader;->getMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_mainLibName:Ljava/lang/String;

    .line 480
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/qtproject/qt/android/QtLoader;->m_mainLibName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/qtproject/qt/android/QtLoader;->m_preferredAbi:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtLoader;->loadMainLibrary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 481
    const-string v0, "Loading main library failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLoader;->finish()V

    .line 484
    :cond_8
    return-void

    .line 432
    :cond_9
    :goto_1
    const-string v0, "The native libraries directory is null or empty"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLoader;->finish()V

    .line 434
    return-void
.end method

.method public setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 250
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, p2, v0}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 251
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_environmentVariables:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set environment variable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QtLoader"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    :goto_0
    return-void
.end method

.method public setEnvironmentVariables(Ljava/lang/String;)V
    .locals 6

    .line 265
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 268
    :cond_0
    const-string v0, "\t"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 270
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 271
    const-string v4, "="

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 272
    array-length v4, v3

    if-lt v4, v5, :cond_2

    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 273
    goto :goto_1

    .line 275
    :cond_1
    aget-object v4, v3, v1

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {p0, v4, v3}, Lorg/qtproject/qt/android/QtLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    :cond_3
    return-void

    .line 266
    :cond_4
    :goto_2
    return-void
.end method

.method public setMainLibraryName(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lorg/qtproject/qt/android/QtLoader;->m_mainLibName:Ljava/lang/String;

    .line 219
    return-void
.end method
