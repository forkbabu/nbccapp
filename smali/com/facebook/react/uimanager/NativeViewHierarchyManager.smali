.class public Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
.super Ljava/lang/Object;
.source "NativeViewHierarchyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeViewHierarchyManager"


# instance fields
.field private final DEBUG_MODE:Z

.field private final mBoundingBox:Landroid/graphics/RectF;

.field private final mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

.field private mLayoutAnimationEnabled:Z

.field private final mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

.field private mPendingDeletionsForTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private final mRootTags:Landroid/util/SparseBooleanArray;

.field private final mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

.field private final mTagsToViewManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagsToViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;)V
    .locals 1

    .line 89
    new-instance v0, Lcom/facebook/react/uimanager/RootViewManager;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/RootViewManager;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;-><init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/RootViewManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/RootViewManager;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->DEBUG_MODE:Z

    .line 79
    new-instance v0, Lcom/facebook/react/touch/JSResponderHandler;

    invoke-direct {v0}, Lcom/facebook/react/touch/JSResponderHandler;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    .line 81
    new-instance v0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    .line 82
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mBoundingBox:Landroid/graphics/RectF;

    .line 93
    iput-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 94
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    .line 95
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    .line 96
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    .line 97
    iput-object p2, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)Ljava/util/HashMap;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPendingDeletionsForTag:Ljava/util/HashMap;

    return-object p0
.end method

