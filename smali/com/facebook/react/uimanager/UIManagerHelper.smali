.class public Lcom/facebook/react/uimanager/UIManagerHelper;
.super Ljava/lang/Object;
.source "UIManagerHelper.java"


# static fields
.field public static final PADDING_BOTTOM_INDEX:I = 0x3

.field public static final PADDING_END_INDEX:I = 0x1

.field public static final PADDING_START_INDEX:I = 0x0

.field public static final PADDING_TOP_INDEX:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultTextInputPadding(Lcom/facebook/react/uimanager/ThemedReactContext;)[F
    .locals 3

    .line 142
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x4

    new-array p0, p0, [F

    .line 144
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    const/4 v2, 0x0

    aput v1, p0, v2

    .line 145
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    const/4 v2, 0x1

    aput v1, p0, v2

    .line 146
    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    const/4 v2, 0x2

    aput v1, p0, v2

    .line 147
    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    const/4 v1, 0x3

    aput v0, p0, v1

    return-object p0
.end method

.method public static getEventDispatcher(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->isBridgeless()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    instance-of p1, p0, Lcom/facebook/react/uimanager/ThemedReactContext;

    if-eqz p1, :cond_0

    .line 113
    check-cast p0, Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    .line 115
    :cond_0
    check-cast p0, Lcom/facebook/react/uimanager/events/EventDispatcherProvider;

    invoke-interface {p0}, Lcom/facebook/react/uimanager/events/EventDispatcherProvider;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x0

    .line 117
    invoke-static {p0, p1, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;IZ)Lcom/facebook/react/bridge/UIManager;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    .line 118
    :cond_2
    invoke-interface {p0}, Lcom/facebook/react/bridge/UIManager;->getEventDispatcher()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/uimanager/events/EventDispatcher;

    :goto_0
    return-object p0
.end method

.method public static getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;
    .locals 0

    .line 100
    invoke-static {p1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcher(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public static getReactContext(Landroid/view/View;)Lcom/facebook/react/bridge/ReactContext;
    .locals 1

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 131
    instance-of v0, p0, Lcom/facebook/react/bridge/ReactContext;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    .line 132
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 134
    :cond_0
    check-cast p0, Lcom/facebook/react/bridge/ReactContext;

    return-object p0
.end method

.method public static getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;
    .locals 1

    const/4 v0, 0x1

    .line 46
    invoke-static {p0, p1, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;IZ)Lcom/facebook/react/bridge/UIManager;

    move-result-object p0

    return-object p0
.end method

.method private static getUIManager(Lcom/facebook/react/bridge/ReactContext;IZ)Lcom/facebook/react/bridge/UIManager;
    .locals 4

    .line 54
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->isBridgeless()Z

    move-result v0

    const-string v1, "UIManagerHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 56
    sget-object p1, Lcom/facebook/react/bridge/JSIModuleType;->UIManager:Lcom/facebook/react/bridge/JSIModuleType;

    .line 57
    invoke-virtual {p0, p1}, Lcom/facebook/react/bridge/ReactContext;->getJSIModule(Lcom/facebook/react/bridge/JSIModuleType;)Lcom/facebook/react/bridge/JSIModule;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/facebook/react/bridge/JSIModuleType;->UIManager:Lcom/facebook/react/bridge/JSIModuleType;

    .line 58
    invoke-virtual {p0, p1}, Lcom/facebook/react/bridge/ReactContext;->getJSIModule(Lcom/facebook/react/bridge/JSIModuleType;)Lcom/facebook/react/bridge/JSIModule;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/bridge/UIManager;

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    if-nez p0, :cond_1

    .line 61
    new-instance p0, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    const-string p1, "Cannot get UIManager because the instance hasn\'t been initialized yet."

    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lcom/facebook/react/bridge/ReactSoftException;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_1
    return-object p0

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->hasCatalystInstance()Z

    move-result v0

    if-nez v0, :cond_3

    .line 71
    new-instance p0, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    const-string p1, "Cannot get UIManager because the context doesn\'t contain a CatalystInstance."

    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lcom/facebook/react/bridge/ReactSoftException;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    .line 79
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->hasActiveCatalystInstance()Z

    move-result v0

    if-nez v0, :cond_4

    .line 80
    new-instance v0, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    const-string v3, "Cannot get UIManager because the context doesn\'t contain an active CatalystInstance."

    invoke-direct {v0, v3}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/facebook/react/bridge/ReactSoftException;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_4

    return-object v2

    .line 88
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object p0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_5

    .line 89
    sget-object p1, Lcom/facebook/react/bridge/JSIModuleType;->UIManager:Lcom/facebook/react/bridge/JSIModuleType;

    .line 90
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/CatalystInstance;->getJSIModule(Lcom/facebook/react/bridge/JSIModuleType;)Lcom/facebook/react/bridge/JSIModule;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/bridge/UIManager;

    goto :goto_1

    :cond_5
    const-class p1, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 91
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/CatalystInstance;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/bridge/UIManager;

    :goto_1
    return-object p0
.end method

.method public static getUIManagerForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;
    .locals 0

    .line 40
    invoke-static {p1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object p0

    return-object p0
.end method
