.class public Lcom/facebook/react/bridge/ReactSoftException;
.super Ljava/lang/Object;
.source "ReactSoftException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/bridge/ReactSoftException$ReactSoftExceptionListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final sListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/ReactSoftException$ReactSoftExceptionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/facebook/react/bridge/ReactSoftException;->sListeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListener(Lcom/facebook/react/bridge/ReactSoftException$ReactSoftExceptionListener;)V
    .locals 2

    .line 30
    sget-object v0, Lcom/facebook/react/bridge/ReactSoftException;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static clearListeners()V
    .locals 1

    .line 42
    sget-object v0, Lcom/facebook/react/bridge/ReactSoftException;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 47
    sget-object v0, Lcom/facebook/react/bridge/ReactSoftException;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReactSoftException$ReactSoftExceptionListener;

    .line 49
    invoke-interface {v1, p0, p1}, Lcom/facebook/react/bridge/ReactSoftException$ReactSoftExceptionListener;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v0, "Unhandled SoftException"

    .line 52
    invoke-static {p0, v0, p1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static removeListener(Lcom/facebook/react/bridge/ReactSoftException$ReactSoftExceptionListener;)V
    .locals 1

    .line 37
    sget-object v0, Lcom/facebook/react/bridge/ReactSoftException;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
