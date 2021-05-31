.class public Lcom/facebook/react/modules/network/OkHttpClientProvider;
.super Ljava/lang/Object;
.source "OkHttpClientProvider.java"


# static fields
.field private static sClient:Lokhttp3/OkHttpClient;

.field private static sFactory:Lcom/facebook/react/modules/network/OkHttpClientFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 43
    sget-object v0, Lcom/facebook/react/modules/network/OkHttpClientProvider;->sFactory:Lcom/facebook/react/modules/network/OkHttpClientFactory;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0}, Lcom/facebook/react/modules/network/OkHttpClientFactory;->createNewNetworkModuleClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    invoke-static {}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->createClientBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static createClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;
    .locals 1

    .line 50
    sget-object v0, Lcom/facebook/react/modules/network/OkHttpClientProvider;->sFactory:Lcom/facebook/react/modules/network/OkHttpClientFactory;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0}, Lcom/facebook/react/modules/network/OkHttpClientFactory;->createNewNetworkModuleClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0

    .line 53
    :cond_0
    invoke-static {p0}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->createClientBuilder(Landroid/content/Context;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static createClientBuilder()Lokhttp3/OkHttpClient$Builder;
    .locals 4

    .line 58
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    .line 60
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 61
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 62
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/facebook/react/modules/network/ReactCookieJarContainer;

    invoke-direct {v1}, Lcom/facebook/react/modules/network/ReactCookieJarContainer;-><init>()V

    .line 63
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    :try_start_0
    const-string v1, "org.conscrypt.OpenSSLProvider"

    .line 66
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 70
    :catch_0
    invoke-static {v0}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->enableTls12OnPreLollipop(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static createClientBuilder(Landroid/content/Context;)Lokhttp3/OkHttpClient$Builder;
    .locals 1

    const/high16 v0, 0xa00000

    .line 76
    invoke-static {p0, v0}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->createClientBuilder(Landroid/content/Context;I)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static createClientBuilder(Landroid/content/Context;I)Lokhttp3/OkHttpClient$Builder;
    .locals 4

    .line 80
    invoke-static {}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->createClientBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    .line 86
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "http-cache"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    new-instance p0, Lokhttp3/Cache;

    int-to-long v2, p1

    invoke-direct {p0, v1, v2, v3}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    .line 89
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static enableTls12OnPreLollipop(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 0

    return-object p0
.end method

.method public static getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 36
    sget-object v0, Lcom/facebook/react/modules/network/OkHttpClientProvider;->sClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 37
    invoke-static {}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->createClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/modules/network/OkHttpClientProvider;->sClient:Lokhttp3/OkHttpClient;

    .line 39
    :cond_0
    sget-object v0, Lcom/facebook/react/modules/network/OkHttpClientProvider;->sClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static setOkHttpClientFactory(Lcom/facebook/react/modules/network/OkHttpClientFactory;)V
    .locals 0

    .line 32
    sput-object p0, Lcom/facebook/react/modules/network/OkHttpClientProvider;->sFactory:Lcom/facebook/react/modules/network/OkHttpClientFactory;

    return-void
.end method
