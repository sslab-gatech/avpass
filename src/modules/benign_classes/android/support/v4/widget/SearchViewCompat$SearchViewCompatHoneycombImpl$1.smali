.class Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"

# interfaces
.implements Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;

.field final synthetic val$listener:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;

    .prologue
    .line 151
    iput-object p1, p0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;->this$0:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;

    iput-object p2, p0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;->val$listener:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;->val$listener:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;->val$listener:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
