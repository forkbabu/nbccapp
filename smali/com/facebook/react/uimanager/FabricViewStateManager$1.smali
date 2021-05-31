.class Lcom/facebook/react/uimanager/FabricViewStateManager$1;
.super Ljava/lang/Object;
.source "FabricViewStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/uimanager/FabricViewStateManager;->setState(Lcom/facebook/react/uimanager/StateWrapper;Lcom/facebook/react/uimanager/FabricViewStateManager$StateUpdateCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/uimanager/FabricViewStateManager;

.field final synthetic val$numTries:I

.field final synthetic val$stateUpdateCallback:Lcom/facebook/react/uimanager/FabricViewStateManager$StateUpdateCallback;

.field final synthetic val$stateWrapper:Lcom/facebook/react/uimanager/StateWrapper;


# direct methods
.method constructor <init>(Lcom/facebook/react/uimanager/FabricViewStateManager;ILcom/facebook/react/uimanager/StateWrapper;Lcom/facebook/react/uimanager/FabricViewStateManager$StateUpdateCallback;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/facebook/react/uimanager/FabricViewStateManager$1;->this$0:Lcom/facebook/react/uimanager/FabricViewStateManager;

    iput p2, p0, Lcom/facebook/react/uimanager/FabricViewStateManager$1;->val$numTries:I

    iput-object p3, p0, Lcom/facebook/react/uimanager/FabricViewStateManager$1;->val$stateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    iput-object p4, p0, Lcom/facebook/react/uimanager/FabricViewStateManager$1;->val$stateUpdateCallback:Lcom/facebook/react/uimanager/FabricViewStateManager$StateUpdateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateState failed - retrying! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/uimanager/FabricViewStateManager$1;->val$numTries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FabricViewStateManager"

    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/facebook/react/uimanager/FabricViewStateManager$1;->this$0:Lcom/facebook/react/uimanager/FabricViewStateManager;

    iget-object v1, p0, Lcom/facebook/react/uimanager/FabricViewStateManager$1;->val$stateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    iget-object v2, p0, Lcom/facebook/react/uimanager/FabricViewStateManager$1;->val$stateUpdateCallback:Lcom/facebook/react/uimanager/FabricViewStateManager$StateUpdateCallback;

    iget v3, p0, Lcom/facebook/react/uimanager/FabricViewStateManager$1;->val$numTries:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/react/uimanager/FabricViewStateManager;->access$000(Lcom/facebook/react/uimanager/FabricViewStateManager;Lcom/facebook/react/uimanager/StateWrapper;Lcom/facebook/react/uimanager/FabricViewStateManager$StateUpdateCallback;I)V

    return-void
.end method
