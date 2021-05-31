.class Lcom/th3rdwave/safeareacontext/SafeAreaUtils;
.super Ljava/lang/Object;
.source "SafeAreaUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getFrame(Landroid/view/ViewGroup;Landroid/view/View;)Lcom/th3rdwave/safeareacontext/Rect;
    .locals 3

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 69
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 72
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    new-instance p0, Lcom/th3rdwave/safeareacontext/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/th3rdwave/safeareacontext/Rect;-><init>(FFFF)V

    return-object p0

    :catch_0
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return-object v1
.end method

.method private static getRootWindowInsetsCompat(Landroid/view/View;)Lcom/th3rdwave/safeareacontext/EdgeInsets;
    .locals 5

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 19
    :cond_0
    new-instance v0, Lcom/th3rdwave/safeareacontext/EdgeInsets;

    .line 20
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    int-to-float v1, v1

    .line 21
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    int-to-float v2, v2

    .line 27
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    .line 28
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result p0

    int-to-float p0, p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/th3rdwave/safeareacontext/EdgeInsets;-><init>(FFFF)V

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 32
    new-instance v1, Lcom/th3rdwave/safeareacontext/EdgeInsets;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v4

    int-to-float p0, p0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-direct {v1, v2, v3, p0, v0}, Lcom/th3rdwave/safeareacontext/EdgeInsets;-><init>(FFFF)V

    return-object v1
.end method

.method static getSafeAreaInsets(Landroid/view/View;)Lcom/th3rdwave/safeareacontext/EdgeInsets;
    .locals 7

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/th3rdwave/safeareacontext/SafeAreaUtils;->getRootWindowInsetsCompat(Landroid/view/View;)Lcom/th3rdwave/safeareacontext/EdgeInsets;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 52
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 54
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 55
    invoke-virtual {p0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 57
    iget v4, v2, Lcom/th3rdwave/safeareacontext/EdgeInsets;->top:F

    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v2, Lcom/th3rdwave/safeareacontext/EdgeInsets;->top:F

    .line 58
    iget v4, v2, Lcom/th3rdwave/safeareacontext/EdgeInsets;->left:F

    iget v6, v3, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v2, Lcom/th3rdwave/safeareacontext/EdgeInsets;->left:F

    .line 59
    iget v4, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    sub-float/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v4, v2, Lcom/th3rdwave/safeareacontext/EdgeInsets;->bottom:F

    add-float/2addr v0, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v2, Lcom/th3rdwave/safeareacontext/EdgeInsets;->bottom:F

    .line 60
    iget v0, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    sub-float/2addr p0, v1

    invoke-static {p0, v5}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iget v0, v2, Lcom/th3rdwave/safeareacontext/EdgeInsets;->right:F

    add-float/2addr p0, v0

    invoke-static {p0, v5}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, v2, Lcom/th3rdwave/safeareacontext/EdgeInsets;->right:F

    return-object v2
.end method
