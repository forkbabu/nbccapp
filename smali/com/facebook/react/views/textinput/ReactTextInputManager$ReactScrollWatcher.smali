.class Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;
.super Ljava/lang/Object;
.source "ReactTextInputManager.java"

# interfaces
.implements Lcom/facebook/react/views/textinput/ScrollWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/textinput/ReactTextInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReactScrollWatcher"
.end annotation


# instance fields
.field private mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field private mPreviousHoriz:I

.field private mPreviousVert:I

.field private mReactEditText:Lcom/facebook/react/views/textinput/ReactEditText;


# direct methods
.method public constructor <init>(Lcom/facebook/react/views/textinput/ReactEditText;)V
    .locals 1

    .line 1124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1125
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;->mReactEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1126
    invoke-static {p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getReactContext(Landroid/view/View;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 1127
    invoke-static {v0, p1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->access$000(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    return-void
.end method


# virtual methods
.method public onScrollChanged(IIII)V
    .locals 10

    .line 1132
    iget p3, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;->mPreviousHoriz:I

    if-ne p3, p1, :cond_0

    iget p3, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;->mPreviousVert:I

    if-eq p3, p2, :cond_1

    .line 1133
    :cond_0
    iget-object p3, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;->mReactEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1135
    invoke-virtual {p3}, Lcom/facebook/react/views/textinput/ReactEditText;->getId()I

    move-result v0

    sget-object v1, Lcom/facebook/react/views/scroll/ScrollEventType;->SCROLL:Lcom/facebook/react/views/scroll/ScrollEventType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object p3, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;->mReactEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1143
    invoke-virtual {p3}, Lcom/facebook/react/views/textinput/ReactEditText;->getWidth()I

    move-result v8

    iget-object p3, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;->mReactEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 1144
    invoke-virtual {p3}, Lcom/facebook/react/views/textinput/ReactEditText;->getHeight()I

    move-result v9

    move v2, p1

    move v3, p2

    .line 1134
    invoke-static/range {v0 .. v9}, Lcom/facebook/react/views/scroll/ScrollEvent;->obtain(ILcom/facebook/react/views/scroll/ScrollEventType;IIFFIIII)Lcom/facebook/react/views/scroll/ScrollEvent;

    move-result-object p3

    .line 1146
    iget-object p4, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    invoke-interface {p4, p3}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 1148
    iput p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;->mPreviousHoriz:I

    .line 1149
    iput p2, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactScrollWatcher;->mPreviousVert:I

    :cond_1
    return-void
.end method
