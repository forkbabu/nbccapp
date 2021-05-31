.class Lcom/th3rdwave/safeareacontext/InsetsChangeEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "InsetsChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/th3rdwave/safeareacontext/InsetsChangeEvent;",
        ">;"
    }
.end annotation


# static fields
.field static final EVENT_NAME:Ljava/lang/String; = "topInsetsChange"


# instance fields
.field private mFrame:Lcom/th3rdwave/safeareacontext/Rect;

.field private mInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;


# direct methods
.method constructor <init>(ILcom/th3rdwave/safeareacontext/EdgeInsets;Lcom/th3rdwave/safeareacontext/Rect;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    .line 17
    iput-object p2, p0, Lcom/th3rdwave/safeareacontext/InsetsChangeEvent;->mInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;

    .line 18
    iput-object p3, p0, Lcom/th3rdwave/safeareacontext/InsetsChangeEvent;->mFrame:Lcom/th3rdwave/safeareacontext/Rect;

    return-void
.end method


# virtual methods
.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3

    .line 28
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/th3rdwave/safeareacontext/InsetsChangeEvent;->mInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;

    invoke-static {v1}, Lcom/th3rdwave/safeareacontext/SerializationUtils;->edgeInsetsToJsMap(Lcom/th3rdwave/safeareacontext/EdgeInsets;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "insets"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 30
    iget-object v1, p0, Lcom/th3rdwave/safeareacontext/InsetsChangeEvent;->mFrame:Lcom/th3rdwave/safeareacontext/Rect;

    invoke-static {v1}, Lcom/th3rdwave/safeareacontext/SerializationUtils;->rectToJsMap(Lcom/th3rdwave/safeareacontext/Rect;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "frame"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 31
    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/InsetsChangeEvent;->getViewTag()I

    move-result v1

    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/InsetsChangeEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "topInsetsChange"

    return-object v0
.end method
