.class Lcom/facebook/react/devsupport/DevSupportManagerBase$19;
.super Ljava/lang/Object;
.source "DevSupportManagerBase.java"

# interfaces
.implements Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevSupportManagerBase;->loadSplitBundleFromServer(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

.field final synthetic val$bundlePath:Ljava/lang/String;

.field final synthetic val$callback:Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;)V
    .locals 0

    .line 876
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$19;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    iput-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$19;->val$bundlePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$19;->val$callback:Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$19;->val$callback:Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/react/bridge/JSBundleLoader;)V
    .locals 2

    .line 879
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$19;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1300(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/JSBundleLoader;->loadScript(Lcom/facebook/react/bridge/JSBundleLoaderDelegate;)Ljava/lang/String;

    .line 880
    iget-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$19;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-static {p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$1300(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object p1

    const-class v0, Lcom/facebook/react/devsupport/HMRClient;

    .line 881
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/devsupport/HMRClient;

    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$19;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    .line 882
    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$300(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevServerHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$19;->val$bundlePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DevServerHelper;->getDevServerSplitBundleURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/devsupport/HMRClient;->registerBundle(Ljava/lang/String;)V

    .line 883
    iget-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$19;->val$callback:Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;

    invoke-interface {p1}, Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;->onSuccess()V

    return-void
.end method
