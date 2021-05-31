.class Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$2;
.super Lcom/facebook/react/uimanager/events/Event;
.source "ReactAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;

.field final synthetic val$event:Lcom/facebook/react/bridge/WritableMap;

.field final synthetic val$reactTag:I


# direct methods
.method constructor <init>(Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;IILcom/facebook/react/bridge/WritableMap;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$2;->this$0:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;

    iput p3, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$2;->val$reactTag:I

    iput-object p4, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$2;->val$event:Lcom/facebook/react/bridge/WritableMap;

    invoke-direct {p0, p2}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    return-void
.end method


# virtual methods
.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3

    .line 311
    iget v0, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$2;->val$reactTag:I

    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$2;->val$event:Lcom/facebook/react/bridge/WritableMap;

    const-string v2, "topAccessibilityAction"

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "topAccessibilityAction"

    return-object v0
.end method
