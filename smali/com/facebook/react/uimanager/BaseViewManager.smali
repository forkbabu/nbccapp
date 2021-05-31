.class public abstract Lcom/facebook/react/uimanager/BaseViewManager;
.super Lcom/facebook/react/uimanager/ViewManager;
.source "BaseViewManager.java"

# interfaces
.implements Lcom/facebook/react/uimanager/BaseViewManagerInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "C:",
        "Lcom/facebook/react/uimanager/LayoutShadowNode;",
        ">",
        "Lcom/facebook/react/uimanager/ViewManager<",
        "TT;TC;>;",
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final CAMERA_DISTANCE_NORMALIZATION_MULTIPLIER:F

.field private static final PERSPECTIVE_ARRAY_INVERTED_CAMERA_DISTANCE_INDEX:I = 0x2

.field private static final STATE_BUSY:Ljava/lang/String; = "busy"

.field private static final STATE_CHECKED:Ljava/lang/String; = "checked"

.field private static final STATE_EXPANDED:Ljava/lang/String; = "expanded"

.field private static final STATE_MIXED:Ljava/lang/String; = "mixed"

.field private static sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

.field public static final sStateDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sTransformDecompositionArray:[D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/facebook/react/uimanager/BaseViewManager;->CAMERA_DISTANCE_NORMALIZATION_MULTIPLIER:F

    .line 46
    new-instance v0, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    const/16 v0, 0x10

    new-array v0, v0, [D

    .line 48
    sput-object v0, Lcom/facebook/react/uimanager/BaseViewManager;->sTransformDecompositionArray:[D

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/BaseViewManager;->sStateDescription:Ljava/util/Map;

    .line 53
    sget v1, Lcom/facebook/react/R$string;->state_busy_description:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "busy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget v1, Lcom/facebook/react/R$string;->state_expanded_description:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "expanded"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget v1, Lcom/facebook/react/R$string;->state_collapsed_description:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "collapsed"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewManager;-><init>()V

    return-void
.end method

.method private logUnsupportedPropertyWarning(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 449
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/BaseViewManager;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "ReactNative"

    const-string v1, "%s doesn\'t support property \'%s\'"

    invoke-static {p1, v1, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static resetTransformProperty(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 396
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 397
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 398
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 399
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotationX(F)V

    .line 400
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotationY(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 401
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 402
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 403
    invoke-virtual {p0, v0}, Landroid/view/View;->setCameraDistance(F)V

    return-void
.end method

.method private static sanitizeFloatPropertyValue(F)F
    .locals 3

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const v1, -0x800001

    cmpl-float v2, p0, v1

    if-ltz v2, :cond_0

    cmpg-float v2, p0, v0

    if-gtz v2, :cond_0

    return p0

    :cond_0
    cmpg-float v2, p0, v1

    if-ltz v2, :cond_5

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v2, p0, v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    cmpl-float v1, p0, v0

    if-gtz v1, :cond_4

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v1, p0, v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 388
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x0

    return p0

    .line 392
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid float property value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method private static setTransformProperty(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 5

    .line 329
    sget-object v0, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->reset()V

    .line 330
    sget-object v0, Lcom/facebook/react/uimanager/BaseViewManager;->sTransformDecompositionArray:[D

    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/TransformHelper;->processTransform(Lcom/facebook/react/bridge/ReadableArray;[D)V

    .line 331
    sget-object p1, Lcom/facebook/react/uimanager/BaseViewManager;->sTransformDecompositionArray:[D

    sget-object v0, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/MatrixMathHelper;->decomposeMatrix([DLcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;)V

    .line 332
    sget-object p1, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object p1, p1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->translation:[D

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    double-to-float p1, v1

    .line 334
    invoke-static {p1}, Lcom/facebook/react/uimanager/BaseViewManager;->sanitizeFloatPropertyValue(F)F

    move-result p1

    .line 333
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p1

    .line 332
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 335
    sget-object p1, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object p1, p1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->translation:[D

    const/4 v1, 0x1

    aget-wide v2, p1, v1

    double-to-float p1, v2

    .line 337
    invoke-static {p1}, Lcom/facebook/react/uimanager/BaseViewManager;->sanitizeFloatPropertyValue(F)F

    move-result p1

    .line 336
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p1

    .line 335
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 338
    sget-object p1, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object p1, p1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->rotationDegrees:[D

    const/4 v2, 0x2

    aget-wide v3, p1, v2

    double-to-float p1, v3

    .line 339
    invoke-static {p1}, Lcom/facebook/react/uimanager/BaseViewManager;->sanitizeFloatPropertyValue(F)F

    move-result p1

    .line 338
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 340
    sget-object p1, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object p1, p1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->rotationDegrees:[D

    aget-wide v3, p1, v0

    double-to-float p1, v3

    .line 341
    invoke-static {p1}, Lcom/facebook/react/uimanager/BaseViewManager;->sanitizeFloatPropertyValue(F)F

    move-result p1

    .line 340
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationX(F)V

    .line 342
    sget-object p1, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object p1, p1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->rotationDegrees:[D

    aget-wide v3, p1, v1

    double-to-float p1, v3

    .line 343
    invoke-static {p1}, Lcom/facebook/react/uimanager/BaseViewManager;->sanitizeFloatPropertyValue(F)F

    move-result p1

    .line 342
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationY(F)V

    .line 344
    sget-object p1, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object p1, p1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->scale:[D

    aget-wide v3, p1, v0

    double-to-float p1, v3

    invoke-static {p1}, Lcom/facebook/react/uimanager/BaseViewManager;->sanitizeFloatPropertyValue(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 345
    sget-object p1, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object p1, p1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->scale:[D

    aget-wide v0, p1, v1

    double-to-float p1, v0

    invoke-static {p1}, Lcom/facebook/react/uimanager/BaseViewManager;->sanitizeFloatPropertyValue(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 347
    sget-object p1, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object p1, p1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->perspective:[D

    .line 349
    array-length v0, p1

    if-le v0, v2, :cond_1

    .line 350
    aget-wide v0, p1, v2

    double-to-float p1, v0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const p1, 0x3a4ccccd

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    div-float/2addr v0, p1

    .line 357
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getScreenDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p1

    mul-float p1, p1, v0

    .line 365
    sget v0, Lcom/facebook/react/uimanager/BaseViewManager;->CAMERA_DISTANCE_NORMALIZATION_MULTIPLIER:F

    mul-float p1, p1, v0

    .line 366
    invoke-static {p1}, Lcom/facebook/react/uimanager/BaseViewManager;->sanitizeFloatPropertyValue(F)F

    move-result p1

    .line 368
    invoke-virtual {p0, p1}, Landroid/view/View;->setCameraDistance(F)V

    :cond_1
    return-void
.end method

.method private updateViewAccessibility(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 407
    invoke-static {p1}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->setDelegate(Landroid/view/View;)V

    return-void
.end method

.method private updateViewContentDescription(Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 198
    sget v0, Lcom/facebook/react/R$id;->accessibility_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    sget v1, Lcom/facebook/react/R$id;->accessibility_state:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReadableMap;

    .line 200
    sget v2, Lcom/facebook/react/R$id;->accessibility_hint:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 201
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 202
    sget v4, Lcom/facebook/react/R$id;->accessibility_value:I

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v1, :cond_5

    .line 207
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v0

    .line 208
    :cond_1
    :goto_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 209
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v5

    .line 210
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDynamic(Ljava/lang/String;)Lcom/facebook/react/bridge/Dynamic;

    move-result-object v6

    const-string v7, "checked"

    .line 211
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 212
    invoke-interface {v6}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v7

    sget-object v8, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v7, v8, :cond_2

    .line 213
    invoke-interface {v6}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mixed"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/facebook/react/R$string;->state_mixed_description:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v7, "busy"

    .line 215
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 216
    invoke-interface {v6}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v7

    sget-object v8, Lcom/facebook/react/bridge/ReadableType;->Boolean:Lcom/facebook/react/bridge/ReadableType;

    if-ne v7, v8, :cond_3

    .line 217
    invoke-interface {v6}, Lcom/facebook/react/bridge/Dynamic;->asBoolean()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/facebook/react/R$string;->state_busy_description:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v7, "expanded"

    .line 219
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v5

    sget-object v7, Lcom/facebook/react/bridge/ReadableType;->Boolean:Lcom/facebook/react/bridge/ReadableType;

    if-ne v5, v7, :cond_1

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 223
    invoke-interface {v6}, Lcom/facebook/react/bridge/Dynamic;->asBoolean()Z

    move-result v6

    if-eqz v6, :cond_4

    sget v6, Lcom/facebook/react/R$string;->state_expanded_description:I

    goto :goto_1

    :cond_4
    sget v6, Lcom/facebook/react/R$string;->state_collapsed_description:I

    .line 222
    :goto_1
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 220
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    if-eqz v4, :cond_6

    const-string v0, "text"

    .line 229
    invoke-interface {v4, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 230
    invoke-interface {v4, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDynamic(Ljava/lang/String;)Lcom/facebook/react/bridge/Dynamic;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 231
    invoke-interface {v0}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    sget-object v4, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v1, v4, :cond_6

    .line 232
    invoke-interface {v0}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v2, :cond_7

    .line 236
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    const-string v0, ", "

    .line 239
    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 418
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->builder()Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    const-string v1, "registrationName"

    const-string v2, "onAccessibilityAction"

    .line 419
    invoke-static {v1, v2}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "topAccessibilityAction"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Lcom/facebook/react/common/MapBuilder$Builder;->build()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 412
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/ViewManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 413
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManager;->updateViewAccessibility(Landroid/view/View;)V

    return-void
.end method

.method public setAccessibilityActions(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityActions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 250
    :cond_0
    sget v0, Lcom/facebook/react/R$id;->accessibility_actions:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setAccessibilityHint(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityHint"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 150
    sget v0, Lcom/facebook/react/R$id;->accessibility_hint:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 151
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManager;->updateViewContentDescription(Landroid/view/View;)V

    return-void
.end method

.method public setAccessibilityLabel(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityLabel"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 143
    sget v0, Lcom/facebook/react/R$id;->accessibility_label:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManager;->updateViewContentDescription(Landroid/view/View;)V

    return-void
.end method

.method public setAccessibilityLiveRegion(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityLiveRegion"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_2

    const-string v0, "none"

    .line 319
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "polite"

    .line 321
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    .line 322
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    goto :goto_1

    :cond_1
    const-string v0, "assertive"

    .line 323
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x2

    .line 324
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x0

    .line 320
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setAccessibilityRole(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityRole"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 160
    :cond_0
    sget v0, Lcom/facebook/react/R$id;->accessibility_role:I

    invoke-static {p2}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->fromValue(Ljava/lang/String;)Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setAccessibilityValue(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityValue"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 259
    :cond_0
    sget v0, Lcom/facebook/react/R$id;->accessibility_value:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const-string v0, "text"

    .line 260
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 261
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManager;->updateViewContentDescription(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setBackgroundColor(Landroid/view/View;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        defaultInt = 0x0
        name = "backgroundColor"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setBorderBottomLeftRadius(Landroid/view/View;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    const-string p1, "borderBottomLeftRadius"

    .line 430
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManager;->logUnsupportedPropertyWarning(Ljava/lang/String;)V

    return-void
.end method

.method public setBorderBottomRightRadius(Landroid/view/View;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    const-string p1, "borderBottomRightRadius"

    .line 435
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManager;->logUnsupportedPropertyWarning(Ljava/lang/String;)V

    return-void
.end method

.method public setBorderRadius(Landroid/view/View;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    const-string p1, "borderRadius"

    .line 425
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManager;->logUnsupportedPropertyWarning(Ljava/lang/String;)V

    return-void
.end method

.method public setBorderTopLeftRadius(Landroid/view/View;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    const-string p1, "borderTopLeftRadius"

    .line 440
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManager;->logUnsupportedPropertyWarning(Ljava/lang/String;)V

    return-void
.end method

.method public setBorderTopRightRadius(Landroid/view/View;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    const-string p1, "borderTopRightRadius"

    .line 445
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManager;->logUnsupportedPropertyWarning(Ljava/lang/String;)V

    return-void
.end method

.method public setElevation(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "elevation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 95
    invoke-static {p2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p2

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "importantForAccessibility"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_3

    const-string v0, "auto"

    .line 269
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "yes"

    .line 271
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    .line 272
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    :cond_1
    const-string v0, "no"

    .line 273
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x2

    .line 274
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    :cond_2
    const-string v0, "no-hide-descendants"

    .line 275
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x4

    .line 276
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, 0x0

    .line 270
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setNativeId(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "nativeID"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 136
    sget v0, Lcom/facebook/react/R$id;->view_tag_native_id:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 137
    invoke-static {p1}, Lcom/facebook/react/uimanager/util/ReactFindViewUtil;->notifyViewRendered(Landroid/view/View;)V

    return-void
.end method

.method public setOpacity(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "opacity"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setRenderToHardwareTexture(Landroid/view/View;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "renderToHardwareTextureAndroid"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x0

    .line 121
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public setRotation(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "rotation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public setScaleX(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "scaleX"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method public setScaleY(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "scaleY"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 299
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public setShadowColor(Landroid/view/View;I)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        defaultInt = -0x1000000
        name = "shadowColor"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->setOutlineAmbientShadowColor(I)V

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    :cond_0
    return-void
.end method

.method public setTestId(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "testID"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 127
    sget v0, Lcom/facebook/react/R$id;->react_test_id:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setTransform(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "transform"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 80
    invoke-static {p1}, Lcom/facebook/react/uimanager/BaseViewManager;->resetTransformProperty(Landroid/view/View;)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/BaseViewManager;->setTransformProperty(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    :goto_0
    return-void
.end method

.method public setTranslateX(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "translateX"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    invoke-static {p2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public setTranslateY(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "translateY"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 313
    invoke-static {p2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public setViewState(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityState"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 169
    :cond_0
    sget v0, Lcom/facebook/react/R$id;->accessibility_state:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    const/4 v0, 0x1

    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 177
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v1

    .line 178
    :cond_1
    :goto_0
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 179
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "busy"

    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "expanded"

    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "checked"

    .line 182
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v2

    sget-object v3, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 186
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 184
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManager;->updateViewContentDescription(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public setZIndex(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "zIndex"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 110
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 111
    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/ViewGroupManager;->setViewZIndex(Landroid/view/View;I)V

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 113
    instance-of p2, p1, Lcom/facebook/react/uimanager/ReactZIndexedViewGroup;

    if-eqz p2, :cond_0

    .line 114
    check-cast p1, Lcom/facebook/react/uimanager/ReactZIndexedViewGroup;

    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactZIndexedViewGroup;->updateDrawingOrder()V

    :cond_0
    return-void
.end method
