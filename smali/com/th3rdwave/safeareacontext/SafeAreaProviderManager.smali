.class public Lcom/th3rdwave/safeareacontext/SafeAreaProviderManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "SafeAreaProviderManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/th3rdwave/safeareacontext/SafeAreaProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaProviderManager;->mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method private getInitialWindowMetrics()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaProviderManager;->mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 65
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const v2, 0x1020002

    .line 70
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    .line 74
    :cond_2
    invoke-static {v0}, Lcom/th3rdwave/safeareacontext/SafeAreaUtils;->getSafeAreaInsets(Landroid/view/View;)Lcom/th3rdwave/safeareacontext/EdgeInsets;

    move-result-object v3

    .line 75
    invoke-static {v0, v2}, Lcom/th3rdwave/safeareacontext/SafeAreaUtils;->getFrame(Landroid/view/ViewGroup;Landroid/view/View;)Lcom/th3rdwave/safeareacontext/Rect;

    move-result-object v0

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    goto :goto_0

    .line 81
    :cond_3
    invoke-static {v3}, Lcom/th3rdwave/safeareacontext/SerializationUtils;->edgeInsetsToJavaMap(Lcom/th3rdwave/safeareacontext/EdgeInsets;)Ljava/util/Map;

    move-result-object v1

    .line 83
    invoke-static {v0}, Lcom/th3rdwave/safeareacontext/SerializationUtils;->rectToJavaMap(Lcom/th3rdwave/safeareacontext/Rect;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "insets"

    const-string v3, "frame"

    .line 79
    invoke-static {v2, v1, v3, v0}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_0
    return-object v1
.end method


# virtual methods
.method protected bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/th3rdwave/safeareacontext/SafeAreaProvider;

    invoke-virtual {p0, p1, p2}, Lcom/th3rdwave/safeareacontext/SafeAreaProviderManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/th3rdwave/safeareacontext/SafeAreaProvider;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/th3rdwave/safeareacontext/SafeAreaProvider;)V
    .locals 1

    .line 42
    const-class v0, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 43
    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    .line 44
    new-instance v0, Lcom/th3rdwave/safeareacontext/SafeAreaProviderManager$1;

    invoke-direct {v0, p0, p1}, Lcom/th3rdwave/safeareacontext/SafeAreaProviderManager$1;-><init>(Lcom/th3rdwave/safeareacontext/SafeAreaProviderManager;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    invoke-virtual {p2, v0}, Lcom/th3rdwave/safeareacontext/SafeAreaProvider;->setOnInsetsChangeListener(Lcom/th3rdwave/safeareacontext/SafeAreaProvider$OnInsetsChangeListener;)V

    return-void
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/th3rdwave/safeareacontext/SafeAreaProviderManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/th3rdwave/safeareacontext/SafeAreaProvider;

    move-result-object p1

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/th3rdwave/safeareacontext/SafeAreaProvider;
    .locals 1

    .line 37
    new-instance v0, Lcom/th3rdwave/safeareacontext/SafeAreaProvider;

    invoke-direct {v0, p1}, Lcom/th3rdwave/safeareacontext/SafeAreaProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->builder()Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    const-string v1, "registrationName"

    const-string v2, "onInsetsChange"

    .line 55
    invoke-static {v1, v2}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "topInsetsChange"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/facebook/react/common/MapBuilder$Builder;->build()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExportedViewConstants()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaProviderManager;->getInitialWindowMetrics()Ljava/util/Map;

    move-result-object v0

    const-string v1, "initialWindowMetrics"

    .line 89
    invoke-static {v1, v0}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNCSafeAreaProvider"

    return-object v0
.end method
