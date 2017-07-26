.class Landroid/support/v7/app/ToolbarActionBar$2;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/ToolbarActionBar;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ToolbarActionBar;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/app/ToolbarActionBar;

    .prologue
    .line 66
    iput-object p1, p0, Landroid/support/v7/app/ToolbarActionBar$2;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$2;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    iget-object v0, v0, Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
