.class public Lcom/facebook/react/viewmanagers/DatePickerManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "DatePickerManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U::",
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface<",
        "TT;>;:",
        "Lcom/facebook/react/viewmanagers/DatePickerManagerInterface<",
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
.method public receiveCommand(Lcom/facebook/react/viewmanagers/DatePickerManagerInterface;Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/viewmanagers/DatePickerManagerInterface<",
            "TT;>;TT;",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    const-string v0, "setNativeDate"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 58
    invoke-interface {p4, p3}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide p3

    double-to-float p3, p3

    invoke-interface {p1, p2, p3}, Lcom/facebook/react/viewmanagers/DatePickerManagerInterface;->setNativeDate(Landroid/view/View;F)V

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

    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "maximumDate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "initialDate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "minimumDate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "timeZoneOffsetInMinutes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "locale"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "minuteInterval"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_0
    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_0

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 36
    :pswitch_0
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/DatePickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/DatePickerManagerInterface;

    if-nez p3, :cond_8

    goto :goto_1

    :cond_8
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    :goto_1
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/DatePickerManagerInterface;->setMaximumDate(Landroid/view/View;F)V

    goto/16 :goto_8

    .line 30
    :pswitch_1
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/DatePickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/DatePickerManagerInterface;

    if-nez p3, :cond_9

    goto :goto_2

    :cond_9
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    :goto_2
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/DatePickerManagerInterface;->setInitialDate(Landroid/view/View;F)V

    goto :goto_8

    .line 39
    :pswitch_2
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/DatePickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/DatePickerManagerInterface;

    if-nez p3, :cond_a

    goto :goto_3

    :cond_a
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    :goto_3
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/DatePickerManagerInterface;->setMinimumDate(Landroid/view/View;F)V

    goto :goto_8

    .line 45
    :pswitch_3
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/DatePickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/DatePickerManagerInterface;

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/DatePickerManagerInterface;->setMode(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_8

    .line 27
    :pswitch_4
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/DatePickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/DatePickerManagerInterface;

    if-nez p3, :cond_b

    goto :goto_4

    :cond_b
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    :goto_4
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/DatePickerManagerInterface;->setDate(Landroid/view/View;F)V

    goto :goto_8

    .line 48
    :pswitch_5
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/DatePickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/DatePickerManagerInterface;

    if-nez p3, :cond_c

    goto :goto_5

    :cond_c
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    :goto_5
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/DatePickerManagerInterface;->setTimeZoneOffsetInMinutes(Landroid/view/View;F)V

    goto :goto_8

    .line 33
    :pswitch_6
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/DatePickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/DatePickerManagerInterface;

    if-nez p3, :cond_d

    const/4 p3, 0x0

    goto :goto_6

    :cond_d
    check-cast p3, Ljava/lang/String;

    :goto_6
    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/DatePickerManagerInterface;->setLocale(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_8

    .line 42
    :pswitch_7
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/DatePickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/DatePickerManagerInterface;

    if-nez p3, :cond_e

    goto :goto_7

    :cond_e
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/DatePickerManagerInterface;->setMinuteInterval(Landroid/view/View;Ljava/lang/Integer;)V

    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4fd76507 -> :sswitch_7
        -0x4169f1a6 -> :sswitch_6
        -0x117324b2 -> :sswitch_5
        0x2eefae -> :sswitch_4
        0x3339a3 -> :sswitch_3
        0x3c113cdc -> :sswitch_2
        0x497c7912 -> :sswitch_1
        0x647209ee -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
