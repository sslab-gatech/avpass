.class public Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;
.super Landroid/support/v7/widget/DropDownListView;
.source "MenuPopupWindow.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/MenuPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuDropDownListView"
.end annotation


# instance fields
.field final mAdvanceKey:I

.field private mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

.field private mHoveredMenuItem:Landroid/view/MenuItem;

.field final mRetreatKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    const/16 v5, 0x16

    const/16 v4, 0x15

    .line 140
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 143
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 144
    .local v0, "config":Landroid/content/res/Configuration;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    .line 145
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 146
    iput v4, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 147
    iput v5, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    iput v5, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 150
    iput v4, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    goto :goto_0
.end method


# virtual methods
.method public clearSelection()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->setSelection(I)V

    .line 160
    return-void
.end method

.method public bridge synthetic hasFocus()Z
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/support/v7/widget/DropDownListView;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasWindowFocus()Z
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/support/v7/widget/DropDownListView;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFocused()Z
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/support/v7/widget/DropDownListView;->isFocused()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInTouchMode()Z
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/support/v7/widget/DropDownListView;->isInTouchMode()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 1

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 186
    iget-object v9, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    if-eqz v9, :cond_2

    .line 190
    invoke-virtual {p0}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 191
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v9, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v9, :cond_3

    move-object v1, v0

    .line 192
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 193
    .local v1, "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 194
    .local v2, "headersCount":I
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/MenuAdapter;

    .line 201
    .end local v1    # "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    .local v5, "menuAdapter":Landroid/support/v7/view/menu/MenuAdapter;
    :goto_0
    const/4 v6, 0x0

    .line 202
    .local v6, "menuItem":Landroid/view/MenuItem;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_0

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p0, v9, v10}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->pointToPosition(II)I

    move-result v8

    .line 204
    .local v8, "position":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 205
    sub-int v3, v8, v2

    .line 206
    .local v3, "itemPosition":I
    if-ltz v3, :cond_0

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuAdapter;->getCount()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 207
    invoke-virtual {v5, v3}, Landroid/support/v7/view/menu/MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v6

    .line 212
    .end local v3    # "itemPosition":I
    .end local v8    # "position":I
    :cond_0
    iget-object v7, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    .line 213
    .local v7, "oldMenuItem":Landroid/view/MenuItem;
    if-eq v7, v6, :cond_2

    .line 214
    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuAdapter;->getAdapterMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v4

    .line 215
    .local v4, "menu":Landroid/support/v7/view/menu/MenuBuilder;
    if-eqz v7, :cond_1

    .line 216
    iget-object v9, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    invoke-interface {v9, v4, v7}, Landroid/support/v7/widget/MenuItemHoverListener;->onItemHoverExit(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 219
    :cond_1
    iput-object v6, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    .line 221
    if-eqz v6, :cond_2

    .line 222
    iget-object v9, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    invoke-interface {v9, v4, v6}, Landroid/support/v7/widget/MenuItemHoverListener;->onItemHoverEnter(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 227
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "headersCount":I
    .end local v4    # "menu":Landroid/support/v7/view/menu/MenuBuilder;
    .end local v5    # "menuAdapter":Landroid/support/v7/view/menu/MenuAdapter;
    .end local v6    # "menuItem":Landroid/view/MenuItem;
    .end local v7    # "oldMenuItem":Landroid/view/MenuItem;
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/DropDownListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    return v9

    .line 196
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "headersCount":I
    move-object v5, v0

    .line 197
    check-cast v5, Landroid/support/v7/view/menu/MenuAdapter;

    .restart local v5    # "menuAdapter":Landroid/support/v7/view/menu/MenuAdapter;
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 164
    invoke-virtual {p0}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/ListMenuItemView;

    .line 165
    .local v0, "selectedItem":Landroid/support/v7/view/menu/ListMenuItemView;
    if-eqz v0, :cond_1

    iget v1, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    if-ne p1, v1, :cond_1

    .line 166
    invoke-virtual {v0}, Landroid/support/v7/view/menu/ListMenuItemView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/ListMenuItemView;->getItemData()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {p0}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemPosition()I

    move-result v1

    .line 170
    invoke-virtual {p0}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemId()J

    move-result-wide v4

    .line 167
    invoke-virtual {p0, v0, v1, v4, v5}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    move v1, v2

    .line 180
    :goto_0
    return v1

    .line 173
    :cond_1
    if-eqz v0, :cond_2

    iget v1, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    if-ne p1, v1, :cond_2

    .line 174
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->setSelection(I)V

    .line 177
    invoke-virtual {p0}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuAdapter;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuAdapter;->getAdapterMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    move v1, v2

    .line 178
    goto :goto_0

    .line 180
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setHoverListener(Landroid/support/v7/widget/MenuItemHoverListener;)V
    .locals 0
    .param p1, "hoverListener"    # Landroid/support/v7/widget/MenuItemHoverListener;

    .prologue
    .line 155
    iput-object p1, p0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    .line 156
    return-void
.end method
