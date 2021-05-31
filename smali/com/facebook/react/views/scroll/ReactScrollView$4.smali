.class Lcom/facebook/react/views/scroll/ReactScrollView$4;
.super Ljava/lang/Object;
.source "ReactScrollView.java"

# interfaces
.implements Lcom/facebook/react/uimanager/FabricViewStateManager$StateUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/scroll/ReactScrollView;->updateStateOnScroll(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

.field final synthetic val$scrollX:I

.field final synthetic val$scrollY:I


# direct methods
.method constructor <init>(Lcom/facebook/react/views/scroll/ReactScrollView;II)V
    .locals 0

    .line 974
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView$4;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    iput p2, p0, Lcom/facebook/react/views/scroll/ReactScrollView$4;->val$scrollX:I

    iput p3, p0, Lcom/facebook/react/views/scroll/ReactScrollView$4;->val$scrollY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStateUpdate()Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 978
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 979
    iget v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView$4;->val$scrollX:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v1, v1

    const-string v3, "contentOffsetLeft"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 980
    iget v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView$4;->val$scrollY:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v1, v1

    const-string v3, "contentOffsetTop"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method
