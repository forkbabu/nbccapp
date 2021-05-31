.class public Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;
.super Ljava/lang/Object;
.source "SafeAreaViewLocalData.java"


# instance fields
.field private mEdges:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;",
            ">;"
        }
    .end annotation
.end field

.field private mInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;

.field private mMode:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;


# direct methods
.method public constructor <init>(Lcom/th3rdwave/safeareacontext/EdgeInsets;Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/th3rdwave/safeareacontext/EdgeInsets;",
            "Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;",
            "Ljava/util/EnumSet<",
            "Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->mInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;

    .line 12
    iput-object p2, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->mMode:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    .line 13
    iput-object p3, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->mEdges:Ljava/util/EnumSet;

    return-void
.end method


# virtual methods
.method public getEdges()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->mEdges:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getInsets()Lcom/th3rdwave/safeareacontext/EdgeInsets;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->mInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;

    return-object v0
.end method

.method public getMode()Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->mMode:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    return-object v0
.end method
