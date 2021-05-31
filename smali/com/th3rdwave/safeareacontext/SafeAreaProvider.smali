.class public Lcom/th3rdwave/safeareacontext/SafeAreaProvider;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "SafeAreaProvider.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/th3rdwave/safeareacontext/SafeAreaProvider$OnInsetsChangeListener;
    }
.end annotation


# instance fields
.field private mInsetsChangeListener:Lcom/th3rdwave/safeareacontext/SafeAreaProvider$OnInsetsChangeListener;

.field private mLastFrame:Lcom/th3rdwave/safeareacontext/Rect;

.field private mLastInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private maybeUpdateInsets()V
    .locals 4

    .line 28
    invoke-static {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaUtils;->getSafeAreaInsets(Landroid/view/View;)Lcom/th3rdwave/safeareacontext/EdgeInsets;

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaProvider;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, p0}, Lcom/th3rdwave/safeareacontext/SafeAreaUtils;->getFrame(Landroid/view/ViewGroup;Landroid/view/View;)Lcom/th3rdwave/safeareacontext/Rect;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 30
    iget-object v2, p0, Lcom/th3rdwave/safeareacontext/SafeAreaProvider;->mLastInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/th3rdwave/safeareacontext/SafeAreaProvider;->mLastFrame:Lcom/th3rdwave/safeareacontext/Rect;

    if-eqz v3, :cond_0

    .line 33
    invoke-virtual {v2, v0}, Lcom/th3rdwave/safeareacontext/EdgeInsets;->equalsToEdgeInsets(Lcom/th3rdwave/safeareacontext/EdgeInsets;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/th3rdwave/safeareacontext/SafeAreaProvider;->mLastFrame:Lcom/th3rdwave/safeareacontext/Rect;

    .line 34
    invoke-virtual {v2, v1}, Lcom/th3rdwave/safeareacontext/Rect;->equalsToRect(Lcom/th3rdwave/safeareacontext/Rect;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/th3rdwave/safeareacontext/SafeAreaProvider;->mInsetsChangeListener:Lcom/th3rdwave/safeareacontext/SafeAreaProvider$OnInsetsChangeListener;

    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/th3rdwave/safeareacontext/SafeAreaProvider$OnInsetsChangeListener;

    invoke-interface {v2, p0, v0, v1}, Lcom/th3rdwave/safeareacontext/SafeAreaProvider$OnInsetsChangeListener;->onInsetsChange(Lcom/th3rdwave/safeareacontext/SafeAreaProvider;Lcom/th3rdwave/safeareacontext/EdgeInsets;Lcom/th3rdwave/safeareacontext/Rect;)V

    .line 36
    iput-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaProvider;->mLastInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;

    .line 37
    iput-object v1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaProvider;->mLastFrame:Lcom/th3rdwave/safeareacontext/Rect;

    :cond_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 43
    invoke-super {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->onAttachedToWindow()V

    .line 45
    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaProvider;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 46
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaProvider;->maybeUpdateInsets()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->onDetachedFromWindow()V

    .line 53
    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaProvider;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaProvider;->maybeUpdateInsets()V

    const/4 v0, 0x1

    return v0
.end method

.method public setOnInsetsChangeListener(Lcom/th3rdwave/safeareacontext/SafeAreaProvider$OnInsetsChangeListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaProvider;->mInsetsChangeListener:Lcom/th3rdwave/safeareacontext/SafeAreaProvider$OnInsetsChangeListener;

    return-void
.end method
