.class public Lcom/facebook/react/uimanager/UIManagerModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "UIManagerModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/OnBatchCompleteListener;
.implements Lcom/facebook/react/bridge/LifecycleEventListener;
.implements Lcom/facebook/react/bridge/UIManager;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "UIManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;,
        Lcom/facebook/react/uimanager/UIManagerModule$CustomEventNamesResolver;,
        Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final NAME:Ljava/lang/String; = "UIManager"


# instance fields
.field private mBatchId:I

.field private final mCustomDirectEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/UIManagerModuleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMemoryTrimCallback:Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;

.field private final mModuleConstants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

.field private final mUIManagerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/react/bridge/UIManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mViewManagerConstantsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/WritableMap;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mViewManagerConstantsCacheSize:I

.field private final mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 114
    invoke-static {}, Lcom/facebook/debug/holder/PrinterHolder;->getPrinter()Lcom/facebook/debug/holder/Printer;

    move-result-object v0

    sget-object v1, Lcom/facebook/debug/tags/ReactDebugOverlayTags;->UI_MANAGER:Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;

    invoke-interface {v0, v1}, Lcom/facebook/debug/holder/Printer;->shouldDisplayLogMessage(Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/react/uimanager/UIManagerModule;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;I)V
    .locals 1

    .line 135
    new-instance v0, Lcom/facebook/react/uimanager/UIImplementationProvider;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/UIImplementationProvider;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/react/uimanager/UIManagerModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;Lcom/facebook/react/uimanager/UIImplementationProvider;I)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;Lcom/facebook/react/uimanager/UIImplementationProvider;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 121
    new-instance v0, Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;-><init>(Lcom/facebook/react/uimanager/UIManagerModule;Lcom/facebook/react/uimanager/UIManagerModule$1;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mMemoryTrimCallback:Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mListeners:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIManagerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mBatchId:I

    .line 161
    invoke-static {p1}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->initDisplayMetricsIfNotInitialized(Landroid/content/Context;)V

    .line 162
    new-instance v0, Lcom/facebook/react/uimanager/events/EventDispatcherImpl;

    invoke-direct {v0, p1}, Lcom/facebook/react/uimanager/events/EventDispatcherImpl;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 163
    invoke-static {p2}, Lcom/facebook/react/uimanager/UIManagerModule;->createConstants(Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mModuleConstants:Ljava/util/Map;

    .line 164
    invoke-static {}, Lcom/facebook/react/uimanager/UIManagerModuleConstants;->getDirectEventTypeConstants()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mCustomDirectEvents:Ljava/util/Map;

    .line 165
    new-instance v1, Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-direct {v1, p2}, Lcom/facebook/react/uimanager/ViewManagerRegistry;-><init>(Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;)V

    iput-object v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 167
    invoke-virtual {p3, p1, v1, v0, p4}, Lcom/facebook/react/uimanager/UIImplementationProvider;->createUIImplementation(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/events/EventDispatcher;I)Lcom/facebook/react/uimanager/UIImplementation;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    .line 173
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;I)V"
        }
    .end annotation

    .line 147
    new-instance v0, Lcom/facebook/react/uimanager/UIImplementationProvider;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/UIImplementationProvider;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/react/uimanager/UIManagerModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;Lcom/facebook/react/uimanager/UIImplementationProvider;I)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;Lcom/facebook/react/uimanager/UIImplementationProvider;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;",
            "Lcom/facebook/react/uimanager/UIImplementationProvider;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 121
    new-instance v0, Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;-><init>(Lcom/facebook/react/uimanager/UIManagerModule;Lcom/facebook/react/uimanager/UIManagerModule$1;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mMemoryTrimCallback:Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mListeners:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIManagerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mBatchId:I

    .line 183
    invoke-static {p1}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->initDisplayMetricsIfNotInitialized(Landroid/content/Context;)V

    .line 184
    new-instance v0, Lcom/facebook/react/uimanager/events/EventDispatcherImpl;

    invoke-direct {v0, p1}, Lcom/facebook/react/uimanager/events/EventDispatcherImpl;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 185
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mCustomDirectEvents:Ljava/util/Map;

    .line 186
    invoke-static {p2, v1, v2}, Lcom/facebook/react/uimanager/UIManagerModule;->createConstants(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mModuleConstants:Ljava/util/Map;

    .line 187
    new-instance v1, Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-direct {v1, p2}, Lcom/facebook/react/uimanager/ViewManagerRegistry;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 189
    invoke-virtual {p3, p1, v1, v0, p4}, Lcom/facebook/react/uimanager/UIImplementationProvider;->createUIImplementation(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/events/EventDispatcher;I)Lcom/facebook/react/uimanager/UIImplementation;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    .line 195
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/react/uimanager/UIManagerModule;)Lcom/facebook/react/uimanager/UIImplementation;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    return-object p0
.end method

.method private computeConstantsForViewManager(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    .line 334
    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/UIImplementation;->resolveViewManager(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-wide/16 v1, 0x0

    const-string v3, "UIManagerModule.getConstantsForViewManager"

    .line 339
    invoke-static {v1, v2, v3}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v3

    .line 341
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ViewManager;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ViewManager"

    invoke-virtual {v3, v5, v4}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 342
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "Lazy"

    invoke-virtual {v3, v5, v4}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v3

    .line 343
    invoke-virtual {v3}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 345
    :try_start_0
    iget-object v3, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mCustomDirectEvents:Ljava/util/Map;

    .line 346
    invoke-static {p1, v0, v0, v0, v3}, Lcom/facebook/react/uimanager/UIManagerModuleConstantsHelper;->createConstantsForViewManager(Lcom/facebook/react/uimanager/ViewManager;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 349
    invoke-static {p1}, Lcom/facebook/react/bridge/Arguments;->makeNativeMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-static {v1, v2}, Lcom/facebook/systrace/SystraceMessage;->endSection(J)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    return-object p1

    :cond_2
    invoke-static {v1, v2}, Lcom/facebook/systrace/SystraceMessage;->endSection(J)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Lcom/facebook/systrace/SystraceMessage;->endSection(J)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 354
    throw p1
.end method

.method private static createConstants(Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 261
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_CONSTANTS_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    const-wide/16 v0, 0x0

    const-string v2, "CreateUIManagerConstants"

    .line 262
    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 263
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Lazy"

    invoke-virtual {v2, v4, v3}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    .line 264
    invoke-virtual {v2}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 266
    :try_start_0
    invoke-static {p0}, Lcom/facebook/react/uimanager/UIManagerModuleConstantsHelper;->createConstants(Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 269
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_CONSTANTS_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 268
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 269
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_CONSTANTS_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 270
    throw p0
.end method

.method private static createConstants(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 277
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_CONSTANTS_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    const-wide/16 v0, 0x0

    const-string v2, "CreateUIManagerConstants"

    .line 278
    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 279
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Lazy"

    invoke-virtual {v2, v4, v3}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    .line 280
    invoke-virtual {v2}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 282
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/facebook/react/uimanager/UIManagerModuleConstantsHelper;->createConstants(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 286
    sget-object p1, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_CONSTANTS_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {p1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 285
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 286
    sget-object p1, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_CONSTANTS_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {p1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 287
    throw p0
.end method


# virtual methods
.method public addRootView(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 398
    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/react/uimanager/UIManagerModule;->addRootView(Landroid/view/View;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public addRootView(Landroid/view/View;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;)I
    .locals 5
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

    const-wide/16 p2, 0x0

    const-string v0, "UIManagerModule.addRootView"

    .line 433
    invoke-static {p2, p3, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 434
    invoke-static {}, Lcom/facebook/react/uimanager/ReactRootViewTagGenerator;->getNextRootViewTag()I

    move-result v0

    .line 435
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    .line 436
    new-instance v2, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lcom/facebook/react/uimanager/ReactRoot;

    invoke-interface {v4}, Lcom/facebook/react/uimanager/ReactRoot;->getSurfaceID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lcom/facebook/react/uimanager/ThemedReactContext;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/content/Context;Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v1, p1, v0, v2}, Lcom/facebook/react/uimanager/UIImplementation;->registerRootView(Landroid/view/View;ILcom/facebook/react/uimanager/ThemedReactContext;)V

    .line 441
    invoke-static {p2, p3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    return v0
.end method

.method public addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    return-void
.end method

.method public addUIManagerEventListener(Lcom/facebook/react/bridge/UIManagerListener;)V
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIManagerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUIManagerListener(Lcom/facebook/react/uimanager/UIManagerModuleListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 881
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearJSResponder()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 707
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIImplementation;->clearJSResponder()V

    return-void
.end method

.method public configureNextLayoutAnimation(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 791
    iget-object p3, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {p3, p1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->configureNextLayoutAnimation(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public createView(ILjava/lang/String;ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 495
    sget-boolean v0, Lcom/facebook/react/uimanager/UIManagerModule;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(UIManager.createView) tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", props: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNative"

    .line 498
    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-static {}, Lcom/facebook/debug/holder/PrinterHolder;->getPrinter()Lcom/facebook/debug/holder/Printer;

    move-result-object v1

    sget-object v2, Lcom/facebook/debug/tags/ReactDebugOverlayTags;->UI_MANAGER:Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;

    invoke-interface {v1, v2, v0}, Lcom/facebook/debug/holder/Printer;->logMessage(Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;Ljava/lang/String;)V

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/react/uimanager/UIImplementation;->createView(ILjava/lang/String;ILcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public dismissPopupMenu()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 759
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIImplementation;->dismissPopupMenu()V

    return-void
.end method

.method public dispatchCommand(IILcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 734
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->dispatchViewManagerCommand(IILcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public dispatchCommand(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->dispatchViewManagerCommand(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public dispatchViewManagerCommand(ILcom/facebook/react/bridge/Dynamic;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 718
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v1

    .line 717
    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 723
    :cond_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v1, v2, :cond_1

    .line 724
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asInt()I

    move-result p2

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/react/bridge/UIManager;->dispatchCommand(IILcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_0

    .line 725
    :cond_1
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v1, v2, :cond_2

    .line 726
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/react/bridge/UIManager;->dispatchCommand(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public findSubviewIn(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 681
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    const/4 v1, 0x0

    .line 683
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    .line 684
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    .line 681
    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->findSubviewIn(IFFLcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mModuleConstants:Ljava/util/Map;

    return-object v0
.end method

.method public getConstantsForViewManager(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mViewManagerConstantsCache:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 320
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mViewManagerConstantsCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/bridge/WritableMap;

    .line 322
    iget v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mViewManagerConstantsCacheSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mViewManagerConstantsCacheSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 324
    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mViewManagerConstantsCache:Ljava/util/Map;

    :cond_0
    return-object p1

    .line 328
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/UIManagerModule;->computeConstantsForViewManager(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultEventTypes()Lcom/facebook/react/bridge/WritableMap;
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 359
    invoke-static {}, Lcom/facebook/react/uimanager/UIManagerModuleConstantsHelper;->getDefaultExportableEventTypes()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/bridge/Arguments;->makeNativeMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v0

    return-object v0
.end method

.method public getDirectEventNamesResolver()Lcom/facebook/react/uimanager/UIManagerModule$CustomEventNamesResolver;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 365
    new-instance v0, Lcom/facebook/react/uimanager/UIManagerModule$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/UIManagerModule$1;-><init>(Lcom/facebook/react/uimanager/UIManagerModule;)V

    return-object v0
.end method

.method public getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    return-object v0
.end method

.method public bridge synthetic getEventDispatcher()Ljava/lang/Object;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "UIManager"

    return-object v0
.end method

.method public getPerformanceCounters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIImplementation;->getProfiledBatchPerfCounters()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUIImplementation()Lcom/facebook/react/uimanager/UIImplementation;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    return-object v0
.end method

.method public getViewManagerRegistry_DO_NOT_USE()Lcom/facebook/react/uimanager/ViewManagerRegistry;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    return-object v0
.end method

.method public initialize()V
    .locals 3

    .line 221
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mMemoryTrimCallback:Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 222
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 223
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    const-class v2, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    const/4 v2, 0x1

    .line 222
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->registerEventEmitter(ILcom/facebook/react/uimanager/events/RCTEventEmitter;)V

    return-void
.end method

.method public invalidateNodeLayout(I)V
    .locals 2

    .line 916
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->resolveShadowNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Warning : attempted to dirty a non-existent react shadow node. reactTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReactNative"

    invoke-static {v0, p1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 923
    :cond_0
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->dirty()V

    .line 924
    iget-object p1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/UIImplementation;->dispatchViewUpdates(I)V

    return-void
.end method

.method public manageChildren(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 9
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 552
    sget-boolean v0, Lcom/facebook/react/uimanager/UIManagerModule;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(UIManager.manageChildren) tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", moveFrom: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", moveTo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", addTags: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", atIndices: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", removeFrom: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ReactNative"

    .line 566
    invoke-static {v2, v0}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-static {}, Lcom/facebook/debug/holder/PrinterHolder;->getPrinter()Lcom/facebook/debug/holder/Printer;

    move-result-object v2

    sget-object v3, Lcom/facebook/debug/tags/ReactDebugOverlayTags;->UI_MANAGER:Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;

    invoke-interface {v2, v3, v0}, Lcom/facebook/debug/holder/Printer;->logMessage(Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;Ljava/lang/String;)V

    .line 569
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/facebook/react/uimanager/UIImplementation;->manageChildren(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public measure(ILcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 622
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->measure(ILcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public measureInWindow(ILcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->measureInWindow(ILcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public measureLayout(IILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/react/uimanager/UIImplementation;->measureLayout(IILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public measureLayoutRelativeToParent(ILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 664
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->measureLayoutRelativeToParent(ILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public onBatchComplete()V
    .locals 5

    .line 810
    iget v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mBatchId:I

    add-int/lit8 v1, v0, 0x1

    .line 811
    iput v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mBatchId:I

    const-wide/16 v1, 0x0

    const-string v3, "onBatchCompleteUI"

    .line 813
    invoke-static {v1, v2, v3}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v3

    const-string v4, "BatchId"

    .line 814
    invoke-virtual {v3, v4, v0}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v3

    .line 815
    invoke-virtual {v3}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 816
    iget-object v3, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/uimanager/UIManagerModuleListener;

    .line 817
    invoke-interface {v4, p0}, Lcom/facebook/react/uimanager/UIManagerModuleListener;->willDispatchViewUpdates(Lcom/facebook/react/uimanager/UIManagerModule;)V

    goto :goto_0

    .line 819
    :cond_0
    iget-object v3, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIManagerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/bridge/UIManagerListener;

    .line 820
    invoke-interface {v4, p0}, Lcom/facebook/react/bridge/UIManagerListener;->willDispatchViewUpdates(Lcom/facebook/react/bridge/UIManager;)V

    goto :goto_1

    .line 823
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v3, v0}, Lcom/facebook/react/uimanager/UIImplementation;->dispatchViewUpdates(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 826
    throw v0
.end method

.method public onCatalystInstanceDestroy()V
    .locals 2

    .line 243
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->onCatalystInstanceDestroy()V

    .line 244
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    invoke-interface {v0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->onCatalystInstanceDestroyed()V

    .line 246
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mMemoryTrimCallback:Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 247
    invoke-static {}, Lcom/facebook/react/uimanager/YogaNodePool;->get()Lcom/facebook/react/common/ClearableSynchronizedPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/common/ClearableSynchronizedPool;->clear()V

    .line 248
    invoke-static {}, Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater;->clear()V

    return-void
.end method

.method public onHostDestroy()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIImplementation;->onHostDestroy()V

    return-void
.end method

.method public onHostPause()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIImplementation;->onHostPause()V

    return-void
.end method

.method public onHostResume()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIImplementation;->onHostResume()V

    return-void
.end method

.method public preComputeConstantsForViewManager(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 299
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 300
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 301
    invoke-direct {p0, v2}, Lcom/facebook/react/uimanager/UIManagerModule;->computeConstantsForViewManager(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 303
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 313
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mViewManagerConstantsCacheSize:I

    .line 314
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mViewManagerConstantsCache:Ljava/util/Map;

    return-void
.end method

.method public prependUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->prependUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    return-void
.end method

.method public profileNextBatch()V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIImplementation;->profileNextBatch()V

    return-void
.end method

.method public receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2

    .line 975
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 976
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 977
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public removeRootView(I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->removeRootView(I)V

    return-void
.end method

.method public removeSubviewsFromContainerWithID(I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->removeSubviewsFromContainerWithID(I)V

    return-void
.end method

.method public removeUIManagerEventListener(Lcom/facebook/react/bridge/UIManagerListener;)V
    .locals 1

    .line 894
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIManagerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeUIManagerListener(Lcom/facebook/react/uimanager/UIManagerModuleListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 886
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public replaceExistingNonRootView(II)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->replaceExistingNonRootView(II)V

    return-void
.end method

.method public resolveCustomDirectEventName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mCustomDirectEvents:Ljava/util/Map;

    .line 379
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string p1, "registrationName"

    .line 381
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method public resolveRootTagFromReactTag(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 909
    invoke-static {p1}, Lcom/facebook/react/uimanager/common/ViewUtil;->isRootTag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    .line 911
    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->resolveRootTagFromReactTag(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public resolveView(I)Landroid/view/View;
    .locals 1

    .line 966
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 967
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    .line 968
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIImplementation;->getUIViewOperationQueue()Lcom/facebook/react/uimanager/UIViewOperationQueue;

    move-result-object v0

    .line 969
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->getNativeViewHierarchyManager()Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    move-result-object v0

    .line 970
    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public sendAccessibilityEvent(II)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 841
    invoke-static {p1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 845
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 847
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/UIManager;->sendAccessibilityEvent(II)V

    goto :goto_0

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->sendAccessibilityEvent(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setChildren(ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 582
    sget-boolean v0, Lcom/facebook/react/uimanager/UIManagerModule;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(UIManager.setChildren) tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", children: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNative"

    .line 584
    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-static {}, Lcom/facebook/debug/holder/PrinterHolder;->getPrinter()Lcom/facebook/debug/holder/Printer;

    move-result-object v1

    sget-object v2, Lcom/facebook/debug/tags/ReactDebugOverlayTags;->UI_MANAGER:Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;

    invoke-interface {v1, v2, v0}, Lcom/facebook/debug/holder/Printer;->logMessage(Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;Ljava/lang/String;)V

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->setChildren(ILcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setJSResponder(IZ)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->setJSResponder(IZ)V

    return-void
.end method

.method public setLayoutAnimationEnabledExperimental(Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 775
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->setLayoutAnimationEnabledExperimental(Z)V

    return-void
.end method

.method public setViewHierarchyUpdateDebugListener(Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;)V
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->setViewHierarchyUpdateDebugListener(Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;)V

    return-void
.end method

.method public setViewLocalData(ILjava/lang/Object;)V
    .locals 2

    .line 480
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->assertOnUiQueueThread()V

    .line 484
    new-instance v1, Lcom/facebook/react/uimanager/UIManagerModule$2;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/facebook/react/uimanager/UIManagerModule$2;-><init>(Lcom/facebook/react/uimanager/UIManagerModule;Lcom/facebook/react/bridge/ReactContext;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showPopupMenu(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 754
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/react/uimanager/UIImplementation;->showPopupMenu(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public startSurface(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;II)I
    .locals 0
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

    .line 452
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public stopSurface(I)V
    .locals 0

    .line 457
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synchronouslyUpdateViewOnUIThread(ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 2

    .line 409
    invoke-static {p1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 414
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/UIManager;->synchronouslyUpdateViewOnUIThread(ILcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    new-instance v1, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-direct {v1, p2}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {v0, p1, v1}, Lcom/facebook/react/uimanager/UIImplementation;->synchronouslyUpdateViewOnUIThread(ILcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateNodeSize(III)V
    .locals 1

    .line 467
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->assertOnNativeModulesQueueThread()V

    .line 469
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->updateNodeSize(III)V

    return-void
.end method

.method public updateRootLayoutSpecs(IIIII)V
    .locals 6

    .line 937
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p4

    .line 938
    new-instance p5, Lcom/facebook/react/uimanager/UIManagerModule$4;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/uimanager/UIManagerModule$4;-><init>(Lcom/facebook/react/uimanager/UIManagerModule;Lcom/facebook/react/bridge/ReactContext;III)V

    invoke-virtual {p4, p5}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateView(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 506
    sget-boolean v0, Lcom/facebook/react/uimanager/UIManagerModule;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(UIManager.updateView) tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", props: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNative"

    .line 509
    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-static {}, Lcom/facebook/debug/holder/PrinterHolder;->getPrinter()Lcom/facebook/debug/holder/Printer;

    move-result-object v1

    sget-object v2, Lcom/facebook/debug/tags/ReactDebugOverlayTags;->UI_MANAGER:Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;

    invoke-interface {v1, v2, v0}, Lcom/facebook/debug/holder/Printer;->logMessage(Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;Ljava/lang/String;)V

    .line 512
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 514
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p2

    .line 515
    invoke-virtual {p2}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 517
    invoke-static {p2, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 519
    new-instance v1, Lcom/facebook/react/uimanager/UIManagerModule$3;

    invoke-direct {v1, p0, v0, p1, p3}, Lcom/facebook/react/uimanager/UIManagerModule$3;-><init>(Lcom/facebook/react/uimanager/UIManagerModule;Lcom/facebook/react/bridge/UIManager;ILcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p2, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnUiQueueThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->updateView(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public viewIsDescendantOf(IILcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 697
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->viewIsDescendantOf(IILcom/facebook/react/bridge/Callback;)V

    return-void
.end method
