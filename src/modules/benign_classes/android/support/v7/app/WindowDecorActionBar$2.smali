.class Landroid/support/v7/app/WindowDecorActionBar$2;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/WindowDecorActionBar;


# direct methods
.method constructor <init>(Landroid/support/v7/app/WindowDecorActionBar;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/app/WindowDecorActionBar;

    .prologue
    .line 155
    iput-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar$2;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 158
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$2;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    .line 159
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$2;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->requestLayout()V

    .line 160
    return-void
.end method
