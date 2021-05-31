.class public Lcom/facebook/react/fabric/mounting/mountitems/SendAccessibilityEvent;
.super Ljava/lang/Object;
.source "SendAccessibilityEvent.java"

# interfaces
.implements Lcom/facebook/react/fabric/mounting/mountitems/MountItem;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mEventType:I

.field private final mReactTag:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Fabric.SendAccessibilityEvent"

    .line 17
    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/SendAccessibilityEvent;->TAG:Ljava/lang/String;

    .line 23
    iput p1, p0, Lcom/facebook/react/fabric/mounting/mountitems/SendAccessibilityEvent;->mReactTag:I

    .line 24
    iput p2, p0, Lcom/facebook/react/fabric/mounting/mountitems/SendAccessibilityEvent;->mEventType:I

    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V
    .locals 2

    .line 30
    :try_start_0
    iget v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/SendAccessibilityEvent;->mReactTag:I

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/SendAccessibilityEvent;->mEventType:I

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/fabric/mounting/MountingManager;->sendAccessibilityEvent(II)V
    :try_end_0
    .catch Lcom/facebook/react/bridge/RetryableMountingLayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Fabric.SendAccessibilityEvent"

    .line 39
    invoke-static {v0, p1}, Lcom/facebook/react/bridge/ReactSoftException;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendAccessibilityEvent ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/SendAccessibilityEvent;->mReactTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/SendAccessibilityEvent;->mEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
