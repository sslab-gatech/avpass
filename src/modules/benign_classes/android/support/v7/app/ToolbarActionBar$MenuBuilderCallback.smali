.class final Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/ToolbarActionBar;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ToolbarActionBar;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 655
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 4
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    const/16 v3, 0x6c

    .line 660
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    iget-object v0, v0, Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    iget-object v0, v0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    iget-object v0, v0, Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    iget-object v0, v0, Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    iget-object v0, v0, Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    goto :goto_0
.end method
