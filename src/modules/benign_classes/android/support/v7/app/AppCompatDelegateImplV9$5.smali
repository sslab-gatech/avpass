.class Landroid/support/v7/app/AppCompatDelegateImplV9$5;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9;->startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/app/AppCompatDelegateImplV9;

    .prologue
    .line 775
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 778
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 781
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->endOnGoingFadeAnimation()V

    .line 783
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->shouldAnimateActionModeView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 785
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 786
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV9$5$1;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$5$1;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9$5;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 803
    :goto_0
    return-void

    .line 800
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 801
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_0
.end method
