.class final Landroid/support/v7/view/menu/StandardMenuPopup;
.super Landroid/support/v7/view/menu/MenuPopup;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/support/v7/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private final mAdapter:Landroid/support/v7/view/menu/MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasContentWidth:Z

.field private final mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field final mPopup:Landroid/support/v7/widget/MenuPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mShowTitle:Z

.field mShownAnchorView:Landroid/view/View;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mWasDismissed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "popupStyleAttr"    # I
    .param p5, "popupStyleRes"    # I
    .param p6, "overflowOnly"    # Z

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/support/v7/view/menu/MenuPopup;-><init>()V

    .line 58
    new-instance v2, Landroid/support/v7/view/menu/StandardMenuPopup$1;

    invoke-direct {v2, p0}, Landroid/support/v7/view/menu/StandardMenuPopup$1;-><init>(Landroid/support/v7/view/menu/StandardMenuPopup;)V

    iput-object v2, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 92
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mDropDownGravity:I

    .line 98
    iput-object p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 100
    iput-boolean p6, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 102
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/support/v7/view/menu/MenuAdapter;

    iget-boolean v3, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    invoke-direct {v2, p2, v0, v3}, Landroid/support/v7/view/menu/MenuAdapter;-><init>(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V

    iput-object v2, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mAdapter:Landroid/support/v7/view/menu/MenuAdapter;

    .line 103
    iput p4, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    .line 104
    iput p5, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 107
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Landroid/support/v7/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 108
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 107
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    .line 110
    iput-object p3, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 112
    new-instance v2, Landroid/support/v7/widget/MenuPopupWindow;

    iget-object v3, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    iget v5, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iget v6, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/support/v7/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    .line 115
    invoke-virtual {p2, p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 116
    return-void
.end method

.method private tryShow()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 129
    invoke-virtual {p0}, Landroid/support/v7/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 182
    :goto_0
    return v5

    .line 133
    :cond_0
    iget-boolean v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mWasDismissed:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    if-nez v7, :cond_2

    :cond_1
    move v5, v6

    .line 134
    goto :goto_0

    .line 137
    :cond_2
    iget-object v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 139
    iget-object v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v7, p0}, Landroid/support/v7/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 140
    iget-object v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v7, p0}, Landroid/support/v7/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 141
    iget-object v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/MenuPopupWindow;->setModal(Z)V

    .line 143
    iget-object v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 144
    .local v1, "anchor":Landroid/view/View;
    iget-object v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v7, :cond_7

    move v0, v5

    .line 145
    .local v0, "addGlobalListener":Z
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    iput-object v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 146
    if-eqz v0, :cond_3

    .line 147
    iget-object v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v8, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 149
    :cond_3
    iget-object v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 150
    iget-object v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    iget v8, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mDropDownGravity:I

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 152
    iget-boolean v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    if-nez v7, :cond_4

    .line 153
    iget-object v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mAdapter:Landroid/support/v7/view/menu/MenuAdapter;

    iget-object v8, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget v9, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    invoke-static {v7, v10, v8, v9}, Landroid/support/v7/view/menu/StandardMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v7

    iput v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mContentWidth:I

    .line 154
    iput-boolean v5, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    .line 157
    :cond_4
    iget-object v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    iget v8, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mContentWidth:I

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/MenuPopupWindow;->setContentWidth(I)V

    .line 158
    iget-object v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/MenuPopupWindow;->setInputMethodMode(I)V

    .line 159
    iget-object v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/StandardMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 160
    iget-object v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v7}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    .line 162
    iget-object v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v7}, Landroid/support/v7/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 163
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 165
    iget-boolean v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mShowTitle:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v7}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 166
    iget-object v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    .line 167
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Landroid/support/v7/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v7, v8, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 169
    .local v3, "titleItemView":Landroid/widget/FrameLayout;
    const v7, 0x1020016

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 170
    .local v4, "titleView":Landroid/widget/TextView;
    if-eqz v4, :cond_5

    .line 171
    iget-object v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v7}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_5
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 174
    invoke-virtual {v2, v3, v10, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 179
    .end local v3    # "titleItemView":Landroid/widget/FrameLayout;
    .end local v4    # "titleView":Landroid/widget/TextView;
    :cond_6
    iget-object v6, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    iget-object v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mAdapter:Landroid/support/v7/view/menu/MenuAdapter;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    iget-object v6, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v6}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    goto/16 :goto_0

    .end local v0    # "addGlobalListener":Z
    .end local v2    # "listView":Landroid/widget/ListView;
    :cond_7
    move v0, v6

    .line 144
    goto/16 :goto_1
.end method


# virtual methods
.method public addMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 202
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Landroid/support/v7/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/MenuPopupWindow;->dismiss()V

    .line 197
    :cond_0
    return-void
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mWasDismissed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/MenuPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 269
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/StandardMenuPopup;->dismiss()V

    .line 272
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mWasDismissed:Z

    .line 212
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->close()V

    .line 214
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 216
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 219
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 222
    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 298
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 299
    invoke-virtual {p0}, Landroid/support/v7/view/menu/StandardMenuPopup;->dismiss()V

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 289
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 10
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/SubMenuBuilder;

    .prologue
    const/4 v9, 0x0

    .line 240
    invoke-virtual {p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    new-instance v0, Landroid/support/v7/view/menu/MenuPopupHelper;

    iget-object v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-boolean v4, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    iget v5, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iget v6, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 243
    .local v0, "subPopup":Landroid/support/v7/view/menu/MenuPopupHelper;
    iget-object v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuPopupHelper;->setPresenterCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 244
    invoke-static {p1}, Landroid/support/v7/view/menu/MenuPopup;->shouldPreserveIconSpacing(Landroid/support/v7/view/menu/MenuBuilder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 247
    iget-object v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 248
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 251
    iget-object v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1, v9}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 254
    iget-object v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v1}, Landroid/support/v7/widget/MenuPopupWindow;->getHorizontalOffset()I

    move-result v7

    .line 255
    .local v7, "horizontalOffset":I
    iget-object v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v1}, Landroid/support/v7/widget/MenuPopupWindow;->getVerticalOffset()I

    move-result v8

    .line 256
    .local v8, "verticalOffset":I
    invoke-virtual {v0, v7, v8}, Landroid/support/v7/view/menu/MenuPopupHelper;->tryShow(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-interface {v1, p1}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z

    .line 260
    :cond_0
    const/4 v1, 0x1

    .line 263
    .end local v0    # "subPopup":Landroid/support/v7/view/menu/MenuPopupHelper;
    .end local v7    # "horizontalOffset":I
    .end local v8    # "verticalOffset":I
    :goto_0
    return v1

    :cond_1
    move v1, v9

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 293
    iput-object p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 294
    return-void
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .prologue
    .line 235
    iput-object p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 236
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1
    .param p1, "forceShow"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mAdapter:Landroid/support/v7/view/menu/MenuAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    .line 121
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 125
    iput p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mDropDownGravity:I

    .line 126
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 318
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 319
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 307
    iput-object p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 308
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0
    .param p1, "showTitle"    # Z

    .prologue
    .line 328
    iput-boolean p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mShowTitle:Z

    .line 329
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 323
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 324
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 187
    invoke-direct {p0}, Landroid/support/v7/view/menu/StandardMenuPopup;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    .line 228
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mAdapter:Landroid/support/v7/view/menu/MenuAdapter;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mAdapter:Landroid/support/v7/view/menu/MenuAdapter;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuAdapter;->notifyDataSetChanged()V

    .line 231
    :cond_0
    return-void
.end method
