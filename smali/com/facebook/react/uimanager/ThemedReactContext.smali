.class public Lcom/facebook/react/uimanager/ThemedReactContext;
.super Lcom/facebook/react/bridge/ReactContext;
.source "ThemedReactContext.java"


# instance fields
.field private final mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private final mSurfaceID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/react/uimanager/ThemedReactContext;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/ReactContext;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasCatalystInstance()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/facebook/react/uimanager/ThemedReactContext;->initializeWithInstance(Lcom/facebook/react/bridge/CatalystInstance;)V

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 43
    iput-object p3, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mSurfaceID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getJSIModule(Lcom/facebook/react/bridge/JSIModuleType;)Lcom/facebook/react/bridge/JSIModule;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ThemedReactContext;->isBridgeless()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSIModule(Lcom/facebook/react/bridge/JSIModuleType;)Lcom/facebook/react/bridge/JSIModule;

    move-result-object p1

    return-object p1

    .line 88
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/react/bridge/ReactContext;->getJSIModule(Lcom/facebook/react/bridge/JSIModuleType;)Lcom/facebook/react/bridge/JSIModule;

    move-result-object p1

    return-object p1
.end method

.method public getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object v0
.end method

.method public getSurfaceID()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mSurfaceID:Ljava/lang/String;

    return-object v0
.end method

.method public hasCurrentActivity()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasCurrentActivity()Z

    move-result v0

    return v0
.end method

.method public isBridgeless()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->isBridgeless()Z

    move-result v0

    return v0
.end method

.method public removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method
