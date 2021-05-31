.class public final enum Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;
.super Ljava/lang/Enum;
.source "ScreenStackHeaderSubview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

.field public static final enum BACK:Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

.field public static final enum CENTER:Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

.field public static final enum LEFT:Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

.field public static final enum RIGHT:Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 13
    new-instance v0, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;->LEFT:Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    .line 14
    new-instance v1, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    const-string v3, "CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;->CENTER:Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    .line 15
    new-instance v3, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;->RIGHT:Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    .line 16
    new-instance v5, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    const-string v7, "BACK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;->BACK:Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 12
    sput-object v7, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;->$VALUES:[Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;
    .locals 1

    .line 12
    const-class v0, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    return-object p0
.end method

.method public static values()[Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;
    .locals 1

    .line 12
    sget-object v0, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;->$VALUES:[Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    invoke-virtual {v0}, [Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    return-object v0
.end method
