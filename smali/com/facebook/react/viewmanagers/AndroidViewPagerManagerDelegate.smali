.class public Lcom/facebook/react/viewmanagers/AndroidViewPagerManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "AndroidViewPagerManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U::",
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface<",
        "TT;>;:",
        "Lcom/facebook/react/viewmanagers/AndroidViewPagerManagerInterface<",
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

    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    return-void
.end method


# virtual methods
.method public receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "setPageWithoutAnimation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "setPage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/AndroidViewPagerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/AndroidViewPagerManagerInterface;

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result p3

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/AndroidViewPagerManagerInterface;->setPage(Landroid/view/View;I)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/AndroidViewPagerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/AndroidViewPagerManagerInterface;

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result p3

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/AndroidViewPagerManagerInterface;->setPageWithoutAnimation(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "peekEnabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "initialPage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "pageMargin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "keyboardDismissMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "scrollEnabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 42
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 33
    :pswitch_0
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/AndroidViewPagerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/AndroidViewPagerManagerInterface;

    if-nez p3, :cond_5

    goto :goto_1

    :cond_5
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_1
    invoke-interface {p2, p1, v2}, Lcom/facebook/react/viewmanagers/AndroidViewPagerManagerInterface;->setPeekEnabled(Landroid/view/View;Z)V

    goto :goto_5

    .line 27
    :pswitch_1
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/AndroidViewPagerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/AndroidViewPagerManagerInterface;

    if-nez p3, :cond_6

    goto :goto_2

    :cond_6
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_2
    invoke-interface {p2, p1, v2}, Lcom/facebook/react/viewmanagers/AndroidViewPagerManagerInterface;->setInitialPage(Landroid/view/View;I)V

    goto :goto_5

    .line 30
    :pswitch_2
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/AndroidViewPagerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/AndroidViewPagerManagerInterface;

    if-nez p3, :cond_7

    goto :goto_3

    :cond_7
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_3
    invoke-interface {p2, p1, v2}, Lcom/facebook/react/viewmanagers/AndroidViewPagerManagerInterface;->setPageMargin(Landroid/view/View;I)V

    goto :goto_5

    .line 36
    :pswitch_3
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/AndroidViewPagerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/AndroidViewPagerManagerInterface;

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/AndroidViewPagerManagerInterface;->setKeyboardDismissMode(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_5

    .line 39
    :pswitch_4
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/AndroidViewPagerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/AndroidViewPagerManagerInterface;

    if-nez p3, :cond_8

    goto :goto_4

    :cond_8
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_4
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidViewPagerManagerInterface;->setScrollEnabled(Landroid/view/View;Z)V

    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x449b944c -> :sswitch_4
        -0x2d8e671a -> :sswitch_3
        0x416f6d1d -> :sswitch_2
        0x4981ebf3 -> :sswitch_1
        0x726d8566 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
