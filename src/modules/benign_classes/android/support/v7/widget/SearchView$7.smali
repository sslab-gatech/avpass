.class Landroid/support/v7/widget/SearchView$7;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1031
    iput-object p1, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1034
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object v0, v0, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 1035
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->onSearchClicked()V

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1036
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object v0, v0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 1037
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->onCloseClicked()V

    goto :goto_0

    .line 1038
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object v0, v0, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 1039
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->onSubmitQuery()V

    goto :goto_0

    .line 1040
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object v0, v0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    .line 1041
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->onVoiceClicked()V

    goto :goto_0

    .line 1042
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object v0, v0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    if-ne p1, v0, :cond_0

    .line 1043
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->forceSuggestionQuery()V

    goto :goto_0
.end method
