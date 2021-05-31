.class public Lcom/facebook/react/fabric/FabricUIManager;
.super Ljava/lang/Object;
.source "FabricUIManager.java"

# interfaces
.implements Lcom/facebook/react/bridge/UIManager;
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;
    }
.end annotation


# static fields
.field public static final ENABLE_FABRIC_LOGS:Z

.field private static final FRAME_TIME_MS:I = 0x10

.field public static final IS_DEVELOPMENT_ENVIRONMENT:Z = false

.field private static final MAX_TIME_IN_FRAME_FOR_NON_BATCHED_OPERATIONS_MS:I = 0x8

.field private static final PRE_MOUNT_ITEMS_INITIAL_SIZE_ARRAY:I = 0xfa

.field public static final TAG:Ljava/lang/String; = "FabricUIManager"


# instance fields
.field private mBatchedExecutionTime:J

.field private mBinding:Lcom/facebook/react/fabric/Binding;

.field private mCommitStartTime:J

.field private mCurrentSynchronousCommitNumber:I

.field private volatile mDestroyed:Z

.field private final mDispatchUIFrameCallback:Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;

.field private mDispatchViewUpdatesTime:J

.field private mDriveCxxAnimations:Z

.field private final mEventBeatManager:Lcom/facebook/react/fabric/events/EventBeatManager;

.field private final mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field private mFinishTransactionCPPTime:J

.field private mFinishTransactionTime:J

.field private mInDispatch:Z

.field private mLastExecutedMountItemSurfaceId:I

.field private mLastExecutedMountItemSurfaceIdActive:Z

.field private mLayoutTime:J

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/react/bridge/UIManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMountItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/fabric/mounting/mountitems/MountItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mMountItemsLock:Ljava/lang/Object;

.field private final mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

.field private mPreMountItems:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreMountItemsLock:Ljava/lang/Object;

.field private mReDispatchCounter:I

.field private final mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private final mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/react/uimanager/ThemedReactContext;",
            ">;"
        }
    .end annotation
.end field

.field private mRunStartTime:J

