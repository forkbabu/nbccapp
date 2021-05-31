.class public Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;
.super Ljava/lang/Object;
.source "ReactAndroidHWInputDeviceHelper.java"


# static fields
.field private static final KEY_EVENTS_ACTIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLastFocusedViewId:I

.field private final mReactRootView:Lcom/facebook/react/ReactRootView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->builder()Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    const/16 v1, 0x17

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "select"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    const/16 v1, 0x42

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    const/16 v1, 0x3e

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    const/16 v1, 0x55

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "playPause"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    const/16 v1, 0x59

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rewind"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    const/16 v1, 0x5a

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fastForward"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    const/16 v1, 0x13

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "up"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    const/16 v1, 0x16

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "right"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    const/16 v1, 0x14

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "down"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    const/16 v1, 0x15

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "left"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/facebook/react/common/MapBuilder$Builder;->build()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;->KEY_EVENTS_ACTIONS:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/ReactRootView;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;->mLastFocusedViewId:I

    .line 47
    iput-object p1, p0, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;->mReactRootView:Lcom/facebook/react/ReactRootView;

    return-void
.end method

.method private dispatchEvent(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    .line 81
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;->dispatchEvent(Ljava/lang/String;II)V

    return-void
.end method

.method private dispatchEvent(Ljava/lang/String;II)V
    .locals 2

    .line 85
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    const-string v1, "eventType"

    .line 86
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "eventKeyAction"

    .line 87
    invoke-interface {v0, p1, p3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const-string p1, "tag"

    .line 89
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;->mReactRootView:Lcom/facebook/react/ReactRootView;

    const-string p2, "onHWKeyEvent"

    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/ReactRootView;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 3

    .line 74
    iget v0, p0, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;->mLastFocusedViewId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v2, "blur"

    .line 75
    invoke-direct {p0, v2, v0}, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;->dispatchEvent(Ljava/lang/String;I)V

    .line 77
    :cond_0
    iput v1, p0, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;->mLastFocusedViewId:I

    return-void
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3

    .line 52
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 53
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_1

    .line 54
    :cond_0
    sget-object v1, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;->KEY_EVENTS_ACTIONS:Ljava/util/Map;

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;->mLastFocusedViewId:I

    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;->dispatchEvent(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public onFocusChanged(Landroid/view/View;)V
    .locals 2

    .line 62
    iget v0, p0, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;->mLastFocusedViewId:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 65
    :cond_0
    iget v0, p0, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;->mLastFocusedViewId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-string v1, "blur"

    .line 66
    invoke-direct {p0, v1, v0}, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;->dispatchEvent(Ljava/lang/String;I)V

    .line 68
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;->mLastFocusedViewId:I

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "focus"

    invoke-direct {p0, v0, p1}, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;->dispatchEvent(Ljava/lang/String;I)V

    return-void
.end method
