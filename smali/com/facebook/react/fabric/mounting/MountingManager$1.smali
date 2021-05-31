.class Lcom/facebook/react/fabric/mounting/MountingManager$1;
.super Ljava/lang/Object;
.source "MountingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/fabric/mounting/MountingManager;->dropView(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/fabric/mounting/MountingManager;

.field final synthetic val$reactTag:I

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;

.field final synthetic val$viewGroupManager:Lcom/facebook/react/uimanager/ViewGroupManager;


# direct methods
.method constructor <init>(Lcom/facebook/react/fabric/mounting/MountingManager;ILandroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager$1;->this$0:Lcom/facebook/react/fabric/mounting/MountingManager;

    iput p2, p0, Lcom/facebook/react/fabric/mounting/MountingManager$1;->val$reactTag:I

    iput-object p3, p0, Lcom/facebook/react/fabric/mounting/MountingManager$1;->val$viewGroup:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/facebook/react/fabric/mounting/MountingManager$1;->val$viewGroupManager:Lcom/facebook/react/uimanager/ViewGroupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager$1;->this$0:Lcom/facebook/react/fabric/mounting/MountingManager;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/MountingManager$1;->val$reactTag:I

    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/MountingManager$1;->val$viewGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/facebook/react/fabric/mounting/MountingManager$1;->val$viewGroupManager:Lcom/facebook/react/uimanager/ViewGroupManager;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/react/fabric/mounting/MountingManager;->access$100(Lcom/facebook/react/fabric/mounting/MountingManager;ILandroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;)V

    return-void
.end method