.field private mViewCommandMountItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewCommandMountItemsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 105
    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->enableFabricLogs:Z

    if-nez v0, :cond_1

    .line 107
    invoke-static {}, Lcom/facebook/debug/holder/PrinterHolder;->getPrinter()Lcom/facebook/debug/holder/Printer;

    move-result-object v0

    sget-object v1, Lcom/facebook/debug/tags/ReactDebugOverlayTags;->FABRIC_UI_MANAGER:Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;

    .line 108
    invoke-interface {v0, v1}, Lcom/facebook/debug/holder/Printer;->shouldDisplayLogMessage(Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/facebook/react/fabric/FabricUIManager;->ENABLE_FABRIC_LOGS:Z

    .line 114
    invoke-static {}, Lcom/facebook/react/fabric/FabricSoLoader;->staticInit()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/events/EventDispatcher;Lcom/facebook/react/fabric/events/EventBeatManager;)V
    .locals 3

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mViewCommandMountItemsLock:Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItemsLock:Ljava/lang/Object;

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItemsLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mInDispatch:Z

    .line 132
    iput v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReDispatchCounter:I

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mViewCommandMountItems:Ljava/util/List;

    .line 138
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItems:Ljava/util/List;

    .line 145
    new-instance v1, Ljava/util/ArrayDeque;

    const/16 v2, 0xfa

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItems:Ljava/util/ArrayDeque;

    const/4 v1, -0x1

    .line 154
    iput v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mLastExecutedMountItemSurfaceId:I

    .line 157
    iput-boolean v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mLastExecutedMountItemSurfaceIdActive:Z

    .line 164
    iput-boolean v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDestroyed:Z

    .line 166
    iput-boolean v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDriveCxxAnimations:Z

    const-wide/16 v0, 0x0

    .line 168
    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mRunStartTime:J

    .line 169
    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBatchedExecutionTime:J

    .line 170
    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchViewUpdatesTime:J

    .line 171
    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mCommitStartTime:J

    .line 172
    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mLayoutTime:J

    .line 173
    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mFinishTransactionTime:J

    .line 174
    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mFinishTransactionCPPTime:J

    const/16 v0, 0x2710

    .line 180
    iput v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mCurrentSynchronousCommitNumber:I

    .line 187
    new-instance v0, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;-><init>(Lcom/facebook/react/fabric/FabricUIManager;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/fabric/FabricUIManager$1;)V

    iput-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchUIFrameCallback:Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;

    .line 188
    iput-object p1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 189
    new-instance v0, Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-direct {v0, p2}, Lcom/facebook/react/fabric/mounting/MountingManager;-><init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;)V

    iput-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    .line 190
    iput-object p3, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 191
    iput-object p4, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventBeatManager:Lcom/facebook/react/fabric/events/EventBeatManager;

    .line 192
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/react/fabric/FabricUIManager;)Lcom/facebook/react/fabric/mounting/MountingManager;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/react/fabric/FabricUIManager;ILcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/fabric/FabricUIManager;->updatePropsMountItem(ILcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/react/fabric/FabricUIManager;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDestroyed:Z

    return p0
.end method

.method static synthetic access$400(Lcom/facebook/react/fabric/FabricUIManager;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDriveCxxAnimations:Z

    return p0
.end method

.method static synthetic access$500(Lcom/facebook/react/fabric/FabricUIManager;)Lcom/facebook/react/fabric/Binding;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/Binding;

    return-object p0
.end method

.method static synthetic access$600(Lcom/facebook/react/fabric/FabricUIManager;J)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/fabric/FabricUIManager;->dispatchPreMountItems(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/facebook/react/fabric/FabricUIManager;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/facebook/react/fabric/FabricUIManager;->tryDispatchMountItems()V

    return-void
.end method

.method static synthetic access$800(Lcom/facebook/react/fabric/FabricUIManager;)Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchUIFrameCallback:Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;

    return-object p0
.end method

.method private createBatchMountItem(I[Lcom/facebook/react/fabric/mounting/mountitems/MountItem;II)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 1

    .line 447
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;-><init>(I[Lcom/facebook/react/fabric/mounting/mountitems/MountItem;II)V

    return-object v0
.end method

.method private createIntBufferBatchMountItem(I[I[Ljava/lang/Object;I)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 7

    .line 459
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 461
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;

    move-object v1, v0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;-><init>(ILcom/facebook/react/uimanager/ThemedReactContext;[I[Ljava/lang/Object;I)V

    return-object v0
.end method

.method private createMountItem(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/Object;IIZ)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 8

    .line 367
    invoke-static {p1}, Lcom/facebook/react/fabric/FabricComponents;->getFabricComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 372
    iget-object p1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 374
    new-instance p1, Lcom/facebook/react/fabric/mounting/mountitems/CreateMountItem;

    move-object v6, p3

    check-cast v6, Lcom/facebook/react/uimanager/StateWrapper;

    move-object v0, p1

    move v2, p4

    move v3, p5

    move-object v5, p2

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/fabric/mounting/mountitems/CreateMountItem;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;IILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/uimanager/StateWrapper;Z)V

    return-object p1
.end method

.method private dispatchCommandMountItem(Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;)V
    .locals 2

    .line 1125
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mViewCommandMountItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1126
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mViewCommandMountItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private dispatchMountItems()Z
    .locals 11

    const-string v0, "Caught exception executing ViewCommand: "

    .line 862
    iget v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReDispatchCounter:I

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    .line 863
    iput-wide v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBatchedExecutionTime:J

    .line 866
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/facebook/react/fabric/FabricUIManager;->mRunStartTime:J

    .line 869
    invoke-direct {p0}, Lcom/facebook/react/fabric/FabricUIManager;->getAndResetViewCommandMountItems()Ljava/util/List;

    move-result-object v1

    .line 870
    invoke-direct {p0}, Lcom/facebook/react/fabric/FabricUIManager;->getAndResetMountItems()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const-string v5, "FabricUIManager"

    if-eqz v1, :cond_5

    .line 887
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FabricUIManager::mountViews viewCommandMountItems to execute: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 887
    invoke-static {v2, v3, v6}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 891
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;

    .line 892
    sget-boolean v7, Lcom/facebook/react/fabric/FabricUIManager;->ENABLE_FABRIC_LOGS:Z

    if-eqz v7, :cond_2

    const-string v7, "dispatchMountItems: Executing viewCommandMountItem"

    .line 893
    invoke-static {v6, v7}, Lcom/facebook/react/fabric/FabricUIManager;->printMountItem(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;Ljava/lang/String;)V

    .line 896
    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-virtual {v6, v7}, Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;->execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V
    :try_end_0
    .catch Lcom/facebook/react/bridge/RetryableMountingLayerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    .line 917
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 917
    invoke-static {v5, v8}, Lcom/facebook/react/bridge/ReactSoftException;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v7

    .line 900
    invoke-virtual {v6}, Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;->getRetries()I

    move-result v8

    if-nez v8, :cond_3

    .line 901
    invoke-virtual {v6}, Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;->incrementRetries()V

    .line 902
    invoke-direct {p0, v6}, Lcom/facebook/react/fabric/FabricUIManager;->dispatchCommandMountItem(Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;)V

    goto :goto_0

    .line 910
    :cond_3
    new-instance v8, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6, v7}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 910
    invoke-static {v5, v8}, Lcom/facebook/react/bridge/ReactSoftException;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 924
    :cond_4
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 929
    :cond_5
    invoke-direct {p0}, Lcom/facebook/react/fabric/FabricUIManager;->getAndResetPreMountItems()Ljava/util/ArrayDeque;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FabricUIManager::mountViews preMountItems to execute: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 932
    invoke-static {v2, v3, v1}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 937
    :cond_6
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 938
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;

    .line 940
    invoke-virtual {v1}, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->getRootTag()I

    move-result v6

    const-string v7, "dispatchMountItems PreAllocateViewMountItem"

    .line 939
    invoke-direct {p0, v6, v7}, Lcom/facebook/react/fabric/FabricUIManager;->surfaceActiveForExecution(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 941
    iget-object v6, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-virtual {v1, v6}, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V

    goto :goto_1

    .line 945
    :cond_7
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    :cond_8
    if-eqz v4, :cond_e

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FabricUIManager::mountViews mountItems to execute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 949
    invoke-static {v2, v3, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 953
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 955
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    .line 956
    sget-boolean v8, Lcom/facebook/react/fabric/FabricUIManager;->ENABLE_FABRIC_LOGS:Z

    if-eqz v8, :cond_9

    const-string v8, "dispatchMountItems: Executing mountItem"

    .line 957
    invoke-static {v7, v8}, Lcom/facebook/react/fabric/FabricUIManager;->printMountItem(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;Ljava/lang/String;)V

    .line 963
    :cond_9
    :try_start_1
    instance-of v8, v7, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;

    if-eqz v8, :cond_a

    .line 964
    move-object v8, v7

    check-cast v8, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;

    .line 966
    invoke-virtual {v8}, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->getRootTag()I

    move-result v8

    const-string v9, "dispatchMountItems BatchMountItem"

    .line 965
    invoke-direct {p0, v8, v9}, Lcom/facebook/react/fabric/FabricUIManager;->surfaceActiveForExecution(ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_2

    .line 971
    :cond_a
    iget-object v8, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-interface {v7, v8}, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;->execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v7

    const-string v8, "dispatchMountItems: caught exception, displaying all MountItems"

    .line 974
    invoke-static {v5, v8, v7}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 975
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    const-string v10, "dispatchMountItems: mountItem"

    .line 976
    invoke-static {v9, v10}, Lcom/facebook/react/fabric/FabricUIManager;->printMountItem(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;Ljava/lang/String;)V

    goto :goto_3

    .line 979
    :cond_b
    invoke-static {v7}, Lcom/facebook/react/bridge/ReactIgnorableMountingException;->isIgnorable(Ljava/lang/Throwable;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 980
    invoke-static {v5, v7}, Lcom/facebook/react/bridge/ReactSoftException;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 982
    :cond_c
    throw v7

    .line 986
    :cond_d
    iget-wide v4, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBatchedExecutionTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBatchedExecutionTime:J

    .line 988
    :cond_e
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    const/4 v0, 0x1

    return v0
.end method

.method private dispatchPreMountItems(J)V
    .locals 10

    const-string v0, "FabricUIManager::premountViews"

    const-wide/16 v1, 0x0

    .line 996
    invoke-static {v1, v2, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    const/4 v0, 0x1

    .line 1000
    iput-boolean v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mInDispatch:Z

    :cond_0
    :goto_0
    const-wide/16 v3, 0x10

    const/4 v0, -0x1

    const/4 v5, 0x0

    .line 1004
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, p1

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    sub-long/2addr v3, v6

    const-wide/16 v6, 0x8

    cmp-long v8, v3, v6

    if-gez v8, :cond_1

    goto :goto_1

    .line 1010
    :cond_1
    iget-object v3, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItemsLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1011
    :try_start_1
    iget-object v4, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItems:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1012
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1023
    :goto_1
    iput-boolean v5, p0, Lcom/facebook/react/fabric/FabricUIManager;->mInDispatch:Z

    .line 1024
    iput v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mLastExecutedMountItemSurfaceId:I

    .line 1027
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    return-void

    .line 1014
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItems:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;

    .line 1015
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1018
    :try_start_3
    invoke-virtual {v4}, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->getRootTag()I

    move-result v3

    const-string v6, "dispatchPreMountItems"

    .line 1017
    invoke-direct {p0, v3, v6}, Lcom/facebook/react/fabric/FabricUIManager;->surfaceActiveForExecution(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1019
    iget-object v3, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-virtual {v4, v3}, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1015
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 1023
    iput-boolean v5, p0, Lcom/facebook/react/fabric/FabricUIManager;->mInDispatch:Z

    .line 1024
    iput v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mLastExecutedMountItemSurfaceId:I

    .line 1025
    throw p1
.end method

.method private getAndResetMountItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/fabric/mounting/mountitems/MountItem;",
            ">;"
        }
    .end annotation

    .line 796
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 797
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItems:Ljava/util/List;

    .line 798
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 799
    monitor-exit v0

    return-object v1

    .line 801
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItems:Ljava/util/List;

    .line 802
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 803
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getAndResetPreMountItems()Ljava/util/ArrayDeque;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;",
            ">;"
        }
    .end annotation

    .line 807
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 808
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItems:Ljava/util/ArrayDeque;

    .line 809
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 810
    monitor-exit v0

    return-object v1

    .line 812
    :cond_0
    new-instance v2, Ljava/util/ArrayDeque;

    const/16 v3, 0xfa

    invoke-direct {v2, v3}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItems:Ljava/util/ArrayDeque;

    .line 813
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 814
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getAndResetViewCommandMountItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;",
            ">;"
        }
    .end annotation

    .line 783
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mViewCommandMountItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 784
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mViewCommandMountItems:Ljava/util/List;

    .line 785
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 786
    monitor-exit v0

    return-object v1

    .line 788
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mViewCommandMountItems:Ljava/util/List;

    .line 789
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 790
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private insertMountItem(III)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 1

    .line 389
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/InsertMountItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/react/fabric/mounting/mountitems/InsertMountItem;-><init>(III)V

    return-object v0
.end method

.method private measure(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FFFF)J
    .locals 11

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 488
    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/fabric/FabricUIManager;->measure(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FFFF[F)J

    move-result-wide v0

    return-wide v0
.end method

.method private measure(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FFFF[F)J
    .locals 13

    move-object v0, p0

    if-gez p1, :cond_0

    .line 519
    iget-object v1, v0, Lcom/facebook/react/fabric/FabricUIManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/facebook/react/fabric/FabricUIManager;->mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;

    .line 520
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    :goto_0
    move-object v3, v1

    if-nez v3, :cond_1

    const-wide/16 v1, 0x0

    return-wide v1

    .line 527
    :cond_1
    iget-object v2, v0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    .line 533
    invoke-static/range {p6 .. p7}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getYogaSize(FF)F

    move-result v8

    .line 534
    invoke-static/range {p6 .. p7}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getYogaMeasureMode(FF)Lcom/facebook/yoga/YogaMeasureMode;

    move-result-object v9

    .line 535
    invoke-static/range {p8 .. p9}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getYogaSize(FF)F

    move-result v10

    .line 536
    invoke-static/range {p8 .. p9}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getYogaMeasureMode(FF)Lcom/facebook/yoga/YogaMeasureMode;

    move-result-object v11

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v12, p10

    .line 527
    invoke-virtual/range {v2 .. v12}, Lcom/facebook/react/fabric/mounting/MountingManager;->measure(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;[F)J

    move-result-wide v1

    return-wide v1
.end method

.method private measureLines(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FF)Lcom/facebook/react/bridge/NativeArray;
    .locals 0

    .line 468
    iget-object p4, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 473
    invoke-static {p3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p3

    .line 469
    invoke-static {p4, p1, p2, p3}, Lcom/facebook/react/views/text/TextLayoutManager;->measureLines(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;F)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/bridge/NativeArray;

    return-object p1
.end method

.method private preallocateView(IILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/Object;Z)V
    .locals 12

    move-object v1, p0

    .line 340
    iget-object v0, v1, Lcom/facebook/react/fabric/FabricUIManager;->mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 342
    invoke-static {p3}, Lcom/facebook/react/fabric/FabricComponents;->getFabricComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 343
    iget-object v10, v1, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItemsLock:Ljava/lang/Object;

    monitor-enter v10

    .line 344
    :try_start_0
    iget-object v0, v1, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItems:Ljava/util/ArrayDeque;

    new-instance v11, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;

    move-object/from16 v8, p5

    check-cast v8, Lcom/facebook/react/uimanager/StateWrapper;

    move-object v2, v11

    move v4, p1

    move v5, p2

    move-object/from16 v7, p4

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;IILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/uimanager/StateWrapper;Z)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 353
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static printMountItem(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;Ljava/lang/String;)V
    .locals 5

    .line 852
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 853
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 854
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FabricUIManager"

    invoke-static {v3, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeDeleteMultiMountItem([I)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 1

    .line 397
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveDeleteMultiMountItem;

    invoke-direct {v0, p1}, Lcom/facebook/react/fabric/mounting/mountitems/RemoveDeleteMultiMountItem;-><init>([I)V

    return-object v0
.end method

.method private scheduleMountItem(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;IJJJJJJJ)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p9

    move-wide/from16 v7, p11

    move-wide/from16 v9, p13

    move-wide/from16 v11, p15

    .line 672
    instance-of v13, v0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;

    .line 673
    instance-of v14, v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;

    const/4 v15, 0x0

    const/16 v16, 0x1

    if-nez v13, :cond_1

    if-eqz v14, :cond_0

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v17, 0x1

    :goto_1
    if-eqz v13, :cond_2

    .line 675
    move-object v13, v0

    check-cast v13, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;

    .line 676
    invoke-virtual {v13}, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->shouldSchedule()Z

    move-result v13

    if-nez v13, :cond_4

    :cond_2
    if-eqz v14, :cond_3

    move-object v13, v0

    check-cast v13, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;

    .line 677
    invoke-virtual {v13}, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->shouldSchedule()Z

    move-result v13

    if-nez v13, :cond_4

    :cond_3
    if-nez v17, :cond_5

    if-eqz v0, :cond_5

    :cond_4
    const/4 v15, 0x1

    .line 682
    :cond_5
    iget-object v13, v1, Lcom/facebook/react/fabric/FabricUIManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/facebook/react/bridge/UIManagerListener;

    .line 683
    invoke-interface {v14, v1}, Lcom/facebook/react/bridge/UIManagerListener;->didScheduleMountItems(Lcom/facebook/react/bridge/UIManager;)V

    goto :goto_2

    :cond_6
    if-eqz v17, :cond_7

    .line 687
    iput-wide v3, v1, Lcom/facebook/react/fabric/FabricUIManager;->mCommitStartTime:J

    sub-long v13, v7, v5

    .line 688
    iput-wide v13, v1, Lcom/facebook/react/fabric/FabricUIManager;->mLayoutTime:J

    sub-long v13, v11, v9

    .line 689
    iput-wide v13, v1, Lcom/facebook/react/fabric/FabricUIManager;->mFinishTransactionCPPTime:J

    .line 690
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v9

    iput-wide v13, v1, Lcom/facebook/react/fabric/FabricUIManager;->mFinishTransactionTime:J

    .line 691
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchViewUpdatesTime:J

    :cond_7
    if-eqz v15, :cond_8

    if-eqz v0, :cond_8

    .line 695
    iget-object v13, v1, Lcom/facebook/react/fabric/FabricUIManager;->mMountItemsLock:Ljava/lang/Object;

    monitor-enter v13

    .line 696
    :try_start_0
    iget-object v14, v1, Lcom/facebook/react/fabric/FabricUIManager;->mMountItems:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->isOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 700
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/fabric/FabricUIManager;->tryDispatchMountItems()V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 697
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_8
    :goto_3
    if-eqz v17, :cond_9

    .line 706
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_COMMIT_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    const/4 v13, 0x0

    invoke-static {v0, v13, v2, v3, v4}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;IJ)V

    .line 708
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_FINISH_TRANSACTION_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0, v13, v2, v9, v10}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;IJ)V

    .line 713
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_FINISH_TRANSACTION_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0, v13, v2, v11, v12}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;IJ)V

    .line 718
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_DIFF_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    move-wide/from16 v3, p5

    invoke-static {v0, v13, v2, v3, v4}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;IJ)V

    .line 720
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_DIFF_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    move-wide/from16 v3, p7

    invoke-static {v0, v13, v2, v3, v4}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;IJ)V

    .line 722
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_LAYOUT_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0, v13, v2, v5, v6}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;IJ)V

    .line 724
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_LAYOUT_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0, v13, v2, v7, v8}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;IJ)V

    .line 726
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_COMMIT_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0, v13, v2}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    :cond_9
    return-void
.end method

.method private surfaceActiveForExecution(ILjava/lang/String;)Z
    .locals 3

    .line 829
    iget v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mLastExecutedMountItemSurfaceId:I

    if-eq v0, p1, :cond_1

    .line 830
    iput p1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mLastExecutedMountItemSurfaceId:I

    .line 831
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mLastExecutedMountItemSurfaceIdActive:Z

    if-nez v0, :cond_1

    .line 836
    new-instance v0, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMountItems: skipping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", because surface not available: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    const-string p1, "FabricUIManager"

    invoke-static {p1, v0}, Lcom/facebook/react/bridge/ReactSoftException;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 846
    :cond_1
    iget-boolean p1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mLastExecutedMountItemSurfaceIdActive:Z

    return p1
.end method

.method private tryDispatchMountItems()V
    .locals 5

    .line 741
    iget-boolean v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mInDispatch:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 747
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/react/fabric/FabricUIManager;->dispatchMountItems()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    iput-boolean v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mInDispatch:Z

    .line 757
    iget-object v3, p0, Lcom/facebook/react/fabric/FabricUIManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/bridge/UIManagerListener;

    .line 758
    invoke-interface {v4, p0}, Lcom/facebook/react/bridge/UIManagerListener;->didDispatchMountItems(Lcom/facebook/react/bridge/UIManager;)V

    goto :goto_0

    .line 762
    :cond_1
    iget v3, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReDispatchCounter:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_3

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    if-le v3, v2, :cond_2

    .line 765
    new-instance v2, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Re-dispatched "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReDispatchCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " times. This indicates setState (?) is likely being called too many times during mounting."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    const-string v3, "FabricUIManager"

    invoke-static {v3, v2}, Lcom/facebook/react/bridge/ReactSoftException;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 773
    :cond_2
    iget v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReDispatchCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReDispatchCounter:I

    .line 774
    invoke-direct {p0}, Lcom/facebook/react/fabric/FabricUIManager;->tryDispatchMountItems()V

    .line 776
    :cond_3
    iput v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReDispatchCounter:I

    .line 777
    iput v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mLastExecutedMountItemSurfaceId:I

    return-void

    :catchall_0
    move-exception v2

    .line 749
    :try_start_1
    iput v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReDispatchCounter:I

    .line 750
    iput v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mLastExecutedMountItemSurfaceId:I

    .line 751
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 754
    iput-boolean v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mInDispatch:Z

    .line 755
    throw v0
.end method

.method private updateEventEmitterMountItem(ILjava/lang/Object;)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 1

    .line 438
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateEventEmitterMountItem;

    check-cast p2, Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    invoke-direct {v0, p1, p2}, Lcom/facebook/react/fabric/mounting/mountitems/UpdateEventEmitterMountItem;-><init>(ILcom/facebook/react/fabric/events/EventEmitterWrapper;)V

    return-object v0
.end method

.method private updateLayoutMountItem(IIIIII)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 8

    .line 406
    new-instance v7, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;-><init>(IIIIII)V

    return-object v7
.end method

.method private updatePaddingMountItem(IIIII)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 7

    .line 414
    new-instance v6, Lcom/facebook/react/fabric/mounting/mountitems/UpdatePaddingMountItem;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/fabric/mounting/mountitems/UpdatePaddingMountItem;-><init>(IIIII)V

    return-object v6
.end method

.method private updatePropsMountItem(ILcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 1

    .line 422
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/UpdatePropsMountItem;

    invoke-direct {v0, p1, p2}, Lcom/facebook/react/fabric/mounting/mountitems/UpdatePropsMountItem;-><init>(ILcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method

.method private updateStateMountItem(ILjava/lang/Object;)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 1

    .line 430
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateStateMountItem;

    check-cast p2, Lcom/facebook/react/uimanager/StateWrapper;

    invoke-direct {v0, p1, p2}, Lcom/facebook/react/fabric/mounting/mountitems/UpdateStateMountItem;-><init>(ILcom/facebook/react/uimanager/StateWrapper;)V

    return-object v0
.end method


# virtual methods
.method public addRootView(Landroid/view/View;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lcom/facebook/react/bridge/WritableMap;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 201
    invoke-static {}, Lcom/facebook/react/uimanager/ReactRootViewTagGenerator;->getNextRootViewTag()I

    move-result v0

    .line 202
    move-object v1, p1

    check-cast v1, Lcom/facebook/react/uimanager/ReactRoot;

    .line 205
    new-instance v2, Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v3, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v1}, Lcom/facebook/react/uimanager/ReactRoot;->getSurfaceID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/facebook/react/uimanager/ThemedReactContext;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    iget-object v3, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-virtual {v3, v0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->addRootView(ILandroid/view/View;)V

    .line 209
    invoke-interface {v1}, Lcom/facebook/react/uimanager/ReactRoot;->getJSModuleName()Ljava/lang/String;

    move-result-object p1

    .line 210
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-boolean v1, Lcom/facebook/react/fabric/FabricUIManager;->ENABLE_FABRIC_LOGS:Z

    if-eqz v1, :cond_0

    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FabricUIManager"

    const-string v3, "Starting surface for module: %s and reactTag: %d"

    invoke-static {v2, v3, p1, v1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/Binding;

    check-cast p2, Lcom/facebook/react/bridge/NativeMap;

    invoke-virtual {v1, v0, p1, p2}, Lcom/facebook/react/fabric/Binding;->startSurface(ILjava/lang/String;Lcom/facebook/react/bridge/NativeMap;)V

    if-eqz p3, :cond_1

    .line 216
    iget-object p1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/Binding;

    invoke-virtual {p1, v0, p3}, Lcom/facebook/react/fabric/Binding;->renderTemplateToSurface(ILjava/lang/String;)V

    :cond_1
    return v0
.end method

.method public addUIManagerEventListener(Lcom/facebook/react/bridge/UIManagerListener;)V
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearJSResponder()V
    .locals 3

    .line 1166
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1167
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItems:Ljava/util/List;

    new-instance v2, Lcom/facebook/react/fabric/FabricUIManager$4;

    invoke-direct {v2, p0}, Lcom/facebook/react/fabric/FabricUIManager$4;-><init>(Lcom/facebook/react/fabric/FabricUIManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1174
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dispatchCommand(IILcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1111
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/DispatchIntCommandMountItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/react/fabric/mounting/mountitems/DispatchIntCommandMountItem;-><init>(IILcom/facebook/react/bridge/ReadableArray;)V

    invoke-direct {p0, v0}, Lcom/facebook/react/fabric/FabricUIManager;->dispatchCommandMountItem(Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;)V

    return-void
.end method

.method public dispatchCommand(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1

    .line 1119
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/DispatchStringCommandMountItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/react/fabric/mounting/mountitems/DispatchStringCommandMountItem;-><init>(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    invoke-direct {p0, v0}, Lcom/facebook/react/fabric/FabricUIManager;->dispatchCommandMountItem(Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;)V

    return-void
.end method

.method public getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;
    .locals 1

    .line 1093
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    return-object v0
.end method

.method public bridge synthetic getEventDispatcher()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/facebook/react/fabric/FabricUIManager;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public getPerformanceCounters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1212
    iget-wide v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mCommitStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "CommitStartTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    iget-wide v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mLayoutTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "LayoutTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    iget-wide v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchViewUpdatesTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "DispatchViewUpdatesTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    iget-wide v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mRunStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "RunStartTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    iget-wide v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBatchedExecutionTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "BatchedExecutionTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    iget-wide v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mFinishTransactionTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "FinishFabricTransactionTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    iget-wide v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mFinishTransactionCPPTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "FinishFabricTransactionCPPTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getThemeData(I[F)Z
    .locals 3

    .line 548
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ThemedReactContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 551
    new-instance p2, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find ThemedReactContext associated to surfaceID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    const-string p1, "FabricUIManager"

    invoke-static {p1, p2}, Lcom/facebook/react/bridge/ReactSoftException;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    .line 558
    :cond_0
    invoke-static {v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getDefaultTextInputPadding(Lcom/facebook/react/uimanager/ThemedReactContext;)[F

    move-result-object p1

    .line 559
    aget v0, p1, v1

    aput v0, p2, v1

    const/4 v0, 0x1

    .line 560
    aget v1, p1, v0

    aput v1, p2, v0

    const/4 v1, 0x2

    .line 561
    aget v2, p1, v1

    aput v2, p2, v1

    const/4 v1, 0x3

    .line 562
    aget p1, p1, v1

    aput p1, p2, v1

    return v0
.end method

.method public initialize()V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    new-instance v1, Lcom/facebook/react/fabric/events/FabricEventEmitter;

    invoke-direct {v1, p0}, Lcom/facebook/react/fabric/events/FabricEventEmitter;-><init>(Lcom/facebook/react/fabric/FabricUIManager;)V

    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->registerEventEmitter(ILcom/facebook/react/uimanager/events/RCTEventEmitter;)V

    .line 282
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventBeatManager:Lcom/facebook/react/fabric/events/EventBeatManager;

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->addBatchEventDispatchedListener(Lcom/facebook/react/uimanager/events/BatchEventDispatchedListener;)V

    return-void
.end method

.method public onAllAnimationsComplete()V
    .locals 1

    const/4 v0, 0x0

    .line 1206
    iput-boolean v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDriveCxxAnimations:Z

    return-void
.end method

.method public onAnimationStarted()V
    .locals 1

    const/4 v0, 0x1

    .line 1199
    iput-boolean v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDriveCxxAnimations:Z

    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 3

    const-string v0, "FabricUIManager"

    const-string v1, "FabricUIManager.onCatalystInstanceDestroy"

    .line 290
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-boolean v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 293
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot double-destroy FabricUIManager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/react/bridge/ReactSoftException;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDestroyed:Z

    .line 303
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchUIFrameCallback:Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;

    invoke-virtual {v0}, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;->stop()V

    .line 305
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventBeatManager:Lcom/facebook/react/fabric/events/EventBeatManager;

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->removeBatchEventDispatchedListener(Lcom/facebook/react/uimanager/events/BatchEventDispatchedListener;)V

    .line 306
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->unregisterEventEmitter(I)V

    .line 311
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 312
    invoke-virtual {p0}, Lcom/facebook/react/fabric/FabricUIManager;->onHostPause()V

    .line 317
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchUIFrameCallback:Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;

    invoke-virtual {v0}, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;->stop()V

    .line 319
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/Binding;

    invoke-virtual {v0}, Lcom/facebook/react/fabric/Binding;->unregister()V

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/Binding;

    .line 322
    invoke-static {}, Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater;->clear()V

    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    return-void
.end method

.method public onHostPause()V
    .locals 3

    .line 1098
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer;->getInstance()Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->DISPATCH_UI:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchUIFrameCallback:Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;

    .line 1099
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->removeFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    return-void
.end method

.method public onHostResume()V
    .locals 3

    .line 1085
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer;->getInstance()Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->DISPATCH_UI:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchUIFrameCallback:Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;

    .line 1086
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    return-void
.end method

.method public onRequestEventBeat()V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    invoke-interface {v0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchAllEvents()V

    return-void
.end method

.method public profileNextBatch()V
    .locals 0

    return-void
.end method

.method public receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1

    .line 1073
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getEventEmitter(I)Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1076
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to invoke event: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for reactTag: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FabricUIManager"

    invoke-static {p2, p1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1080
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->invoke(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public removeUIManagerEventListener(Lcom/facebook/react/bridge/UIManagerListener;)V
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resolveCustomDirectEventName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1189
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "top"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public sendAccessibilityEvent(II)V
    .locals 3

    .line 1134
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1135
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItems:Ljava/util/List;

    new-instance v2, Lcom/facebook/react/fabric/mounting/mountitems/SendAccessibilityEvent;

    invoke-direct {v2, p1, p2}, Lcom/facebook/react/fabric/mounting/mountitems/SendAccessibilityEvent;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1136
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBinding(Lcom/facebook/react/fabric/Binding;)V
    .locals 0

    .line 1031
    iput-object p1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/Binding;

    return-void
.end method

.method public setJSResponder(IIZ)V
    .locals 3

    .line 1149
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1150
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItems:Ljava/util/List;

    new-instance v2, Lcom/facebook/react/fabric/FabricUIManager$3;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/facebook/react/fabric/FabricUIManager$3;-><init>(Lcom/facebook/react/fabric/FabricUIManager;IIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1157
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startSurface(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;II)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/WritableMap;",
            "II)I"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v3, p2

    .line 230
    invoke-static {}, Lcom/facebook/react/uimanager/ReactRootViewTagGenerator;->getNextRootViewTag()I

    move-result v13

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 232
    new-instance v2, Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v4, v0, Lcom/facebook/react/fabric/FabricUIManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v2, v4, v1, v3}, Lcom/facebook/react/uimanager/ThemedReactContext;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    sget-boolean v4, Lcom/facebook/react/fabric/FabricUIManager;->ENABLE_FABRIC_LOGS:Z

    if-eqz v4, :cond_0

    .line 235
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "FabricUIManager"

    const-string v6, "Starting surface for module: %s and reactTag: %d"

    invoke-static {v5, v6, v3, v4}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    :cond_0
    iget-object v4, v0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    move-object/from16 v5, p1

    invoke-virtual {v4, v13, v5}, Lcom/facebook/react/fabric/mounting/MountingManager;->addRootView(ILandroid/view/View;)V

    .line 238
    iget-object v4, v0, Lcom/facebook/react/fabric/FabricUIManager;->mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-static/range {p1 .. p1}, Lcom/facebook/react/ReactRootView;->getViewportOffset(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    .line 242
    iget-object v4, v0, Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/Binding;

    move-object/from16 v5, p3

    check-cast v5, Lcom/facebook/react/bridge/NativeMap;

    .line 246
    invoke-static/range {p4 .. p4}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getMinSize(I)F

    move-result v6

    .line 247
    invoke-static/range {p4 .. p4}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getMaxSize(I)F

    move-result v7

    .line 248
    invoke-static/range {p5 .. p5}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getMinSize(I)F

    move-result v8

    .line 249
    invoke-static/range {p5 .. p5}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getMaxSize(I)F

    move-result v9

    iget v10, v2, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v11, v2

    .line 252
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->isRTL(Landroid/content/Context;)Z

    move-result v12

    .line 253
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v14

    move-object v1, v4

    move v2, v13

    move-object/from16 v3, p2

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v14

    .line 242
    invoke-virtual/range {v1 .. v12}, Lcom/facebook/react/fabric/Binding;->startSurfaceWithConstraints(ILjava/lang/String;Lcom/facebook/react/bridge/NativeMap;FFFFFFZZ)V

    return v13
.end method

.method public stopSurface(I)V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/Binding;

    invoke-virtual {v0, p1}, Lcom/facebook/react/fabric/Binding;->stopSurface(I)V

    .line 270
    new-instance v0, Lcom/facebook/react/fabric/FabricUIManager$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/fabric/FabricUIManager$1;-><init>(Lcom/facebook/react/fabric/FabricUIManager;I)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synchronouslyUpdateViewOnUIThread(ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 5

    .line 571
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 573
    iget v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mCurrentSynchronousCommitNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mCurrentSynchronousCommitNumber:I

    .line 596
    sget-boolean v1, Lcom/facebook/react/config/ReactFeatureFlags;->enableDrawMutationFix:Z

    if-nez v1, :cond_0

    .line 597
    invoke-direct {p0}, Lcom/facebook/react/fabric/FabricUIManager;->tryDispatchMountItems()V

    .line 600
    :cond_0
    new-instance v1, Lcom/facebook/react/fabric/FabricUIManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/react/fabric/FabricUIManager$2;-><init>(Lcom/facebook/react/fabric/FabricUIManager;ILcom/facebook/react/bridge/ReadableMap;)V

    .line 618
    iget-object p2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-virtual {p2, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewExists(I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 619
    iget-object p2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItemsLock:Ljava/lang/Object;

    monitor-enter p2

    .line 620
    :try_start_0
    iget-object p1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItems:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 625
    :cond_1
    sget-object p2, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_UPDATE_UI_MAIN_THREAD_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    const/4 v2, 0x0

    invoke-static {p2, v2, v0}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    .line 628
    sget-boolean p2, Lcom/facebook/react/fabric/FabricUIManager;->ENABLE_FABRIC_LOGS:Z

    if-eqz p2, :cond_2

    const-string p2, "FabricUIManager"

    const-string v3, "SynchronouslyUpdateViewOnUIThread for tag %d: %s"

    .line 632
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "<hidden>"

    .line 629
    invoke-static {p2, v3, p1, v4}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 636
    :cond_2
    iget-object p1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-interface {v1, p1}, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;->execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V

    .line 638
    sget-object p1, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_UPDATE_UI_MAIN_THREAD_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {p1, v2, v0}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    return-void
.end method

.method public updateRootLayoutSpecs(IIIII)V
    .locals 13

    move-object v0, p0

    .line 1047
    sget-boolean v1, Lcom/facebook/react/fabric/FabricUIManager;->ENABLE_FABRIC_LOGS:Z

    if-eqz v1, :cond_0

    const-string v1, "FabricUIManager"

    const-string v2, "Updating Root Layout Specs"

    .line 1048
    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    :cond_0
    iget-object v1, v0, Lcom/facebook/react/fabric/FabricUIManager;->mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/ThemedReactContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1055
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->isRTL(Landroid/content/Context;)Z

    move-result v2

    .line 1056
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v1

    move v12, v1

    move v11, v2

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1059
    :goto_0
    iget-object v3, v0, Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/Binding;

    .line 1061
    invoke-static {p2}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getMinSize(I)F

    move-result v5

    .line 1062
    invoke-static {p2}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getMaxSize(I)F

    move-result v6

    .line 1063
    invoke-static/range {p3 .. p3}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getMinSize(I)F

    move-result v7

    .line 1064
    invoke-static/range {p3 .. p3}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getMaxSize(I)F

    move-result v8

    move/from16 v1, p4

    int-to-float v9, v1

    move/from16 v1, p5

    int-to-float v10, v1

    move v4, p1

    .line 1059
    invoke-virtual/range {v3 .. v12}, Lcom/facebook/react/fabric/Binding;->setConstraints(IFFFFFFZZ)V

    return-void
.end method
