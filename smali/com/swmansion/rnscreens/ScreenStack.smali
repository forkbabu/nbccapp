.class public Lcom/swmansion/rnscreens/ScreenStack;
.super Lcom/swmansion/rnscreens/ScreenContainer;
.source "ScreenStack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/rnscreens/ScreenContainer<",
        "Lcom/swmansion/rnscreens/ScreenStackFragment;",
        ">;"
    }
.end annotation


# static fields
.field private static final BACK_STACK_TAG:Ljava/lang/String; = "RN_SCREEN_LAST"


# instance fields
.field private final mBackStackListener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

.field private final mDismissed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/swmansion/rnscreens/ScreenStackFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mLifecycleCallbacks:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

.field private mRemovalTransitionStarted:Z

.field private final mStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/rnscreens/ScreenStackFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    .line 23
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mRemovalTransitionStarted:Z

    .line 28
    new-instance p1, Lcom/swmansion/rnscreens/ScreenStack$1;

    invoke-direct {p1, p0}, Lcom/swmansion/rnscreens/ScreenStack$1;-><init>(Lcom/swmansion/rnscreens/ScreenStack;)V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mBackStackListener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    .line 40
    new-instance p1, Lcom/swmansion/rnscreens/ScreenStack$2;

    invoke-direct {p1, p0}, Lcom/swmansion/rnscreens/ScreenStack$2;-><init>(Lcom/swmansion/rnscreens/ScreenStack;)V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mLifecycleCallbacks:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/swmansion/rnscreens/ScreenStack;)Lcom/swmansion/rnscreens/ScreenStackFragment;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/swmansion/rnscreens/ScreenStack;Lcom/swmansion/rnscreens/ScreenStackFragment;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/ScreenStack;->setupBackHandlerIfNeeded(Lcom/swmansion/rnscreens/ScreenStackFragment;)V

    return-void
.end method

.method private dispatchOnFinishTransitioning()V
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 123
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 124
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    new-instance v1, Lcom/swmansion/rnscreens/StackFinishTransitioningEvent;

    .line 125
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/swmansion/rnscreens/StackFinishTransitioningEvent;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method private static isCustomAnimation(Lcom/swmansion/rnscreens/Screen$StackAnimation;)Z
    .locals 1

    .line 344
    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackAnimation;->SLIDE_FROM_RIGHT:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackAnimation;->SLIDE_FROM_LEFT:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isTransparent(Lcom/swmansion/rnscreens/ScreenStackFragment;)Z
    .locals 1

    .line 348
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getStackPresentation()Lcom/swmansion/rnscreens/Screen$StackPresentation;

    move-result-object p0

    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackPresentation;->TRANSPARENT_MODAL:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setupBackHandlerIfNeeded(Lcom/swmansion/rnscreens/ScreenStackFragment;)V
    .locals 6

    .line 316
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mBackStackListener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 323
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "RN_SCREEN_LAST"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 325
    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 326
    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 327
    iget-object v5, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eq p1, v0, :cond_3

    .line 332
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->isDismissable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 333
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 334
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 335
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 336
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 337
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 338
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 339
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mBackStackListener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected bridge synthetic adapt(Lcom/swmansion/rnscreens/Screen;)Lcom/swmansion/rnscreens/ScreenFragment;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenStack;->adapt(Lcom/swmansion/rnscreens/Screen;)Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object p1

    return-object p1
.end method

