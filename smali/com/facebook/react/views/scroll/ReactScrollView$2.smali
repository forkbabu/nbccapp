.class Lcom/facebook/react/views/scroll/ReactScrollView$2;
.super Ljava/lang/Object;
.source "ReactScrollView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/scroll/ReactScrollView;->reactSmoothScrollTo(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/scroll/ReactScrollView;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/scroll/ReactScrollView;)V
    .locals 0

    .line 847
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView$2;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "scrollX"

    .line 850
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "scrollY"

    .line 851
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 852
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView$2;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/react/views/scroll/ReactScrollView;->scrollTo(II)V

    return-void
.end method
