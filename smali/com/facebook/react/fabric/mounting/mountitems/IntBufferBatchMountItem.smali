.class public Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;
.super Ljava/lang/Object;
.source "IntBufferBatchMountItem.java"

# interfaces
.implements Lcom/facebook/react/fabric/mounting/mountitems/MountItem;


# static fields
.field static final INSTRUCTION_CREATE:I = 0x2

.field static final INSTRUCTION_DELETE:I = 0x4

.field static final INSTRUCTION_FLAG_MULTIPLE:I = 0x1

.field static final INSTRUCTION_INSERT:I = 0x8

.field static final INSTRUCTION_REMOVE:I = 0x10

.field static final INSTRUCTION_UPDATE_EVENT_EMITTER:I = 0x100

.field static final INSTRUCTION_UPDATE_LAYOUT:I = 0x80

.field static final INSTRUCTION_UPDATE_PADDING:I = 0x200

.field static final INSTRUCTION_UPDATE_PROPS:I = 0x20

.field static final INSTRUCTION_UPDATE_STATE:I = 0x40

.field static final TAG:Ljava/lang/String; = "IntBufferBatchMountItem"


# instance fields
.field private final mCommitNumber:I

.field private final mContext:Lcom/facebook/react/uimanager/ThemedReactContext;

.field private final mIntBuffer:[I

.field private final mIntBufferLen:I

.field private final mObjBuffer:[Ljava/lang/Object;

.field private final mObjBufferLen:I

.field private final mRootTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/facebook/react/uimanager/ThemedReactContext;[I[Ljava/lang/Object;I)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mRootTag:I

    .line 71
    iput p5, p0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mCommitNumber:I

    .line 72
    iput-object p2, p0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 74
    iput-object p3, p0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    .line 75
    iput-object p4, p0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mObjBuffer:[Ljava/lang/Object;

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 77
    array-length p2, p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBufferLen:I

    if-eqz p4, :cond_1

    .line 78
    array-length p1, p4

    :cond_1
    iput p1, p0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mObjBufferLen:I

    return-void
.end method

.method private beginMarkers(Ljava/lang/String;)V
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FabricUIManager::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBufferLen:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " intBufSize  - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mObjBufferLen:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " objBufSize"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 93
    iget p1, p0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mCommitNumber:I

    if-lez p1, :cond_0

    .line 94
    sget-object p1, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_BATCH_EXECUTION_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    const/4 v0, 0x0

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mCommitNumber:I

    invoke-static {p1, v0, v1}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static castToEventEmitter(Ljava/lang/Object;)Lcom/facebook/react/fabric/events/EventEmitterWrapper;
    .locals 0

    if-eqz p0, :cond_0

    .line 117
    check-cast p0, Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static castToProps(Ljava/lang/Object;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 0

    if-eqz p0, :cond_0

    .line 113
    check-cast p0, Lcom/facebook/react/bridge/ReadableMap;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static castToState(Ljava/lang/Object;)Lcom/facebook/react/uimanager/StateWrapper;
    .locals 0

    if-eqz p0, :cond_0

    .line 109
    check-cast p0, Lcom/facebook/react/uimanager/StateWrapper;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private endMarkers()V
    .locals 3

    .line 100
    iget v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mCommitNumber:I

    if-lez v0, :cond_0

    .line 101
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_BATCH_EXECUTION_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    const/4 v1, 0x0

    iget v2, p0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mCommitNumber:I

    invoke-static {v0, v1, v2}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    :cond_0
    const-wide/16 v0, 0x0

    .line 105
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 122
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v1, :cond_0

    .line 123
    sget-object v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->TAG:Ljava/lang/String;

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v1, v2, v9

    const-string v3, "Cannot execute batch of %s MountItems; no context. Hopefully this is because StopSurface was called."

    invoke-static {v1, v3, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "mountViews"

    .line 130
    invoke-direct {v0, v1}, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->beginMarkers(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 133
    :goto_0
    iget v3, v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBufferLen:I

    if-ge v1, v3, :cond_d

    .line 134
    iget-object v3, v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v4, v1, 0x1

    aget v1, v3, v1

    and-int/lit8 v11, v1, -0x2

    and-int/2addr v1, v10

    if-eqz v1, :cond_1

    add-int/lit8 v1, v4, 0x1

    .line 136
    aget v3, v3, v4

    move v4, v1

    move v12, v3

    goto :goto_1

    :cond_1
    const/4 v12, 0x1

    :goto_1
    move v7, v2

    move v1, v4

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_c

    const/4 v2, 0x2

    if-ne v11, v2, :cond_3

    .line 139
    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mObjBuffer:[Ljava/lang/Object;

    add-int/lit8 v3, v7, 0x1

    aget-object v2, v2, v7

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/react/fabric/FabricComponents;->getFabricComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 140
    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v5, v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v1

    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mObjBuffer:[Ljava/lang/Object;

    add-int/lit8 v7, v3, 0x1

    aget-object v1, v1, v3

    .line 144
    invoke-static {v1}, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->castToProps(Ljava/lang/Object;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v14

    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mObjBuffer:[Ljava/lang/Object;

    add-int/lit8 v15, v7, 0x1

    aget-object v1, v1, v7

    .line 145
    invoke-static {v1}, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->castToState(Ljava/lang/Object;)Lcom/facebook/react/uimanager/StateWrapper;

    move-result-object v7

    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v16, v6, 0x1

    aget v1, v1, v6

    if-ne v1, v10, :cond_2

    const/16 v17, 0x1

    goto :goto_3

    :cond_2
    const/16 v17, 0x0

    :goto_3
    move-object/from16 v1, p1

    move-object v3, v4

    move v4, v5

    move-object v5, v14

    move-object v6, v7

    move/from16 v7, v17

    .line 140
    invoke-virtual/range {v1 .. v7}, Lcom/facebook/react/fabric/mounting/MountingManager;->createView(Lcom/facebook/react/uimanager/ThemedReactContext;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/uimanager/StateWrapper;Z)V

    move v7, v15

    move/from16 v1, v16

    goto/16 :goto_7

    :cond_3
    const/4 v2, 0x4

    if-ne v11, v2, :cond_4

    .line 148
    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v3, v1, 0x1

    aget v1, v2, v1

    invoke-virtual {v8, v1}, Lcom/facebook/react/fabric/mounting/MountingManager;->deleteView(I)V

    move v1, v3

    goto/16 :goto_7

    :cond_4
    const/16 v2, 0x8

    if-ne v11, v2, :cond_5

    .line 150
    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v3, v1, 0x1

    aget v1, v2, v1

    add-int/lit8 v4, v3, 0x1

    .line 151
    aget v3, v2, v3

    add-int/lit8 v5, v4, 0x1

    .line 152
    aget v2, v2, v4

    invoke-virtual {v8, v3, v1, v2}, Lcom/facebook/react/fabric/mounting/MountingManager;->addViewAt(III)V

    :goto_4
    move v1, v5

    goto/16 :goto_7

    :cond_5
    const/16 v2, 0x10

    if-ne v11, v2, :cond_6

    .line 154
    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v3, v1, 0x1

    aget v1, v2, v1

    add-int/lit8 v4, v3, 0x1

    aget v3, v2, v3

    add-int/lit8 v5, v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v8, v1, v3, v2}, Lcom/facebook/react/fabric/mounting/MountingManager;->removeViewAt(III)V

    goto :goto_4

    :cond_6
    const/16 v2, 0x20

    if-ne v11, v2, :cond_7

    .line 156
    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v3, v1, 0x1

    aget v1, v2, v1

    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mObjBuffer:[Ljava/lang/Object;

    add-int/lit8 v4, v7, 0x1

    aget-object v2, v2, v7

    invoke-static {v2}, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->castToProps(Ljava/lang/Object;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lcom/facebook/react/fabric/mounting/MountingManager;->updateProps(ILcom/facebook/react/bridge/ReadableMap;)V

    :goto_5
    move v1, v3

    move v7, v4

    goto/16 :goto_7

    :cond_7
    const/16 v2, 0x40

    if-ne v11, v2, :cond_8

    .line 158
    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v3, v1, 0x1

    aget v1, v2, v1

    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mObjBuffer:[Ljava/lang/Object;

    add-int/lit8 v4, v7, 0x1

    aget-object v2, v2, v7

    invoke-static {v2}, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->castToState(Ljava/lang/Object;)Lcom/facebook/react/uimanager/StateWrapper;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lcom/facebook/react/fabric/mounting/MountingManager;->updateState(ILcom/facebook/react/uimanager/StateWrapper;)V

    goto :goto_5

    :cond_8
    const/16 v2, 0x80

    if-ne v11, v2, :cond_9

    .line 160
    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v3, v1, 0x1

    aget v4, v2, v1

    add-int/lit8 v1, v3, 0x1

    aget v3, v2, v3

    add-int/lit8 v5, v1, 0x1

    aget v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    aget v5, v2, v5

    add-int/lit8 v14, v1, 0x1

    aget v15, v2, v1

    move-object/from16 v1, p1

    move v2, v4

    move v4, v6

    move v6, v15

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/react/fabric/mounting/MountingManager;->updateLayout(IIIII)V

    add-int/2addr v14, v10

    :goto_6
    move v1, v14

    goto :goto_7

    :cond_9
    const/16 v2, 0x200

    if-ne v11, v2, :cond_a

    .line 166
    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v3, v1, 0x1

    aget v4, v2, v1

    add-int/lit8 v1, v3, 0x1

    aget v3, v2, v3

    add-int/lit8 v5, v1, 0x1

    aget v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    aget v5, v2, v5

    add-int/lit8 v14, v1, 0x1

    aget v15, v2, v1

    move-object/from16 v1, p1

    move v2, v4

    move v4, v6

    move v6, v15

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/react/fabric/mounting/MountingManager;->updatePadding(IIIII)V

    goto :goto_6

    :cond_a
    const/16 v2, 0x100

    if-ne v11, v2, :cond_b

    .line 169
    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v3, v1, 0x1

    aget v1, v2, v1

    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mObjBuffer:[Ljava/lang/Object;

    add-int/lit8 v4, v7, 0x1

    aget-object v2, v2, v7

    invoke-static {v2}, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->castToEventEmitter(Ljava/lang/Object;)Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lcom/facebook/react/fabric/mounting/MountingManager;->updateEventEmitter(ILcom/facebook/react/fabric/events/EventEmitterWrapper;)V

    goto :goto_5

    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 171
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid type argument to IntBufferBatchMountItem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " at index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    move v2, v7

    goto/16 :goto_0

    .line 177
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->endMarkers()V

    return-void
.end method

.method public getRootTag()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mRootTag:I

    return v0
.end method

.method public shouldSchedule()Z
    .locals 1

    .line 185
    iget v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBufferLen:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 191
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IntBufferBatchMountItem:"

    .line 192
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 194
    :cond_0
    iget v5, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBufferLen:I

    if-ge v3, v5, :cond_b

    .line 195
    iget-object v5, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v6, v3, 0x1

    aget v3, v5, v3

    and-int/lit8 v7, v3, -0x2

    const/4 v8, 0x1

    and-int/2addr v3, v8

    if-eqz v3, :cond_1

    add-int/lit8 v3, v6, 0x1

    .line 197
    aget v5, v5, v6

    move v6, v3

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    :goto_0
    move v3, v6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-ne v7, v10, :cond_2

    .line 200
    iget-object v11, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mObjBuffer:[Ljava/lang/Object;

    add-int/lit8 v12, v4, 0x1

    aget-object v4, v11, v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/facebook/react/fabric/FabricComponents;->getFabricComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v12, v10

    const-string v11, "CREATE [%d] - layoutable:%d - %s\n"

    new-array v9, v9, [Ljava/lang/Object;

    .line 202
    iget-object v13, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v14, v3, 0x1

    aget v3, v13, v3

    .line 205
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v2

    iget-object v3, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v13, v14, 0x1

    aget v3, v3, v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v8

    aput-object v4, v9, v10

    .line 203
    invoke-static {v11, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v12

    goto/16 :goto_3

    :cond_2
    const/4 v11, 0x4

    if-ne v7, v11, :cond_3

    const-string v9, "DELETE [%d]\n"

    new-array v10, v8, [Ljava/lang/Object;

    .line 207
    iget-object v11, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v12, v3, 0x1

    aget v3, v11, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v2

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v3, v12

    goto/16 :goto_4

    :cond_3
    const/16 v12, 0x8

    if-ne v7, v12, :cond_4

    const-string v11, "INSERT [%d]->[%d] @%d\n"

    new-array v9, v9, [Ljava/lang/Object;

    .line 209
    iget-object v12, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v13, v3, 0x1

    aget v3, v12, v3

    .line 211
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v2

    iget-object v3, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v12, v13, 0x1

    aget v3, v3, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v8

    iget-object v3, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v13, v12, 0x1

    aget v3, v3, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v10

    .line 210
    invoke-static {v11, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const/16 v12, 0x10

    if-ne v7, v12, :cond_5

    const-string v11, "REMOVE [%d]->[%d] @%d\n"

    new-array v9, v9, [Ljava/lang/Object;

    .line 213
    iget-object v12, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v13, v3, 0x1

    aget v3, v12, v3

    .line 215
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v2

    iget-object v3, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v12, v13, 0x1

    aget v3, v3, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v8

    iget-object v3, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v13, v12, 0x1

    aget v3, v3, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v10

    .line 214
    invoke-static {v11, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const/16 v12, 0x20

    if-ne v7, v12, :cond_6

    .line 217
    iget-object v9, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mObjBuffer:[Ljava/lang/Object;

    add-int/lit8 v11, v4, 0x1

    aget-object v4, v9, v4

    invoke-static {v4}, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->castToProps(Ljava/lang/Object;)Lcom/facebook/react/bridge/ReadableMap;

    const-string v4, "<hidden>"

    const-string v9, "UPDATE PROPS [%d]: %s\n"

    new-array v10, v10, [Ljava/lang/Object;

    .line 222
    iget-object v12, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v13, v3, 0x1

    aget v3, v12, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v2

    aput-object v4, v10, v8

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v11

    :goto_3
    move v3, v13

    goto/16 :goto_4

    :cond_6
    const/16 v12, 0x40

    if-ne v7, v12, :cond_7

    add-int/lit8 v4, v4, 0x1

    const-string v9, "UPDATE STATE [%d]\n"

    new-array v10, v8, [Ljava/lang/Object;

    .line 225
    iget-object v11, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v12, v3, 0x1

    aget v3, v11, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v2

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_7
    const/16 v12, 0x80

    const/4 v13, 0x5

    if-ne v7, v12, :cond_8

    const-string v12, "UPDATE LAYOUT [%d]: x:%d y:%d w:%d h:%d layoutDirection:%d\n"

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    .line 227
    iget-object v15, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v16, v3, 0x1

    aget v3, v15, v3

    .line 230
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v2

    iget-object v3, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v15, v16, 0x1

    aget v3, v3, v16

    .line 231
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v8

    iget-object v3, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v16, v15, 0x1

    aget v3, v3, v15

    .line 232
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v10

    iget-object v3, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v10, v16, 0x1

    aget v3, v3, v16

    .line 233
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v9

    iget-object v3, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v9, v10, 0x1

    aget v3, v3, v10

    .line 234
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v11

    iget-object v3, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v10, v9, 0x1

    aget v3, v3, v9

    .line 235
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v13

    .line 228
    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v10

    goto :goto_4

    :cond_8
    const/16 v12, 0x200

    if-ne v7, v12, :cond_9

    const-string v12, "UPDATE PADDING [%d]: top:%d right:%d bottom:%d left:%d\n"

    new-array v13, v13, [Ljava/lang/Object;

    .line 237
    iget-object v14, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v15, v3, 0x1

    aget v3, v14, v3

    .line 240
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v13, v2

    iget-object v3, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v14, v15, 0x1

    aget v3, v3, v15

    .line 241
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v13, v8

    iget-object v3, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v15, v14, 0x1

    aget v3, v3, v14

    .line 242
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v13, v10

    iget-object v3, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v10, v15, 0x1

    aget v3, v3, v15

    .line 243
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v13, v9

    iget-object v3, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v9, v10, 0x1

    aget v3, v3, v10

    .line 244
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v13, v11

    .line 238
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v9

    goto :goto_4

    :cond_9
    const/16 v9, 0x100

    if-ne v7, v9, :cond_a

    add-int/lit8 v4, v4, 0x1

    const-string v9, "UPDATE EVENTEMITTER [%d]\n"

    new-array v10, v8, [Ljava/lang/Object;

    .line 247
    iget-object v11, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    add-int/lit8 v12, v3, 0x1

    aget v3, v11, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v2

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 249
    :cond_a
    sget-object v4, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "String so far: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid type argument to IntBufferBatchMountItem: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " at index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 260
    sget-object v3, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->TAG:Ljava/lang/String;

    const-string v4, "Caught exception trying to print"

    invoke-static {v3, v4, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 263
    :goto_5
    iget v4, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBufferLen:I

    if-ge v3, v4, :cond_c

    .line 264
    iget-object v4, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mIntBuffer:[I

    aget v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    .line 265
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 267
    :cond_c
    sget-object v3, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_6
    iget v0, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mObjBufferLen:I

    if-ge v2, v0, :cond_e

    .line 270
    sget-object v0, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->TAG:Ljava/lang/String;

    iget-object v3, v1, Lcom/facebook/react/fabric/mounting/mountitems/IntBufferBatchMountItem;->mObjBuffer:[Ljava/lang/Object;

    aget-object v4, v3, v2

    if-eqz v4, :cond_d

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_d
    const-string v3, "null"

    :goto_7
    invoke-static {v0, v3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_e
    const-string v0, ""

    return-object v0
.end method
