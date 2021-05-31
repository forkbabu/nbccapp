.class public final enum Lcom/swmansion/gesturehandler/PointerEventsConfig;
.super Ljava/lang/Enum;
.source "PointerEventsConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/swmansion/gesturehandler/PointerEventsConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swmansion/gesturehandler/PointerEventsConfig;

.field public static final enum AUTO:Lcom/swmansion/gesturehandler/PointerEventsConfig;

.field public static final enum BOX_NONE:Lcom/swmansion/gesturehandler/PointerEventsConfig;

.field public static final enum BOX_ONLY:Lcom/swmansion/gesturehandler/PointerEventsConfig;

.field public static final enum NONE:Lcom/swmansion/gesturehandler/PointerEventsConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 8
    new-instance v0, Lcom/swmansion/gesturehandler/PointerEventsConfig;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/swmansion/gesturehandler/PointerEventsConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swmansion/gesturehandler/PointerEventsConfig;->NONE:Lcom/swmansion/gesturehandler/PointerEventsConfig;

    .line 13
    new-instance v1, Lcom/swmansion/gesturehandler/PointerEventsConfig;

    const-string v3, "BOX_NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/swmansion/gesturehandler/PointerEventsConfig;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/swmansion/gesturehandler/PointerEventsConfig;->BOX_NONE:Lcom/swmansion/gesturehandler/PointerEventsConfig;

    .line 18
    new-instance v3, Lcom/swmansion/gesturehandler/PointerEventsConfig;

    const-string v5, "BOX_ONLY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/swmansion/gesturehandler/PointerEventsConfig;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/swmansion/gesturehandler/PointerEventsConfig;->BOX_ONLY:Lcom/swmansion/gesturehandler/PointerEventsConfig;

    .line 23
    new-instance v5, Lcom/swmansion/gesturehandler/PointerEventsConfig;

    const-string v7, "AUTO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/swmansion/gesturehandler/PointerEventsConfig;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/swmansion/gesturehandler/PointerEventsConfig;->AUTO:Lcom/swmansion/gesturehandler/PointerEventsConfig;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/swmansion/gesturehandler/PointerEventsConfig;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 3
    sput-object v7, Lcom/swmansion/gesturehandler/PointerEventsConfig;->$VALUES:[Lcom/swmansion/gesturehandler/PointerEventsConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swmansion/gesturehandler/PointerEventsConfig;
    .locals 1

    .line 3
    const-class v0, Lcom/swmansion/gesturehandler/PointerEventsConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swmansion/gesturehandler/PointerEventsConfig;

    return-object p0
.end method

.method public static values()[Lcom/swmansion/gesturehandler/PointerEventsConfig;
    .locals 1

    .line 3
    sget-object v0, Lcom/swmansion/gesturehandler/PointerEventsConfig;->$VALUES:[Lcom/swmansion/gesturehandler/PointerEventsConfig;

    invoke-virtual {v0}, [Lcom/swmansion/gesturehandler/PointerEventsConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swmansion/gesturehandler/PointerEventsConfig;

    return-object v0
.end method
