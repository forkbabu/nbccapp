.class public Lcom/facebook/react/views/view/ReactViewGroup;
.super Landroid/view/ViewGroup;
.source "ReactViewGroup.java"

# interfaces
.implements Lcom/facebook/react/touch/ReactInterceptingViewGroup;
.implements Lcom/facebook/react/uimanager/ReactClippingViewGroup;
.implements Lcom/facebook/react/uimanager/ReactPointerEventsView;
.implements Lcom/facebook/react/touch/ReactHitSlopView;
.implements Lcom/facebook/react/uimanager/ReactZIndexedViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final DEFAULT_BACKGROUND_COLOR:I

.field private static final sDefaultLayoutParam:Landroid/view/ViewGroup$LayoutParams;

.field private static final sHelperRect:Landroid/graphics/Rect;


# instance fields
.field private mAllChildren:[Landroid/view/View;

.field private mAllChildrenCount:I

.field private mBackfaceOpacity:F

.field private mBackfaceVisibility:Ljava/lang/String;

.field private mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

.field private mClippingRect:Landroid/graphics/Rect;

.field private final mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

.field private mHitSlopRect:Landroid/graphics/Rect;

.field private mLayoutDirection:I

.field private mNeedsOffscreenAlphaCompositing:Z

.field private mOnInterceptTouchEventListener:Lcom/facebook/react/touch/OnInterceptTouchEventListener;

.field private mOverflow:Ljava/lang/String;

.field private mPath:Landroid/graphics/Path;

.field private mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

.field private mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

.field private mRemoveClippedSubviews:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/react/views/view/ReactViewGroup;->sDefaultLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 132
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 114
    iput-boolean p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 120
    sget-object v0, Lcom/facebook/react/uimanager/PointerEvents;->AUTO:Lcom/facebook/react/uimanager/PointerEvents;

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    .line 124
    iput-boolean p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mNeedsOffscreenAlphaCompositing:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 128
    iput v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mBackfaceOpacity:F

    const-string v0, "visible"

    .line 129
    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mBackfaceVisibility:Ljava/lang/String;

    .line 133
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->setClipChildren(Z)V

    .line 134
    new-instance p1, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-direct {p1, p0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/views/view/ReactViewGroup;Landroid/view/View;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->updateSubviewClipStatus(Landroid/view/View;)V

    return-void
.end method

.method private addInArray(Landroid/view/View;I)V
    .locals 4

    .line 604
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    .line 605
    iget v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    .line 606
    array-length v2, v0

    const/4 v3, 0x0

    if-ne p2, v1, :cond_1

    if-ne v2, v1, :cond_0

    add-int/lit8 p2, v2, 0xc

    .line 609
    new-array p2, p2, [Landroid/view/View;

    iput-object p2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 610
    invoke-static {v0, v3, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 611
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 613
    :cond_0
    iget p2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    aput-object p1, v0, p2

    goto :goto_1

    :cond_1
    if-ge p2, v1, :cond_3

    if-ne v2, v1, :cond_2

    add-int/lit8 v2, v2, 0xc

    .line 616
    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 617
    invoke-static {v0, v3, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 618
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    add-int/lit8 v3, p2, 0x1

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    goto :goto_0

    :cond_2
    add-int/lit8 v2, p2, 0x1

    sub-int/2addr v1, p2

    .line 621
    invoke-static {v0, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 623
    :goto_0
    aput-object p1, v0, p2

    .line 624
    iget p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    :goto_1
    return-void

    .line 626
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " count="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private customDrawOrderDisabled()Z
    .locals 3

    .line 439
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 442
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    .line 446
    :cond_1
    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->disableCustomDrawOrderFabric:Z

    return v0
.end method

.method private dispatchOverflowDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 765
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mOverflow:Ljava/lang/String;

    if-eqz v2, :cond_1a

    .line 766
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "hidden"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v1, "visible"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_11

    .line 768
    :cond_0
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mPath:Landroid/graphics/Path;

    if-eqz v1, :cond_1a

    .line 769
    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    goto/16 :goto_11

    .line 775
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 776
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 780
    iget-object v4, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_19

    .line 781
    invoke-virtual {v4}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getDirectionAwareBorderInsets()Landroid/graphics/RectF;

    move-result-object v4

    .line 783
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v7

    if-gtz v8, :cond_3

    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v7

    if-gtz v8, :cond_3

    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v8, v8, v7

    if-gtz v8, :cond_3

    iget v8, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v8, v8, v7

    if-lez v8, :cond_2

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_1

    .line 787
    :cond_3
    :goto_0
    iget v8, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v7

    .line 788
    iget v9, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v7

    .line 789
    iget v10, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v10

    .line 790
    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v10

    .line 793
    :goto_1
    iget-object v10, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    invoke-virtual {v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getFullBorderRadius()F

    move-result v10

    .line 794
    iget-object v11, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    sget-object v12, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->TOP_LEFT:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 795
    invoke-virtual {v11, v10, v12}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v11

    .line 797
    iget-object v12, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    sget-object v13, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->TOP_RIGHT:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 798
    invoke-virtual {v12, v10, v13}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v12

    .line 800
    iget-object v13, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    sget-object v14, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->BOTTOM_LEFT:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 801
    invoke-virtual {v13, v10, v14}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v13

    .line 803
    iget-object v14, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    sget-object v15, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->BOTTOM_RIGHT:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 804
    invoke-virtual {v14, v10, v15}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v10

    .line 807
    iget v14, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mLayoutDirection:I

    if-ne v14, v6, :cond_4

    const/4 v14, 0x1

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    .line 808
    :goto_2
    iget-object v15, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    sget-object v6, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->TOP_START:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 809
    invoke-virtual {v15, v6}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadius(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v6

    .line 811
    iget-object v15, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    sget-object v5, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->TOP_END:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 812
    invoke-virtual {v15, v5}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadius(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v5

    .line 814
    iget-object v15, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    sget-object v7, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->BOTTOM_START:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 815
    invoke-virtual {v15, v7}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadius(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v7

    .line 817
    iget-object v15, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move/from16 v17, v10

    sget-object v10, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->BOTTOM_END:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 818
    invoke-virtual {v15, v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadius(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v10

    .line 821
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v15

    move/from16 v18, v11

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v15, v11}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 822
    invoke-static {v6}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v11

    if-eqz v11, :cond_5

    move/from16 v11, v18

    goto :goto_3

    :cond_5
    move v11, v6

    .line 826
    :goto_3
    invoke-static {v5}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    move v12, v5

    .line 830
    :goto_4
    invoke-static {v7}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    move v13, v7

    .line 834
    :goto_5
    invoke-static {v10}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v5

    if-eqz v5, :cond_8

    move/from16 v10, v17

    :cond_8
    if-eqz v14, :cond_9

    move v5, v12

    goto :goto_6

    :cond_9
    move v5, v11

    :goto_6
    if-eqz v14, :cond_a

    goto :goto_7

    :cond_a
    move v11, v12

    :goto_7
    if-eqz v14, :cond_b

    move v6, v10

    goto :goto_8

    :cond_b
    move v6, v13

    :goto_8
    if-eqz v14, :cond_15

    move v10, v13

    goto :goto_e

    :cond_c
    if-eqz v14, :cond_d

    move v11, v5

    goto :goto_9

    :cond_d
    move v11, v6

    :goto_9
    if-eqz v14, :cond_e

    goto :goto_a

    :cond_e
    move v6, v5

    :goto_a
    if-eqz v14, :cond_f

    move v5, v10

    goto :goto_b

    :cond_f
    move v5, v7

    :goto_b
    if-eqz v14, :cond_10

    goto :goto_c

    :cond_10
    move v7, v10

    .line 861
    :goto_c
    invoke-static {v11}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v10

    if-nez v10, :cond_11

    goto :goto_d

    :cond_11
    move/from16 v11, v18

    .line 865
    :goto_d
    invoke-static {v6}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v10

    if-nez v10, :cond_12

    move v12, v6

    .line 869
    :cond_12
    invoke-static {v5}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v6

    if-nez v6, :cond_13

    move v13, v5

    .line 873
    :cond_13
    invoke-static {v7}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v5

    if-nez v5, :cond_14

    move v10, v7

    move v5, v11

    move v11, v12

    move v6, v13

    goto :goto_e

    :cond_14
    move v5, v11

    move v11, v12

    move v6, v13

    move/from16 v10, v17

    :cond_15
    :goto_e
    const/4 v7, 0x0

    cmpl-float v12, v5, v7

    if-gtz v12, :cond_17

    cmpl-float v12, v11, v7

    if-gtz v12, :cond_17

    cmpl-float v12, v10, v7

    if-gtz v12, :cond_17

    cmpl-float v12, v6, v7

    if-lez v12, :cond_16

    goto :goto_f

    :cond_16
    move v7, v8

    const/4 v5, 0x0

    goto/16 :goto_10

    .line 882
    :cond_17
    :goto_f
    iget-object v7, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mPath:Landroid/graphics/Path;

    if-nez v7, :cond_18

    .line 883
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mPath:Landroid/graphics/Path;

    .line 886
    :cond_18
    iget-object v7, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    .line 887
    iget-object v7, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mPath:Landroid/graphics/Path;

    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12, v8, v9, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v13, 0x8

    new-array v13, v13, [F

    iget v14, v4, Landroid/graphics/RectF;->left:F

    sub-float v14, v5, v14

    const/4 v15, 0x0

    .line 890
    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    const/16 v16, 0x0

    aput v14, v13, v16

    iget v14, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v14

    .line 891
    invoke-static {v5, v15}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/4 v14, 0x1

    aput v5, v13, v14

    const/4 v5, 0x2

    iget v14, v4, Landroid/graphics/RectF;->right:F

    sub-float v14, v11, v14

    .line 892
    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    aput v14, v13, v5

    const/4 v5, 0x3

    iget v14, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v11, v14

    .line 893
    invoke-static {v11, v15}, Ljava/lang/Math;->max(FF)F

    move-result v11

    aput v11, v13, v5

    const/4 v5, 0x4

    iget v11, v4, Landroid/graphics/RectF;->right:F

    sub-float v11, v10, v11

    .line 894
    invoke-static {v11, v15}, Ljava/lang/Math;->max(FF)F

    move-result v11

    aput v11, v13, v5

    const/4 v5, 0x5

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v10, v11

    .line 895
    invoke-static {v10, v15}, Ljava/lang/Math;->max(FF)F

    move-result v10

    aput v10, v13, v5

    const/4 v5, 0x6

    iget v10, v4, Landroid/graphics/RectF;->left:F

    sub-float v10, v6, v10

    .line 896
    invoke-static {v10, v15}, Ljava/lang/Math;->max(FF)F

    move-result v10

    aput v10, v13, v5

    const/4 v5, 0x7

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v4

    .line 897
    invoke-static {v6, v15}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, v13, v5

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 887
    invoke-virtual {v7, v12, v13, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 900
    iget-object v4, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    move v7, v8

    const/4 v5, 0x1

    goto :goto_10

    :cond_19
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_10
    if-nez v5, :cond_1a

    .line 906
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v7, v9, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    :cond_1a
    :goto_11
    return-void
.end method

.method private getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;
    .locals 5

    .line 653
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    if-nez v0, :cond_1

    .line 654
    new-instance v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    .line 655
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 656
    invoke-direct {p0, v1}, Lcom/facebook/react/views/view/ReactViewGroup;->updateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    invoke-direct {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 662
    :cond_0
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 664
    invoke-direct {p0, v1}, Lcom/facebook/react/views/view/ReactViewGroup;->updateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 668
    :goto_0
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->isRTL(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mLayoutDirection:I

    .line 669
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    invoke-virtual {v1, v0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setResolvedLayoutDirection(I)Z

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    return-object v0
.end method

.method private indexOfChildInAllChildren(Landroid/view/View;)I
    .locals 4

    .line 593
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    .line 594
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 596
    aget-object v3, v1, v2

    if-ne v3, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private removeFromArray(I)V
    .locals 4

    .line 632
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    .line 633
    iget v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 635
    iput v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    aput-object v3, v0, v1

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    if-ge p1, v1, :cond_1

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 637
    invoke-static {v0, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 638
    iget p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    aput-object v3, v0, p1

    :goto_0
    return-void

    .line 640
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method private updateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 700
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateClippingToRect(Landroid/graphics/Rect;)V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 334
    :goto_0
    iget v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    if-ge v0, v2, :cond_1

    .line 335
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/react/views/view/ReactViewGroup;->updateSubviewClipStatus(Landroid/graphics/Rect;II)V

    .line 336
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSubviewClipStatus(Landroid/graphics/Rect;II)V
    .locals 6

    .line 343
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 345
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    aget-object v0, v0, p2

    .line 346
    sget-object v1, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 347
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 348
    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result p1

    .line 357
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 358
    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 359
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    sub-int/2addr p2, p3

    .line 362
    invoke-super {p0, p2, v3}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 364
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    sub-int/2addr p2, p3

    .line 365
    sget-object p1, Lcom/facebook/react/views/view/ReactViewGroup;->sDefaultLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    invoke-super {p0, v0, p2, p1, v3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 366
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->invalidate()V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    :goto_1
    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    .line 373
    instance-of p1, v0, Lcom/facebook/react/uimanager/ReactClippingViewGroup;

    if-eqz p1, :cond_4

    .line 376
    check-cast v0, Lcom/facebook/react/uimanager/ReactClippingViewGroup;

    .line 377
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactClippingViewGroup;->getRemoveClippedSubviews()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 378
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactClippingViewGroup;->updateClippingRect()V

    :cond_4
    return-void
.end method

.method private updateSubviewClipStatus(Landroid/view/View;)V
    .locals 5

    .line 385
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 394
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 395
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v0

    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eq v0, v1, :cond_4

    const/4 v0, 0x0

    .line 403
    :goto_1
    iget v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    if-ge v2, v1, :cond_4

    .line 404
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v3, v1, v2

    if-ne v3, p1, :cond_2

    .line 405
    iget-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateSubviewClipStatus(Landroid/graphics/Rect;II)V

    goto :goto_2

    .line 408
    :cond_2
    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 454
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->customDrawOrderDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->handleAddView(Landroid/view/View;)V

    .line 456
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->shouldEnableCustomDrawingOrder()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 458
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 461
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method addViewWithSubviewClippingEnabled(Landroid/view/View;I)V
    .locals 1

    .line 541
    sget-object v0, Lcom/facebook/react/views/view/ReactViewGroup;->sDefaultLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->addViewWithSubviewClippingEnabled(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method addViewWithSubviewClippingEnabled(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 546
    iget-boolean p3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    invoke-static {p3}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 547
    iget-object p3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {p3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object p3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {p3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->addInArray(Landroid/view/View;I)V

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    .line 554
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 558
    :cond_1
    iget-object p3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p2, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateSubviewClipStatus(Landroid/graphics/Rect;II)V

    .line 559
    iget-object p2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 706
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildCount()I

    move-result v0

    .line 709
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->dispatchOverflowDraw(Landroid/graphics/Canvas;)V

    .line 710
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 713
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown when executing ReactViewGroup.dispatchDraw method on ReactViewGroup["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactNative"

    .line 713
    invoke-static {v2, v1, p1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 721
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 722
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const-string v0, "Initial Child Count: %d / final: %d"

    invoke-static {v2, v0, v3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Child List:"

    .line 723
    invoke-static {v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/16 v0, -0x539

    if-ge v4, v1, :cond_2

    .line 725
    invoke-virtual {p0, v4}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 726
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Child #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    .line 731
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v0

    :cond_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    .line 733
    invoke-virtual {v3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    const-string v0, "<null>"

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 726
    invoke-static {v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 737
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v3, "Ancestor List:"

    .line 738
    invoke-static {v2, v3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    if-eqz v1, :cond_5

    .line 740
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_4

    .line 742
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    goto :goto_5

    :cond_4
    const/16 v3, -0x539

    .line 743
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ancestor["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_3

    .line 749
    :cond_5
    invoke-static {p0}, Lcom/facebook/react/uimanager/RootViewUtil;->getRootView(Landroid/view/View;)Lcom/facebook/react/uimanager/RootView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 751
    invoke-interface {v0, p1}, Lcom/facebook/react/uimanager/RootView;->handleException(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 753
    :cond_6
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/react/bridge/ReactContext;

    if-eqz v0, :cond_7

    .line 754
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 755
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    const-string v2, "StackOverflowException"

    invoke-direct {v1, v2, p0, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;Landroid/view/View;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->handleException(Ljava/lang/Exception;)V

    :goto_6
    return-void

    .line 758
    :cond_7
    throw p1
.end method

.method public dispatchProvideStructure(Landroid/view/ViewStructure;)V
    .locals 2

    .line 168
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchProvideStructure(Landroid/view/ViewStructure;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ReactNative"

    const-string v1, "NullPointerException when executing dispatchProvideStructure"

    .line 170
    invoke-static {v0, v1, p1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method getAllChildrenCount()I
    .locals 1

    .line 533
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 646
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    invoke-virtual {v0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getColor()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getChildAtWithSubviewClippingEnabled(I)Landroid/view/View;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->getChildDrawingOrder(II)I

    move-result p1

    return p1
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 1

    .line 417
    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->clipChildRectsIfOverflowIsHidden:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOverflow:Ljava/lang/String;

    .line 418
    invoke-static {p1, p2, p3, p0, v0}, Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;->getChildVisibleRectHelper(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/View;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 419
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public getClippingRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getHitSlopRect()Landroid/graphics/Rect;
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mHitSlopRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOverflow()Ljava/lang/String;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOverflow:Ljava/lang/String;

    return-object v0
.end method

.method public getPointerEvents()Lcom/facebook/react/uimanager/PointerEvents;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    return-object v0
.end method

.method public getRemoveClippedSubviews()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    return v0
.end method

.method public getZIndexMappedChildIndex(I)I
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->shouldEnableCustomDrawingOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->getChildDrawingOrder(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mNeedsOffscreenAlphaCompositing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 432
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 433
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateClippingRect()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOnInterceptTouchEventListener:Lcom/facebook/react/touch/OnInterceptTouchEventListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0, p0, p1}, Lcom/facebook/react/touch/OnInterceptTouchEventListener;->onInterceptTouchEvent(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    sget-object v2, Lcom/facebook/react/uimanager/PointerEvents;->NONE:Lcom/facebook/react/uimanager/PointerEvents;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    sget-object v2, Lcom/facebook/react/uimanager/PointerEvents;->BOX_ONLY:Lcom/facebook/react/uimanager/PointerEvents;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 219
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 139
    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/MeasureSpecAssertions;->assertExplicitMeasureSpec(II)V

    .line 142
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 152
    iget-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    if-eqz p1, :cond_0

    .line 153
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mLayoutDirection:I

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setResolvedLayoutDirection(I)Z

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 424
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 425
    iget-boolean p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    if-eqz p1, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateClippingRect()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 225
    iget-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    sget-object v0, Lcom/facebook/react/uimanager/PointerEvents;->NONE:Lcom/facebook/react/uimanager/PointerEvents;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    sget-object v0, Lcom/facebook/react/uimanager/PointerEvents;->BOX_NONE:Lcom/facebook/react/uimanager/PointerEvents;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method removeAllViewsWithSubviewClippingEnabled()V
    .locals 4

    .line 583
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 584
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 585
    :goto_0
    iget v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    if-ge v1, v2, :cond_0

    .line 586
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->removeAllViewsInLayout()V

    .line 589
    iput v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 466
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 468
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->customDrawOrderDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->handleRemoveView(Landroid/view/View;)V

    .line 470
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->shouldEnableCustomDrawingOrder()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 472
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 475
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 2

    .line 480
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 482
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->customDrawOrderDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->handleRemoveView(Landroid/view/View;)V

    .line 484
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->shouldEnableCustomDrawingOrder()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 486
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 489
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method removeViewWithSubviewClippingEnabled(Landroid/view/View;)V
    .locals 3

    .line 563
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 565
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 566
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 569
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->indexOfChildInAllChildren(Landroid/view/View;)I

    move-result p1

    .line 570
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 573
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sub-int v0, p1, v1

    const/4 v1, 0x1

    .line 577
    invoke-super {p0, v0, v1}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    .line 579
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->removeFromArray(I)V

    return-void
.end method

.method public requestLayout()V
    .locals 0

    return-void
.end method

.method public setBackfaceVisibility(Ljava/lang/String;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mBackfaceVisibility:Ljava/lang/String;

    .line 922
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->setBackfaceVisibilityDependantOpacity()V

    return-void
.end method

.method public setBackfaceVisibilityDependantOpacity()V
    .locals 4

    .line 926
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mBackfaceVisibility:Ljava/lang/String;

    const-string v1, "visible"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mBackfaceOpacity:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setAlpha(F)V

    return-void

    .line 933
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getRotationX()F

    move-result v0

    .line 934
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getRotationY()F

    move-result v1

    const/high16 v2, -0x3d4c0000    # -90.0f

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_1

    const/high16 v3, 0x42b40000    # 90.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_1

    cmpg-float v0, v1, v3

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 940
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mBackfaceOpacity:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setAlpha(F)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 944
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setAlpha(F)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 185
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not supported for ReactViewGroup instances"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBackgroundColor(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setColor(I)V

    :goto_0
    return-void
.end method

.method public setBorderColor(IFF)V
    .locals 1

    .line 255
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderColor(IFF)V

    return-void
.end method

.method public setBorderRadius(F)V
    .locals 1

    .line 259
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    .line 260
    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setRadius(F)V

    return-void
.end method

.method public setBorderRadius(FI)V
    .locals 1

    .line 264
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    .line 265
    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setRadius(FI)V

    return-void
.end method

.method public setBorderStyle(Ljava/lang/String;)V
    .locals 1

    .line 269
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderStyle(Ljava/lang/String;)V

    return-void
.end method

.method public setBorderWidth(IF)V
    .locals 1

    .line 251
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderWidth(IF)V

    return-void
.end method

.method public setHitSlopRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mHitSlopRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setNeedsOffscreenAlphaCompositing(Z)V
    .locals 0

    .line 247
    iput-boolean p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mNeedsOffscreenAlphaCompositing:Z

    return-void
.end method

.method public setOnInterceptTouchEventListener(Lcom/facebook/react/touch/OnInterceptTouchEventListener;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOnInterceptTouchEventListener:Lcom/facebook/react/touch/OnInterceptTouchEventListener;

    return-void
.end method

.method public setOpacityIfPossible(F)V
    .locals 0

    .line 916
    iput p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mBackfaceOpacity:F

    .line 917
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->setBackfaceVisibilityDependantOpacity()V

    return-void
.end method

.method public setOverflow(Ljava/lang/String;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOverflow:Ljava/lang/String;

    .line 685
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->invalidate()V

    return-void
.end method

.method setPointerEvents(Lcom/facebook/react/uimanager/PointerEvents;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    return-void
.end method

.method public setRemoveClippedSubviews(Z)V
    .locals 4

    .line 274
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 277
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 279
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    .line 280
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;->calculateClippingRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 281
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildCount()I

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    const/16 v2, 0xc

    .line 282
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 283
    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 284
    new-instance p1, Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-direct {p1, p0, v1}, Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;-><init>(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/views/view/ReactViewGroup$1;)V

    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    .line 285
    :goto_0
    iget p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    if-ge v0, p1, :cond_1

    .line 286
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 287
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aput-object p1, v1, v0

    .line 288
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateClippingRect()V

    goto :goto_2

    .line 293
    :cond_2
    iget-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 296
    :goto_1
    iget v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    if-ge p1, v2, :cond_3

    .line 297
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 299
    :cond_3
    iget-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 300
    iget-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->updateClippingToRect(Landroid/graphics/Rect;)V

    .line 301
    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 302
    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    .line 303
    iput v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    .line 304
    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    :goto_2
    return-void
.end method

.method public setTranslucentBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 196
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 198
    invoke-direct {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 200
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->updateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateClippingRect()V
    .locals 1

    .line 320
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    if-nez v0, :cond_0

    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {p0, v0}, Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;->calculateClippingRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 328
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateClippingToRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateDrawingOrder()V
    .locals 1

    .line 508
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->customDrawOrderDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->update()V

    .line 513
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->shouldEnableCustomDrawingOrder()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 514
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->invalidate()V

    return-void
.end method
