.class Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollAnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/AutoScrollHelper;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/AutoScrollHelper;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 690
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    iget-boolean v3, v3, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-nez v3, :cond_0

    .line 718
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    iget-boolean v3, v3, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    if-eqz v3, :cond_1

    .line 695
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    iput-boolean v4, v3, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    .line 696
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    iget-object v3, v3, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v3}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->start()V

    .line 699
    :cond_1
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    iget-object v2, v3, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    .line 700
    .local v2, "scroller":Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
    invoke-virtual {v2}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v3

    if-nez v3, :cond_3

    .line 701
    :cond_2
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    iput-boolean v4, v3, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    goto :goto_0

    .line 705
    :cond_3
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    iget-boolean v3, v3, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    if-eqz v3, :cond_4

    .line 706
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    iput-boolean v4, v3, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    .line 707
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/AutoScrollHelper;->cancelTargetTouch()V

    .line 710
    :cond_4
    invoke-virtual {v2}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->computeScrollDelta()V

    .line 712
    invoke-virtual {v2}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getDeltaX()I

    move-result v0

    .line 713
    .local v0, "deltaX":I
    invoke-virtual {v2}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getDeltaY()I

    move-result v1

    .line 714
    .local v1, "deltaY":I
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/widget/AutoScrollHelper;->scrollTargetBy(II)V

    .line 717
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    iget-object v3, v3, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-static {v3, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