.method private arrayContains([II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 553
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    if-ne v3, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private computeBoundingBox(Landroid/view/View;[I)V
    .locals 4

    .line 706
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mBoundingBox:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 707
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mBoundingBox:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mapRectFromViewToWindowCoords(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 709
    iget-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mBoundingBox:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x0

    aput p1, p2, v0

    .line 710
    iget-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mBoundingBox:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x1

    aput p1, p2, v0

    .line 711
    iget-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mBoundingBox:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mBoundingBox:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x2

    aput p1, p2, v0

    .line 712
    iget-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mBoundingBox:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mBoundingBox:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x3

    aput p1, p2, v0

    return-void
.end method

.method private static constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;
    .locals 11

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ],\n"

    const-string v2, ","

    const-string v3, "): [\n"

    const-string v4, "\n"

    const/16 v5, 0x10

    const/4 v6, 0x0

    if-eqz p0, :cond_2

    .line 306
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "View tag:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " View Type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 306
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  children("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    .line 313
    :goto_0
    invoke-virtual {p1, p0, v7}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    :goto_1
    add-int v9, v7, v8

    .line 315
    invoke-virtual {p1, p0, v9}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    if-ge v8, v5, :cond_0

    .line 317
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    invoke-virtual {p1, p0, v9}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 317
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 320
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x10

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p2, :cond_5

    .line 326
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "  indicesToRemove("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    .line 327
    :goto_2
    array-length p1, p2

    if-ge p0, p1, :cond_4

    const/4 p1, 0x0

    :goto_3
    add-int v7, p0, p1

    .line 329
    array-length v8, p2

    if-ge v7, v8, :cond_3

    if-ge p1, v5, :cond_3

    .line 331
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget v7, p2, v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 333
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x10

    goto :goto_2

    .line 335
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz p3, :cond_8

    .line 338
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "  viewsToAdd("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    .line 339
    :goto_4
    array-length p1, p3

    if-ge p0, p1, :cond_7

    const/4 p1, 0x0

    :goto_5
    add-int p2, p0, p1

    .line 341
    array-length v7, p3

    if-ge p2, v7, :cond_6

    if-ge p1, v5, :cond_6

    .line 343
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, p3, p2

    iget v8, v8, Lcom/facebook/react/uimanager/ViewAtIndex;->mIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p3, p2

    iget p2, p2, Lcom/facebook/react/uimanager/ViewAtIndex;->mTag:I

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "],"

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 350
    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x10

    goto :goto_4

    .line 352
    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz p4, :cond_b

    .line 355
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "  tagsToDelete("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    .line 356
    :goto_6
    array-length p1, p4

    if-ge p0, p1, :cond_a

    const/4 p1, 0x0

    :goto_7
    add-int p2, p0, p1

    .line 358
    array-length p3, p4

    if-ge p2, p3, :cond_9

    if-ge p1, v5, :cond_9

    .line 360
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    aget p2, p4, p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 362
    :cond_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x10

    goto :goto_6

    :cond_a
    const-string p0, " ]\n"

    .line 364
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static constructSetChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;Lcom/facebook/react/bridge/ReadableArray;)Ljava/lang/String;
    .locals 4

    .line 567
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/react/uimanager/ViewAtIndex;

    const/4 v1, 0x0

    .line 568
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 569
    new-instance v2, Lcom/facebook/react/uimanager/ViewAtIndex;

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    invoke-direct {v2, v3, v1}, Lcom/facebook/react/uimanager/ViewAtIndex;-><init>(II)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 571
    invoke-static {p0, p1, p2, v0, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPendingDeletionsForTag(I)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPendingDeletionsForTag:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPendingDeletionsForTag:Ljava/util/HashMap;

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPendingDeletionsForTag:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPendingDeletionsForTag:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPendingDeletionsForTag:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method private getReactContextForView(I)Lcom/facebook/react/uimanager/ThemedReactContext;
    .locals 3

    .line 943
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 947
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/ThemedReactContext;

    return-object p1

    .line 945
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find view with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private mapRectFromViewToWindowCoords(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 2

    .line 716
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 717
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 718
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 721
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 723
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 724
    :goto_0
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 725
    check-cast p1, Landroid/view/View;

    .line 727
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 729
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 730
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 731
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 734
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 736
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateInstanceHandle(Landroid/view/View;J)V
    .locals 1

    .line 234
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 235
    sget v0, Lcom/facebook/react/R$id;->view_tag_instance_handle:I

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private updateLayout(Landroid/view/View;IIII)V
    .locals 7

    .line 252
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->shouldAnimateLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->applyLayoutUpdate(Landroid/view/View;IIII)V

    goto :goto_0

    :cond_0
    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 255
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addRootView(ILandroid/view/View;)V
    .locals 0

    monitor-enter p0

    .line 602
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->addRootViewGroup(ILandroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized addRootViewGroup(ILandroid/view/View;)V
    .locals 3

    monitor-enter p0

    .line 609
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 610
    sget-object v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to add a root view with an explicit id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") already set. React Native uses the id field to track react tags and will overwrite this field. If that is fine, explicitly overwrite the id field to View.NO_ID before calling addRootView."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 610
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 621
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 622
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 623
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clearJSResponder()V
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    invoke-virtual {v0}, Lcom/facebook/react/touch/JSResponderHandler;->clearJSResponder()V

    return-void
.end method

.method clearLayoutAnimation()V
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->reset()V

    return-void
.end method

.method configureLayoutAnimation(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->initializeFromConfig(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public declared-synchronized createView(Lcom/facebook/react/uimanager/ThemedReactContext;ILjava/lang/String;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 4

    monitor-enter p0

    .line 272
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    const-string v0, "NativeViewHierarchyManager_createView"

    const-wide/16 v1, 0x0

    .line 273
    invoke-static {v1, v2, v0}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    const-string v3, "tag"

    .line 275
    invoke-virtual {v0, v3, p2}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    const-string v3, "className"

    .line 276
    invoke-virtual {v0, v3, p3}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 279
    :try_start_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-virtual {v0, p3}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object p3

    .line 281
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    const/4 v3, 0x0

    invoke-virtual {p3, p1, v3, v3, v0}, Lcom/facebook/react/uimanager/ViewManager;->createView(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;Lcom/facebook/react/touch/JSResponderHandler;)Landroid/view/View;

    move-result-object p1

    .line 282
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    if-eqz p4, :cond_0

    .line 290
    invoke-virtual {p3, p1, p4}, Lcom/facebook/react/uimanager/ViewManager;->updateProperties(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    :cond_0
    :try_start_2
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 295
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 293
    :try_start_3
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 294
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dismissPopupMenu()V
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method public declared-synchronized dispatchCommand(IILcom/facebook/react/bridge/ReadableArray;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 829
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 830
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 838
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object p1

    .line 839
    invoke-virtual {p1, v0, p2, p3}, Lcom/facebook/react/uimanager/ViewManager;->receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    monitor-exit p0

    return-void

    .line 832
    :cond_0
    :try_start_1
    new-instance p3, Lcom/facebook/react/bridge/RetryableMountingLayerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to send command to a non-existing view with tag ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] and command "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/facebook/react/bridge/RetryableMountingLayerException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dispatchCommand(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 2

    monitor-enter p0

    .line 852
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 853
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 861
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object p1

    .line 863
    sget-boolean v1, Lcom/facebook/react/config/ReactFeatureFlags;->useViewManagerDelegatesForCommands:Z

    if-eqz v1, :cond_0

    .line 864
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ViewManager;->getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 865
    invoke-interface {v1, v0, p2, p3}, Lcom/facebook/react/uimanager/ViewManagerDelegate;->receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_0

    .line 867
    :cond_0
    invoke-virtual {p1, v0, p2, p3}, Lcom/facebook/react/uimanager/ViewManager;->receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 869
    :goto_0
    monitor-exit p0

    return-void

    .line 855
    :cond_1
    :try_start_1
    new-instance p3, Lcom/facebook/react/bridge/RetryableMountingLayerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to send command to a non-existing view with tag ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] and command "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/facebook/react/bridge/RetryableMountingLayerException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized dropView(Landroid/view/View;)V
    .locals 6

    monitor-enter p0

    .line 631
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 634
    monitor-exit p0

    return-void

    .line 636
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 639
    monitor-exit p0

    return-void

    .line 641
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 643
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ViewManager;->onDropViewInstance(Landroid/view/View;)V

    .line 645
    :cond_2
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ViewManager;

    .line 646
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    instance-of v1, v0, Lcom/facebook/react/uimanager/ViewGroupManager;

    if-eqz v1, :cond_6

    .line 647
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 648
    check-cast v0, Lcom/facebook/react/uimanager/ViewGroupManager;

    .line 649
    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_5

    .line 650
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    .line 652
    sget-object v3, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    const-string v4, "Unable to drop null child view"

    invoke-static {v3, v4}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 653
    :cond_3
    iget-object v4, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 654
    invoke-virtual {p0, v3}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->dropView(Landroid/view/View;)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 657
    :cond_5
    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeAllViews(Landroid/view/ViewGroup;)V

    .line 659
    :cond_6
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 660
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 661
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findTargetTagForTouch(IFF)I
    .locals 1

    monitor-enter p0

    .line 776
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 777
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 781
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p2, p3, v0}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTargetTagForTouch(FFLandroid/view/ViewGroup;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 779
    :cond_0
    :try_start_1
    new-instance p2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not find view with tag "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getInstanceHandle(I)J
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 244
    sget v1, Lcom/facebook/react/R$id;->view_tag_instance_handle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 246
    :cond_0
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find instanceHandle for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_1
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find view for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized manageChildren(I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)V
    .locals 17

    move-object/from16 v8, p0

    move/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    monitor-enter p0

    .line 403
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 405
    invoke-direct/range {p0 .. p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->getPendingDeletionsForTag(I)Ljava/util/Set;

    move-result-object v12

    .line 406
    iget-object v1, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/view/ViewGroup;

    .line 407
    invoke-virtual/range {p0 .. p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/facebook/react/uimanager/ViewGroupManager;

    if-eqz v13, :cond_f

    .line 417
    invoke-virtual {v14, v13}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v1

    if-eqz v9, :cond_5

    .line 420
    array-length v2, v9

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_5

    .line 421
    aget v3, v9, v2

    if-ltz v3, :cond_4

    .line 432
    invoke-virtual {v14, v13, v3}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    .line 433
    iget-object v1, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v14, v13}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 436
    monitor-exit p0

    return-void

    .line 438
    :cond_0
    :try_start_1
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to remove a view index above child count "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " view tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n detail: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-static {v13, v14, v9, v10, v11}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-ge v3, v1, :cond_3

    .line 459
    invoke-virtual {v14, v13, v3}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    .line 461
    iget-boolean v4, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimationEnabled:Z

    if-eqz v4, :cond_2

    iget-object v4, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    .line 462
    invoke-virtual {v4, v1}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->shouldAnimateLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 463
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-direct {v8, v11, v1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 467
    :cond_2
    invoke-virtual {v14, v13, v3}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeViewAt(Landroid/view/ViewGroup;I)V

    :goto_1
    add-int/lit8 v2, v2, -0x1

    move v1, v3

    goto :goto_0

    .line 449
    :cond_3
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to remove an out of order view index:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " view tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n detail: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-static {v13, v14, v9, v10, v11}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 423
    :cond_4
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to remove a negative view index:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " view tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n detail: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-static {v13, v14, v9, v10, v11}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    if-eqz v11, :cond_8

    const/4 v7, 0x0

    .line 475
    :goto_2
    array-length v1, v11

    if-ge v7, v1, :cond_8

    .line 476
    aget v1, v11, v7

    .line 477
    iget-object v2, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/view/View;

    if-eqz v6, :cond_7

    .line 487
    iget-boolean v2, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimationEnabled:Z

    if-eqz v2, :cond_6

    iget-object v2, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    invoke-virtual {v2, v6}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->shouldAnimateLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 488
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v5, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    new-instance v4, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;

    move-object v1, v4

    move-object/from16 v2, p0

    move-object v3, v14

    move-object v15, v4

    move-object v4, v13

    move-object v0, v5

    move-object v5, v6

    move-object v9, v6

    move-object v6, v12

    move/from16 v16, v7

    move/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;-><init>(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;Lcom/facebook/react/uimanager/ViewGroupManager;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/Set;I)V

    invoke-virtual {v0, v9, v15}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->deleteView(Landroid/view/View;Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;)V

    goto :goto_3

    :cond_6
    move-object v9, v6

    move/from16 v16, v7

    .line 507
    invoke-virtual {v8, v9}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->dropView(Landroid/view/View;)V

    :goto_3
    add-int/lit8 v7, v16, 0x1

    move/from16 v0, p1

    move-object/from16 v9, p2

    goto :goto_2

    .line 479
    :cond_7
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to destroy unknown view tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n detail: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p2

    .line 483
    invoke-static {v13, v14, v1, v10, v11}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v1, v9

    if-eqz v10, :cond_d

    const/4 v0, 0x0

    .line 513
    :goto_4
    array-length v2, v10

    if-ge v0, v2, :cond_d

    .line 514
    aget-object v2, v10, v0

    .line 515
    iget-object v3, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    iget v4, v2, Lcom/facebook/react/uimanager/ViewAtIndex;->mTag:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_c

    .line 525
    iget v4, v2, Lcom/facebook/react/uimanager/ViewAtIndex;->mIndex:I

    .line 526
    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 529
    :goto_5
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_b

    .line 530
    iget v6, v2, Lcom/facebook/react/uimanager/ViewAtIndex;->mIndex:I

    if-ne v5, v6, :cond_9

    goto :goto_6

    .line 533
    :cond_9
    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 534
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    add-int/lit8 v5, v5, 0x1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 541
    :cond_b
    :goto_6
    invoke-virtual {v14, v13, v3, v4}, Lcom/facebook/react/uimanager/ViewGroupManager;->addView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 517
    :cond_c
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to add unknown view tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/facebook/react/uimanager/ViewAtIndex;->mTag:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n detail: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-static {v13, v14, v1, v10, v11}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_d
    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 545
    iget-object v0, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPendingDeletionsForTag:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    :cond_e
    monitor-exit p0

    return-void

    :cond_f
    move-object v1, v9

    .line 409
    :try_start_2
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to manageChildren view with tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " which doesn\'t exist\n detail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-static {v13, v14, v1, v10, v11}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized measure(I[I)V
    .locals 4

    monitor-enter p0

    .line 685
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 686
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 691
    invoke-static {v0}, Lcom/facebook/react/uimanager/RootViewUtil;->getRootView(Landroid/view/View;)Lcom/facebook/react/uimanager/RootView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 697
    invoke-direct {p0, v1, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->computeBoundingBox(Landroid/view/View;[I)V

    const/4 p1, 0x0

    .line 698
    aget v1, p2, p1

    const/4 v2, 0x1

    .line 699
    aget v3, p2, v2

    .line 700
    invoke-direct {p0, v0, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->computeBoundingBox(Landroid/view/View;[I)V

    .line 701
    aget v0, p2, p1

    sub-int/2addr v0, v1

    aput v0, p2, p1

    .line 702
    aget p1, p2, v2

    sub-int/2addr p1, v3

    aput p1, p2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    monitor-exit p0

    return-void

    .line 695
    :cond_0
    :try_start_1
    new-instance p2, Lcom/facebook/react/uimanager/NoSuchNativeViewException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Native view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is no longer on screen"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/uimanager/NoSuchNativeViewException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 688
    :cond_1
    new-instance p2, Lcom/facebook/react/uimanager/NoSuchNativeViewException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No native view for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " currently exists"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/uimanager/NoSuchNativeViewException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized measureInWindow(I[I)V
    .locals 4

    monitor-enter p0

    .line 752
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 753
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {v0, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 762
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 763
    invoke-virtual {v0, p1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    .line 764
    aget v2, p2, v1

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    aput v2, p2, v1

    const/4 v1, 0x1

    .line 765
    aget v2, p2, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    aput v2, p2, v1

    const/4 p1, 0x2

    .line 768
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    aput v1, p2, p1

    const/4 p1, 0x3

    .line 769
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    aput v0, p2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    monitor-exit p0

    return-void

    .line 755
    :cond_0
    :try_start_1
    new-instance p2, Lcom/facebook/react/uimanager/NoSuchNativeViewException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No native view for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " currently exists"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/uimanager/NoSuchNativeViewException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeRootView(I)V
    .locals 2

    monitor-enter p0

    .line 667
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 668
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View with tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not registered as a root view"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/bridge/SoftAssertions;->assertUnreachable(Ljava/lang/String;)V

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 673
    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->dropView(Landroid/view/View;)V

    .line 674
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized resolveView(I)Landroid/view/View;
    .locals 3

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 106
    monitor-exit p0

    return-object v0

    .line 103
    :cond_0
    :try_start_1
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to resolve view with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " which doesn\'t exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;
    .locals 3

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ViewManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 115
    monitor-exit p0

    return-object v0

    .line 112
    :cond_0
    :try_start_1
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewManager for tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " could not be found.\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendAccessibilityEvent(II)V
    .locals 2

    .line 951
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {v0, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void

    .line 953
    :cond_0
    new-instance p2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find view with tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public declared-synchronized setChildren(ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 5

    monitor-enter p0

    .line 583
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 584
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 585
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/ViewGroupManager;

    const/4 v1, 0x0

    .line 587
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 588
    iget-object v2, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 596
    invoke-virtual {p1, v0, v2, v1}, Lcom/facebook/react/uimanager/ViewGroupManager;->addView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 590
    :cond_0
    new-instance v2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to add unknown view tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n detail: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-static {v0, p1, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructSetChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;Lcom/facebook/react/bridge/ReadableArray;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setJSResponder(IIZ)V
    .locals 2

    monitor-enter p0

    if-nez p3, :cond_0

    .line 787
    :try_start_0
    iget-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/touch/JSResponderHandler;->setJSResponder(ILandroid/view/ViewParent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    monitor-exit p0

    return-void

    .line 791
    :cond_0
    :try_start_1
    iget-object p3, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-eq p2, p1, :cond_1

    .line 792
    instance-of v0, p3, Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 795
    iget-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    check-cast p3, Landroid/view/ViewParent;

    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/touch/JSResponderHandler;->setJSResponder(ILandroid/view/ViewParent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 796
    monitor-exit p0

    return-void

    .line 799
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot block native responder on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " that is a root view"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/bridge/SoftAssertions;->assertUnreachable(Ljava/lang/String;)V

    .line 803
    :cond_2
    iget-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/touch/JSResponderHandler;->setJSResponder(ILandroid/view/ViewParent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 804
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLayoutAnimationEnabled(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimationEnabled:Z

    return-void
.end method

.method public declared-synchronized showPopupMenu(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2

    monitor-enter p0

    .line 882
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 883
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 885
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t display popup. Could not find view with tag "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-interface {p4, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    monitor-exit p0

    return-void

    .line 888
    :cond_0
    :try_start_1
    new-instance p4, Landroid/widget/PopupMenu;

    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->getReactContextForView(I)Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object p1

    invoke-direct {p4, p1, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p4, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 890
    invoke-virtual {p4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 p4, 0x0

    .line 891
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    if-ge p4, v0, :cond_1

    .line 892
    invoke-interface {p2, p4}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, p4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 895
    :cond_1
    new-instance p1, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p3, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;)V

    .line 896
    iget-object p2, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p2, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 897
    iget-object p2, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p2, p1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 899
    iget-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 900
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateInstanceHandle(IJ)V
    .locals 2

    monitor-enter p0

    .line 123
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->updateInstanceHandle(Landroid/view/View;J)V
    :try_end_1
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 128
    :try_start_2
    sget-object p3, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to update properties for view tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateLayout(IIIIII)V
    .locals 9

    monitor-enter p0

    .line 166
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    const-string v0, "NativeViewHierarchyManager_updateLayout"

    const-wide/16 v1, 0x0

    .line 167
    invoke-static {v1, v2, v0}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    const-string v3, "parentTag"

    .line 169
    invoke-virtual {v0, v3, p1}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    const-string v3, "tag"

    .line 170
    invoke-virtual {v0, v3, p2}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 173
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object v4

    const/high16 p2, 0x40000000    # 2.0f

    .line 191
    invoke-static {p5, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 192
    invoke-static {p6, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 190
    invoke-virtual {v4, v0, p2}, Landroid/view/View;->measure(II)V

    .line 204
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 205
    instance-of v0, p2, Lcom/facebook/react/uimanager/RootView;

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {p2}, Landroid/view/ViewParent;->requestLayout()V

    .line 210
    :cond_0
    iget-object p2, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 211
    iget-object p2, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/react/uimanager/ViewManager;

    .line 213
    instance-of v0, p2, Lcom/facebook/react/uimanager/IViewManagerWithChildren;

    if-eqz v0, :cond_1

    .line 214
    check-cast p2, Lcom/facebook/react/uimanager/IViewManagerWithChildren;

    if-eqz p2, :cond_3

    .line 222
    invoke-interface {p2}, Lcom/facebook/react/uimanager/IViewManagerWithChildren;->needsCustomLayoutForChildren()Z

    move-result p1

    if-nez p1, :cond_3

    move-object v3, p0

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    .line 223
    invoke-direct/range {v3 .. v8}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->updateLayout(Landroid/view/View;IIII)V

    goto :goto_0

    .line 216
    :cond_1
    new-instance p2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Trying to use view with tag "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " as a parent, but its Manager doesn\'t implement IViewManagerWithChildren"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    move-object v3, p0

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    .line 226
    invoke-direct/range {v3 .. v8}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->updateLayout(Landroid/view/View;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :cond_3
    :goto_0
    :try_start_2
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 231
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 229
    :try_start_3
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 230
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateProperties(ILcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 3

    monitor-enter p0

    .line 136
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    .line 140
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 143
    invoke-virtual {v0, v1, p2}, Lcom/facebook/react/uimanager/ViewManager;->updateProperties(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    :try_end_1
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 146
    :try_start_2
    sget-object v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to update properties for view tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateViewExtraData(ILjava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 154
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 156
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    .line 157
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object p1

    .line 158
    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/ViewManager;->updateExtraData(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
