.class Lcom/facebook/react/fabric/FabricUIManager$1;
.super Ljava/lang/Object;
.source "FabricUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/fabric/FabricUIManager;->stopSurface(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/fabric/FabricUIManager;

.field final synthetic val$surfaceID:I


# direct methods
.method constructor <init>(Lcom/facebook/react/fabric/FabricUIManager;I)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/facebook/react/fabric/FabricUIManager$1;->this$0:Lcom/facebook/react/fabric/FabricUIManager;

    iput p2, p0, Lcom/facebook/react/fabric/FabricUIManager$1;->val$surfaceID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager$1;->this$0:Lcom/facebook/react/fabric/FabricUIManager;

    invoke-static {v0}, Lcom/facebook/react/fabric/FabricUIManager;->access$100(Lcom/facebook/react/fabric/FabricUIManager;)Lcom/facebook/react/fabric/mounting/MountingManager;

    move-result-object v0

    iget v1, p0, Lcom/facebook/react/fabric/FabricUIManager$1;->val$surfaceID:I

    invoke-virtual {v0, v1}, Lcom/facebook/react/fabric/mounting/MountingManager;->deleteRootView(I)V

    return-void
.end method
