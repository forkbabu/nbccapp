.class public Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ReactViewBackgroundDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;,
        Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;
    }
.end annotation


# static fields
.field private static final ALL_BITS_SET:I = -0x1

.field private static final ALL_BITS_UNSET:I = 0x0

.field private static final DEFAULT_BORDER_ALPHA:I = 0xff

.field private static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_RGB:I


# instance fields
.field private mAlpha:I

.field private mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

.field private mBorderCornerRadii:[F

.field private mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

.field private mBorderRadius:F

.field private mBorderStyle:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

.field private mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

.field private mCenterDrawPath:Landroid/graphics/Path;

.field private mColor:I

.field private final mContext:Landroid/content/Context;

.field private mInnerBottomLeftCorner:Landroid/graphics/PointF;

.field private mInnerBottomRightCorner:Landroid/graphics/PointF;

.field private mInnerClipPathForBorderRadius:Landroid/graphics/Path;

.field private mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

.field private mInnerTopLeftCorner:Landroid/graphics/PointF;

.field private mInnerTopRightCorner:Landroid/graphics/PointF;

.field private mLayoutDirection:I

.field private mNeedUpdatePathForBorderRadius:Z

.field private mOuterClipPathForBorderRadius:Landroid/graphics/Path;

.field private mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPathForBorder:Landroid/graphics/Path;

.field private mPathForBorderRadiusOutline:Landroid/graphics/Path;

.field private mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;

.field private mTempRectForCenterDrawPath:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 124
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 102
    iput v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    .line 105
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 106
    iput v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mColor:I

    const/16 v0, 0xff

    .line 107
    iput v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    .line 125
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static colorFromAlphaAndRGBComponents(FF)I
    .locals 1

    float-to-int p1, p1

    const v0, 0xffffff

    and-int/2addr p1, v0

    float-to-int p0, p0

    shl-int/lit8 p0, p0, 0x18

    const/high16 v0, -0x1000000

    and-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method

.method private drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 1196
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    .line 1199
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1200
    iget-object p2, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 1201
    iget-object p2, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1202
    iget-object p2, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {p2, p5, p6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1203
    iget-object p2, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {p2, p7, p8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1204
    iget-object p2, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {p2, p9, p10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1205
    iget-object p2, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1206
    iget-object p2, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawRectangularBackgroundWithBorders(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v11, p0

    .line 1010
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1012
    iget v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mColor:I

    iget v1, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    invoke-static {v0, v1}, Lcom/facebook/react/views/view/ColorUtil;->multiplyColorAlpha(II)I

    move-result v0

    .line 1013
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1014
    iget-object v1, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1015
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    move-object/from16 v12, p1

    .line 1018
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getDirectionAwareBorderInsets()Landroid/graphics/RectF;

    move-result-object v0

    .line 1020
    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 1021
    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 1022
    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 1023
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v16

    if-gtz v13, :cond_2

    if-gtz v15, :cond_2

    if-gtz v14, :cond_2

    if-lez v16, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move-object v0, v11

    goto/16 :goto_f

    .line 1027
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    .line 1029
    invoke-direct {v11, v1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v2

    const/4 v10, 0x1

    .line 1030
    invoke-direct {v11, v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v17

    const/4 v3, 0x2

    .line 1031
    invoke-direct {v11, v3}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v3

    const/4 v4, 0x3

    .line 1032
    invoke-direct {v11, v4}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v18

    .line 1034
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getResolvedLayoutDirection()I

    move-result v4

    if-ne v4, v10, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    const/4 v5, 0x4

    .line 1035
    invoke-direct {v11, v5}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v6

    const/4 v7, 0x5

    .line 1036
    invoke-direct {v11, v7}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v8

    .line 1038
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v9

    iget-object v10, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1039
    invoke-direct {v11, v5}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    move v2, v6

    .line 1043
    :goto_4
    invoke-direct {v11, v7}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_5

    :cond_5
    move v3, v8

    :goto_5
    if-eqz v4, :cond_6

    move v5, v3

    goto :goto_6

    :cond_6
    move v5, v2

    :goto_6
    if-eqz v4, :cond_7

    goto :goto_7

    :cond_7
    move v2, v3

    :goto_7
    move/from16 v19, v2

    move v10, v5

    goto :goto_c

    :cond_8
    if-eqz v4, :cond_9

    move v9, v8

    goto :goto_8

    :cond_9
    move v9, v6

    :goto_8
    if-eqz v4, :cond_a

    goto :goto_9

    :cond_a
    move v6, v8

    .line 1056
    :goto_9
    invoke-direct {v11, v5}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v5

    .line 1057
    invoke-direct {v11, v7}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v7

    if-eqz v4, :cond_b

    move v8, v7

    goto :goto_a

    :cond_b
    move v8, v5

    :goto_a
    if-eqz v4, :cond_c

    goto :goto_b

    :cond_c
    move v5, v7

    :goto_b
    if-eqz v8, :cond_d

    move v2, v9

    :cond_d
    move v10, v2

    if-eqz v5, :cond_e

    move/from16 v19, v6

    goto :goto_c

    :cond_e
    move/from16 v19, v3

    .line 1072
    :goto_c
    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 1073
    iget v8, v0, Landroid/graphics/Rect;->top:I

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    move v6, v10

    move/from16 v7, v17

    move v1, v8

    move/from16 v8, v19

    move v12, v9

    move/from16 v9, v18

    .line 1077
    invoke-static/range {v2 .. v9}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->fastBorderCompatibleColorOrZero(IIIIIIII)I

    move-result v2

    if-eqz v2, :cond_12

    .line 1087
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1089
    iget v8, v0, Landroid/graphics/Rect;->right:I

    .line 1090
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 1092
    iget-object v3, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    if-lez v13, :cond_f

    add-int v9, v12, v13

    int-to-float v3, v12

    int-to-float v4, v1

    int-to-float v5, v9

    sub-int v2, v0, v16

    int-to-float v6, v2

    .line 1095
    iget-object v7, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_f
    if-lez v14, :cond_10

    add-int v2, v1, v14

    add-int v9, v12, v13

    int-to-float v3, v9

    int-to-float v4, v1

    int-to-float v5, v8

    int-to-float v6, v2

    .line 1099
    iget-object v7, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_10
    if-lez v15, :cond_11

    sub-int v2, v8, v15

    int-to-float v3, v2

    add-int/2addr v1, v14

    int-to-float v4, v1

    int-to-float v5, v8

    int-to-float v6, v0

    .line 1103
    iget-object v7, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_11
    if-lez v16, :cond_1

    sub-int v1, v0, v16

    int-to-float v3, v12

    int-to-float v4, v1

    sub-int/2addr v8, v15

    int-to-float v5, v8

    int-to-float v6, v0

    .line 1107
    iget-object v7, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 1117
    :cond_12
    iget-object v2, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1119
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v20

    .line 1120
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v21

    if-lez v13, :cond_13

    int-to-float v9, v12

    int-to-float v4, v1

    add-int v0, v12, v13

    int-to-float v7, v0

    add-int v8, v1, v14

    int-to-float v6, v8

    add-int v8, v1, v21

    sub-int v0, v8, v16

    int-to-float v5, v0

    int-to-float v8, v8

    move-object/from16 v0, p0

    move v3, v1

    move-object/from16 v1, p1

    move v2, v10

    move v10, v3

    move v3, v9

    move/from16 v22, v5

    move v5, v7

    move/from16 v23, v8

    move/from16 v8, v22

    move v11, v10

    move/from16 v10, v23

    .line 1132
    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    goto :goto_d

    :cond_13
    move v11, v1

    :goto_d
    if-lez v14, :cond_14

    int-to-float v3, v12

    int-to-float v10, v11

    add-int v9, v12, v13

    int-to-float v5, v9

    add-int v8, v11, v14

    int-to-float v8, v8

    add-int v9, v12, v20

    sub-int v0, v9, v15

    int-to-float v7, v0

    int-to-float v9, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v4, v10

    move v6, v8

    .line 1145
    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    :cond_14
    if-lez v15, :cond_15

    add-int v9, v12, v20

    int-to-float v5, v9

    int-to-float v4, v11

    add-int v8, v11, v21

    int-to-float v6, v8

    sub-int/2addr v9, v15

    int-to-float v9, v9

    sub-int v8, v8, v16

    int-to-float v8, v8

    add-int v0, v11, v14

    int-to-float v10, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move v3, v5

    move v7, v9

    .line 1158
    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    :cond_15
    if-lez v16, :cond_16

    int-to-float v3, v12

    add-int v8, v11, v21

    int-to-float v6, v8

    add-int v9, v12, v20

    int-to-float v5, v9

    sub-int/2addr v9, v15

    int-to-float v7, v9

    sub-int v8, v8, v16

    int-to-float v10, v8

    add-int v9, v12, v13

    int-to-float v9, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move v4, v6

    move v8, v10

    .line 1171
    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    goto :goto_e

    :cond_16
    move-object/from16 v0, p0

    .line 1175
    :goto_e
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :goto_f
    return-void
.end method

.method private drawRoundedBackgroundWithBorders(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 327
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->updatePath()V

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 330
    iget v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mColor:I

    iget v1, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    invoke-static {v0, v1}, Lcom/facebook/react/views/view/ColorUtil;->multiplyColorAlpha(II)I

    move-result v0

    .line 331
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 334
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    iget-object v1, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 337
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getDirectionAwareBorderInsets()Landroid/graphics/RectF;

    move-result-object v13

    const/4 v0, 0x0

    .line 338
    invoke-direct {v11, v0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v1

    const/4 v2, 0x1

    .line 339
    invoke-direct {v11, v2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v14

    const/4 v3, 0x2

    .line 340
    invoke-direct {v11, v3}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v3

    const/4 v4, 0x3

    .line 341
    invoke-direct {v11, v4}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v15

    .line 343
    iget v4, v13, Landroid/graphics/RectF;->top:F

    const/16 v16, 0x0

    cmpl-float v4, v4, v16

    if-gtz v4, :cond_1

    iget v4, v13, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v16

    if-gtz v4, :cond_1

    iget v4, v13, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v16

    if-gtz v4, :cond_1

    iget v4, v13, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v16

    if-lez v4, :cond_12

    .line 349
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getFullBorderWidth()F

    move-result v4

    const/16 v5, 0x8

    .line 350
    invoke-direct {v11, v5}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v5

    .line 351
    iget v6, v13, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v4

    if-nez v6, :cond_2

    iget v6, v13, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v4

    if-nez v6, :cond_2

    iget v6, v13, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v4

    if-nez v6, :cond_2

    iget v6, v13, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v4

    if-nez v6, :cond_2

    if-ne v1, v5, :cond_2

    if-ne v14, v5, :cond_2

    if-ne v3, v5, :cond_2

    if-ne v15, v5, :cond_2

    cmpl-float v0, v4, v16

    if-lez v0, :cond_12

    .line 360
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    invoke-static {v5, v1}, Lcom/facebook/react/views/view/ColorUtil;->multiplyColorAlpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 362
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 363
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    iget-object v1, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_a

    .line 368
    :cond_2
    iget-object v4, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 371
    iget-object v4, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 372
    iget-object v4, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getResolvedLayoutDirection()I

    move-result v4

    if-ne v4, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    const/4 v2, 0x4

    .line 375
    invoke-direct {v11, v2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v4

    const/4 v5, 0x5

    .line 376
    invoke-direct {v11, v5}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v6

    .line 378
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v7

    iget-object v8, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 379
    invoke-direct {v11, v2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move v1, v4

    .line 383
    :goto_0
    invoke-direct {v11, v5}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    move v3, v6

    :goto_1
    if-eqz v0, :cond_6

    move v2, v3

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move v1, v3

    :goto_3
    move/from16 v17, v1

    goto :goto_8

    :cond_8
    if-eqz v0, :cond_9

    move v7, v6

    goto :goto_4

    :cond_9
    move v7, v4

    :goto_4
    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    move v4, v6

    .line 396
    :goto_5
    invoke-direct {v11, v2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v2

    .line 397
    invoke-direct {v11, v5}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v5

    if-eqz v0, :cond_b

    move v6, v5

    goto :goto_6

    :cond_b
    move v6, v2

    :goto_6
    if-eqz v0, :cond_c

    goto :goto_7

    :cond_c
    move v2, v5

    :goto_7
    if-eqz v6, :cond_d

    move v1, v7

    :cond_d
    if-eqz v2, :cond_e

    move v2, v1

    move/from16 v17, v4

    goto :goto_8

    :cond_e
    move v2, v1

    move/from16 v17, v3

    .line 412
    :goto_8
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v10, v0, Landroid/graphics/RectF;->left:F

    .line 413
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v9, v0, Landroid/graphics/RectF;->right:F

    .line 414
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v8, v0, Landroid/graphics/RectF;->top:F

    .line 415
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    .line 417
    iget v0, v13, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_f

    .line 420
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    .line 421
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->y:F

    .line 422
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    .line 423
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v18, v3

    move v3, v10

    move/from16 v19, v4

    move v4, v8

    move/from16 v20, v7

    move/from16 v7, v19

    move/from16 v19, v8

    move/from16 v8, v18

    move/from16 v18, v9

    move v9, v10

    move/from16 v21, v10

    move/from16 v10, v20

    .line 427
    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    goto :goto_9

    :cond_f
    move/from16 v20, v7

    move/from16 v19, v8

    move/from16 v18, v9

    move/from16 v21, v10

    .line 430
    :goto_9
    iget v0, v13, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_10

    .line 433
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    .line 434
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->y:F

    .line 435
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 436
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    iget v8, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v21

    move/from16 v4, v19

    move/from16 v9, v18

    move/from16 v10, v19

    .line 440
    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 443
    :cond_10
    iget v0, v13, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_11

    .line 446
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    .line 447
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->y:F

    .line 448
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 449
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    iget v8, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v9, v18

    move/from16 v10, v20

    .line 453
    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 456
    :cond_11
    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_12

    .line 459
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    .line 460
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->y:F

    .line 461
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 462
    iget-object v0, v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    iget v8, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, v21

    move/from16 v4, v20

    move/from16 v9, v18

    move/from16 v10, v20

    .line 466
    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 471
    :cond_12
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private static fastBorderCompatibleColorOrZero(IIIIIIII)I
    .locals 3

    const/4 v0, -0x1

    if-lez p0, :cond_0

    move v1, p4

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    if-lez p1, :cond_1

    move v2, p5

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    and-int/2addr v1, v2

    if-lez p2, :cond_2

    move v2, p6

    goto :goto_2

    :cond_2
    const/4 v2, -0x1

    :goto_2
    and-int/2addr v1, v2

    if-lez p3, :cond_3

    move v0, p7

    :cond_3
    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-lez p0, :cond_4

    goto :goto_3

    :cond_4
    const/4 p4, 0x0

    :goto_3
    if-lez p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 p5, 0x0

    :goto_4
    or-int p0, p4, p5

    if-lez p2, :cond_6

    goto :goto_5

    :cond_6
    const/4 p6, 0x0

    :goto_5
    or-int/2addr p0, p6

    if-lez p3, :cond_7

    goto :goto_6

    :cond_7
    const/4 p7, 0x0

    :goto_6
    or-int/2addr p0, p7

    if-ne v0, p0, :cond_8

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private getBorderColor(I)I
    .locals 2

    .line 1232
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1233
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result p1

    goto :goto_1

    :cond_1
    const/high16 p1, 0x437f0000    # 255.0f

    .line 1235
    :goto_1
    invoke-static {p1, v0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->colorFromAlphaAndRGBComponents(FF)I

    move-result p1

    return p1
.end method

.method private getBorderWidth(I)I
    .locals 1

    .line 1210
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1214
    :cond_0
    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result p1

    .line 1215
    invoke-static {p1}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_0
    return p1
.end method

.method private static getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V
    .locals 21

    move-object/from16 v0, p16

    add-double v1, p0, p4

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    add-double v5, p2, p6

    div-double/2addr v5, v3

    sub-double v7, p8, v1

    sub-double v9, p10, v5

    sub-double v11, p12, v1

    sub-double v13, p14, v5

    sub-double v15, p4, p0

    .line 908
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    div-double/2addr v15, v3

    sub-double v17, p6, p2

    .line 909
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    div-double v17, v17, v3

    sub-double/2addr v13, v9

    sub-double/2addr v11, v7

    div-double/2addr v13, v11

    mul-double v7, v7, v13

    sub-double/2addr v9, v7

    mul-double v17, v17, v17

    mul-double v7, v15, v15

    mul-double v11, v7, v13

    mul-double v11, v11, v13

    add-double v11, v17, v11

    mul-double v19, v15, v3

    mul-double v19, v19, v15

    mul-double v19, v19, v9

    mul-double v3, v19, v13

    mul-double v19, v9, v9

    sub-double v19, v19, v17

    mul-double v7, v7, v19

    neg-double v7, v7

    div-double/2addr v7, v11

    move-wide/from16 v17, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v11, v11, v5

    move-wide v15, v1

    div-double v0, v3, v11

    .line 930
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    neg-double v2, v3

    div-double/2addr v2, v11

    sub-double/2addr v2, v0

    mul-double v13, v13, v2

    add-double/2addr v13, v9

    add-double/2addr v2, v15

    add-double v13, v13, v17

    .line 942
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    double-to-float v0, v2

    move-object/from16 v1, p16

    .line 943
    iput v0, v1, Landroid/graphics/PointF;->x:F

    double-to-float v0, v13

    .line 944
    iput v0, v1, Landroid/graphics/PointF;->y:F

    :cond_0
    return-void
.end method

.method private isBorderColorDefined(I)Z
    .locals 3

    .line 1226
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1227
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v1

    .line 1228
    :cond_1
    invoke-static {v0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v1}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private setBorderAlpha(IF)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lcom/facebook/react/uimanager/Spacing;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/Spacing;-><init>(F)V

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    invoke-static {v0, p2}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/Spacing;->set(IF)Z

    .line 239
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method private setBorderRGB(IF)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcom/facebook/react/uimanager/Spacing;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/Spacing;-><init>(F)V

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    invoke-static {v0, p2}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/Spacing;->set(IF)Z

    .line 228
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method private updatePath()V
    .locals 46

    move-object/from16 v0, p0

    .line 475
    iget-boolean v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 479
    iput-boolean v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 481
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    if-nez v2, :cond_1

    .line 482
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    .line 485
    :cond_1
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    if-nez v2, :cond_2

    .line 486
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    .line 489
    :cond_2
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    if-nez v2, :cond_3

    .line 490
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    .line 493
    :cond_3
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    if-nez v2, :cond_4

    .line 494
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    .line 497
    :cond_4
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    if-nez v2, :cond_5

    .line 498
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    .line 501
    :cond_5
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    if-nez v2, :cond_6

    .line 502
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    .line 505
    :cond_6
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;

    if-nez v2, :cond_7

    .line 506
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;

    .line 509
    :cond_7
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    if-nez v2, :cond_8

    .line 510
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    .line 513
    :cond_8
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 514
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 515
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 516
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 518
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 519
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 520
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 521
    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getDirectionAwareBorderInsets()Landroid/graphics/RectF;

    move-result-object v2

    .line 525
    iget-object v3, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 526
    iget-object v3, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 527
    iget-object v3, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 528
    iget-object v3, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 530
    iget-object v3, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 531
    iget-object v3, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 532
    iget-object v3, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 533
    iget-object v3, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getFullBorderRadius()F

    move-result v3

    .line 536
    sget-object v4, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->TOP_LEFT:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v4

    .line 537
    sget-object v5, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->TOP_RIGHT:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    invoke-virtual {v0, v3, v5}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v5

    .line 538
    sget-object v7, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->BOTTOM_LEFT:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 539
    invoke-virtual {v0, v3, v7}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v7

    .line 540
    sget-object v8, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->BOTTOM_RIGHT:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 541
    invoke-virtual {v0, v3, v8}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v3

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getResolvedLayoutDirection()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    const/4 v8, 0x1

    goto :goto_0

    :cond_9
    const/4 v8, 0x0

    .line 544
    :goto_0
    sget-object v10, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->TOP_START:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    invoke-virtual {v0, v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadius(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v10

    .line 545
    sget-object v11, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->TOP_END:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    invoke-virtual {v0, v11}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadius(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v11

    .line 546
    sget-object v12, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->BOTTOM_START:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    invoke-virtual {v0, v12}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadius(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v12

    .line 547
    sget-object v13, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->BOTTOM_END:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    invoke-virtual {v0, v13}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadius(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v13

    .line 549
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v14

    iget-object v15, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v15}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 550
    invoke-static {v10}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v14

    if-eqz v14, :cond_a

    goto :goto_1

    :cond_a
    move v4, v10

    .line 554
    :goto_1
    invoke-static {v11}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_2

    :cond_b
    move v5, v11

    .line 558
    :goto_2
    invoke-static {v12}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_3

    :cond_c
    move v7, v12

    .line 562
    :goto_3
    invoke-static {v13}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v10

    if-eqz v10, :cond_d

    goto :goto_4

    :cond_d
    move v3, v13

    :goto_4
    if-eqz v8, :cond_e

    move v10, v5

    goto :goto_5

    :cond_e
    move v10, v4

    :goto_5
    if-eqz v8, :cond_f

    goto :goto_6

    :cond_f
    move v4, v5

    :goto_6
    if-eqz v8, :cond_10

    move v5, v3

    goto :goto_7

    :cond_10
    move v5, v7

    :goto_7
    if-eqz v8, :cond_19

    move v3, v7

    goto :goto_c

    :cond_11
    if-eqz v8, :cond_12

    move v14, v11

    goto :goto_8

    :cond_12
    move v14, v10

    :goto_8
    if-eqz v8, :cond_13

    goto :goto_9

    :cond_13
    move v10, v11

    :goto_9
    if-eqz v8, :cond_14

    move v11, v13

    goto :goto_a

    :cond_14
    move v11, v12

    :goto_a
    if-eqz v8, :cond_15

    goto :goto_b

    :cond_15
    move v12, v13

    .line 581
    :goto_b
    invoke-static {v14}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v8

    if-nez v8, :cond_16

    move v4, v14

    .line 585
    :cond_16
    invoke-static {v10}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v8

    if-nez v8, :cond_17

    move v5, v10

    .line 589
    :cond_17
    invoke-static {v11}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v8

    if-nez v8, :cond_18

    move v7, v11

    .line 593
    :cond_18
    invoke-static {v12}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v8

    move v10, v4

    move v4, v5

    move v5, v7

    if-nez v8, :cond_19

    move v3, v12

    .line 598
    :cond_19
    :goto_c
    iget v7, v2, Landroid/graphics/RectF;->left:F

    sub-float v7, v10, v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 599
    iget v11, v2, Landroid/graphics/RectF;->top:F

    sub-float v11, v10, v11

    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 600
    iget v12, v2, Landroid/graphics/RectF;->right:F

    sub-float v12, v4, v12

    invoke-static {v12, v8}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 601
    iget v13, v2, Landroid/graphics/RectF;->top:F

    sub-float v13, v4, v13

    invoke-static {v13, v8}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 602
    iget v14, v2, Landroid/graphics/RectF;->right:F

    sub-float v14, v3, v14

    invoke-static {v14, v8}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 603
    iget v15, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v15, v3, v15

    invoke-static {v15, v8}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 604
    iget v6, v2, Landroid/graphics/RectF;->left:F

    sub-float v6, v5, v6

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 605
    iget v9, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v9, v5, v9

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 607
    iget-object v8, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    move-object/from16 v20, v2

    const/16 v2, 0x8

    move/from16 v21, v5

    new-array v5, v2, [F

    const/16 v19, 0x0

    aput v7, v5, v19

    const/16 v17, 0x1

    aput v11, v5, v17

    const/16 v22, 0x2

    aput v12, v5, v22

    const/16 v23, 0x3

    aput v13, v5, v23

    const/16 v24, 0x4

    aput v14, v5, v24

    const/16 v25, 0x5

    aput v15, v5, v25

    const/16 v26, 0x6

    aput v6, v5, v26

    const/16 v27, 0x7

    aput v9, v5, v27

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v1, v5, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 621
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    const/16 v5, 0x8

    new-array v8, v5, [F

    const/4 v5, 0x0

    aput v10, v8, v5

    const/4 v5, 0x1

    aput v10, v8, v5

    aput v4, v8, v22

    aput v4, v8, v23

    aput v3, v8, v24

    aput v3, v8, v25

    aput v21, v8, v26

    aput v21, v8, v27

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v8, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 637
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    const/high16 v2, 0x40000000    # 2.0f

    const/16 v5, 0x8

    if-eqz v1, :cond_1a

    .line 638
    invoke-virtual {v1, v5}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v1

    div-float/2addr v1, v2

    goto :goto_d

    :cond_1a
    const/4 v1, 0x0

    .line 641
    :goto_d
    iget-object v8, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;

    move/from16 v28, v15

    new-array v15, v5, [F

    add-float v5, v10, v1

    const/16 v19, 0x0

    aput v5, v15, v19

    const/16 v17, 0x1

    aput v5, v15, v17

    add-float v5, v4, v1

    aput v5, v15, v22

    aput v5, v15, v23

    add-float v5, v3, v1

    aput v5, v15, v24

    aput v5, v15, v25

    add-float v5, v21, v1

    aput v5, v15, v26

    aput v5, v15, v27

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v2, v15, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 655
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    const/16 v5, 0x8

    new-array v5, v5, [F

    move-object/from16 v8, v20

    iget v15, v8, Landroid/graphics/RectF;->left:F

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v15, v15, v16

    sub-float v15, v10, v15

    move/from16 v20, v14

    iget v14, v8, Landroid/graphics/RectF;->left:F

    const/16 v18, 0x0

    cmpl-float v14, v14, v18

    if-lez v14, :cond_1b

    iget v14, v8, Landroid/graphics/RectF;->left:F

    div-float v14, v10, v14

    goto :goto_e

    :cond_1b
    const/4 v14, 0x0

    .line 658
    :goto_e
    invoke-static {v15, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    const/4 v15, 0x0

    aput v14, v5, v15

    iget v14, v8, Landroid/graphics/RectF;->top:F

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float v14, v14, v15

    sub-float v14, v10, v14

    iget v15, v8, Landroid/graphics/RectF;->top:F

    const/16 v18, 0x0

    cmpl-float v15, v15, v18

    if-lez v15, :cond_1c

    iget v15, v8, Landroid/graphics/RectF;->top:F

    div-float/2addr v10, v15

    goto :goto_f

    :cond_1c
    const/4 v10, 0x0

    .line 661
    :goto_f
    invoke-static {v14, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    const/4 v14, 0x1

    aput v10, v5, v14

    iget v10, v8, Landroid/graphics/RectF;->right:F

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float v10, v10, v14

    sub-float v10, v4, v10

    iget v14, v8, Landroid/graphics/RectF;->right:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_1d

    iget v14, v8, Landroid/graphics/RectF;->right:F

    div-float v14, v4, v14

    goto :goto_10

    :cond_1d
    const/4 v14, 0x0

    .line 664
    :goto_10
    invoke-static {v10, v14}, Ljava/lang/Math;->max(FF)F

    move-result v10

    aput v10, v5, v22

    iget v10, v8, Landroid/graphics/RectF;->top:F

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float v10, v10, v14

    sub-float v10, v4, v10

    iget v14, v8, Landroid/graphics/RectF;->top:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_1e

    iget v14, v8, Landroid/graphics/RectF;->top:F

    div-float/2addr v4, v14

    goto :goto_11

    :cond_1e
    const/4 v4, 0x0

    .line 667
    :goto_11
    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, v5, v23

    iget v4, v8, Landroid/graphics/RectF;->right:F

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v4, v4, v10

    sub-float v4, v3, v4

    iget v10, v8, Landroid/graphics/RectF;->right:F

    const/4 v14, 0x0

    cmpl-float v10, v10, v14

    if-lez v10, :cond_1f

    iget v10, v8, Landroid/graphics/RectF;->right:F

    div-float v10, v3, v10

    goto :goto_12

    :cond_1f
    const/4 v10, 0x0

    .line 670
    :goto_12
    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, v5, v24

    iget v4, v8, Landroid/graphics/RectF;->bottom:F

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v4, v4, v10

    sub-float v4, v3, v4

    iget v10, v8, Landroid/graphics/RectF;->bottom:F

    const/4 v14, 0x0

    cmpl-float v10, v10, v14

    if-lez v10, :cond_20

    iget v10, v8, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v3, v10

    goto :goto_13

    :cond_20
    const/4 v3, 0x0

    .line 673
    :goto_13
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v5, v25

    iget v3, v8, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    sub-float v3, v21, v3

    iget v4, v8, Landroid/graphics/RectF;->left:F

    const/4 v10, 0x0

    cmpl-float v4, v4, v10

    if-lez v4, :cond_21

    iget v4, v8, Landroid/graphics/RectF;->left:F

    div-float v4, v21, v4

    goto :goto_14

    :cond_21
    const/4 v4, 0x0

    .line 676
    :goto_14
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v5, v26

    iget v3, v8, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    sub-float v3, v21, v3

    iget v4, v8, Landroid/graphics/RectF;->bottom:F

    const/4 v10, 0x0

    cmpl-float v4, v4, v10

    if-lez v4, :cond_22

    iget v4, v8, Landroid/graphics/RectF;->bottom:F

    div-float v8, v21, v4

    goto :goto_15

    :cond_22
    const/4 v8, 0x0

    .line 679
    :goto_15
    invoke-static {v3, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v5, v27

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 655
    invoke-virtual {v1, v2, v5, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 772
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    if-nez v1, :cond_23

    .line 773
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    .line 777
    :cond_23
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 778
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 780
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    move-wide/from16 v29, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    move-wide/from16 v31, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v7, v7, v2

    add-float/2addr v1, v7

    float-to-double v3, v1

    move-wide/from16 v33, v3

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    mul-float v11, v11, v2

    add-float/2addr v1, v11

    float-to-double v1, v1

    move-wide/from16 v35, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    move-wide/from16 v37, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    move-wide/from16 v39, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    move-wide/from16 v41, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    move-wide/from16 v43, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    move-object/from16 v45, v1

    invoke-static/range {v29 .. v45}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V

    .line 799
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    if-nez v1, :cond_24

    .line 800
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    .line 803
    :cond_24
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 804
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 806
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    move-wide/from16 v29, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v9, v9, v2

    sub-float/2addr v1, v9

    float-to-double v3, v1

    move-wide/from16 v31, v3

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    mul-float v6, v6, v2

    add-float/2addr v1, v6

    float-to-double v1, v1

    move-wide/from16 v33, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v1

    move-wide/from16 v35, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    move-wide/from16 v37, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v1

    move-wide/from16 v39, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    move-wide/from16 v41, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v1

    move-wide/from16 v43, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    move-object/from16 v45, v1

    invoke-static/range {v29 .. v45}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V

    .line 825
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    if-nez v1, :cond_25

    .line 826
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    .line 829
    :cond_25
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 830
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 832
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v12, v12, v2

    sub-float/2addr v1, v12

    float-to-double v1, v1

    move-wide/from16 v29, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    move-wide/from16 v31, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    move-wide/from16 v33, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v13, v13, v2

    add-float/2addr v1, v13

    float-to-double v1, v1

    move-wide/from16 v35, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    move-wide/from16 v37, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    move-wide/from16 v39, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    move-wide/from16 v41, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    move-wide/from16 v43, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    move-object/from16 v45, v1

    invoke-static/range {v29 .. v45}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V

    .line 851
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    if-nez v1, :cond_26

    .line 852
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    .line 855
    :cond_26
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 856
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 858
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v14, v20, v2

    sub-float/2addr v1, v14

    float-to-double v3, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    mul-float v15, v28, v2

    sub-float/2addr v1, v15

    float-to-double v5, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v7, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v9, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v11, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v13, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    move-wide v15, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v1

    move-wide/from16 v17, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    move-object/from16 v19, v1

    invoke-static/range {v3 .. v19}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V

    return-void
.end method

.method private updatePathEffect()V
    .locals 2

    .line 965
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderStyle:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    if-eqz v0, :cond_0

    .line 966
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getFullBorderWidth()F

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;->getPathEffect(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;F)Landroid/graphics/PathEffect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 968
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->updatePathEffect()V

    .line 131
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->hasRoundedBorders()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawRectangularBackgroundWithBorders(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawRoundedBackgroundWithBorders(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    return v0
.end method

.method public getBorderRadius(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F
    .locals 1

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 279
    invoke-virtual {p0, v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result p1

    return p1
.end method

.method public getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    if-nez v0, :cond_0

    return p1

    .line 288
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->ordinal()I

    move-result p2

    aget p2, v0, p2

    .line 290
    invoke-static {p2}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    :cond_1
    return p2
.end method

.method public getBorderWidthOrDefaultTo(FI)F
    .locals 1

    .line 949
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    if-nez v0, :cond_0

    return p1

    .line 953
    :cond_0
    invoke-virtual {v0, p2}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result p2

    .line 955
    invoke-static {p2}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    :cond_1
    return p2
.end method

.method public getColor()I
    .locals 1

    .line 323
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mColor:I

    return v0
.end method

.method public getDirectionAwareBorderInsets()Landroid/graphics/RectF;
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 1240
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v0

    const/4 v1, 0x1

    .line 1241
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v2

    const/4 v3, 0x3

    .line 1242
    invoke-virtual {p0, v0, v3}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v3

    const/4 v4, 0x0

    .line 1243
    invoke-virtual {p0, v0, v4}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v5

    const/4 v6, 0x2

    .line 1244
    invoke-virtual {p0, v0, v6}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v0

    .line 1246
    iget-object v6, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v6, :cond_9

    .line 1247
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getResolvedLayoutDirection()I

    move-result v6

    if-ne v6, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1248
    :goto_0
    iget-object v4, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v4

    .line 1249
    iget-object v6, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v6

    .line 1251
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1252
    invoke-static {v4}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v5, v4

    .line 1256
    :goto_1
    invoke-static {v6}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v0, v6

    :goto_2
    if-eqz v1, :cond_3

    move v4, v0

    goto :goto_3

    :cond_3
    move v4, v5

    :goto_3
    if-eqz v1, :cond_4

    move v0, v5

    :cond_4
    move v5, v4

    goto :goto_6

    :cond_5
    if-eqz v1, :cond_6

    move v7, v6

    goto :goto_4

    :cond_6
    move v7, v4

    :goto_4
    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    move v4, v6

    .line 1269
    :goto_5
    invoke-static {v7}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-nez v1, :cond_8

    move v5, v7

    .line 1273
    :cond_8
    invoke-static {v4}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-nez v1, :cond_9

    move v0, v4

    .line 1279
    :cond_9
    :goto_6
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v5, v2, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public getFullBorderRadius()F
    .locals 1

    .line 275
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    invoke-static {v0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    :goto_0
    return v0
.end method

.method public getFullBorderWidth()F
    .locals 2

    .line 973
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    invoke-static {v0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    .line 974
    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 2

    .line 180
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mColor:I

    iget v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    invoke-static {v0, v1}, Lcom/facebook/react/views/view/ColorUtil;->multiplyColorAlpha(II)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/views/view/ColorUtil;->getOpacityFromColor(I)I

    move-result v0

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2

    .line 186
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    invoke-static {v0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    if-eqz v0, :cond_2

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->updatePath()V

    .line 190
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    goto :goto_0

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getResolvedLayoutDirection()I
    .locals 1

    .line 304
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mLayoutDirection:I

    return v0
.end method

.method public hasRoundedBorders()Z
    .locals 8

    .line 139
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    invoke-static {v0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return v2

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 144
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v0, v5

    .line 145
    invoke-static {v6}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v7

    if-nez v7, :cond_1

    cmpl-float v6, v6, v1

    if-lez v6, :cond_1

    return v2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 156
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    return-void
.end method

.method public onResolvedLayoutDirectionChanged(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 162
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    if-eq p1, v0, :cond_0

    .line 163
    iput p1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    .line 164
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setBorderColor(IFF)V
    .locals 0

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderRGB(IF)V

    .line 218
    invoke-direct {p0, p1, p3}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderAlpha(IF)V

    return-void
.end method

.method public setBorderStyle(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 244
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;->valueOf(Ljava/lang/String;)Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    move-result-object p1

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderStyle:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    if-eq v0, p1, :cond_1

    .line 247
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderStyle:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    const/4 p1, 0x1

    .line 248
    iput-boolean p1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 249
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setBorderWidth(IF)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/facebook/react/uimanager/Spacing;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/Spacing;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    invoke-static {v0, p2}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/Spacing;->set(IF)Z

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 210
    :cond_1
    iput-boolean p2, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 212
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 298
    iput p1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mColor:I

    .line 299
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setRadius(F)V
    .locals 1

    .line 254
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iput p1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    const/4 p1, 0x1

    .line 256
    iput-boolean p1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 257
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setRadius(FI)V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    if-nez v0, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 263
    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 264
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    aget v0, v0, p2

    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    aput p1, v0, p2

    const/4 p1, 0x1

    .line 269
    iput-boolean p1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 270
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setResolvedLayoutDirection(I)Z
    .locals 1

    .line 309
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mLayoutDirection:I

    if-eq v0, p1, :cond_0

    .line 310
    iput p1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mLayoutDirection:I

    .line 311
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->onResolvedLayoutDirectionChanged(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
