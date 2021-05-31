.class Lcom/facebook/react/views/scroll/ReactScrollView$1;
.super Ljava/lang/Object;
.source "ReactScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/scroll/ReactScrollView;->handlePostTouchScrolling(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mRunning:Z

.field private mSnappingToPage:Z

.field private mStableFrames:I

.field final synthetic this$0:Lcom/facebook/react/views/scroll/ReactScrollView;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/scroll/ReactScrollView;)V
    .locals 1

    .line 511
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 513
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->mSnappingToPage:Z

    const/4 v0, 0x1

    .line 514
    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->mRunning:Z

    .line 515
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->mStableFrames:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 519
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    invoke-static {v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->access$000(Lcom/facebook/react/views/scroll/ReactScrollView;)Z

    move-result v0

    const-wide/16 v1, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    invoke-static {v0, v3}, Lcom/facebook/react/views/scroll/ReactScrollView;->access$002(Lcom/facebook/react/views/scroll/ReactScrollView;Z)Z

    .line 522
    iput v3, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->mStableFrames:I

    .line 523
    iput-boolean v4, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->mRunning:Z

    goto :goto_1

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    invoke-static {v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->access$100(Lcom/facebook/react/views/scroll/ReactScrollView;)V

    .line 535
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->mStableFrames:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->mStableFrames:I

    const/4 v5, 0x3

    if-ge v0, v5, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 536
    :goto_0
    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->mRunning:Z

    .line 538
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    invoke-static {v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->access$200(Lcom/facebook/react/views/scroll/ReactScrollView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->mSnappingToPage:Z

    if-nez v0, :cond_2

    .line 542
    iput-boolean v4, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->mSnappingToPage:Z

    .line 543
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    invoke-static {v0, v3}, Lcom/facebook/react/views/scroll/ReactScrollView;->access$300(Lcom/facebook/react/views/scroll/ReactScrollView;I)V

    .line 544
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    invoke-static {v0, p0, v1, v2}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 547
    :cond_2
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    invoke-static {v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->access$400(Lcom/facebook/react/views/scroll/ReactScrollView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 548
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    invoke-static {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollMomentumEndEvent(Landroid/view/ViewGroup;)V

    .line 550
    :cond_3
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    invoke-static {v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->access$500(Lcom/facebook/react/views/scroll/ReactScrollView;)V

    .line 555
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->mRunning:Z

    if-eqz v0, :cond_4

    .line 556
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    invoke-static {v0, p0, v1, v2}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 559
    :cond_4
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/react/views/scroll/ReactScrollView;->access$602(Lcom/facebook/react/views/scroll/ReactScrollView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :goto_2
    return-void
.end method
