.class Lcom/th3rdwave/safeareacontext/SerializationUtils;
.super Ljava/lang/Object;
.source "SerializationUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static edgeInsetsToJavaMap(Lcom/th3rdwave/safeareacontext/EdgeInsets;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/th3rdwave/safeareacontext/EdgeInsets;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 21
    iget v0, p0, Lcom/th3rdwave/safeareacontext/EdgeInsets;->top:F

    .line 23
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v0, p0, Lcom/th3rdwave/safeareacontext/EdgeInsets;->right:F

    .line 25
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v0, p0, Lcom/th3rdwave/safeareacontext/EdgeInsets;->bottom:F

    .line 27
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget p0, p0, Lcom/th3rdwave/safeareacontext/EdgeInsets;->left:F

    .line 29
    invoke-static {p0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const-string v1, "top"

    const-string v3, "right"

    const-string v5, "bottom"

    const-string v7, "left"

    .line 21
    invoke-static/range {v1 .. v8}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static edgeInsetsToJsMap(Lcom/th3rdwave/safeareacontext/EdgeInsets;)Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 12
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 13
    iget v1, p0, Lcom/th3rdwave/safeareacontext/EdgeInsets;->top:F

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v1, v1

    const-string v3, "top"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 14
    iget v1, p0, Lcom/th3rdwave/safeareacontext/EdgeInsets;->right:F

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v1, v1

    const-string v3, "right"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 15
    iget v1, p0, Lcom/th3rdwave/safeareacontext/EdgeInsets;->bottom:F

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v1, v1

    const-string v3, "bottom"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 16
    iget p0, p0, Lcom/th3rdwave/safeareacontext/EdgeInsets;->left:F

    invoke-static {p0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p0

    float-to-double v1, p0

    const-string p0, "left"

    invoke-interface {v0, p0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method static rectToJavaMap(Lcom/th3rdwave/safeareacontext/Rect;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/th3rdwave/safeareacontext/Rect;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 42
    iget v0, p0, Lcom/th3rdwave/safeareacontext/Rect;->x:F

    .line 44
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v0, p0, Lcom/th3rdwave/safeareacontext/Rect;->y:F

    .line 46
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v0, p0, Lcom/th3rdwave/safeareacontext/Rect;->width:F

    .line 48
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget p0, p0, Lcom/th3rdwave/safeareacontext/Rect;->height:F

    .line 50
    invoke-static {p0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const-string v1, "x"

    const-string v3, "y"

    const-string v5, "width"

    const-string v7, "height"

    .line 42
    invoke-static/range {v1 .. v8}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static rectToJsMap(Lcom/th3rdwave/safeareacontext/Rect;)Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 33
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 34
    iget v1, p0, Lcom/th3rdwave/safeareacontext/Rect;->x:F

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v1, v1

    const-string v3, "x"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 35
    iget v1, p0, Lcom/th3rdwave/safeareacontext/Rect;->y:F

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v1, v1

    const-string v3, "y"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 36
    iget v1, p0, Lcom/th3rdwave/safeareacontext/Rect;->width:F

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v1, v1

    const-string v3, "width"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 37
    iget p0, p0, Lcom/th3rdwave/safeareacontext/Rect;->height:F

    invoke-static {p0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p0

    float-to-double v1, p0

    const-string p0, "height"

    invoke-interface {v0, p0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method
