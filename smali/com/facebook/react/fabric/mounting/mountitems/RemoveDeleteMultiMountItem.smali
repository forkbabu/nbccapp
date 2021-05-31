.class public Lcom/facebook/react/fabric/mounting/mountitems/RemoveDeleteMultiMountItem;
.super Ljava/lang/Object;
.source "RemoveDeleteMultiMountItem.java"

# interfaces
.implements Lcom/facebook/react/fabric/mounting/mountitems/MountItem;


# static fields
.field private static final DELETE_FLAG:I = 0x2

.field private static final FLAGS_INDEX:I = 0x3

.field private static final INSTRUCTION_FIELDS_LEN:I = 0x4

.field private static final PARENT_TAG_INDEX:I = 0x1

.field private static final REMOVE_FLAG:I = 0x1

.field private static final TAG_INDEX:I = 0x0

.field private static final VIEW_INDEX_INDEX:I = 0x2


# instance fields
.field private mMetadata:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveDeleteMultiMountItem;->mMetadata:[I

    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveDeleteMultiMountItem;->mMetadata:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    add-int/lit8 v3, v1, 0x3

    .line 49
    aget v3, v2, v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 51
    aget v3, v2, v3

    add-int/lit8 v4, v1, 0x0

    .line 52
    aget v4, v2, v4

    add-int/lit8 v5, v1, 0x2

    .line 53
    aget v2, v2, v5

    .line 54
    invoke-virtual {p1, v4, v3, v2}, Lcom/facebook/react/fabric/mounting/MountingManager;->removeViewAt(III)V

    :cond_0
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 59
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveDeleteMultiMountItem;->mMetadata:[I

    array-length v2, v1

    if-ge v0, v2, :cond_3

    add-int/lit8 v2, v0, 0x3

    .line 60
    aget v2, v1, v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v0, 0x0

    .line 62
    aget v1, v1, v2

    .line 63
    invoke-virtual {p1, v1}, Lcom/facebook/react/fabric/mounting/MountingManager;->deleteView(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 71
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveDeleteMultiMountItem;->mMetadata:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "\n"

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "RemoveDeleteMultiMountItem ("

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x1

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveDeleteMultiMountItem;->mMetadata:[I

    array-length v2, v2

    div-int/lit8 v2, v2, 0x4

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): ["

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveDeleteMultiMountItem;->mMetadata:[I

    add-int/lit8 v3, v1, 0x0

    aget v2, v2, v3

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] parent ["

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveDeleteMultiMountItem;->mMetadata:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] idx "

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveDeleteMultiMountItem;->mMetadata:[I

    add-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveDeleteMultiMountItem;->mMetadata:[I

    add-int/lit8 v3, v1, 0x3

    aget v2, v2, v3

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
