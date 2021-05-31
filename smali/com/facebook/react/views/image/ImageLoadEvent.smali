.class public Lcom/facebook/react/views/image/ImageLoadEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "ImageLoadEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/views/image/ImageLoadEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final ON_ERROR:I = 0x1

.field public static final ON_LOAD:I = 0x2

.field public static final ON_LOAD_END:I = 0x3

.field public static final ON_LOAD_START:I = 0x4

.field public static final ON_PROGRESS:I = 0x5


# instance fields
.field private final mErrorMessage:Ljava/lang/String;

.field private final mEventType:I

.field private final mHeight:I

.field private final mLoaded:I

.field private final mSourceUri:Ljava/lang/String;

.field private final mTotal:I

.field private final mWidth:I


# direct methods
.method private constructor <init>(II)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 66
    invoke-direct/range {v0 .. v8}, Lcom/facebook/react/views/image/ImageLoadEvent;-><init>(IILjava/lang/String;Ljava/lang/String;IIII)V

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    .line 79
    iput p2, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mEventType:I

    .line 80
    iput-object p3, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mErrorMessage:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mSourceUri:Ljava/lang/String;

    .line 82
    iput p5, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mWidth:I

    .line 83
    iput p6, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mHeight:I

    .line 84
    iput p7, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mLoaded:I

    .line 85
    iput p8, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mTotal:I

    return-void
.end method

.method public static final createErrorEvent(ILjava/lang/Throwable;)Lcom/facebook/react/views/image/ImageLoadEvent;
    .locals 10

    .line 58
    new-instance v9, Lcom/facebook/react/views/image/ImageLoadEvent;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/facebook/react/views/image/ImageLoadEvent;-><init>(IILjava/lang/String;Ljava/lang/String;IIII)V

    return-object v9
.end method

.method private createEventDataSource()Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 141
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mSourceUri:Ljava/lang/String;

    const-string v2, "uri"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget v1, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mWidth:I

    int-to-double v1, v1

    const-string v3, "width"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 144
    iget v1, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mHeight:I

    int-to-double v1, v1

    const-string v3, "height"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method public static final createLoadEndEvent(I)Lcom/facebook/react/views/image/ImageLoadEvent;
    .locals 2

    .line 62
    new-instance v0, Lcom/facebook/react/views/image/ImageLoadEvent;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/views/image/ImageLoadEvent;-><init>(II)V

    return-object v0
.end method

.method public static final createLoadEvent(ILjava/lang/String;II)Lcom/facebook/react/views/image/ImageLoadEvent;
    .locals 10

    .line 54
    new-instance v9, Lcom/facebook/react/views/image/ImageLoadEvent;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/facebook/react/views/image/ImageLoadEvent;-><init>(IILjava/lang/String;Ljava/lang/String;IIII)V

    return-object v9
.end method

.method public static final createLoadStartEvent(I)Lcom/facebook/react/views/image/ImageLoadEvent;
    .locals 2

    .line 39
    new-instance v0, Lcom/facebook/react/views/image/ImageLoadEvent;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/views/image/ImageLoadEvent;-><init>(II)V

    return-object v0
.end method

.method public static final createProgressEvent(ILjava/lang/String;II)Lcom/facebook/react/views/image/ImageLoadEvent;
    .locals 10

    .line 49
    new-instance v9, Lcom/facebook/react/views/image/ImageLoadEvent;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move v1, p0

    move-object v4, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/facebook/react/views/image/ImageLoadEvent;-><init>(IILjava/lang/String;Ljava/lang/String;IIII)V

    return-object v9
.end method

.method public static eventNameForType(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const-string p0, "topProgress"

    return-object p0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid image event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "topLoadStart"

    return-object p0

    :cond_2
    const-string p0, "topLoadEnd"

    return-object p0

    :cond_3
    const-string p0, "topLoad"

    return-object p0

    :cond_4
    const-string p0, "topError"

    return-object p0
.end method


# virtual methods
.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3

    .line 121
    iget v0, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 124
    iget v1, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mLoaded:I

    const-string v2, "loaded"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 125
    iget v1, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mTotal:I

    const-string v2, "total"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 128
    :cond_1
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 129
    invoke-direct {p0}, Lcom/facebook/react/views/image/ImageLoadEvent;->createEventDataSource()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "source"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 132
    :cond_2
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mErrorMessage:Ljava/lang/String;

    const-string v2, "error"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ImageLoadEvent;->getViewTag()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ImageLoadEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public getCoalescingKey()S
    .locals 1

    .line 114
    iget v0, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mEventType:I

    int-to-short v0, v0

    return v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 107
    iget v0, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mEventType:I

    invoke-static {v0}, Lcom/facebook/react/views/image/ImageLoadEvent;->eventNameForType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
