.class public Lcom/th3rdwave/safeareacontext/SafeAreaView;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "SafeAreaView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# static fields
.field private static final MAX_WAIT_TIME_NANO:J = 0x1dcd6500L


# instance fields
.field private mEdges:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;",
            ">;"
        }
    .end annotation
.end field

.field private mInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;

.field private mMode:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

.field private mProviderView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    .line 22
    sget-object p1, Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;->PADDING:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    iput-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mMode:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    return-void
.end method

.method private findProvider()Landroid/view/View;
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 123
    instance-of v1, v0, Lcom/th3rdwave/safeareacontext/SafeAreaProvider;

    if-eqz v1, :cond_0

    .line 124
    check-cast v0, Landroid/view/View;

    return-object v0

    .line 126
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static getReactContext(Landroid/view/View;)Lcom/facebook/react/bridge/ReactContext;
    .locals 1

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 36
    instance-of v0, p0, Lcom/facebook/react/bridge/ReactContext;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    .line 37
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 39
    :cond_0
    check-cast p0, Lcom/facebook/react/bridge/ReactContext;

    return-object p0
.end method

.method private maybeUpdateInsets()Z
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mProviderView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 111
    :cond_0
    invoke-static {v0}, Lcom/th3rdwave/safeareacontext/SafeAreaUtils;->getSafeAreaInsets(Landroid/view/View;)Lcom/th3rdwave/safeareacontext/EdgeInsets;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 112
    iget-object v2, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/th3rdwave/safeareacontext/EdgeInsets;->equalsToEdgeInsets(Lcom/th3rdwave/safeareacontext/EdgeInsets;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 113
    :cond_1
    iput-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;

    .line 114
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->updateInsets()V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private updateInsets()V
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mEdges:Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;

    .line 46
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 48
    :goto_0
    new-instance v1, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    iget-object v2, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;

    iget-object v3, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mMode:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    invoke-direct {v1, v2, v3, v0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;-><init>(Lcom/th3rdwave/safeareacontext/EdgeInsets;Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;Ljava/util/EnumSet;)V

    .line 50
    invoke-static {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->getReactContext(Landroid/view/View;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 51
    const-class v2, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0, v2}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/uimanager/UIManagerModule;->setViewLocalData(ILjava/lang/Object;)V

    .line 54
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->waitForReactLayout()V

    :cond_1
    return-void
.end method

.method private waitForReactLayout()V
    .locals 8

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 68
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 70
    invoke-static {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->getReactContext(Landroid/view/View;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v3

    new-instance v4, Lcom/th3rdwave/safeareacontext/SafeAreaView$1;

    invoke-direct {v4, p0, v0}, Lcom/th3rdwave/safeareacontext/SafeAreaView$1;-><init>(Lcom/th3rdwave/safeareacontext/SafeAreaView;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v3, v4}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    .line 80
    monitor-enter v0

    const-wide/16 v3, 0x0

    .line 81
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v6, 0x1dcd6500

    if-nez v5, :cond_0

    cmp-long v5, v3, v6

    if-gez v5, :cond_0

    const-wide/16 v5, 0x1f4

    .line 83
    :try_start_1
    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    const/4 v5, 0x1

    .line 86
    :try_start_2
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    add-long/2addr v3, v5

    goto :goto_0

    :cond_0
    cmp-long v1, v3, v6

    if-ltz v1, :cond_1

    const-string v1, "SafeAreaView"

    const-string v2, "Timed out waiting for layout."

    .line 92
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 133
    invoke-super {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->onAttachedToWindow()V

    .line 135
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->findProvider()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mProviderView:Landroid/view/View;

    .line 137
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 138
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->maybeUpdateInsets()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 143
    invoke-super {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->onDetachedFromWindow()V

    .line 145
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mProviderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mProviderView:Landroid/view/View;

    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .line 153
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->maybeUpdateInsets()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->requestLayout()V

    :cond_0
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setEdges(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;",
            ">;)V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mEdges:Ljava/util/EnumSet;

    .line 104
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->updateInsets()V

    return-void
.end method

.method public setMode(Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mMode:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    .line 99
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->updateInsets()V

    return-void
.end method
