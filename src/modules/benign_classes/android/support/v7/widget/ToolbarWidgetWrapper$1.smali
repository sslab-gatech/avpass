.class Landroid/support/v7/widget/ToolbarWidgetWrapper$1;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ToolbarWidgetWrapper;-><init>(Landroid/support/v7/widget/Toolbar;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mNavItem:Landroid/support/v7/view/menu/ActionMenuItem;

.field final synthetic this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ToolbarWidgetWrapper;)V
    .locals 7
    .param p1, "this$0"    # Landroid/support/v7/widget/ToolbarWidgetWrapper;

    .prologue
    const/4 v2, 0x0

    .line 181
    iput-object p1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$1;->this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Landroid/support/v7/view/menu/ActionMenuItem;

    iget-object v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$1;->this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x102002c

    iget-object v4, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$1;->this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    iget-object v6, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$1;->mNavItem:Landroid/support/v7/view/menu/ActionMenuItem;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$1;->this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    iget-object v0, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$1;->this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    iget-boolean v0, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$1;->this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    iget-object v0, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$1;->mNavItem:Landroid/support/v7/view/menu/ActionMenuItem;

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 189
    :cond_0
    return-void
.end method
