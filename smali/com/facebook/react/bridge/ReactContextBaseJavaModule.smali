.class public abstract Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.super Lcom/facebook/react/bridge/BaseJavaModule;
.source "ReactContextBaseJavaModule.java"


# instance fields
.field private final mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/facebook/react/bridge/BaseJavaModule;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/facebook/react/bridge/BaseJavaModule;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method


# virtual methods
.method protected final getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected final getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v1, "Tried to get ReactApplicationContext even though NativeModule wasn\'t instantiated with one"

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object v0
.end method

.method protected final getReactApplicationContextIfActiveOrWarn()Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 56
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->isBridgeless()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Catalyst Instance has already disappeared: requested by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v0, "ReactContextBaseJavaModule"

    invoke-static {v0, v1}, Lcom/facebook/react/bridge/ReactSoftException;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object v0
.end method
