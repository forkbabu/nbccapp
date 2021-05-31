.class public Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "ReactHorizontalScrollView.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ReactClippingViewGroup;
.implements Lcom/facebook/react/uimanager/FabricViewStateManager$HasFabricViewStateManager;


# static fields
.field private static final CONTENT_OFFSET_LEFT:Ljava/lang/String; = "contentOffsetLeft"

.field private static final CONTENT_OFFSET_TOP:Ljava/lang/String; = "contentOffsetTop"

.field private static final UNSET_CONTENT_OFFSET:I = -0x1

.field private static sScrollerField:Ljava/lang/reflect/Field; = null

.field private static sTriedToGetScrollerField:Z = false


# instance fields
.field private mActivelyScrolling:Z

.field private mClippingRect:Landroid/graphics/Rect;

.field private mDecelerationRate:F

.field private mDisableIntervalMomentum:Z

.field private mDragging:Z

.field private mEndBackground:Landroid/graphics/drawable/Drawable;

.field private mEndFillColor:I

.field private final mFabricViewStateManager:Lcom/facebook/react/uimanager/FabricViewStateManager;

.field private mFinalAnimatedPositionScrollX:I

.field private mFinalAnimatedPositionScrollY:I

.field private mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

.field private mLastStateUpdateScrollX:I

.field private mLastStateUpdateScrollY:I

.field private final mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

.field private mOverflow:Ljava/lang/String;

.field private mPagedArrowScrolling:Z

.field private mPagingEnabled:Z

.field private mPostTouchRunnable:Ljava/lang/Runnable;

.field private mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

.field private final mRect:Landroid/graphics/Rect;

.field private mRemoveClippedSubviews:Z

.field private mScrollAnimator:Landroid/animation/ValueAnimator;

.field private mScrollEnabled:Z

.field private mScrollPerfTag:Ljava/lang/String;

.field private final mScroller:Landroid/widget/OverScroller;

.field private mSendMomentumEvents:Z

.field private mSnapInterval:I

.field private mSnapOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSnapToEnd:Z

.field private mSnapToStart:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;

.field private pendingContentOffsetX:I

