.class public Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;
.super Ljava/lang/Object;
.source "BatchMountItem.java"

# interfaces
.implements Lcom/facebook/react/fabric/mounting/mountitems/MountItem;


# static fields
.field static final TAG:Ljava/lang/String; = "FabricBatchMountItem"


# instance fields
.field private final mCommitNumber:I

.field private final mMountItems:[Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

.field private final mRootTag:I

.field private final mSize:I


# direct methods
.method public constructor <init>(I[Lcom/facebook/react/fabric/mounting/mountitems/MountItem;II)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :cond_0
    array-length v0, p2

    :goto_0
    if-ltz p3, :cond_1

    if-gt p3, v0, :cond_1

    .line 44
    iput p1, p0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->mRootTag:I

    .line 45
    iput-object p2, p0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->mMountItems:[Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    .line 46
    iput p3, p0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->mSize:I

    .line 47
    iput p4, p0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->mCommitNumber:I

    return-void

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid size received by parameter size: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " items.size = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private beginMarkers(Ljava/lang/String;)V
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FabricUIManager::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->mSize:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " items"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 55
    iget p1, p0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->mCommitNumber:I

    if-lez p1, :cond_0

    .line 56
    sget-object p1, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_BATCH_EXECUTION_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    const/4 v0, 0x0

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->mCommitNumber:I

    invoke-static {p1, v0, v1}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private endMarkers()V
    .locals 3

    .line 62
    iget v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->mCommitNumber:I

    if-lez v0, :cond_0

    .line 63
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_BATCH_EXECUTION_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    const/4 v1, 0x0

    iget v2, p0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->mCommitNumber:I

    invoke-static {v0, v1, v2}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    :cond_0
    const-wide/16 v0, 0x0

    .line 67
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V
    .locals 3

    const-string v0, "mountViews"

    .line 72
    invoke-direct {p0, v0}, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->beginMarkers(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 76
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->mSize:I

    if-ge v0, v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->mMountItems:[Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;->execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->endMarkers()V

    return-void

    :catch_0
    move-exception p1

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception executing mountItem @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->mMountItems:[Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    aget-object v0, v2, v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FabricBatchMountItem"

    .line 80
    invoke-static {v1, v0, p1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    throw p1
.end method

.method public getRootTag()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->mRootTag:I

    return v0
.end method

.method public shouldSchedule()Z
    .locals 1

    .line 98
    iget v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->mSize:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 104
    :goto_0
    iget v2, p0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->mSize:I

    if-ge v1, v2, :cond_1

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "\n"

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BatchMountItem [S:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->mRootTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    .line 110
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->mSize:I

    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->mMountItems:[Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    aget-object v1, v3, v1

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
