.class public Lcom/facebook/react/viewmanagers/AndroidDropdownPickerManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "AndroidDropdownPickerManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U::",
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface<",
        "TT;>;:",
        "Lcom/facebook/react/viewmanagers/AndroidDropdownPickerManagerInterface<",
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

    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    return-void
.end method


# virtual methods
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

    .line 28
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "selected"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "items"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "color"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "prompt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "enabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 42
    :pswitch_0
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/AndroidDropdownPickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/AndroidDropdownPickerManagerInterface;

    if-nez p3, :cond_5

    goto :goto_1

    :cond_5
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_1
    invoke-interface {p2, p1, v2}, Lcom/facebook/react/viewmanagers/AndroidDropdownPickerManagerInterface;->setSelected(Landroid/view/View;I)V

    goto :goto_5

    .line 36
    :pswitch_1
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/AndroidDropdownPickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/AndroidDropdownPickerManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/AndroidDropdownPickerManagerInterface;->setItems(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_5

    .line 30
    :pswitch_2
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/AndroidDropdownPickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/AndroidDropdownPickerManagerInterface;

    if-nez p3, :cond_6

    const/4 p3, 0x0

    goto :goto_2

    :cond_6
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :goto_2
    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/AndroidDropdownPickerManagerInterface;->setColor(Landroid/view/View;Ljava/lang/Integer;)V

    goto :goto_5

    .line 39
    :pswitch_3
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/AndroidDropdownPickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/AndroidDropdownPickerManagerInterface;

    if-nez p3, :cond_7

    const-string p3, ""

    goto :goto_3

    :cond_7
    check-cast p3, Ljava/lang/String;

    :goto_3
    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/AndroidDropdownPickerManagerInterface;->setPrompt(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_5

    .line 33
    :pswitch_4
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/AndroidDropdownPickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/AndroidDropdownPickerManagerInterface;

    if-nez p3, :cond_8

    goto :goto_4

    :cond_8
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_4
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/AndroidDropdownPickerManagerInterface;->setEnabled(Landroid/view/View;Z)V

    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5ff074bf -> :sswitch_4
        -0x3a66a69c -> :sswitch_3
        0x5a72f63 -> :sswitch_2
        0x5fde7c0 -> :sswitch_1
        0x4705f29b -> :sswitch_0
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
