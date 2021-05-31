.class public Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "PullToRefreshViewManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U::",
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface<",
        "TT;>;:",
        "Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface<",
        "TT;>;>",
        "Lcom/facebook/react/uimanager/BaseViewManagerDelegate<",
        "TT;TU;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    return-void
.end method


# virtual methods
.method public receiveCommand(Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface;Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface<",
            "TT;>;TT;",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    const-string v0, "setNativeRefreshing"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 47
    invoke-interface {p4, p3}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface;->setNativeRefreshing(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method

.method public setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "tintColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "title"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "refreshing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "titleColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 28
    :pswitch_0
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface;->setTintColor(Landroid/view/View;Ljava/lang/Integer;)V

    goto :goto_3

    .line 34
    :pswitch_1
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface;

    if-nez p3, :cond_4

    const/4 p3, 0x0

    goto :goto_1

    :cond_4
    check-cast p3, Ljava/lang/String;

    :goto_1
    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface;->setTitle(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_3

    .line 37
    :pswitch_2
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface;

    if-nez p3, :cond_5

    goto :goto_2

    :cond_5
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_2
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface;->setRefreshing(Landroid/view/View;Z)V

    goto :goto_3

    .line 31
    :pswitch_3
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface;->setTitleColor(Landroid/view/View;Ljava/lang/Integer;)V

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6b402c15 -> :sswitch_3
        -0x132eacd9 -> :sswitch_2
        0x6942258 -> :sswitch_1
        0x4f219128 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
