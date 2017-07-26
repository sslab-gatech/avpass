.class public Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mFinalVisibility:I

.field final synthetic this$0:Landroid/support/v7/widget/ScrollingTabContainerView;


# direct methods
.method protected constructor <init>(Landroid/support/v7/widget/ScrollingTabContainerView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v7/widget/ScrollingTabContainerView;

    .prologue
    .line 595
    iput-object p1, p0, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 622
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 623
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 614
    iget-boolean v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 618
    :goto_0
    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 617
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    iget v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 608
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 609
    iput-boolean v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 610
    return-void
.end method

.method public withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;
    .locals 1
    .param p1, "animation"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .param p2, "visibility"    # I

    .prologue
    .line 601
    iput p2, p0, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    .line 602
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    iput-object p1, v0, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 603
    return-object p0
.end method
