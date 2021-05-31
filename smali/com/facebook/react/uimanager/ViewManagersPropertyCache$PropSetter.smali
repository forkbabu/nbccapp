.class abstract Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;
.super Ljava/lang/Object;
.source "ViewManagersPropertyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/ViewManagersPropertyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "PropSetter"
.end annotation


# static fields
.field private static final SHADOW_ARGS:[Ljava/lang/Object;

.field private static final SHADOW_GROUP_ARGS:[Ljava/lang/Object;

.field private static final VIEW_MGR_ARGS:[Ljava/lang/Object;

.field private static final VIEW_MGR_GROUP_ARGS:[Ljava/lang/Object;


# instance fields
.field protected final mIndex:Ljava/lang/Integer;

.field protected final mPropName:Ljava/lang/String;

.field protected final mPropType:Ljava/lang/String;

.field protected final mSetter:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 51
    sput-object v1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->VIEW_MGR_ARGS:[Ljava/lang/Object;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 52
    sput-object v1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->VIEW_MGR_GROUP_ARGS:[Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 53
    sput-object v1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->SHADOW_ARGS:[Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    sput-object v0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->SHADOW_GROUP_ARGS:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/react/uimanager/annotations/ReactProp;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-interface {p1}, Lcom/facebook/react/uimanager/annotations/ReactProp;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mPropName:Ljava/lang/String;

    .line 59
    invoke-interface {p1}, Lcom/facebook/react/uimanager/annotations/ReactProp;->customType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__default_type__"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/facebook/react/uimanager/annotations/ReactProp;->customType()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mPropType:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mSetter:Ljava/lang/reflect/Method;

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mIndex:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/uimanager/annotations/ReactProp;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/facebook/react/uimanager/ViewManagersPropertyCache$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;-><init>(Lcom/facebook/react/uimanager/annotations/ReactProp;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private constructor <init>(Lcom/facebook/react/uimanager/annotations/ReactPropGroup;Ljava/lang/String;Ljava/lang/reflect/Method;I)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-interface {p1}, Lcom/facebook/react/uimanager/annotations/ReactPropGroup;->names()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p4

    iput-object v0, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mPropName:Ljava/lang/String;

    .line 67
    invoke-interface {p1}, Lcom/facebook/react/uimanager/annotations/ReactPropGroup;->customType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__default_type__"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-interface {p1}, Lcom/facebook/react/uimanager/annotations/ReactPropGroup;->customType()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mPropType:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mSetter:Ljava/lang/reflect/Method;

    .line 71
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mIndex:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/uimanager/annotations/ReactPropGroup;Ljava/lang/String;Ljava/lang/reflect/Method;ILcom/facebook/react/uimanager/ViewManagersPropertyCache$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;-><init>(Lcom/facebook/react/uimanager/annotations/ReactPropGroup;Ljava/lang/String;Ljava/lang/reflect/Method;I)V

    return-void
.end method


# virtual methods
.method public getPropName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mPropName:Ljava/lang/String;

    return-object v0
.end method

.method public getPropType()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mPropType:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getValueOrDefault(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;
.end method

.method public updateShadowNodeProp(Lcom/facebook/react/uimanager/ReactShadowNode;Ljava/lang/Object;)V
    .locals 4

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mIndex:Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 110
    sget-object v0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->SHADOW_ARGS:[Ljava/lang/Object;

    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getThemedContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->getValueOrDefault(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v0, v2

    .line 111
    iget-object p2, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mSetter:Ljava/lang/reflect/Method;

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 114
    :cond_0
    sget-object v3, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->SHADOW_GROUP_ARGS:[Ljava/lang/Object;

    aput-object v0, v3, v2

    const/4 v0, 0x1

    .line 115
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getThemedContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->getValueOrDefault(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v3, v0

    .line 116
    iget-object p2, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mSetter:Ljava/lang/reflect/Method;

    invoke-virtual {p2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception p2

    .line 120
    const-class v0, Lcom/facebook/react/uimanager/ViewManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while updating prop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mPropName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while updating property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mPropName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' in shadow node of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getViewClass()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public updateViewProp(Lcom/facebook/react/uimanager/ViewManager;Landroid/view/View;Ljava/lang/Object;)V
    .locals 5

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mIndex:Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 85
    sget-object v0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->VIEW_MGR_ARGS:[Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 86
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->getValueOrDefault(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v0, v2

    .line 87
    iget-object p2, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mSetter:Ljava/lang/reflect/Method;

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 90
    :cond_0
    sget-object v4, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->VIEW_MGR_GROUP_ARGS:[Ljava/lang/Object;

    aput-object p2, v4, v3

    .line 91
    aput-object v0, v4, v2

    const/4 v0, 0x2

    .line 92
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->getValueOrDefault(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v4, v0

    .line 93
    iget-object p2, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mSetter:Ljava/lang/reflect/Method;

    invoke-virtual {p2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {v4, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception p2

    .line 97
    const-class p3, Lcom/facebook/react/uimanager/ViewManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while updating prop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mPropName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    new-instance p3, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while updating property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mPropName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' of a view managed by: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ViewManager;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method
