.class Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;
.super Landroid/support/v7/widget/ForwardingListener;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

.field final synthetic val$this$0:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
    .param p2, "src"    # Landroid/view/View;

    .prologue
    .line 650
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iput-object p3, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;->val$this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/support/v7/view/menu/ShowableListMenu;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    if-nez v0, :cond_0

    .line 654
    const/4 v0, 0x0

    .line 657
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;->getPopup()Landroid/support/v7/view/menu/MenuPopup;

    move-result-object v0

    goto :goto_0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 663
    const/4 v0, 0x1

    return v0
.end method

.method public onForwardingStopped()Z
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v0, :cond_0

    .line 672
    const/4 v0, 0x0

    .line 676
    :goto_0
    return v0

    .line 675
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 676
    const/4 v0, 0x1

    goto :goto_0
.end method
