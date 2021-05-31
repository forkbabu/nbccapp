.class public final enum Lcom/swmansion/rnscreens/Screen$ActivityState;
.super Ljava/lang/Enum;
.source "Screen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActivityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/swmansion/rnscreens/Screen$ActivityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swmansion/rnscreens/Screen$ActivityState;

.field public static final enum INACTIVE:Lcom/swmansion/rnscreens/Screen$ActivityState;

.field public static final enum ON_TOP:Lcom/swmansion/rnscreens/Screen$ActivityState;

.field public static final enum TRANSITIONING_OR_BELOW_TOP:Lcom/swmansion/rnscreens/Screen$ActivityState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 42
    new-instance v0, Lcom/swmansion/rnscreens/Screen$ActivityState;

    const-string v1, "INACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/swmansion/rnscreens/Screen$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swmansion/rnscreens/Screen$ActivityState;->INACTIVE:Lcom/swmansion/rnscreens/Screen$ActivityState;

    .line 43
    new-instance v1, Lcom/swmansion/rnscreens/Screen$ActivityState;

    const-string v3, "TRANSITIONING_OR_BELOW_TOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/swmansion/rnscreens/Screen$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/swmansion/rnscreens/Screen$ActivityState;->TRANSITIONING_OR_BELOW_TOP:Lcom/swmansion/rnscreens/Screen$ActivityState;

    .line 44
    new-instance v3, Lcom/swmansion/rnscreens/Screen$ActivityState;

    const-string v5, "ON_TOP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/swmansion/rnscreens/Screen$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/swmansion/rnscreens/Screen$ActivityState;->ON_TOP:Lcom/swmansion/rnscreens/Screen$ActivityState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/swmansion/rnscreens/Screen$ActivityState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 41
    sput-object v5, Lcom/swmansion/rnscreens/Screen$ActivityState;->$VALUES:[Lcom/swmansion/rnscreens/Screen$ActivityState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swmansion/rnscreens/Screen$ActivityState;
    .locals 1

    .line 41
    const-class v0, Lcom/swmansion/rnscreens/Screen$ActivityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swmansion/rnscreens/Screen$ActivityState;

    return-object p0
.end method

.method public static values()[Lcom/swmansion/rnscreens/Screen$ActivityState;
    .locals 1

    .line 41
    sget-object v0, Lcom/swmansion/rnscreens/Screen$ActivityState;->$VALUES:[Lcom/swmansion/rnscreens/Screen$ActivityState;

    invoke-virtual {v0}, [Lcom/swmansion/rnscreens/Screen$ActivityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swmansion/rnscreens/Screen$ActivityState;

    return-object v0
.end method
