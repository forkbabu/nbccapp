.class Lcom/facebook/react/devsupport/DevSupportManagerBase$10;
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

    .line 500
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$10;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionSelected()V
    .locals 4

    .line 503
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$10;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1100(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 504
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v2, "localhost:8081"

    .line 512
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 514
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$10;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    .line 517
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/facebook/react/R$string;->catalyst_change_bundle_location:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 518
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerBase$10$1;

    invoke-direct {v3, p0, v1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$10$1;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase$10;Landroid/widget/EditText;)V

    .line 519
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 529
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    :goto_0
    const-string v0, "ReactNative"

    const-string v1, "Unable to launch change bundle location because react activity is not available"

    .line 505
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
