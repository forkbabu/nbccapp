.class public Lcom/facebook/react/uimanager/FabricViewStateManager;
.super Ljava/lang/Object;
.source "FabricViewStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/FabricViewStateManager$StateUpdateCallback;,
        Lcom/facebook/react/uimanager/FabricViewStateManager$HasFabricViewStateManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FabricViewStateManager"


# instance fields
.field private mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/facebook/react/uimanager/FabricViewStateManager;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/uimanager/FabricViewStateManager;Lcom/facebook/react/uimanager/StateWrapper;Lcom/facebook/react/uimanager/FabricViewStateManager$StateUpdateCallback;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/FabricViewStateManager;->setState(Lcom/facebook/react/uimanager/StateWrapper;Lcom/facebook/react/uimanager/FabricViewStateManager$StateUpdateCallback;I)V

    return-void
.end method

.method private setState(Lcom/facebook/react/uimanager/StateWrapper;Lcom/facebook/react/uimanager/FabricViewStateManager$StateUpdateCallback;I)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "FabricViewStateManager"

    const-string p2, "setState called without a StateWrapper"

    .line 58
    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/FabricViewStateManager;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x3c

    if-le p3, v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 71
    sget-boolean v1, Lcom/facebook/react/config/ReactFeatureFlags;->enableExperimentalStateUpdateRetry:Z

    if-eqz v1, :cond_3

    .line 72
    new-instance v0, Lcom/facebook/react/uimanager/FabricViewStateManager$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/facebook/react/uimanager/FabricViewStateManager$1;-><init>(Lcom/facebook/react/uimanager/FabricViewStateManager;ILcom/facebook/react/uimanager/StateWrapper;Lcom/facebook/react/uimanager/FabricViewStateManager$StateUpdateCallback;)V

    .line 82
    :cond_3
    invoke-interface {p2}, Lcom/facebook/react/uimanager/FabricViewStateManager$StateUpdateCallback;->getStateUpdate()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    if-nez p2, :cond_4

    return-void

    .line 86
    :cond_4
    invoke-interface {p1, p2, v0}, Lcom/facebook/react/uimanager/StateWrapper;->updateState(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getState()Lcom/facebook/react/bridge/ReadableMap;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/facebook/react/uimanager/FabricViewStateManager;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/react/uimanager/StateWrapper;->getState()Lcom/facebook/react/bridge/ReadableNativeMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasStateWrapper()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/facebook/react/uimanager/FabricViewStateManager;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setState(Lcom/facebook/react/uimanager/FabricViewStateManager$StateUpdateCallback;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/facebook/react/uimanager/FabricViewStateManager;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/facebook/react/uimanager/FabricViewStateManager;->setState(Lcom/facebook/react/uimanager/StateWrapper;Lcom/facebook/react/uimanager/FabricViewStateManager$StateUpdateCallback;I)V

    return-void
.end method

.method public setStateWrapper(Lcom/facebook/react/uimanager/StateWrapper;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/facebook/react/uimanager/FabricViewStateManager;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    return-void
.end method
