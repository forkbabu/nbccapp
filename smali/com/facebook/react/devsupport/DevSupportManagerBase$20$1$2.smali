.class Lcom/facebook/react/devsupport/DevSupportManagerBase$20$1$2;
.super Ljava/lang/Object;
.source "DevSupportManagerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevSupportManagerBase$20$1;->onFailure(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/facebook/react/devsupport/DevSupportManagerBase$20$1;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevSupportManagerBase$20$1;)V
    .locals 0

    .line 938
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$20$1$2;->this$2:Lcom/facebook/react/devsupport/DevSupportManagerBase$20$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$20$1$2;->this$2:Lcom/facebook/react/devsupport/DevSupportManagerBase$20$1;

    iget-object v0, v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$20$1;->this$1:Lcom/facebook/react/devsupport/DevSupportManagerBase$20;

    iget-object v0, v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$20;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1800(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    return-void
.end method
