.class public Lcom/facebook/react/uimanager/TouchTargetHelper;
.super Ljava/lang/Object;
.source "TouchTargetHelper.java"


# static fields
.field private static final mEventCoords:[F

.field private static final mInverseMatrix:Landroid/graphics/Matrix;

.field private static final mMatrixTransformCoords:[F

.field private static final mTempPoint:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 27
    sput-object v1, Lcom/facebook/react/uimanager/TouchTargetHelper;->mEventCoords:[F

    .line 28
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    sput-object v1, Lcom/facebook/react/uimanager/TouchTargetHelper;->mTempPoint:Landroid/graphics/PointF;

    new-array v0, v0, [F

    .line 29
    sput-object v0, Lcom/facebook/react/uimanager/TouchTargetHelper;->mMatrixTransformCoords:[F

    .line 30
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/TouchTargetHelper;->mInverseMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findClosestReactAncestor(Landroid/view/View;)Landroid/view/View;
    .locals 1

    :goto_0
    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    if-gtz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static findTargetTagAndCoordinatesForTouch(FFLandroid/view/ViewGroup;[F[I)I
    .locals 2

    .line 78
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 79
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, 0x0

    .line 81
    aput p0, p3, v1

    const/4 p0, 0x1

    .line 82
    aput p1, p3, p0

    .line 83
    invoke-static {p3, p2}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTouchTargetView([FLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 85
    invoke-static {p1}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findClosestReactAncestor(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    aput p2, p4, v1

    .line 90
    :cond_0
    aget p2, p3, v1

    aget p0, p3, p0

    invoke-static {p1, p2, p0}, Lcom/facebook/react/uimanager/TouchTargetHelper;->getTouchTargetForView(Landroid/view/View;FF)I

    move-result v0

    :cond_1
    return v0
.end method

.method public static findTargetTagForTouch(FFLandroid/view/ViewGroup;)I
    .locals 2

    .line 42
    sget-object v0, Lcom/facebook/react/uimanager/TouchTargetHelper;->mEventCoords:[F

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTargetTagAndCoordinatesForTouch(FFLandroid/view/ViewGroup;[F[I)I

    move-result p0

    return p0
.end method

.method public static findTargetTagForTouch(FFLandroid/view/ViewGroup;[I)I
    .locals 1

    .line 57
    sget-object v0, Lcom/facebook/react/uimanager/TouchTargetHelper;->mEventCoords:[F

    invoke-static {p0, p1, p2, v0, p3}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTargetTagAndCoordinatesForTouch(FFLandroid/view/ViewGroup;[F[I)I

    move-result p0

    return p0
.end method

.method private static findTouchTargetView([FLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 115
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 117
    instance-of v1, p1, Lcom/facebook/react/uimanager/ReactZIndexedViewGroup;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/facebook/react/uimanager/ReactZIndexedViewGroup;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_4

    if-eqz v1, :cond_1

    .line 121
    invoke-interface {v1, v0}, Lcom/facebook/react/uimanager/ReactZIndexedViewGroup;->getZIndexMappedChildIndex(I)I

    move-result v3

    goto :goto_2

    :cond_1
    move v3, v0

    .line 122
    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 123
    sget-object v4, Lcom/facebook/react/uimanager/TouchTargetHelper;->mTempPoint:Landroid/graphics/PointF;

    const/4 v5, 0x0

    .line 124
    aget v6, p0, v5

    aget v7, p0, v2

    invoke-static {v6, v7, p1, v3, v4}, Lcom/facebook/react/uimanager/TouchTargetHelper;->isTransformedTouchPointInView(FFLandroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 130
    aget v6, p0, v5

    .line 131
    aget v7, p0, v2

    .line 132
    iget v8, v4, Landroid/graphics/PointF;->x:F

    aput v8, p0, v5

    .line 133
    iget v4, v4, Landroid/graphics/PointF;->y:F

    aput v4, p0, v2

    .line 134
    invoke-static {p0, v3}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTouchTargetViewWithPointerEvents([FLandroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    .line 138
    :cond_2
    aput v6, p0, v5

    .line 139
    aput v7, p0, v2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method private static findTouchTargetViewWithPointerEvents([FLandroid/view/View;)Landroid/view/View;
    .locals 5

    .line 193
    instance-of v0, p1, Lcom/facebook/react/uimanager/ReactPointerEventsView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/facebook/react/uimanager/ReactPointerEventsView;

    .line 195
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactPointerEventsView;->getPointerEvents()Lcom/facebook/react/uimanager/PointerEvents;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/facebook/react/uimanager/PointerEvents;->AUTO:Lcom/facebook/react/uimanager/PointerEvents;

    .line 201
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 202
    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->AUTO:Lcom/facebook/react/uimanager/PointerEvents;

    if-ne v0, v1, :cond_1

    .line 203
    sget-object v0, Lcom/facebook/react/uimanager/PointerEvents;->BOX_NONE:Lcom/facebook/react/uimanager/PointerEvents;

    goto :goto_1

    .line 204
    :cond_1
    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->BOX_ONLY:Lcom/facebook/react/uimanager/PointerEvents;

    if-ne v0, v1, :cond_2

    .line 205
    sget-object v0, Lcom/facebook/react/uimanager/PointerEvents;->NONE:Lcom/facebook/react/uimanager/PointerEvents;

    .line 209
    :cond_2
    :goto_1
    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->NONE:Lcom/facebook/react/uimanager/PointerEvents;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    return-object v2

    .line 213
    :cond_3
    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->BOX_ONLY:Lcom/facebook/react/uimanager/PointerEvents;

    if-ne v0, v1, :cond_4

    return-object p1

    .line 217
    :cond_4
    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->BOX_NONE:Lcom/facebook/react/uimanager/PointerEvents;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_7

    .line 219
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 220
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTouchTargetView([FLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_5

    return-object v0

    .line 231
    :cond_5
    instance-of v0, p1, Lcom/facebook/react/uimanager/ReactCompoundView;

    if-eqz v0, :cond_6

    .line 232
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/uimanager/ReactCompoundView;

    aget v1, p0, v4

    aget p0, p0, v3

    .line 233
    invoke-interface {v0, v1, p0}, Lcom/facebook/react/uimanager/ReactCompoundView;->reactTagForTouch(FF)I

    move-result p0

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eq p0, v0, :cond_6

    return-object p1

    :cond_6
    return-object v2

    .line 242
    :cond_7
    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->AUTO:Lcom/facebook/react/uimanager/PointerEvents;

    if-ne v0, v1, :cond_a

    .line 244
    instance-of v0, p1, Lcom/facebook/react/uimanager/ReactCompoundViewGroup;

    if-eqz v0, :cond_8

    .line 245
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/uimanager/ReactCompoundViewGroup;

    aget v1, p0, v4

    aget v2, p0, v3

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/uimanager/ReactCompoundViewGroup;->interceptsTouchEvent(FF)Z

    move-result v0

    if-eqz v0, :cond_8

    return-object p1

    .line 249
    :cond_8
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 250
    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTouchTargetView([FLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_9
    return-object p1

    .line 255
    :cond_a
    new-instance p0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown pointer event type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/PointerEvents;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getTouchTargetForView(Landroid/view/View;FF)I
    .locals 1

    .line 261
    instance-of v0, p0, Lcom/facebook/react/uimanager/ReactCompoundView;

    if-eqz v0, :cond_0

    .line 264
    check-cast p0, Lcom/facebook/react/uimanager/ReactCompoundView;

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/uimanager/ReactCompoundView;->reactTagForTouch(FF)I

    move-result p0

    return p0

    .line 266
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    return p0
.end method

.method private static isTransformedTouchPointInView(FFLandroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/PointF;)Z
    .locals 4

    .line 152
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p0, v0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p0, v0

    .line 153
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    .line 154
    invoke-virtual {p3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 155
    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 156
    sget-object v0, Lcom/facebook/react/uimanager/TouchTargetHelper;->mMatrixTransformCoords:[F

    .line 157
    aput p0, v0, v2

    .line 158
    aput p1, v0, v1

    .line 159
    sget-object p0, Lcom/facebook/react/uimanager/TouchTargetHelper;->mInverseMatrix:Landroid/graphics/Matrix;

    .line 160
    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 161
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 162
    aget p0, v0, v2

    .line 163
    aget p1, v0, v1

    .line 165
    :cond_0
    instance-of p2, p3, Lcom/facebook/react/touch/ReactHitSlopView;

    if-eqz p2, :cond_2

    move-object p2, p3

    check-cast p2, Lcom/facebook/react/touch/ReactHitSlopView;

    invoke-interface {p2}, Lcom/facebook/react/touch/ReactHitSlopView;->getHitSlopRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 166
    invoke-interface {p2}, Lcom/facebook/react/touch/ReactHitSlopView;->getHitSlopRect()Landroid/graphics/Rect;

    move-result-object p2

    .line 167
    iget v0, p2, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_1

    .line 168
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 170
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr v0, p3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    int-to-float p2, v0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    .line 171
    invoke-virtual {p4, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    return v1

    :cond_1
    return v2

    :cond_2
    const/4 p2, 0x0

    cmpl-float v0, p0, p2

    if-ltz v0, :cond_3

    .line 177
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_3

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_3

    .line 178
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    cmpg-float p2, p1, p2

    if-gez p2, :cond_3

    .line 179
    invoke-virtual {p4, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    return v1

    :cond_3
    return v2
.end method
