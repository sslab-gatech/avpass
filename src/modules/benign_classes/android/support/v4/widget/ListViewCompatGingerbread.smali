.class Landroid/support/v4/widget/ListViewCompatGingerbread;
.super Ljava/lang/Object;
.source "ListViewCompatGingerbread.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static scrollListBy(Landroid/widget/ListView;I)V
    .locals 4
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "y"    # I

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 26
    .local v0, "firstPosition":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 31
    .local v1, "firstView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v2, v3, p1

    .line 36
    .local v2, "newTop":I
    invoke-virtual {p0, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method
