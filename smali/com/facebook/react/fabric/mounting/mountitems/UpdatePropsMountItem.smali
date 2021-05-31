.class public Lcom/facebook/react/fabric/mounting/mountitems/UpdatePropsMountItem;
.super Ljava/lang/Object;
.source "UpdatePropsMountItem.java"

# interfaces
.implements Lcom/facebook/react/fabric/mounting/mountitems/MountItem;


# instance fields
.field private final mReactTag:I

.field private final mUpdatedProps:Lcom/facebook/react/bridge/ReadableMap;


# direct methods
.method public constructor <init>(ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdatePropsMountItem;->mReactTag:I

    .line 23
    iput-object p2, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdatePropsMountItem;->mUpdatedProps:Lcom/facebook/react/bridge/ReadableMap;

    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V
    .locals 2

    .line 28
    iget v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdatePropsMountItem;->mReactTag:I

    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdatePropsMountItem;->mUpdatedProps:Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/fabric/mounting/MountingManager;->updateProps(ILcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdatePropsMountItem ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdatePropsMountItem;->mReactTag:I

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
