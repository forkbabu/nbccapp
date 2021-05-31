.class public Lcom/facebook/react/views/scroll/ReactScrollViewHelper;
.super Ljava/lang/Object;
.source "ReactScrollViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$OverScrollerDurationGetter;,
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;
    }
.end annotation


# static fields
.field public static final AUTO:Ljava/lang/String; = "auto"

.field public static final MOMENTUM_DELAY:J = 0x14L

.field public static final OVER_SCROLL_ALWAYS:Ljava/lang/String; = "always"

.field public static final OVER_SCROLL_NEVER:Ljava/lang/String; = "never"

.field private static SMOOTH_SCROLL_DURATION:I

.field private static mSmoothScrollDurationInitialized:Z

.field private static sScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->sScrollListeners:Ljava/util/List;

    const/16 v0, 0xfa

    .line 41
    sput v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->SMOOTH_SCROLL_DURATION:I

    const/4 v0, 0x0

    .line 42
    sput-boolean v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->mSmoothScrollDurationInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addScrollListener(Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;)V
    .locals 1

    .line 158
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->sScrollListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static emitLayoutEvent(Landroid/view/ViewGroup;)V
    .locals 2

    .line 101
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->sScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;

    .line 102
    invoke-interface {v1, p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;->onLayout(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static emitScrollBeginDragEvent(Landroid/view/ViewGroup;)V
    .locals 1

    .line 50
    sget-object v0, Lcom/facebook/react/views/scroll/ScrollEventType;->BEGIN_DRAG:Lcom/facebook/react/views/scroll/ScrollEventType;

    invoke-static {p0, v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;)V

    return-void
.end method

.method public static emitScrollEndDragEvent(Landroid/view/ViewGroup;FF)V
    .locals 1

    .line 55
    sget-object v0, Lcom/facebook/react/views/scroll/ScrollEventType;->END_DRAG:Lcom/facebook/react/views/scroll/ScrollEventType;

    invoke-static {p0, v0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FF)V

    return-void
.end method

.method public static emitScrollEvent(Landroid/view/ViewGroup;FF)V
    .locals 1

    .line 46
    sget-object v0, Lcom/facebook/react/views/scroll/ScrollEventType;->SCROLL:Lcom/facebook/react/views/scroll/ScrollEventType;

    invoke-static {p0, v0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FF)V

    return-void
.end method

.method private static emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-static {p0, p1, v0, v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FF)V

    return-void
.end method

.method private static emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FF)V
    .locals 12

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    sget-object v1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->sScrollListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;

    .line 80
    invoke-interface {v2, p0, p1, p2, p3}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;->onScroll(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FF)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    .line 84
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    .line 87
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    .line 89
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    .line 90
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 95
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    .line 96
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v11

    move-object v3, p1

    move v6, p2

    move v7, p3

    .line 86
    invoke-static/range {v2 .. v11}, Lcom/facebook/react/views/scroll/ScrollEvent;->obtain(ILcom/facebook/react/views/scroll/ScrollEventType;IIFFIIII)Lcom/facebook/react/views/scroll/ScrollEvent;

    move-result-object p0

    .line 85
    invoke-interface {v1, p0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method public static emitScrollMomentumBeginEvent(Landroid/view/ViewGroup;II)V
    .locals 1

    .line 60
    sget-object v0, Lcom/facebook/react/views/scroll/ScrollEventType;->MOMENTUM_BEGIN:Lcom/facebook/react/views/scroll/ScrollEventType;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-static {p0, v0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FF)V

    return-void
.end method

.method public static emitScrollMomentumEndEvent(Landroid/view/ViewGroup;)V
    .locals 1

    .line 64
    sget-object v0, Lcom/facebook/react/views/scroll/ScrollEventType;->MOMENTUM_END:Lcom/facebook/react/views/scroll/ScrollEventType;

    invoke-static {p0, v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;)V

    return-void
.end method

.method public static getDefaultScrollAnimationDuration(Landroid/content/Context;)I
    .locals 1

    .line 119
    sget-boolean v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->mSmoothScrollDurationInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 120
    sput-boolean v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->mSmoothScrollDurationInitialized:Z

    .line 123
    :try_start_0
    new-instance v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$OverScrollerDurationGetter;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$OverScrollerDurationGetter;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$OverScrollerDurationGetter;->getScrollAnimationDuration()I

    move-result p0

    sput p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->SMOOTH_SCROLL_DURATION:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :catchall_0
    :cond_0
    sget p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->SMOOTH_SCROLL_DURATION:I

    return p0
.end method

.method public static parseOverScrollMode(Ljava/lang/String;)I
    .locals 3

    if-eqz p0, :cond_3

    const-string v0, "auto"

    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "always"

    .line 109
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const-string v0, "never"

    .line 111
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 114
    :cond_2
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong overScrollMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static removeScrollListener(Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;)V
    .locals 1

    .line 162
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->sScrollListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
