.class public Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;
.super Lcom/facebook/react/uimanager/LayoutShadowNode;
.source "SafeAreaViewShadowNode.java"


# instance fields
.field private mLocalData:Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

.field private mMargins:[F

.field private mNeedsUpdate:Z

.field private mPaddings:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 24
    invoke-direct {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mNeedsUpdate:Z

    .line 26
    sget-object v1, Lcom/facebook/react/uimanager/ViewProps;->PADDING_MARGIN_SPACING_TYPES:[I

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    .line 27
    sget-object v1, Lcom/facebook/react/uimanager/ViewProps;->PADDING_MARGIN_SPACING_TYPES:[I

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    .line 29
    :goto_0
    sget-object v1, Lcom/facebook/react/uimanager/ViewProps;->PADDING_MARGIN_SPACING_TYPES:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    const/high16 v2, 0x7fc00000    # Float.NaN

    aput v2, v1, v0

    .line 31
    iget-object v1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetInsets(Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;)V
    .locals 5

    .line 113
    sget-object v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;->PADDING:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne p1, v0, :cond_0

    .line 114
    iget-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    aget p1, p1, v4

    invoke-super {p0, v4, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    .line 115
    iget-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    aget p1, p1, v4

    invoke-super {p0, v1, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    .line 116
    iget-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    aget p1, p1, v3

    invoke-super {p0, v3, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    .line 117
    iget-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    aget p1, p1, v2

    invoke-super {p0, v2, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    aget p1, p1, v4

    invoke-super {p0, v4, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    .line 120
    iget-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    aget p1, p1, v4

    invoke-super {p0, v1, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    .line 121
    iget-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    aget p1, p1, v3

    invoke-super {p0, v3, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    .line 122
    iget-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    aget p1, p1, v2

    invoke-super {p0, v2, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    :goto_0
    return-void
.end method

.method private updateInsets()V
    .locals 15

    .line 36
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mLocalData:Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {v0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->getMode()Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    move-result-object v0

    sget-object v1, Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;->PADDING:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    :goto_0
    const/16 v1, 0x8

    .line 47
    aget v1, v0, v1

    .line 48
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move v2, v1

    move v4, v2

    move v5, v4

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x7

    .line 55
    aget v6, v0, v6

    .line 56
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_3

    move v1, v6

    move v4, v1

    :cond_3
    const/4 v6, 0x6

    .line 61
    aget v6, v0, v6

    .line 62
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_4

    move v2, v6

    move v5, v2

    :cond_4
    const/4 v6, 0x1

    .line 67
    aget v7, v0, v6

    .line 68
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_5

    move v1, v7

    :cond_5
    const/4 v7, 0x2

    .line 72
    aget v8, v0, v7

    .line 73
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_6

    move v2, v8

    :cond_6
    const/4 v8, 0x3

    .line 77
    aget v9, v0, v8

    .line 78
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_7

    move v4, v9

    :cond_7
    const/4 v9, 0x0

    .line 82
    aget v0, v0, v9

    .line 83
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_8

    move v5, v0

    .line 87
    :cond_8
    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    .line 88
    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v1

    .line 89
    invoke-static {v4}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v2

    .line 90
    invoke-static {v5}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v4

    .line 92
    iget-object v5, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mLocalData:Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    invoke-virtual {v5}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->getEdges()Ljava/util/EnumSet;

    move-result-object v5

    .line 93
    iget-object v10, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mLocalData:Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    invoke-virtual {v10}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->getInsets()Lcom/th3rdwave/safeareacontext/EdgeInsets;

    move-result-object v10

    .line 94
    sget-object v11, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;->TOP:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;

    invoke-virtual {v5, v11}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    iget v11, v10, Lcom/th3rdwave/safeareacontext/EdgeInsets;->top:F

    goto :goto_2

    :cond_9
    const/4 v11, 0x0

    .line 95
    :goto_2
    sget-object v12, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;->RIGHT:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;

    invoke-virtual {v5, v12}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    iget v12, v10, Lcom/th3rdwave/safeareacontext/EdgeInsets;->right:F

    goto :goto_3

    :cond_a
    const/4 v12, 0x0

    .line 96
    :goto_3
    sget-object v13, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;->BOTTOM:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;

    invoke-virtual {v5, v13}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    iget v13, v10, Lcom/th3rdwave/safeareacontext/EdgeInsets;->bottom:F

    goto :goto_4

    :cond_b
    const/4 v13, 0x0

    .line 97
    :goto_4
    sget-object v14, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;->LEFT:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;

    invoke-virtual {v5, v14}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget v3, v10, Lcom/th3rdwave/safeareacontext/EdgeInsets;->left:F

    .line 99
    :cond_c
    iget-object v5, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mLocalData:Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    invoke-virtual {v5}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->getMode()Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    move-result-object v5

    sget-object v10, Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;->PADDING:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    if-ne v5, v10, :cond_d

    add-float/2addr v11, v0

    .line 100
    invoke-super {p0, v6, v11}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    add-float/2addr v12, v1

    .line 101
    invoke-super {p0, v7, v12}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    add-float/2addr v13, v2

    .line 102
    invoke-super {p0, v8, v13}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    add-float/2addr v3, v4

    .line 103
    invoke-super {p0, v9, v3}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    goto :goto_5

    :cond_d
    add-float/2addr v11, v0

    .line 105
    invoke-super {p0, v6, v11}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    add-float/2addr v12, v1

    .line 106
    invoke-super {p0, v7, v12}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    add-float/2addr v13, v2

    .line 107
    invoke-super {p0, v8, v13}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    add-float/2addr v3, v4

    .line 108
    invoke-super {p0, v9, v3}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    :goto_5
    return-void
.end method


# virtual methods
.method public onBeforeLayout()V
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mNeedsUpdate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mNeedsUpdate:Z

    .line 132
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->updateInsets()V

    :cond_0
    return-void
.end method

.method public onBeforeLayout(Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;)V
    .locals 0

    .line 137
    iget-boolean p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mNeedsUpdate:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mNeedsUpdate:Z

    .line 139
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->updateInsets()V

    :cond_0
    return-void
.end method

.method public setLocalData(Ljava/lang/Object;)V
    .locals 2

    .line 145
    instance-of v0, p1, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    check-cast p1, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    .line 151
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mLocalData:Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->getMode()Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->getMode()Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mLocalData:Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    invoke-virtual {v0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->getMode()Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->resetInsets(Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;)V

    .line 155
    :cond_1
    iput-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mLocalData:Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    const/4 p1, 0x0

    .line 157
    iput-boolean p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mNeedsUpdate:Z

    .line 158
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->updateInsets()V

    return-void
.end method

.method public setMargins(ILcom/facebook/react/bridge/Dynamic;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        names = {
            "margin",
            "marginVertical",
            "marginHorizontal",
            "marginStart",
            "marginEnd",
            "marginTop",
            "marginBottom",
            "marginLeft",
            "marginRight"
        }
    .end annotation

    .line 196
    sget-object v0, Lcom/facebook/react/uimanager/ViewProps;->PADDING_MARGIN_SPACING_TYPES:[I

    aget v0, v0, p1

    .line 197
    iget-object v1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v2

    sget-object v3, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v2, v3, :cond_0

    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asDouble()D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_0

    :cond_0
    const/high16 v2, 0x7fc00000    # Float.NaN

    :goto_0
    aput v2, v1, v0

    .line 198
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargins(ILcom/facebook/react/bridge/Dynamic;)V

    const/4 p1, 0x1

    .line 199
    iput-boolean p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mNeedsUpdate:Z

    return-void
.end method

.method public setPaddings(ILcom/facebook/react/bridge/Dynamic;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        names = {
            "padding",
            "paddingVertical",
            "paddingHorizontal",
            "paddingStart",
            "paddingEnd",
            "paddingTop",
            "paddingBottom",
            "paddingLeft",
            "paddingRight"
        }
    .end annotation

    .line 176
    sget-object v0, Lcom/facebook/react/uimanager/ViewProps;->PADDING_MARGIN_SPACING_TYPES:[I

    aget v0, v0, p1

    .line 177
    iget-object v1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v2

    sget-object v3, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v2, v3, :cond_0

    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asDouble()D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_0

    :cond_0
    const/high16 v2, 0x7fc00000    # Float.NaN

    :goto_0
    aput v2, v1, v0

    .line 178
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPaddings(ILcom/facebook/react/bridge/Dynamic;)V

    const/4 p1, 0x1

    .line 179
    iput-boolean p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mNeedsUpdate:Z

    return-void
.end method
