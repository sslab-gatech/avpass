.class Landroid/support/v7/widget/SearchView$8;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/SearchView;

    .prologue
    .line 1053
    iput-object p1, p0, Landroid/support/v7/widget/SearchView$8;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1057
    iget-object v2, p0, Landroid/support/v7/widget/SearchView$8;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v2, :cond_1

    .line 1087
    :cond_0
    :goto_0
    return v0

    .line 1068
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/SearchView$8;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/SearchView$8;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 1069
    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1070
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$8;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/SearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1075
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/SearchView$8;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    # invokes: Landroid/support/v7/widget/SearchView$SearchAutoComplete;->isEmpty()Z
    invoke-static {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->access$000(Landroid/support/v7/widget/SearchView$SearchAutoComplete;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1076
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1077
    const/16 v2, 0x42

    if-ne p2, v2, :cond_0

    .line 1078
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 1081
    iget-object v2, p0, Landroid/support/v7/widget/SearchView$8;->this$0:Landroid/support/v7/widget/SearchView;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v7/widget/SearchView$8;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 1082
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1081
    invoke-virtual {v2, v0, v3, v4}, Landroid/support/v7/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1083
    goto :goto_0
.end method
