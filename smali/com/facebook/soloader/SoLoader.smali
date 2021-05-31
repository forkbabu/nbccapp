.class public Lcom/facebook/soloader/SoLoader;
.super Ljava/lang/Object;
.source "SoLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/SoLoader$Api14Utils;,
        Lcom/facebook/soloader/SoLoader$WrongAbiError;,
        Lcom/facebook/soloader/SoLoader$TestOnlyUtils;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final SOLOADER_ALLOW_ASYNC_INIT:I = 0x2

.field public static final SOLOADER_DISABLE_BACKUP_SOSOURCE:I = 0x8

.field public static final SOLOADER_DONT_TREAT_AS_SYSTEMAPP:I = 0x20

.field public static final SOLOADER_ENABLE_EXOPACKAGE:I = 0x1

.field public static final SOLOADER_LOOK_IN_ZIP:I = 0x4

.field public static final SOLOADER_SKIP_MERGED_JNI_ONLOAD:I = 0x10

.field private static final SO_STORE_NAME_MAIN:Ljava/lang/String; = "lib-main"

.field private static final SO_STORE_NAME_SPLIT:Ljava/lang/String; = "lib-"

.field static final SYSTRACE_LIBRARY_LOADING:Z

.field static final TAG:Ljava/lang/String; = "SoLoader"

.field private static isSystemApp:Z