.method protected adapt(Lcom/swmansion/rnscreens/Screen;)Lcom/swmansion/rnscreens/ScreenStackFragment;
    .locals 1

    .line 75
    new-instance v0, Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-direct {v0, p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;-><init>(Lcom/swmansion/rnscreens/Screen;)V

    return-object v0
.end method

.method public dismiss(Lcom/swmansion/rnscreens/ScreenStackFragment;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->markUpdated()V

    return-void
.end method

.method public endViewTransition(Landroid/view/View;)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->endViewTransition(Landroid/view/View;)V

    .line 109
    iget-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mRemovalTransitionStarted:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mRemovalTransitionStarted:Z

    .line 111
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStack;->dispatchOnFinishTransitioning()V

    :cond_0
    return-void
.end method

.method public getRootScreen()Lcom/swmansion/rnscreens/Screen;
    .locals 5

    .line 64
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 65
    invoke-virtual {p0, v1}, Lcom/swmansion/rnscreens/ScreenStack;->getScreenAt(I)Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    .line 66
    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stack has no root screen set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTopScreen()Lcom/swmansion/rnscreens/Screen;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected hasScreen(Lcom/swmansion/rnscreens/ScreenFragment;)Z
    .locals 1

    .line 143
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->hasScreen(Lcom/swmansion/rnscreens/ScreenFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected notifyContainerUpdate()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 292
    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->onContainerUpdate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 96
    invoke-super {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->onAttachedToWindow()V

    .line 97
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mLifecycleCallbacks:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mBackStackListener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 82
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mLifecycleCallbacks:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    .line 83
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x1

    const-string v2, "RN_SCREEN_LAST"

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 91
    :cond_0
    invoke-super {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->onDetachedFromWindow()V

    return-void
.end method

.method public onViewAppearTransitionEnd()V
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mRemovalTransitionStarted:Z

    if-nez v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStack;->dispatchOnFinishTransitioning()V

    :cond_0
    return-void
.end method

.method protected performUpdate()V
    .locals 9

    .line 155
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_0
    if-ltz v0, :cond_4

    .line 156
    iget-object v5, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 157
    iget-object v6, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    if-nez v3, :cond_1

    .line 160
    invoke-static {v5}, Lcom/swmansion/rnscreens/ScreenStack;->isTransparent(Lcom/swmansion/rnscreens/ScreenStackFragment;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v5

    goto :goto_2

    :cond_0
    move-object v3, v5

    goto :goto_1

    .line 165
    :cond_1
    invoke-static {v5}, Lcom/swmansion/rnscreens/ScreenStack;->isTransparent(Lcom/swmansion/rnscreens/ScreenStackFragment;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v5

    goto :goto_2

    :cond_2
    move-object v4, v5

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 176
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_7

    .line 178
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    .line 183
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v3}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getReplaceAnimation()Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    move-result-object v0

    sget-object v2, Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;->POP:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    if-eq v0, v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x1

    .line 184
    :goto_4
    invoke-virtual {v3}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getStackAnimation()Lcom/swmansion/rnscreens/Screen$StackAnimation;

    move-result-object v2

    goto :goto_5

    .line 186
    :cond_7
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v3}, Lcom/swmansion/rnscreens/ScreenStackFragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 189
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getStackAnimation()Lcom/swmansion/rnscreens/Screen$StackAnimation;

    move-result-object v2

    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    const/4 v0, 0x1

    :goto_5
    const/16 v6, 0x1001

    if-eqz v2, :cond_e

    const/4 v7, 0x2

    if-eqz v0, :cond_b

    .line 197
    sget-object v0, Lcom/swmansion/rnscreens/ScreenStack$4;->$SwitchMap$com$swmansion$rnscreens$Screen$StackAnimation:[I

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen$StackAnimation;->ordinal()I

    move-result v8

    aget v0, v0, v8

    if-eq v0, v1, :cond_a

    if-eq v0, v7, :cond_9

    goto :goto_6

    .line 202
    :cond_9
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v7, Lcom/swmansion/rnscreens/R$anim;->rns_slide_in_from_left:I

    sget v8, Lcom/swmansion/rnscreens/R$anim;->rns_slide_out_to_right:I

    invoke-virtual {v0, v7, v8}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_6

    .line 199
    :cond_a
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v7, Lcom/swmansion/rnscreens/R$anim;->rns_slide_in_from_right:I

    sget v8, Lcom/swmansion/rnscreens/R$anim;->rns_slide_out_to_left:I

    invoke-virtual {v0, v7, v8}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_6

    :cond_b
    const/16 v6, 0x2002

    .line 208
    sget-object v0, Lcom/swmansion/rnscreens/ScreenStack$4;->$SwitchMap$com$swmansion$rnscreens$Screen$StackAnimation:[I

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen$StackAnimation;->ordinal()I

    move-result v8

    aget v0, v0, v8

    if-eq v0, v1, :cond_d

    if-eq v0, v7, :cond_c

    goto :goto_6

    .line 213
    :cond_c
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v7, Lcom/swmansion/rnscreens/R$anim;->rns_slide_in_from_right:I

    sget v8, Lcom/swmansion/rnscreens/R$anim;->rns_slide_out_to_left:I

    invoke-virtual {v0, v7, v8}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_6

    .line 210
    :cond_d
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v7, Lcom/swmansion/rnscreens/R$anim;->rns_slide_in_from_left:I

    sget v8, Lcom/swmansion/rnscreens/R$anim;->rns_slide_out_to_right:I

    invoke-virtual {v0, v7, v8}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 219
    :cond_e
    :goto_6
    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackAnimation;->NONE:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    if-ne v2, v0, :cond_f

    const/4 v6, 0x0

    .line 222
    :cond_f
    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackAnimation;->FADE:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    if-ne v2, v0, :cond_10

    const/16 v6, 0x1003

    :cond_10
    if-eqz v2, :cond_11

    .line 226
    invoke-static {v2}, Lcom/swmansion/rnscreens/ScreenStack;->isCustomAnimation(Lcom/swmansion/rnscreens/Screen$StackAnimation;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 227
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    .line 232
    :cond_11
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 233
    iget-object v6, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 234
    :cond_13
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_7

    .line 238
    :cond_14
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eq v2, v3, :cond_16

    if-eq v2, v4, :cond_16

    .line 240
    iget-object v6, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 241
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_16
    if-ne v2, v4, :cond_15

    :cond_17
    if-eqz v4, :cond_1a

    .line 251
    invoke-virtual {v4}, Lcom/swmansion/rnscreens/ScreenStackFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 255
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v1, :cond_19

    if-ne v2, v4, :cond_18

    const/4 v1, 0x0

    .line 264
    :cond_19
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getId()I

    move-result v7

    invoke-virtual {v6, v7, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    new-instance v6, Lcom/swmansion/rnscreens/ScreenStack$3;

    invoke-direct {v6, p0, v3}, Lcom/swmansion/rnscreens/ScreenStack$3;-><init>(Lcom/swmansion/rnscreens/ScreenStack;Lcom/swmansion/rnscreens/ScreenStackFragment;)V

    invoke-virtual {v2, v6}, Landroidx/fragment/app/FragmentTransaction;->runOnCommit(Ljava/lang/Runnable;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_8

    :cond_1a
    if-eqz v3, :cond_1b

    .line 273
    invoke-virtual {v3}, Lcom/swmansion/rnscreens/ScreenStackFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 274
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 277
    :cond_1b
    iput-object v3, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 279
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 280
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 282
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->tryCommitTransaction()V

    .line 284
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v0, :cond_1c

    .line 285
    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/ScreenStack;->setupBackHandlerIfNeeded(Lcom/swmansion/rnscreens/ScreenStackFragment;)V

    :cond_1c
    return-void
.end method

.method protected removeAllScreens()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 138
    invoke-super {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->removeAllScreens()V

    return-void
.end method

.method protected removeScreenAt(I)V
    .locals 2

    .line 130
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenStack;->getScreenAt(I)Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 132
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->removeScreenAt(I)V

    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->startViewTransition(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mRemovalTransitionStarted:Z

    return-void
.end method
