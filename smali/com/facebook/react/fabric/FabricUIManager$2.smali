.class Lcom/facebook/react/fabric/FabricUIManager$2;
.super Ljava/lang/Object;
.source "FabricUIManager.java"

# interfaces
.implements Lcom/facebook/react/fabric/mounting/mountitems/MountItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/fabric/FabricUIManager;->synchronouslyUpdateViewOnUIThread(ILcom/facebook/react/bridge/ReadableMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/fabric/FabricUIManager;

.field final synthetic val$props:Lcom/facebook/react/bridge/ReadableMap;

.field final synthetic val$reactTag:I


# direct methods
.method constructor <init>(Lcom/facebook/react/fabric/FabricUIManager;ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/facebook/react/fabric/FabricUIManager$2;->this$0:Lcom/facebook/react/fabric/FabricUIManager;

    iput p2, p0, Lcom/facebook/react/fabric/FabricUIManager$2;->val$reactTag:I

    iput-object p3, p0, Lcom/facebook/react/fabric/FabricUIManager$2;->val$props:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V
    .locals 3

    .line 605
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager$2;->this$0:Lcom/facebook/react/fabric/FabricUIManager;

    iget v1, p0, Lcom/facebook/react/fabric/FabricUIManager$2;->val$reactTag:I

    iget-object v2, p0, Lcom/facebook/react/fabric/FabricUIManager$2;->val$props:Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {v0, v1, v2}, Lcom/facebook/react/fabric/FabricUIManager;->access$200(Lcom/facebook/react/fabric/FabricUIManager;ILcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;->execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 608
    new-instance v0, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    const-string v1, "Caught exception in synchronouslyUpdateViewOnUIThread"

    invoke-direct {v0, v1, p1}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "FabricUIManager"

    invoke-static {p1, v0}, Lcom/facebook/react/bridge/ReactSoftException;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
