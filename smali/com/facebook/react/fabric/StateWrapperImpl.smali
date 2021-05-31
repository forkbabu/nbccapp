.class public Lcom/facebook/react/fabric/StateWrapperImpl;
.super Ljava/lang/Object;
.source "StateWrapperImpl.java"

# interfaces
.implements Lcom/facebook/react/uimanager/StateWrapper;


# instance fields
.field private mFailureCallback:Ljava/lang/Runnable;

.field private final mHybridData:Lcom/facebook/jni/HybridData;

.field private mUpdateStateId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 28
    invoke-static {}, Lcom/facebook/react/fabric/FabricSoLoader;->staticInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/facebook/react/fabric/StateWrapperImpl;->mFailureCallback:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/facebook/react/fabric/StateWrapperImpl;->mUpdateStateId:I

    .line 39
    invoke-static {}, Lcom/facebook/react/fabric/StateWrapperImpl;->initHybrid()Lcom/facebook/jni/HybridData;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/fabric/StateWrapperImpl;->mHybridData:Lcom/facebook/jni/HybridData;

    return-void
.end method

.method private static native initHybrid()Lcom/facebook/jni/HybridData;
.end method


# virtual methods
.method public native getState()Lcom/facebook/react/bridge/ReadableNativeMap;
.end method

.method public updateState(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/Runnable;)V
    .locals 1

    .line 52
    iget v0, p0, Lcom/facebook/react/fabric/StateWrapperImpl;->mUpdateStateId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/react/fabric/StateWrapperImpl;->mUpdateStateId:I

    .line 53
    iput-object p2, p0, Lcom/facebook/react/fabric/StateWrapperImpl;->mFailureCallback:Ljava/lang/Runnable;

    .line 54
    check-cast p1, Lcom/facebook/react/bridge/NativeMap;

    invoke-virtual {p0, p1, p0, v0}, Lcom/facebook/react/fabric/StateWrapperImpl;->updateStateWithFailureCallbackImpl(Lcom/facebook/react/bridge/NativeMap;Ljava/lang/Object;I)V

    return-void
.end method

.method public updateStateFailed(I)V
    .locals 1

    .line 62
    iget v0, p0, Lcom/facebook/react/fabric/StateWrapperImpl;->mUpdateStateId:I

    if-eq p1, v0, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/facebook/react/fabric/StateWrapperImpl;->mFailureCallback:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/facebook/react/fabric/StateWrapperImpl;->mFailureCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 69
    invoke-static {p1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public native updateStateImpl(Lcom/facebook/react/bridge/NativeMap;)V
.end method

.method public native updateStateWithFailureCallbackImpl(Lcom/facebook/react/bridge/NativeMap;Ljava/lang/Object;I)V
.end method
