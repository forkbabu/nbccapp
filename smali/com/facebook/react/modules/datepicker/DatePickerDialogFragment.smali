.class public Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "DatePickerDialogFragment.java"


# static fields
.field private static final DEFAULT_MIN_DATE:J = -0x20251fe2401L


# instance fields
.field private mOnDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createDialog(Landroid/os/Bundle;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;)Landroid/app/Dialog;
    .locals 10

    .line 42
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string v1, "date"

    .line 43
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v2, 0x2

    .line 47
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v3, 0x5

    .line 48
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 50
    sget-object v3, Lcom/facebook/react/modules/datepicker/DatePickerMode;->DEFAULT:Lcom/facebook/react/modules/datepicker/DatePickerMode;

    const/4 v4, 0x0

    if-eqz p0, :cond_1

    const-string v5, "mode"

    .line 51
    invoke-virtual {p0, v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 54
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-static {v3}, Lcom/facebook/react/modules/datepicker/DatePickerMode;->valueOf(Ljava/lang/String;)Lcom/facebook/react/modules/datepicker/DatePickerMode;

    move-result-object v3

    .line 59
    :cond_1
    sget-object v5, Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment$1;->$SwitchMap$com$facebook$react$modules$datepicker$DatePickerMode:[I

    invoke-virtual {v3}, Lcom/facebook/react/modules/datepicker/DatePickerMode;->ordinal()I

    move-result v3

    aget v3, v5, v3

    const/4 v9, 0x0

    if-eq v3, v1, :cond_4

    if-eq v3, v2, :cond_3

    const/4 v1, 0x3

    if-eq v3, v1, :cond_2

    goto :goto_1

    .line 87
    :cond_2
    new-instance v1, Lcom/facebook/react/modules/datepicker/DismissableDatePickerDialog;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move v5, v6

    move v6, v7

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/facebook/react/modules/datepicker/DismissableDatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 74
    :cond_3
    new-instance v1, Lcom/facebook/react/modules/datepicker/DismissableDatePickerDialog;

    const v4, 0x1030073

    move-object v2, v1

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/facebook/react/modules/datepicker/DismissableDatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 83
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 61
    :cond_4
    new-instance v1, Lcom/facebook/react/modules/datepicker/DismissableDatePickerDialog;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CalendarDatePickerDialog"

    const-string v5, "style"

    .line 66
    invoke-virtual {v2, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object v2, v1

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/facebook/react/modules/datepicker/DismissableDatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    :goto_0
    move-object v4, v1

    .line 92
    :goto_1
    invoke-virtual {v4}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    const/16 p2, 0xe

    const/16 v1, 0xd

    const/16 v2, 0xc

    const/16 v3, 0xb

    if-eqz p0, :cond_5

    const-string v5, "minDate"

    .line 94
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 98
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 99
    invoke-virtual {v0, v3, v9}, Ljava/util/Calendar;->set(II)V

    .line 100
    invoke-virtual {v0, v2, v9}, Ljava/util/Calendar;->set(II)V

    .line 101
    invoke-virtual {v0, v1, v9}, Ljava/util/Calendar;->set(II)V

    .line 102
    invoke-virtual {v0, p2, v9}, Ljava/util/Calendar;->set(II)V

    .line 103
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Landroid/widget/DatePicker;->setMinDate(J)V

    goto :goto_2

    :cond_5
    const-wide v5, -0x20251fe2401L

    .line 107
    invoke-virtual {p1, v5, v6}, Landroid/widget/DatePicker;->setMinDate(J)V

    :goto_2
    if-eqz p0, :cond_6

    const-string v5, "maxDate"

    .line 109
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 111
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0x17

    .line 112
    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0x3b

    .line 113
    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->set(II)V

    .line 114
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0x3e7

    .line 115
    invoke-virtual {v0, p2, p0}, Ljava/util/Calendar;->set(II)V

    .line 116
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/widget/DatePicker;->setMaxDate(J)V

    :cond_6
    return-object v4
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 37
    invoke-virtual {p0}, Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment;->mOnDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-static {p1, v0, v1}, Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment;->createDialog(Landroid/os/Bundle;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 124
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 125
    iget-object v0, p0, Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method setOnDateSetListener(Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment;->mOnDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method