.field private pendingContentOffsetY:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;-><init>(Landroid/content/Context;Lcom/facebook/react/views/scroll/FpsListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/react/views/scroll/FpsListener;)V
    .locals 2

    .line 106
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance p1, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    invoke-direct {p1}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    .line 64
    new-instance p1, Lcom/facebook/react/views/scroll/VelocityHelper;

    invoke-direct {p1}, Lcom/facebook/react/views/scroll/VelocityHelper;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;

    .line 65
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mRect:Landroid/graphics/Rect;

    const-string p1, "hidden"

    .line 69
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mOverflow:Ljava/lang/String;

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPagingEnabled:Z

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollEnabled:Z

    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    .line 79
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mEndFillColor:I

    .line 80
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mDisableIntervalMomentum:Z

    .line 81
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSnapInterval:I

    const v1, 0x3f7c28f6    # 0.985f

    .line 82
    iput v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mDecelerationRate:F

    .line 84
    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSnapToStart:Z

    .line 85
    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSnapToEnd:Z

    .line 87
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPagedArrowScrolling:Z

    const/4 v0, -0x1

    .line 88
    iput v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->pendingContentOffsetX:I

    .line 89
    iput v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->pendingContentOffsetY:I

    .line 90
    new-instance v1, Lcom/facebook/react/uimanager/FabricViewStateManager;

    invoke-direct {v1}, Lcom/facebook/react/uimanager/FabricViewStateManager;-><init>()V

    iput-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFabricViewStateManager:Lcom/facebook/react/uimanager/FabricViewStateManager;

    .line 93
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFinalAnimatedPositionScrollX:I

    .line 94
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFinalAnimatedPositionScrollY:I

    .line 96
    iput v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mLastStateUpdateScrollX:I

    .line 97
    iput v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mLastStateUpdateScrollY:I

    .line 99
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 107
    new-instance p1, Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-direct {p1, p0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    .line 108
    iput-object p2, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    .line 110
    new-instance p1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$1;

    invoke-direct {p1, p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$1;-><init>(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 127
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getOverScrollerFromParent()Landroid/widget/OverScroller;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mActivelyScrolling:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mActivelyScrolling:Z

    return p1
.end method

.method static synthetic access$200(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->updateStateOnScroll()V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPagingEnabled:Z

    return p0
.end method

.method static synthetic access$400(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->flingAndSnap(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSendMomentumEvents:Z

    return p0
.end method

.method static synthetic access$600(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->disableFpsListener()V

    return-void
.end method

.method static synthetic access$702(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPostTouchRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$802(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFinalAnimatedPositionScrollX:I

    return p1
.end method

.method static synthetic access$902(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFinalAnimatedPositionScrollY:I

    return p1
.end method

.method private disableFpsListener()V
    .locals 2

    .line 600
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->isScrollPerfLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollPerfTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollPerfTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/react/views/scroll/FpsListener;->disable(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private enableFpsListener()V
    .locals 2

    .line 592
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->isScrollPerfLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollPerfTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollPerfTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/react/views/scroll/FpsListener;->enable(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private flingAndSnap(I)V
    .locals 27

    move-object/from16 v0, p0

    .line 788
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    .line 793
    :cond_0
    iget v1, v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSnapInterval:I

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSnapOffsets:Ljava/util/List;

    if-nez v1, :cond_1

    .line 794
    invoke-direct/range {p0 .. p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->smoothScrollAndSnap(I)V

    return-void

    .line 798
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->computeHorizontalScrollRange()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 799
    invoke-direct/range {p0 .. p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->predictFinalScrollPosition(I)I

    move-result v3

    .line 800
    iget-boolean v4, v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mDisableIntervalMomentum:Z

    if-eqz v4, :cond_2

    .line 801
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollX()I

    move-result v3

    .line 808
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getWidth()I

    move-result v4

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 812
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_4

    sub-int v3, v1, v3

    move/from16 v7, p1

    neg-int v7, v7

    goto :goto_1

    :cond_4
    move/from16 v7, p1

    .line 820
    :goto_1
    iget-object v8, v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSnapOffsets:Ljava/util/List;

    if-eqz v8, :cond_7

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 821
    iget-object v8, v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSnapOffsets:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 822
    iget-object v9, v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSnapOffsets:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v12, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 824
    :goto_2
    iget-object v13, v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSnapOffsets:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_8

    .line 825
    iget-object v13, v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSnapOffsets:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-gt v13, v3, :cond_5

    sub-int v14, v3, v13

    sub-int v15, v3, v11

    if-ge v14, v15, :cond_5

    move v11, v13

    :cond_5
    if-lt v13, v3, :cond_6

    sub-int v14, v13, v3

    sub-int v15, v12, v3

    if-ge v14, v15, :cond_6

    move v12, v13

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 840
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getSnapInterval()I

    move-result v8

    int-to-double v8, v8

    int-to-double v10, v3

    div-double/2addr v10, v8

    .line 842
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    mul-double v12, v12, v8

    double-to-int v12, v12

    .line 843
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    mul-double v10, v10, v8

    double-to-int v8, v10

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v9, v1

    move v11, v12

    move v12, v8

    const/4 v8, 0x0

    :cond_8
    sub-int v10, v3, v11

    sub-int v13, v12, v3

    if-ge v10, v13, :cond_9

    move v14, v11

    goto :goto_3

    :cond_9
    move v14, v12

    .line 852
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollX()I

    move-result v15

    if-eqz v5, :cond_a

    sub-int v15, v1, v15

    .line 856
    :cond_a
    iget-boolean v6, v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSnapToEnd:Z

    if-nez v6, :cond_c

    if-lt v3, v9, :cond_c

    if-lt v15, v9, :cond_b

    goto :goto_4

    :cond_b
    move v3, v9

    goto :goto_4

    .line 863
    :cond_c
    iget-boolean v6, v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSnapToStart:Z

    if-nez v6, :cond_e

    if-gt v3, v8, :cond_e

    if-gt v15, v8, :cond_d

    goto :goto_4

    :cond_d
    move v3, v8

    goto :goto_4

    :cond_e
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    if-lez v7, :cond_f

    int-to-double v10, v13

    mul-double v10, v10, v8

    double-to-int v3, v10

    add-int/2addr v7, v3

    move v3, v12

    goto :goto_4

    :cond_f
    if-gez v7, :cond_10

    int-to-double v12, v10

    mul-double v12, v12, v8

    double-to-int v3, v12

    sub-int/2addr v7, v3

    move v3, v11

    goto :goto_4

    :cond_10
    move v3, v14

    .line 885
    :goto_4
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-eqz v5, :cond_11

    sub-int v3, v1, v3

    neg-int v7, v7

    .line 896
    :cond_11
    iget-object v5, v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v5, :cond_15

    const/4 v6, 0x1

    .line 897
    iput-boolean v6, v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mActivelyScrolling:Z

    .line 900
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollX()I

    move-result v17

    .line 901
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollY()I

    move-result v18

    if-eqz v7, :cond_12

    move/from16 v19, v7

    goto :goto_5

    .line 904
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollX()I

    move-result v6

    sub-int v6, v3, v6

    move/from16 v19, v6

    :goto_5
    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    if-eqz v3, :cond_14

    if-ne v3, v1, :cond_13

    goto :goto_6

    :cond_13
    const/16 v25, 0x0

    goto :goto_7

    :cond_14
    :goto_6
    div-int/lit8 v2, v4, 0x2

    move/from16 v25, v2

    :goto_7
    const/16 v26, 0x0

    move-object/from16 v16, v5

    move/from16 v21, v3

    move/from16 v22, v3

    .line 899
    invoke-virtual/range {v16 .. v26}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 917
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->postInvalidateOnAnimation()V

    goto :goto_8

    .line 919
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->reactSmoothScrollTo(II)V

    :goto_8
    return-void
.end method

.method private getOverScrollerFromParent()Landroid/widget/OverScroller;
    .locals 4

    .line 134
    sget-boolean v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->sTriedToGetScrollerField:Z

    const-string v1, "ReactNative"

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 135
    sput-boolean v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->sTriedToGetScrollerField:Z

    .line 137
    :try_start_0
    const-class v2, Landroid/widget/HorizontalScrollView;

    const-string v3, "mScroller"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->sScrollerField:Ljava/lang/reflect/Field;

    .line 138
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Failed to get mScroller field for HorizontalScrollView! This app will exhibit the bounce-back scrolling bug :("

    .line 140
    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    :goto_0
    sget-object v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->sScrollerField:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 149
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 150
    instance-of v3, v0, Landroid/widget/OverScroller;

    if-eqz v3, :cond_1

    .line 151
    check-cast v0, Landroid/widget/OverScroller;

    move-object v2, v0

    goto :goto_1

    :cond_1
    const-string v0, "Failed to cast mScroller field in HorizontalScrollView (probably due to OEM changes to AOSP)! This app will exhibit the bounce-back scrolling bug :("

    .line 153
    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 160
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get mScroller from HorizontalScrollView!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_1
    return-object v2
.end method

.method private getPostAnimationScrollX()I
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFinalAnimatedPositionScrollX:I

    goto :goto_0

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollX()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getPostAnimationScrollY()I
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFinalAnimatedPositionScrollY:I

    goto :goto_0

    .line 709
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollY()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getScrollDelta(Landroid/view/View;)I
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 311
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 312
    iget-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    return p1
.end method

.method private getSnapInterval()I
    .locals 1

    .line 555
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSnapInterval:I

    if-eqz v0, :cond_0

    return v0

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getWidth()I

    move-result v0

    return v0
.end method

.method private handlePostTouchScrolling(II)V
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPostTouchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    return-void

    .line 636
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSendMomentumEvents:Z

    if-eqz v0, :cond_1

    .line 637
    invoke-static {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollMomentumBeginEvent(Landroid/view/ViewGroup;II)V

    :cond_1
    const/4 p1, 0x0

    .line 640
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mActivelyScrolling:Z

    .line 641
    new-instance p1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;

    invoke-direct {p1, p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;-><init>(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)V

    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPostTouchRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x14

    .line 694
    invoke-static {p0, p1, v0, v1}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method private isMostlyScrolledInView(Landroid/view/View;)Z
    .locals 2

    .line 329
    invoke-direct {p0, p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollDelta(Landroid/view/View;)I

    move-result v0

    .line 330
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_0

    .line 331
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isPartiallyScrolledInView(Landroid/view/View;)Z
    .locals 2

    .line 322
    invoke-direct {p0, p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollDelta(Landroid/view/View;)I

    move-result v0

    .line 323
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_0

    .line 324
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isScrollPerfLoggingEnabled()Z
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollPerfTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isScrolledInView(Landroid/view/View;)Z
    .locals 0

    .line 317
    invoke-direct {p0, p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollDelta(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private predictFinalScrollPosition(I)I
    .locals 12

    .line 716
    new-instance v11, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 717
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mDecelerationRate:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-virtual {v11, v1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 720
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->computeHorizontalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 721
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getWidth()I

    move-result v0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 723
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getPostAnimationScrollX()I

    move-result v1

    .line 724
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getPostAnimationScrollY()I

    move-result v2

    div-int/lit8 v9, v0, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move v3, p1

    .line 722
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 734
    invoke-virtual {v11}, Landroid/widget/OverScroller;->getFinalX()I

    move-result p1

    return p1
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 1

    .line 335
    invoke-direct {p0, p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollDelta(Landroid/view/View;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 338
    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method private setPendingContentOffsets(II)V
    .locals 2

    const/4 v0, 0x0

    .line 1047
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1048
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 1049
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->pendingContentOffsetX:I

    .line 1050
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->pendingContentOffsetY:I

    goto :goto_0

    .line 1052
    :cond_0
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->pendingContentOffsetX:I

    .line 1053
    iput p2, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->pendingContentOffsetY:I

    :goto_0
    return-void
.end method

.method private smoothScrollAndSnap(I)V
    .locals 11

    .line 743
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getSnapInterval()I

    move-result v0

    int-to-double v0, v0

    .line 744
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getPostAnimationScrollX()I

    move-result v2

    int-to-double v2, v2

    .line 745
    invoke-direct {p0, p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->predictFinalScrollPosition(I)I

    move-result v4

    int-to-double v4, v4

    div-double v6, v2, v0

    .line 747
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 748
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 749
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v7, v6

    div-double/2addr v4, v0

    .line 750
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    if-lez p1, :cond_0

    if-ne v9, v8, :cond_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    if-ne v8, v9, :cond_1

    add-int/lit8 v8, v8, -0x1

    :cond_1
    :goto_0
    if-lez p1, :cond_2

    if-ge v7, v9, :cond_2

    if-le v5, v8, :cond_2

    move v7, v9

    goto :goto_1

    :cond_2
    if-gez p1, :cond_3

    if-le v7, v8, :cond_3

    if-ge v5, v9, :cond_3

    move v7, v8

    :cond_3
    :goto_1
    int-to-double v4, v7

    mul-double v4, v4, v0

    cmpl-double p1, v4, v2

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 782
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mActivelyScrolling:Z

    double-to-int p1, v4

    .line 783
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->reactSmoothScrollTo(II)V

    :cond_4
    return-void
.end method

.method private smoothScrollToNextPage(I)V
    .locals 3

    .line 924
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getWidth()I

    move-result v0

    .line 925
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollX()I

    move-result v1

    .line 927
    div-int v2, v1, v0

    .line 928
    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    const/16 v1, 0x11

    if-ne p1, v1, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :goto_0
    const/4 p1, 0x0

    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    mul-int v2, v2, v0

    .line 942
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->reactSmoothScrollTo(II)V

    .line 943
    invoke-direct {p0, p1, p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->handlePostTouchScrolling(II)V

    return-void
.end method

.method private updateStateOnScroll()V
    .locals 2

    .line 1082
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollY()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->updateStateOnScroll(II)V

    return-void
.end method

.method private updateStateOnScroll(II)V
    .locals 2

    .line 1062
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mLastStateUpdateScrollX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mLastStateUpdateScrollY:I

    if-ne p2, v0, :cond_0

    return-void

    .line 1066
    :cond_0
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mLastStateUpdateScrollX:I

    .line 1067
    iput p2, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mLastStateUpdateScrollY:I

    .line 1069
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFabricViewStateManager:Lcom/facebook/react/uimanager/FabricViewStateManager;

    new-instance v1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$5;-><init>(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;II)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/FabricViewStateManager;->setState(Lcom/facebook/react/uimanager/FabricViewStateManager$StateUpdateCallback;)V

    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 289
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPagingEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPagedArrowScrolling:Z

    if-nez v0, :cond_2

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    invoke-super {p0, v0, p2, p3}, Landroid/widget/HorizontalScrollView;->addFocusables(Ljava/util/ArrayList;II)V

    .line 293
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 297
    invoke-direct {p0, p3}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->isScrolledInView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    invoke-direct {p0, p3}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->isPartiallyScrolledInView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    invoke-virtual {p3}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    :cond_1
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 304
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_3
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 5

    .line 399
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPagingEnabled:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 400
    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPagedArrowScrolling:Z

    .line 402
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 403
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 404
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 405
    invoke-virtual {p0, v2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 406
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-ne v4, v3, :cond_1

    .line 407
    invoke-direct {p0, v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->isScrolledInView(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->isMostlyScrolledInView(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 408
    invoke-direct {p0, p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->smoothScrollToNextPage(I)V

    .line 410
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 413
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->smoothScrollToNextPage(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 418
    :goto_0
    iput-boolean v2, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPagedArrowScrolling:Z

    goto :goto_1

    .line 420
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    move-result v0

    :goto_1
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 613
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mEndFillColor:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 614
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 615
    iget-object v2, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mEndBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 616
    iget-object v2, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mEndBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 617
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mEndBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 620
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 451
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 452
    iget-boolean v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollEnabled:Z

    if-nez v1, :cond_1

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 457
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public flashScrollIndicators()V
    .locals 0

    .line 228
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->awakenScrollBars()Z

    return-void
.end method

.method public fling(I)V
    .locals 11

    .line 471
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->getXFlingVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 473
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPagingEnabled:Z

    if-eqz v0, :cond_0

    .line 474
    invoke-direct {p0, p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->flingAndSnap(I)V

    goto :goto_0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getWidth()I

    move-result v0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 489
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 490
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollX()I

    move-result v2

    .line 491
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const/4 v7, 0x0

    const/4 v8, 0x0

    div-int/lit8 v9, v0, 0x2

    const/4 v10, 0x0

    move-object v0, v1

    move v1, v2

    move v2, v3

    move v3, p1

    .line 489
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 502
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 506
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->fling(I)V

    :goto_0
    const/4 v0, 0x0

    .line 508
    invoke-direct {p0, p1, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->handlePostTouchScrolling(II)V

    return-void
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 1

    .line 549
    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->clipChildRectsIfOverflowIsHidden:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mOverflow:Ljava/lang/String;

    .line 550
    invoke-static {p1, p2, p3, p0, v0}, Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;->getChildVisibleRectHelper(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/View;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 551
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public getClippingRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getFabricViewStateManager()Lcom/facebook/react/uimanager/FabricViewStateManager;
    .locals 1

    .line 1087
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFabricViewStateManager:Lcom/facebook/react/uimanager/FabricViewStateManager;

    return-object v0
.end method

.method public getRemoveClippedSubviews()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mRemoveClippedSubviews:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 521
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 522
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mRemoveClippedSubviews:Z

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->updateClippingRect()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 240
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mOverflow:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "visible"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 248
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 362
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 367
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/events/NativeGestureUtil;->notifyNativeGestureStarted(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 369
    invoke-static {p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollBeginDragEvent(Landroid/view/ViewGroup;)V

    const/4 p1, 0x1

    .line 370
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mDragging:Z

    .line 371
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->enableFpsListener()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "ReactNative"

    const-string v2, "Error intercepting touch event."

    .line 378
    invoke-static {v0, v2, p1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 264
    iget p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->pendingContentOffsetX:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollX()I

    move-result p1

    .line 266
    :goto_0
    iget p3, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->pendingContentOffsetY:I

    if-eq p3, p2, :cond_1

    goto :goto_1

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollY()I

    move-result p3

    .line 268
    :goto_1
    invoke-virtual {p0, p1, p3}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->reactScrollTo(II)V

    .line 269
    invoke-static {p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitLayoutEvent(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 253
    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/MeasureSpecAssertions;->assertExplicitMeasureSpec(II)V

    .line 256
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 255
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 578
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->computeHorizontalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    .line 580
    iget-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    move p1, v0

    .line 588
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onOverScrolled(IIZZ)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 344
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    const/4 p3, 0x1

    .line 346
    iput-boolean p3, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mActivelyScrolling:Z

    .line 348
    iget-object p3, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    invoke-virtual {p3, p1, p2}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->onScrollChanged(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 349
    iget-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mRemoveClippedSubviews:Z

    if-eqz p1, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->updateClippingRect()V

    .line 353
    :cond_0
    iget-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    .line 355
    invoke-virtual {p1}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->getXFlingVelocity()F

    move-result p1

    iget-object p2, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    .line 356
    invoke-virtual {p2}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->getYFlingVelocity()F

    move-result p2

    .line 353
    invoke-static {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;FF)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 513
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 514
    iget-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mRemoveClippedSubviews:Z

    if-eqz p1, :cond_0

    .line 515
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->updateClippingRect()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 428
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/scroll/VelocityHelper;->calculateVelocity(Landroid/view/MotionEvent;)V

    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 434
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mDragging:Z

    if-eqz v0, :cond_1

    .line 435
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->updateStateOnScroll()V

    .line 437
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;

    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/VelocityHelper;->getXVelocity()F

    move-result v0

    .line 438
    iget-object v2, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;

    invoke-virtual {v2}, Lcom/facebook/react/views/scroll/VelocityHelper;->getYVelocity()F

    move-result v2

    .line 439
    invoke-static {p0, v0, v2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEndDragEvent(Landroid/view/ViewGroup;FF)V

    .line 440
    iput-boolean v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mDragging:Z

    .line 443
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->handlePostTouchScrolling(II)V

    .line 446
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public pageScroll(I)Z
    .locals 1

    .line 386
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->pageScroll(I)Z

    move-result p1

    .line 388
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPagingEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 389
    invoke-direct {p0, v0, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->handlePostTouchScrolling(II)V

    :cond_0
    return p1
.end method

.method public reactScrollTo(II)V
    .locals 0

    .line 1034
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->scrollTo(II)V

    .line 1035
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->updateStateOnScroll(II)V

    .line 1036
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setPendingContentOffsets(II)V

    return-void
.end method

.method public reactSmoothScrollTo(II)V
    .locals 6

    .line 983
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 984
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 987
    :cond_0
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFinalAnimatedPositionScrollX:I

    .line 988
    iput p2, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFinalAnimatedPositionScrollY:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 989
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollX()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    const-string v4, "scrollX"

    invoke-static {v4, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v4, v0, [I

    .line 990
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollY()I

    move-result v5

    aput v5, v4, v3

    aput p2, v4, v2

    const-string v5, "scrollY"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v0, v3

    aput-object v4, v0, v2

    .line 991
    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    .line 993
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->getDefaultScrollAnimationDuration(Landroid/content/Context;)I

    move-result v1

    int-to-long v1, v1

    .line 992
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 994
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$3;

    invoke-direct {v1, p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$3;-><init>(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1003
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$4;

    invoke-direct {v1, p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$4;-><init>(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1022
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1023
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->updateStateOnScroll(II)V

    .line 1024
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setPendingContentOffsets(II)V

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 281
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPagingEnabled:Z

    if-nez v0, :cond_0

    .line 282
    invoke-direct {p0, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 284
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 948
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBackgroundColor(I)V

    return-void
.end method

.method public setBorderColor(IFF)V
    .locals 1

    .line 956
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderColor(IFF)V

    return-void
.end method

.method public setBorderRadius(F)V
    .locals 1

    .line 960
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderRadius(F)V

    return-void
.end method

.method public setBorderRadius(FI)V
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderRadius(FI)V

    return-void
.end method

.method public setBorderStyle(Ljava/lang/String;)V
    .locals 1

    .line 968
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderStyle(Ljava/lang/String;)V

    return-void
.end method

.method public setBorderWidth(IF)V
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderWidth(IF)V

    return-void
.end method

.method public setDecelerationRate(F)V
    .locals 2

    .line 204
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mDecelerationRate:F

    .line 206
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setFriction(F)V

    :cond_0
    return-void
.end method

.method public setDisableIntervalMomentum(Z)V
    .locals 0

    .line 188
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mDisableIntervalMomentum:Z

    return-void
.end method

.method public setEndFillColor(I)V
    .locals 1

    .line 562
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mEndFillColor:I

    if-eq p1, v0, :cond_0

    .line 563
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mEndFillColor:I

    .line 564
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    iget v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mEndFillColor:I

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mEndBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setOverflow(Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mOverflow:Ljava/lang/String;

    .line 233
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setPagingEnabled(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPagingEnabled:Z

    return-void
.end method

.method public setRemoveClippedSubviews(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mClippingRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mClippingRect:Landroid/graphics/Rect;

    .line 178
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mRemoveClippedSubviews:Z

    .line 179
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->updateClippingRect()V

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    .line 196
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollEnabled:Z

    return-void
.end method

.method public setScrollPerfTag(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollPerfTag:Ljava/lang/String;

    return-void
.end method

.method public setSendMomentumEvents(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSendMomentumEvents:Z

    return-void
.end method

.method public setSnapInterval(I)V
    .locals 0

    .line 212
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSnapInterval:I

    return-void
.end method

.method public setSnapOffsets(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSnapOffsets:Ljava/util/List;

    return-void
.end method

.method public setSnapToEnd(Z)V
    .locals 0

    .line 224
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSnapToEnd:Z

    return-void
.end method

.method public setSnapToStart(Z)V
    .locals 0

    .line 220
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSnapToStart:Z

    return-void
.end method

.method public updateClippingRect()V
    .locals 2

    .line 529
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mRemoveClippedSubviews:Z

    if-nez v0, :cond_0

    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {p0, v0}, Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;->calculateClippingRect(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 536
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 537
    instance-of v1, v0, Lcom/facebook/react/uimanager/ReactClippingViewGroup;

    if-eqz v1, :cond_1

    .line 538
    check-cast v0, Lcom/facebook/react/uimanager/ReactClippingViewGroup;

    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactClippingViewGroup;->updateClippingRect()V

    :cond_1
    return-void
.end method
