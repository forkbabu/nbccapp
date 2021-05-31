.class Lcom/facebook/react/devsupport/DevSupportManagerBase$15;
.super Ljava/lang/Object;
.source "DevSupportManagerBase.java"

# interfaces
.implements Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevSupportManagerBase;->showDevOptionsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$15;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionSelected()V
    .locals 3

    .line 607
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$15;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-static {v1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/react/devsupport/DevSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 608
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 609
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$15;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-static {v1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
