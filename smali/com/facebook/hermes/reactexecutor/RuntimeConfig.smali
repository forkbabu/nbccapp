.class public final Lcom/facebook/hermes/reactexecutor/RuntimeConfig;
.super Ljava/lang/Object;
.source "RuntimeConfig.java"


# instance fields
.field public heapSizeMB:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(J)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/facebook/hermes/reactexecutor/RuntimeConfig;->heapSizeMB:J

    return-void
.end method