.field private static sApplicationSoSource:Lcom/facebook/soloader/ApplicationSoSource;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static sBackupSoSources:[Lcom/facebook/soloader/UnpackingSoSource;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static sFlags:I

.field private static final sLoadedAndMergedLibraries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLoadedLibraries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLoadingLibraries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static sSoSources:[Lcom/facebook/soloader/SoSource;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static final sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static volatile sSoSourcesVersion:I

.field private static sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 86
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x0

    .line 94
    sput-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    const/4 v1, 0x0

    .line 97
    sput v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:I

    .line 114
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/HashSet;

    .line 121
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/facebook/soloader/SoLoader;->sLoadingLibraries:Ljava/util/Map;

    .line 123
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 124
    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/facebook/soloader/SoLoader;->sLoadedAndMergedLibraries:Ljava/util/Set;

    .line 127
    sput-object v0, Lcom/facebook/soloader/SoLoader;->sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    .line 173
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x12

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 178
    :catch_0
    :cond_0
    sput-boolean v1, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1

    .line 74
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$102([Lcom/facebook/soloader/SoSource;)[Lcom/facebook/soloader/SoSource;
    .locals 0

    .line 74
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    return-object p0
.end method

.method static synthetic access$208()I
    .locals 2

    .line 74
    sget v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:I

    return v0
.end method

.method static synthetic access$300()Ljava/util/HashSet;
    .locals 1

    .line 74
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Map;
    .locals 1

    .line 74
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sLoadingLibraries:Ljava/util/Map;

    return-object v0
.end method

.method public static areSoSourcesAbisSupported()Z
    .locals 12

    .line 1008
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1010
    :try_start_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1031
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v2

    .line 1014
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v0

    .line 1015
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, v1, v4

    .line 1016
    invoke-virtual {v5}, Lcom/facebook/soloader/SoSource;->getSoSourceAbis()[Ljava/lang/String;

    move-result-object v5

    .line 1017
    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1019
    :goto_3
    array-length v11, v0

    if-ge v9, v11, :cond_1

    if-nez v10, :cond_1

    .line 1020
    aget-object v10, v0, v9

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_1
    if-nez v10, :cond_2

    const-string v0, "SoLoader"

    .line 1023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "abi not supported: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1031
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1032
    throw v0
.end method

.method private static assertInitialized()V
    .locals 2

    .line 936
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 937
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SoLoader.init() not yet called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkIfSystemApp(Landroid/content/Context;I)Z
    .locals 1

    and-int/lit8 p1, p1, 0x20

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    .line 456
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x81

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static deinitForTest()V
    .locals 1

    const/4 v0, 0x0

    .line 468
    invoke-static {v0}, Lcom/facebook/soloader/SoLoader$TestOnlyUtils;->setSoSources([Lcom/facebook/soloader/SoSource;)V

    return-void
.end method

.method private static doLoadLibraryBySoName(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V
    .locals 12
    .param p2    # Landroid/os/StrictMode$ThreadPolicy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    const-string v0, " result: "

    .line 810
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 812
    :try_start_0
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v3, "couldn\'t find DSO to load: "

    const-string v4, "SoLoader"

    if-eqz v2, :cond_f

    .line 817
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_0

    .line 824
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p2

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 828
    :goto_0
    sget-boolean v7, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v7, :cond_1

    const-string v7, "SoLoader.loadLibrary["

    const-string v8, "]"

    .line 829
    invoke-static {v7, p0, v8}, Lcom/facebook/soloader/Api18TraceUtils;->beginTraceSection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v7, 0x3

    .line 834
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_1
    if-nez v1, :cond_4

    .line 836
    :try_start_2
    sget-object v9, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v10, v9

    if-ge v8, v10, :cond_4

    .line 837
    aget-object v9, v9, v8

    .line 838
    invoke-virtual {v9, p0, p1, p2}, Lcom/facebook/soloader/SoSource;->loadLibrary(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I

    move-result v1

    if-ne v1, v7, :cond_3

    .line 839
    sget-object v9, Lcom/facebook/soloader/SoLoader;->sBackupSoSources:[Lcom/facebook/soloader/UnpackingSoSource;

    if-eqz v9, :cond_3

    .line 841
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Trying backup SoSource for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    sget-object v8, Lcom/facebook/soloader/SoLoader;->sBackupSoSources:[Lcom/facebook/soloader/UnpackingSoSource;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_4

    aget-object v11, v8, v10

    .line 843
    invoke-virtual {v11, p0}, Lcom/facebook/soloader/UnpackingSoSource;->prepare(Ljava/lang/String;)V

    .line 844
    invoke-virtual {v11, p0, p1, p2}, Lcom/facebook/soloader/UnpackingSoSource;->loadLibrary(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v11, v2, :cond_2

    move v1, v11

    goto :goto_3

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    move v5, v1

    .line 854
    :try_start_3
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 855
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 854
    :cond_4
    :goto_3
    :try_start_4
    sget-object p1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 859
    sget-boolean v2, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v2, :cond_5

    .line 860
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    :cond_5
    if-eqz v6, :cond_6

    .line 864
    invoke-static {p2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_6
    if-eqz v1, :cond_7

    if-ne v1, v7, :cond_c

    .line 868
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 880
    :goto_4
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length p0, p0

    if-ge v5, p0, :cond_8

    const-string p0, "\n\tSoSource "

    .line 881
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    aget-object p0, p0, v5

    invoke-virtual {p0}, Lcom/facebook/soloader/SoSource;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 883
    :cond_8
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sApplicationSoSource:Lcom/facebook/soloader/ApplicationSoSource;

    if-eqz p0, :cond_9

    .line 884
    invoke-virtual {p0}, Lcom/facebook/soloader/ApplicationSoSource;->getUpdatedContext()Landroid/content/Context;

    move-result-object p0

    .line 886
    invoke-static {p0}, Lcom/facebook/soloader/ApplicationSoSource;->getNativeLibDirFromContext(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string p1, "\n\tNative lib dir: "

    .line 887
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    .line 889
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    :cond_9
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 893
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 894
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 895
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    new-instance p1, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {p1, p0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    move v5, v1

    goto :goto_5

    :catchall_2
    move-exception p1

    .line 859
    :goto_5
    sget-boolean v1, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v1, :cond_a

    .line 860
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    :cond_a
    if-eqz v6, :cond_b

    .line 864
    invoke-static {p2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_b
    if-eqz v5, :cond_d

    if-ne v5, v7, :cond_c

    goto :goto_6

    :cond_c
    return-void

    .line 868
    :cond_d
    :goto_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_e

    .line 872
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_e
    const-string v1, " caused by: "

    .line 874
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 893
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 894
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 895
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    new-instance p1, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {p1, p0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 813
    :cond_f
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not load: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " because no SO source exists"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    new-instance p1, Ljava/lang/UnsatisfiedLinkError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    .line 817
    sget-object p1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 818
    throw p0
.end method

.method public static getLibraryDependencies(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 561
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 563
    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v1, :cond_0

    .line 564
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 565
    aget-object v1, v2, v0

    .line 566
    invoke-virtual {v1, p0}, Lcom/facebook/soloader/SoSource;->getLibraryDependencies(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 570
    :cond_0
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 571
    throw p0
.end method

.method public static getLibraryPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 535
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 537
    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v1, :cond_0

    .line 538
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 539
    aget-object v1, v2, v0

    .line 540
    invoke-virtual {v1, p0}, Lcom/facebook/soloader/SoSource;->getLibraryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 544
    :cond_0
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 545
    throw p0
.end method

.method private static getNativeLoadRuntimeMethod()Ljava/lang/reflect/Method;
    .locals 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 432
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-le v0, v2, :cond_0

    goto :goto_1

    .line 438
    :cond_0
    :try_start_0
    const-class v0, Ljava/lang/Runtime;

    const-string v2, "nativeLoad"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const-class v4, Ljava/lang/ClassLoader;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v4

    .line 439
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 442
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v2, "SoLoader"

    const-string v3, "Cannot get nativeLoad method"

    .line 445
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-object v1
.end method

.method public static getSoSourcesVersion()I
    .locals 1

    .line 951
    sget v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:I

    return v0
.end method

.method public static init(Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 182
    invoke-static {p0, p1, v0}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;ILcom/facebook/soloader/SoFileLoader;)V

    return-void
.end method

.method public static init(Landroid/content/Context;ILcom/facebook/soloader/SoFileLoader;)V
    .locals 2
    .param p2    # Lcom/facebook/soloader/SoFileLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 198
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/soloader/SoLoader;->checkIfSystemApp(Landroid/content/Context;I)Z

    move-result v1

    sput-boolean v1, Lcom/facebook/soloader/SoLoader;->isSystemApp:Z

    .line 199
    invoke-static {p2}, Lcom/facebook/soloader/SoLoader;->initSoLoader(Lcom/facebook/soloader/SoFileLoader;)V

    .line 200
    invoke-static {p0, p1, p2}, Lcom/facebook/soloader/SoLoader;->initSoSources(Landroid/content/Context;ILcom/facebook/soloader/SoFileLoader;)V

    .line 201
    invoke-static {}, Lcom/facebook/soloader/nativeloader/NativeLoader;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_0

    .line 202
    new-instance p0, Lcom/facebook/soloader/NativeLoaderToSoLoaderDelegate;

    invoke-direct {p0}, Lcom/facebook/soloader/NativeLoaderToSoLoaderDelegate;-><init>()V

    invoke-static {p0}, Lcom/facebook/soloader/nativeloader/NativeLoader;->init(Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 206
    throw p0
.end method

.method public static init(Landroid/content/Context;Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 212
    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 214
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static declared-synchronized initSoLoader(Lcom/facebook/soloader/SoFileLoader;)V
    .locals 7
    .param p0    # Lcom/facebook/soloader/SoFileLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-class v0, Lcom/facebook/soloader/SoLoader;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 351
    :try_start_0
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit v0

    return-void

    .line 355
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 356
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->getNativeLoadRuntimeMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 p0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 361
    invoke-static {}, Lcom/facebook/soloader/SoLoader$Api14Utils;->getClassLoaderLdLoadLibrary()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    move-object v3, p0

    .line 362
    invoke-static {v3}, Lcom/facebook/soloader/SoLoader;->makeNonZipPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 364
    new-instance p0, Lcom/facebook/soloader/SoLoader$1;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/soloader/SoLoader$1;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Runtime;Ljava/lang/reflect/Method;)V

    sput-object p0, Lcom/facebook/soloader/SoLoader;->sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static initSoSources(Landroid/content/Context;ILcom/facebook/soloader/SoFileLoader;)V
    .locals 13
    .param p2    # Lcom/facebook/soloader/SoFileLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "init exiting"

    const-string v0, "SoLoader"

    .line 220
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 222
    :try_start_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-nez v1, :cond_a

    const-string v1, "init start"

    .line 223
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sput p1, Lcom/facebook/soloader/SoLoader;->sFlags:I

    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "LD_LIBRARY_PATH"

    .line 232
    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 235
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->is64Bit()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/vendor/lib64:/system/lib64"

    goto :goto_0

    :cond_0
    const-string v2, "/vendor/lib:/system/lib"

    :cond_1
    :goto_0
    const-string v3, ":"

    .line 238
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 242
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adding system library source: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    new-instance v6, Lcom/facebook/soloader/DirectorySoSource;

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/facebook/soloader/DirectorySoSource;-><init>(Ljava/io/File;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    if-eqz p0, :cond_8

    and-int/2addr p1, v2

    const-string v3, "lib-main"

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    .line 260
    :try_start_1
    sput-object v5, Lcom/facebook/soloader/SoLoader;->sBackupSoSources:[Lcom/facebook/soloader/UnpackingSoSource;

    const-string p1, "adding exo package source: lib-main"

    .line 261
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance p1, Lcom/facebook/soloader/ExoSoSource;

    invoke-direct {p1, p0, v3}, Lcom/facebook/soloader/ExoSoSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 265
    :cond_3
    sget-boolean p1, Lcom/facebook/soloader/SoLoader;->isSystemApp:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_3

    .line 276
    :cond_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-gt p1, v6, :cond_5

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 280
    :goto_2
    new-instance v6, Lcom/facebook/soloader/ApplicationSoSource;

    invoke-direct {v6, p0, p1}, Lcom/facebook/soloader/ApplicationSoSource;-><init>(Landroid/content/Context;I)V

    sput-object v6, Lcom/facebook/soloader/SoLoader;->sApplicationSoSource:Lcom/facebook/soloader/ApplicationSoSource;

    .line 281
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adding application source: "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/facebook/soloader/SoLoader;->sApplicationSoSource:Lcom/facebook/soloader/ApplicationSoSource;

    invoke-virtual {v6}, Lcom/facebook/soloader/ApplicationSoSource;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget-object p1, Lcom/facebook/soloader/SoLoader;->sApplicationSoSource:Lcom/facebook/soloader/ApplicationSoSource;

    invoke-virtual {v1, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 285
    :goto_3
    sget v6, Lcom/facebook/soloader/SoLoader;->sFlags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_6

    .line 286
    sput-object v5, Lcom/facebook/soloader/SoLoader;->sBackupSoSources:[Lcom/facebook/soloader/UnpackingSoSource;

    goto/16 :goto_5

    .line 289
    :cond_6
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 291
    new-instance v7, Lcom/facebook/soloader/ApkSoSource;

    invoke-direct {v7, p0, v5, v3, p1}, Lcom/facebook/soloader/ApkSoSource;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    .line 293
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adding backup source from : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/facebook/soloader/ApkSoSource;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v3, v5, :cond_7

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v3, :cond_7

    const-string v3, "adding backup sources from split apks"

    .line 298
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_4
    if-ge v7, v5, :cond_7

    aget-object v9, v3, v7

    .line 301
    new-instance v10, Lcom/facebook/soloader/ApkSoSource;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "lib-"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, p0, v11, v8, p1}, Lcom/facebook/soloader/ApkSoSource;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    .line 307
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adding backup source: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/facebook/soloader/ApkSoSource;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move v8, v12

    goto :goto_4

    .line 312
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/facebook/soloader/UnpackingSoSource;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/facebook/soloader/UnpackingSoSource;

    sput-object p0, Lcom/facebook/soloader/SoLoader;->sBackupSoSources:[Lcom/facebook/soloader/UnpackingSoSource;

    .line 313
    invoke-virtual {v1, v4, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 318
    :cond_8
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/facebook/soloader/SoSource;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/facebook/soloader/SoSource;

    .line 319
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->makePrepareFlags()I

    move-result p1

    .line 320
    array-length v1, p0

    :goto_6
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_9

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preparing SO source: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    aget-object v1, p0, v3

    invoke-virtual {v1, p1}, Lcom/facebook/soloader/SoSource;->prepare(I)V

    move v1, v3

    goto :goto_6

    .line 324
    :cond_9
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    .line 325
    sget p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:I

    add-int/2addr p0, v2

    sput p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:I

    .line 326
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "init finish: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " SO sources prepared"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    :cond_a
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    .line 329
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-object p1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 331
    throw p0
.end method

.method public static isInitialized()Z
    .locals 2

    .line 942
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 944
    :try_start_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 946
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 947
    throw v0
.end method

.method public static loadLibrary(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 577
    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static loadLibrary(Ljava/lang/String;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 590
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 592
    :try_start_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    const-string v1, "http://www.android.com/"

    const-string v3, "java.vendor.url"

    .line 596
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->assertInitialized()V

    goto :goto_1

    .line 601
    :cond_0
    const-class p1, Lcom/facebook/soloader/SoLoader;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 602
    :try_start_1
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 604
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    if-eqz v2, :cond_1

    .line 605
    invoke-interface {v2, p0}, Lcom/facebook/soloader/SystemLoadLibraryWrapper;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 607
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 610
    :cond_2
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :catchall_0
    move-exception p0

    .line 611
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 615
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 620
    sget-boolean v0, Lcom/facebook/soloader/SoLoader;->isSystemApp:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    if-eqz v0, :cond_4

    .line 621
    invoke-interface {v0, p0}, Lcom/facebook/soloader/SystemLoadLibraryWrapper;->loadLibrary(Ljava/lang/String;)V

    return v2

    .line 625
    :cond_4
    invoke-static {p0}, Lcom/facebook/soloader/MergedSoMapping;->mapLibName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    move-object v1, v0

    goto :goto_2

    :cond_5
    move-object v1, p0

    .line 630
    :goto_2
    invoke-static {v1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 629
    invoke-static {v1, p0, v0, p1, v2}, Lcom/facebook/soloader/SoLoader;->loadLibraryBySoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z

    move-result p0

    return p0

    :catchall_1
    move-exception p0

    .line 615
    sget-object p1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 616
    throw p0
.end method

.method static loadLibraryBySoName(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V
    .locals 1

    const/4 v0, 0x0

    .line 635
    invoke-static {p0, v0, v0, p1, p2}, Lcom/facebook/soloader/SoLoader;->loadLibraryBySoNameImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z

    return-void
.end method

.method private static loadLibraryBySoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/StrictMode$ThreadPolicy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 649
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/soloader/SoLoader;->loadLibraryBySoNameImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 651
    sget v3, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:I

    .line 652
    sget-object v4, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 654
    :try_start_1
    sget-object v4, Lcom/facebook/soloader/SoLoader;->sApplicationSoSource:Lcom/facebook/soloader/ApplicationSoSource;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    sget-object v4, Lcom/facebook/soloader/SoLoader;->sApplicationSoSource:Lcom/facebook/soloader/ApplicationSoSource;

    invoke-virtual {v4}, Lcom/facebook/soloader/ApplicationSoSource;->checkAndMaybeUpdate()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "SoLoader"

    .line 655
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sApplicationSoSource updated during load: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", attempting load again."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    sget v4, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:I

    add-int/2addr v4, v5

    sput v4, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 664
    :goto_0
    sget-object v4, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 667
    sget v4, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:I

    if-eq v4, v3, :cond_2

    :goto_1
    if-nez v5, :cond_0

    return v1

    .line 669
    :cond_2
    throw v2

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 662
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 664
    :goto_2
    sget-object p1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 665
    throw p0
.end method

.method private static loadLibraryBySoNameImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/StrictMode$ThreadPolicy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 686
    const-class v0, Lcom/facebook/soloader/SoLoader;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sLoadedAndMergedLibraries:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 692
    :cond_0
    monitor-enter v0

    .line 693
    :try_start_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-nez p2, :cond_1

    .line 696
    monitor-exit v0

    return v2

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 700
    :goto_0
    sget-object v5, Lcom/facebook/soloader/SoLoader;->sLoadingLibraries:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 701
    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 703
    :cond_3
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 704
    invoke-interface {v5, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v6

    .line 706
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 708
    monitor-enter v5

    if-nez v3, :cond_7

    .line 710
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 711
    :try_start_2
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez p2, :cond_4

    .line 715
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return v2

    :cond_4
    const/4 v3, 0x1

    .line 720
    :cond_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v3, :cond_7

    :try_start_5
    const-string v6, "SoLoader"

    .line 724
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "About to load: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-static {p0, p3, p4}, Lcom/facebook/soloader/SoLoader;->doLoadLibraryBySoName(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 734
    :try_start_6
    monitor-enter v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    const-string p4, "SoLoader"

    .line 735
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loaded: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 737
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p0

    :catch_0
    move-exception p0

    .line 727
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string p2, "unexpected e_machine:"

    .line 728
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "unexpected e_machine:"

    .line 729
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 730
    new-instance p2, Lcom/facebook/soloader/SoLoader$WrongAbiError;

    invoke-direct {p2, p0, p1}, Lcom/facebook/soloader/SoLoader$WrongAbiError;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw p2

    .line 732
    :cond_6
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_1
    move-exception p0

    .line 720
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p0

    :cond_7
    :goto_2
    and-int/lit8 p3, p3, 0x10

    if-nez p3, :cond_b

    .line 743
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    sget-object p3, Lcom/facebook/soloader/SoLoader;->sLoadedAndMergedLibraries:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    const/4 v2, 0x1

    :cond_8
    if-eqz p2, :cond_b

    if-nez v2, :cond_b

    .line 745
    sget-boolean p2, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz p2, :cond_9

    const-string p3, "MergedSoMapping.invokeJniOnload["

    const-string p4, "]"

    .line 746
    invoke-static {p3, p1, p4}, Lcom/facebook/soloader/Api18TraceUtils;->beginTraceSection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_9
    :try_start_b
    const-string p3, "SoLoader"

    .line 749
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "About to merge: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-static {p1}, Lcom/facebook/soloader/MergedSoMapping;->invokeJniOnload(Ljava/lang/String;)V

    .line 751
    sget-object p3, Lcom/facebook/soloader/SoLoader;->sLoadedAndMergedLibraries:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz p2, :cond_b

    .line 779
    :try_start_c
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p2

    .line 770
    :try_start_d
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to call JNI_OnLoad from \'"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', which has been merged into \'"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'.  See comment for details."

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 778
    :goto_3
    :try_start_e
    sget-boolean p1, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz p1, :cond_a

    .line 779
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    .line 781
    :cond_a
    throw p0

    .line 784
    :cond_b
    :goto_4
    monitor-exit v5

    xor-int/lit8 p0, v3, 0x1

    return p0

    :catchall_3
    move-exception p0

    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 706
    :try_start_f
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw p0
.end method

.method public static makeLdLibraryPath()Ljava/lang/String;
    .locals 6

    const-string v0, "SoLoader"

    .line 982
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 984
    :try_start_0
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->assertInitialized()V

    const-string v1, "makeLdLibraryPath"

    .line 985
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 987
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-eqz v2, :cond_0

    .line 989
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 990
    invoke-virtual {v5, v1}, Lcom/facebook/soloader/SoSource;->addToLdLibraryPath(Ljava/util/Collection;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v2, ":"

    .line 993
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 994
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeLdLibraryPath final path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 998
    throw v0
.end method

.method public static makeNonZipPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ":"

    .line 907
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 908
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 909
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    const-string v5, "!"

    .line 910
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 913
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 916
    :cond_2
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static makePrepareFlags()I
    .locals 2

    .line 338
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 340
    :try_start_0
    sget v1, Lcom/facebook/soloader/SoLoader;->sFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 345
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 346
    throw v0
.end method

.method public static prependSoSource(Lcom/facebook/soloader/SoSource;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "SoLoader"

    .line 961
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 963
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepending to SO sources: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->assertInitialized()V

    .line 965
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->makePrepareFlags()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/facebook/soloader/SoSource;->prepare(I)V

    .line 966
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v3, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Lcom/facebook/soloader/SoSource;

    const/4 v5, 0x0

    .line 967
    aput-object p0, v3, v5

    .line 968
    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 969
    sput-object v3, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    .line 970
    sget v2, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:I

    add-int/2addr v2, v4

    sput v2, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:I

    .line 971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepended to SO sources: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 974
    throw p0
.end method

.method public static setInTestMode()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/soloader/SoSource;

    .line 463
    new-instance v1, Lcom/facebook/soloader/NoopSoSource;

    invoke-direct {v1}, Lcom/facebook/soloader/NoopSoSource;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader$TestOnlyUtils;->setSoSources([Lcom/facebook/soloader/SoSource;)V

    return-void
.end method

.method public static setSystemLoadLibraryWrapper(Lcom/facebook/soloader/SystemLoadLibraryWrapper;)V
    .locals 0

    .line 511
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    return-void
.end method

.method public static unpackLibraryAndDependencies(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 797
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->assertInitialized()V

    .line 799
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/soloader/SoLoader;->unpackLibraryBySoName(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 801
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static unpackLibraryBySoName(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 920
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 922
    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 923
    invoke-virtual {v3, p0}, Lcom/facebook/soloader/SoSource;->unpackLibrary(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 929
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 932
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p0

    .line 929
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 930
    throw p0
.end method
