.class public Lcom/facebook/react/views/text/TextLayoutManager;
.super Ljava/lang/Object;
.source "TextLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;
    }
.end annotation


# static fields
.field private static final DEFAULT_INCLUDE_FONT_PADDING:Z = true

.field private static final ENABLE_MEASURE_LOGGING:Z = false

.field private static final INCLUDE_FONT_PADDING_KEY:Ljava/lang/String; = "includeFontPadding"

.field private static final INLINE_VIEW_PLACEHOLDER:Ljava/lang/String; = "0"

.field private static final MAXIMUM_NUMBER_OF_LINES_KEY:Ljava/lang/String; = "maximumNumberOfLines"

.field private static final TAG:Ljava/lang/String; = "TextLayoutManager"

.field private static final TEXT_BREAK_STRATEGY_KEY:Ljava/lang/String; = "textBreakStrategy"

.field private static final sSpannableCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/text/Spannable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSpannableCacheLock:Ljava/lang/Object;

.field private static final sSpannableCacheV2:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Lcom/facebook/react/bridge/ReadableNativeMap;",
            "Landroid/text/Spannable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTagToSpannableCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/text/Spannable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTextPaintInstance:Landroid/text/TextPaint;

.field private static final spannableCacheSize:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sTextPaintInstance:Landroid/text/TextPaint;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sSpannableCacheLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sSpannableCache:Landroid/util/LruCache;

    .line 69
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sSpannableCacheV2:Landroid/util/LruCache;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sTagToSpannableCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildSpannableFromFragment(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableArray;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 105
    invoke-interface/range {p1 .. p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_e

    move-object/from16 v3, p1

    .line 106
    invoke-interface {v3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 110
    new-instance v6, Lcom/facebook/react/views/text/TextAttributeProps;

    new-instance v7, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    const-string v8, "textAttributes"

    .line 111
    invoke-interface {v4, v8}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-direct {v6, v7}, Lcom/facebook/react/views/text/TextAttributeProps;-><init>(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    const-string v7, "string"

    .line 113
    invoke-interface {v4, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    invoke-static {v7, v8}, Lcom/facebook/react/views/text/TextTransform;->apply(Ljava/lang/String;Lcom/facebook/react/views/text/TextTransform;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, p2

    invoke-virtual {v8, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const-string v9, "reactTag"

    .line 116
    invoke-interface {v4, v9}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_0

    invoke-interface {v4, v9}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_1

    :cond_0
    const/4 v9, -0x1

    :goto_1
    const-string v10, "isAttachment"

    .line 117
    invoke-interface {v4, v10}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 118
    invoke-interface {v4, v10}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v5, "width"

    .line 119
    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(D)F

    move-result v5

    const-string v6, "height"

    .line 120
    invoke-interface {v4, v6}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(D)F

    move-result v4

    .line 121
    new-instance v6, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    new-instance v11, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;

    float-to-int v5, v5

    float-to-int v4, v4

    invoke-direct {v11, v9, v5, v4}, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;-><init>(III)V

    invoke-direct {v6, v7, v10, v11}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    .line 121
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_1
    if-lt v7, v5, :cond_d

    .line 127
    sget-object v4, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->LINK:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    iget-object v10, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mAccessibilityRole:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-virtual {v4, v10}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    new-instance v4, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v10, Lcom/facebook/react/views/text/ReactClickableSpan;

    iget v12, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mColor:I

    invoke-direct {v10, v9, v12}, Lcom/facebook/react/views/text/ReactClickableSpan;-><init>(II)V

    invoke-direct {v4, v5, v7, v10}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 132
    :cond_2
    iget-boolean v4, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mIsColorSet:Z

    if-eqz v4, :cond_3

    .line 133
    new-instance v4, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v10, Lcom/facebook/react/views/text/ReactForegroundColorSpan;

    iget v12, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mColor:I

    invoke-direct {v10, v12}, Lcom/facebook/react/views/text/ReactForegroundColorSpan;-><init>(I)V

    invoke-direct {v4, v5, v7, v10}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_3
    :goto_2
    iget-boolean v4, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mIsBackgroundColorSet:Z

    if-eqz v4, :cond_4

    .line 138
    new-instance v4, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v10, Lcom/facebook/react/views/text/ReactBackgroundColorSpan;

    iget v12, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mBackgroundColor:I

    invoke-direct {v10, v12}, Lcom/facebook/react/views/text/ReactBackgroundColorSpan;-><init>(I)V

    invoke-direct {v4, v5, v7, v10}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v4, v10, :cond_5

    .line 143
    invoke-virtual {v6}, Lcom/facebook/react/views/text/TextAttributeProps;->getLetterSpacing()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_5

    .line 144
    new-instance v4, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v10, Lcom/facebook/react/views/text/CustomLetterSpacingSpan;

    .line 146
    invoke-virtual {v6}, Lcom/facebook/react/views/text/TextAttributeProps;->getLetterSpacing()F

    move-result v12

    invoke-direct {v10, v12}, Lcom/facebook/react/views/text/CustomLetterSpacingSpan;-><init>(F)V

    invoke-direct {v4, v5, v7, v10}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    .line 144
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_5
    new-instance v4, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v10, Lcom/facebook/react/views/text/ReactAbsoluteSizeSpan;

    iget v12, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSize:I

    invoke-direct {v10, v12}, Lcom/facebook/react/views/text/ReactAbsoluteSizeSpan;-><init>(I)V

    invoke-direct {v4, v5, v7, v10}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget v4, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mFontStyle:I

    if-ne v4, v11, :cond_7

    iget v4, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mFontWeight:I

    if-ne v4, v11, :cond_7

    iget-object v4, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFamily:Ljava/lang/String;

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v17, v1

    goto :goto_4

    .line 154
    :cond_7
    :goto_3
    new-instance v4, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v15, Lcom/facebook/react/views/text/CustomStyleSpan;

    iget v11, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mFontStyle:I

    iget v12, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mFontWeight:I

    iget-object v13, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFeatureSettings:Ljava/lang/String;

    iget-object v14, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFamily:Ljava/lang/String;

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v16

    move-object v10, v15

    move/from16 v17, v1

    move-object v1, v15

    move-object/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Lcom/facebook/react/views/text/CustomStyleSpan;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;)V

    invoke-direct {v4, v5, v7, v1}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    .line 154
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :goto_4
    iget-boolean v1, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mIsUnderlineTextDecorationSet:Z

    if-eqz v1, :cond_8

    .line 166
    new-instance v1, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v4, Lcom/facebook/react/views/text/ReactUnderlineSpan;

    invoke-direct {v4}, Lcom/facebook/react/views/text/ReactUnderlineSpan;-><init>()V

    invoke-direct {v1, v5, v7, v4}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_8
    iget-boolean v1, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mIsLineThroughTextDecorationSet:Z

    if-eqz v1, :cond_9

    .line 169
    new-instance v1, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v4, Lcom/facebook/react/views/text/ReactStrikethroughSpan;

    invoke-direct {v4}, Lcom/facebook/react/views/text/ReactStrikethroughSpan;-><init>()V

    invoke-direct {v1, v5, v7, v4}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_9
    iget v1, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-nez v1, :cond_a

    iget v1, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_b

    .line 172
    :cond_a
    new-instance v1, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v4, Lcom/facebook/react/views/text/ShadowStyleSpan;

    iget v10, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    iget v11, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    iget v12, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowRadius:F

    iget v13, v6, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowColor:I

    invoke-direct {v4, v10, v11, v12, v13}, Lcom/facebook/react/views/text/ShadowStyleSpan;-><init>(FFFI)V

    invoke-direct {v1, v5, v7, v4}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_b
    invoke-virtual {v6}, Lcom/facebook/react/views/text/TextAttributeProps;->getEffectiveLineHeight()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_c

    .line 183
    new-instance v1, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v4, Lcom/facebook/react/views/text/CustomLineHeightSpan;

    .line 185
    invoke-virtual {v6}, Lcom/facebook/react/views/text/TextAttributeProps;->getEffectiveLineHeight()F

    move-result v6

    invoke-direct {v4, v6}, Lcom/facebook/react/views/text/CustomLineHeightSpan;-><init>(F)V

    invoke-direct {v1, v5, v7, v4}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    .line 183
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_c
    new-instance v1, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v4, Lcom/facebook/react/views/text/ReactTagSpan;

    invoke-direct {v4, v9}, Lcom/facebook/react/views/text/ReactTagSpan;-><init>(I)V

    invoke-direct {v1, v5, v7, v4}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    :goto_5
    move/from16 v17, v1

    :goto_6
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method private static createLayout(Landroid/text/Spannable;Landroid/text/BoringLayout$Metrics;FLcom/facebook/yoga/YogaMeasureMode;ZI)Landroid/text/Layout;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move/from16 v0, p2

    move/from16 v7, p4

    move/from16 v2, p5

    .line 276
    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v3

    .line 277
    sget-object v4, Lcom/facebook/yoga/YogaMeasureMode;->UNDEFINED:Lcom/facebook/yoga/YogaMeasureMode;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v10, p3

    if-eq v10, v4, :cond_1

    cmpg-float v4, v0, v8

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 278
    :goto_1
    sget-object v10, Lcom/facebook/react/views/text/TextLayoutManager;->sTextPaintInstance:Landroid/text/TextPaint;

    if-nez v6, :cond_2

    .line 279
    invoke-static {v1, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v11

    goto :goto_2

    :cond_2
    const/high16 v11, 0x7fc00000    # Float.NaN

    :goto_2
    const/high16 v12, 0x3f800000    # 1.0f

    const/16 v13, 0x17

    if-nez v6, :cond_5

    if-nez v4, :cond_3

    .line 283
    invoke-static {v11}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v14

    if-nez v14, :cond_5

    cmpg-float v14, v11, v0

    if-gtz v14, :cond_5

    :cond_3
    float-to-double v14, v11

    .line 287
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v4, v14

    .line 288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v13, :cond_4

    .line 289
    new-instance v8, Landroid/text/StaticLayout;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v10

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v9

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto/16 :goto_3

    .line 300
    :cond_4
    invoke-static {v1, v5, v3, v10, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 301
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 302
    invoke-virtual {v0, v8, v12}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 303
    invoke-virtual {v0, v7}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 304
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 305
    invoke-virtual {v0, v9}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v8

    goto :goto_3

    :cond_5
    if-eqz v6, :cond_7

    if-nez v4, :cond_6

    .line 309
    iget v4, v6, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v4, v4

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_7

    .line 312
    :cond_6
    iget v2, v6, Landroid/text/BoringLayout$Metrics;->width:I

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v6, p1

    move/from16 v7, p4

    .line 313
    invoke-static/range {v0 .. v7}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v8

    goto :goto_3

    .line 325
    :cond_7
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v13, :cond_8

    .line 326
    new-instance v8, Landroid/text/StaticLayout;

    float-to-int v3, v0

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v10

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto :goto_3

    :cond_8
    float-to-int v0, v0

    .line 337
    invoke-static {v1, v5, v3, v10, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 338
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 339
    invoke-virtual {v0, v8, v12}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 340
    invoke-virtual {v0, v7}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 341
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 342
    invoke-virtual {v0, v9}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 344
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_9

    .line 345
    invoke-virtual {v0, v9}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    .line 348
    :cond_9
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v8

    :goto_3
    return-object v8
.end method

.method private static createSpannableFromAttributedString(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Spannable;
    .locals 3

    .line 243
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "fragments"

    .line 250
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/react/views/text/TextLayoutManager;->buildSpannableFromFragment(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableArray;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 255
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    .line 258
    invoke-virtual {v1, v0, p1}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;->execute(Landroid/text/Spannable;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 263
    invoke-interface {p2, v0}, Lcom/facebook/react/views/text/ReactTextViewManagerCallback;->onPostProcessSpannable(Landroid/text/Spannable;)V

    :cond_1
    return-object v0
.end method

.method public static deleteCachedSpannableForTag(I)V
    .locals 1

    .line 96
    sget-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sTagToSpannableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getOrCreateSpannableForText(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Spannable;
    .locals 5

    const-string v0, ""

    .line 202
    sget-boolean v1, Lcom/facebook/react/config/ReactFeatureFlags;->enableSpannableCacheByReadableNativeMapEquality:Z

    if-eqz v1, :cond_1

    .line 206
    sget-object v2, Lcom/facebook/react/views/text/TextLayoutManager;->sSpannableCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 207
    :try_start_0
    sget-object v3, Lcom/facebook/react/views/text/TextLayoutManager;->sSpannableCacheV2:Landroid/util/LruCache;

    move-object v4, p1

    check-cast v4, Lcom/facebook/react/bridge/ReadableNativeMap;

    invoke-virtual {v3, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    .line 209
    monitor-exit v2

    return-object v3

    .line 211
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 213
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    sget-object v2, Lcom/facebook/react/views/text/TextLayoutManager;->sSpannableCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 215
    :try_start_1
    sget-object v3, Lcom/facebook/react/views/text/TextLayoutManager;->sSpannableCache:Landroid/util/LruCache;

    invoke-virtual {v3, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    if-eqz v3, :cond_2

    .line 217
    monitor-exit v2

    return-object v3

    .line 219
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 223
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/facebook/react/views/text/TextLayoutManager;->createSpannableFromAttributedString(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Spannable;

    move-result-object p0

    if-eqz v1, :cond_3

    .line 227
    sget-object p2, Lcom/facebook/react/views/text/TextLayoutManager;->sSpannableCacheLock:Ljava/lang/Object;

    monitor-enter p2

    .line 228
    :try_start_2
    sget-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sSpannableCacheV2:Landroid/util/LruCache;

    check-cast p1, Lcom/facebook/react/bridge/ReadableNativeMap;

    invoke-virtual {v0, p1, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    monitor-exit p2

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 231
    :cond_3
    sget-object p1, Lcom/facebook/react/views/text/TextLayoutManager;->sSpannableCacheLock:Ljava/lang/Object;

    monitor-enter p1

    .line 232
    :try_start_3
    sget-object p2, Lcom/facebook/react/views/text/TextLayoutManager;->sSpannableCache:Landroid/util/LruCache;

    invoke-virtual {p2, v0, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    monitor-exit p1

    :goto_1
    return-object p0

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    .line 219
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p0
.end method

.method public static isRTL(Lcom/facebook/react/bridge/ReadableMap;)Z
    .locals 3

    const-string v0, "fragments"

    .line 75
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p0

    .line 76
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 77
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p0

    .line 78
    new-instance v0, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    const-string v2, "textAttributes"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 79
    new-instance p0, Lcom/facebook/react/views/text/TextAttributeProps;

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;-><init>(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 80
    iget p0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLayoutDirection:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static measureLines(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;F)Lcom/facebook/react/bridge/WritableArray;
    .locals 8

    .line 549
    sget-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sTextPaintInstance:Landroid/text/TextPaint;

    const/4 v1, 0x0

    .line 550
    invoke-static {p0, p1, v1}, Lcom/facebook/react/views/text/TextLayoutManager;->getOrCreateSpannableForText(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Spannable;

    move-result-object p1

    .line 551
    invoke-static {p1, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;

    move-result-object v3

    const-string v1, "textBreakStrategy"

    .line 555
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 554
    invoke-static {v1}, Lcom/facebook/react/views/text/TextAttributeProps;->getTextBreakStrategy(Ljava/lang/String;)I

    move-result v7

    const-string v1, "includeFontPadding"

    .line 557
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 558
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    move v6, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    const/4 v6, 0x1

    .line 561
    :goto_0
    sget-object v5, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    move-object v2, p1

    move v4, p3

    .line 562
    invoke-static/range {v2 .. v7}, Lcom/facebook/react/views/text/TextLayoutManager;->createLayout(Landroid/text/Spannable;Landroid/text/BoringLayout$Metrics;FLcom/facebook/yoga/YogaMeasureMode;ZI)Landroid/text/Layout;

    move-result-object p2

    .line 564
    invoke-static {p1, p2, v0, p0}, Lcom/facebook/react/views/text/FontMetricsUtil;->getFontMetrics(Ljava/lang/CharSequence;Landroid/text/Layout;Landroid/text/TextPaint;Landroid/content/Context;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p0

    return-object p0
.end method

.method public static measureText(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;[F)J
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    .line 366
    sget-object v2, Lcom/facebook/react/views/text/TextLayoutManager;->sTextPaintInstance:Landroid/text/TextPaint;

    const-string v3, "cacheId"

    .line 368
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 369
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 373
    sget-object v3, Lcom/facebook/react/views/text/TextLayoutManager;->sTagToSpannableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 374
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    move-object/from16 v3, p0

    move-object/from16 v4, p7

    .line 385
    invoke-static {v3, v0, v4}, Lcom/facebook/react/views/text/TextLayoutManager;->getOrCreateSpannableForText(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Spannable;

    move-result-object v0

    :goto_0
    const-string v3, "textBreakStrategy"

    .line 390
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 389
    invoke-static {v3}, Lcom/facebook/react/views/text/TextAttributeProps;->getTextBreakStrategy(Ljava/lang/String;)I

    move-result v7

    const-string v3, "includeFontPadding"

    .line 392
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v10, 0x1

    if-eqz v4, :cond_2

    .line 393
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move v6, v3

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    :goto_1
    if-eqz v0, :cond_1a

    .line 400
    invoke-static {v0, v2}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;

    move-result-object v3

    if-nez v3, :cond_3

    .line 401
    invoke-static {v0, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    .line 404
    :cond_3
    sget-object v2, Lcom/facebook/yoga/YogaMeasureMode;->UNDEFINED:Lcom/facebook/yoga/YogaMeasureMode;

    const/4 v11, 0x0

    if-eq v8, v2, :cond_4

    cmpg-float v2, p3, v11

    :cond_4
    move-object v2, v0

    move/from16 v4, p3

    move-object/from16 v5, p4

    .line 407
    invoke-static/range {v2 .. v7}, Lcom/facebook/react/views/text/TextLayoutManager;->createLayout(Landroid/text/Spannable;Landroid/text/BoringLayout$Metrics;FLcom/facebook/yoga/YogaMeasureMode;ZI)Landroid/text/Layout;

    move-result-object v2

    const-string v3, "maximumNumberOfLines"

    .line 411
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_5

    .line 412
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_5
    const/4 v1, -0x1

    :goto_2
    if-eq v1, v5, :cond_7

    if-nez v1, :cond_6

    goto :goto_3

    .line 418
    :cond_6
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_4

    .line 417
    :cond_7
    :goto_3
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 423
    :goto_4
    sget-object v3, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    if-ne v8, v3, :cond_8

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_a

    .line 427
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v6

    cmpl-float v7, v6, v11

    if-lez v7, :cond_9

    move v11, v6

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 432
    :cond_a
    sget-object v3, Lcom/facebook/yoga/YogaMeasureMode;->AT_MOST:Lcom/facebook/yoga/YogaMeasureMode;

    if-ne v8, v3, :cond_b

    cmpl-float v3, v11, p3

    if-lez v3, :cond_b

    :goto_6
    move/from16 v11, p3

    .line 438
    :cond_b
    sget-object v3, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    if-eq v9, v3, :cond_c

    sub-int/2addr v1, v10

    .line 439
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    int-to-float v1, v1

    .line 440
    sget-object v3, Lcom/facebook/yoga/YogaMeasureMode;->AT_MOST:Lcom/facebook/yoga/YogaMeasureMode;

    if-ne v9, v3, :cond_d

    cmpl-float v3, v1, p5

    if-lez v3, :cond_d

    :cond_c
    move/from16 v1, p5

    :cond_d
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 450
    :goto_7
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v7

    if-ge v3, v7, :cond_19

    .line 452
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v7

    const-class v8, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;

    invoke-interface {v0, v3, v7, v8}, Landroid/text/Spannable;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v7

    .line 453
    const-class v8, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;

    .line 454
    invoke-interface {v0, v3, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;

    .line 455
    array-length v8, v3

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v8, :cond_18

    aget-object v12, v3, v9

    .line 456
    invoke-interface {v0, v12}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 457
    invoke-virtual {v2, v13}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v14

    .line 458
    invoke-virtual {v2, v14}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v15

    if-lez v15, :cond_e

    const/4 v15, 0x1

    goto :goto_9

    :cond_e
    const/4 v15, 0x0

    :goto_9
    if-eqz v15, :cond_10

    .line 463
    invoke-virtual {v2, v14}, Landroid/text/Layout;->getLineStart(I)I

    move-result v15

    invoke-virtual {v2, v14}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v16

    add-int v15, v15, v16

    if-lt v13, v15, :cond_10

    .line 464
    invoke-virtual {v2, v14}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    if-lt v13, v15, :cond_f

    goto :goto_a

    :cond_f
    const/4 v5, 0x1

    goto/16 :goto_f

    .line 465
    :cond_10
    :goto_a
    invoke-virtual {v12}, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;->getWidth()I

    move-result v15

    int-to-float v15, v15

    .line 466
    invoke-virtual {v12}, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;->getHeight()I

    move-result v12

    int-to-float v12, v12

    .line 468
    invoke-virtual {v2, v13}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v4

    .line 469
    invoke-virtual {v2, v14}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    if-ne v10, v5, :cond_11

    const/4 v10, 0x1

    goto :goto_b

    :cond_11
    const/4 v10, 0x0

    .line 474
    :goto_b
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v5, v16, -0x1

    if-ne v13, v5, :cond_13

    if-eqz v10, :cond_12

    .line 479
    invoke-virtual {v2, v14}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    sub-float v4, v11, v4

    goto :goto_e

    .line 480
    :cond_12
    invoke-virtual {v2, v14}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    sub-float/2addr v4, v15

    goto :goto_e

    :cond_13
    if-ne v10, v4, :cond_14

    const/16 v17, 0x1

    goto :goto_c

    :cond_14
    const/16 v17, 0x0

    :goto_c
    if-eqz v17, :cond_15

    .line 490
    invoke-virtual {v2, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    goto :goto_d

    .line 491
    :cond_15
    invoke-virtual {v2, v13}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v5

    :goto_d
    if-eqz v10, :cond_16

    .line 502
    invoke-virtual {v2, v14}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    sub-float/2addr v10, v5

    sub-float v5, v11, v10

    :cond_16
    if-eqz v4, :cond_17

    sub-float v4, v5, v15

    goto :goto_e

    :cond_17
    move v4, v5

    .line 509
    :goto_e
    invoke-virtual {v2, v14}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v12

    mul-int/lit8 v10, v6, 0x2

    .line 514
    invoke-static {v5}, Lcom/facebook/react/uimanager/PixelUtil;->toSPFromPixel(F)F

    move-result v5

    aput v5, p8, v10

    const/4 v5, 0x1

    add-int/2addr v10, v5

    .line 516
    invoke-static {v4}, Lcom/facebook/react/uimanager/PixelUtil;->toSPFromPixel(F)F

    move-result v4

    aput v4, p8, v10

    add-int/lit8 v6, v6, 0x1

    :goto_f
    add-int/lit8 v9, v9, 0x1

    const/4 v5, -0x1

    const/4 v10, 0x1

    goto/16 :goto_8

    :cond_18
    move v3, v7

    goto/16 :goto_7

    .line 522
    :cond_19
    invoke-static {v11}, Lcom/facebook/react/uimanager/PixelUtil;->toSPFromPixel(F)F

    move-result v0

    .line 523
    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toSPFromPixel(F)F

    move-result v1

    .line 541
    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaMeasureOutput;->make(FF)J

    move-result-wide v0

    return-wide v0

    .line 397
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Spannable element has not been prepared in onBeforeLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setCachedSpannabledForTag(ILandroid/text/Spannable;)V
    .locals 1

    .line 89
    sget-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sTagToSpannableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
