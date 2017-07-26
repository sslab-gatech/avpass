.class Landroid/support/v7/widget/ActionMenuPresenter;
.super Landroid/support/v7/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;,
        Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;,
        Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;,
        Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;,
        Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;,
        Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;,
        Landroid/support/v7/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

.field mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

.field private mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

.field private mPendingOverflowIconSet:Z

.field private mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

.field mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    sget v0, Landroid/support/v7/appcompat/R$layout;->abc_action_menu_layout:I

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 74
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 84
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

    .line 89
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    return-object v0
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    .line 324
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v3, Landroid/view/ViewGroup;

    .line 325
    .local v3, "parent":Landroid/view/ViewGroup;
    if-nez v3, :cond_1

    move-object v0, v5

    .line 335
    :cond_0
    :goto_0
    return-object v0

    .line 327
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 328
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 329
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 330
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Landroid/support/v7/view/menu/MenuView$ItemView;

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Landroid/support/v7/view/menu/MenuView$ItemView;

    .line 331
    invoke-interface {v4}, Landroid/support/v7/view/menu/MenuView$ItemView;->getItemData()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 328
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    :cond_3
    move-object v0, v5

    .line 335
    goto :goto_0
.end method


# virtual methods
.method public bindItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/support/v7/view/menu/MenuView$ItemView;)V
    .locals 3
    .param p1, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;
    .param p2, "itemView"    # Landroid/support/v7/view/menu/MenuView$ItemView;

    .prologue
    .line 211
    const/4 v2, 0x0

    invoke-interface {p2, p1, v2}, Landroid/support/v7/view/menu/MenuView$ItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 213
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v1, Landroid/support/v7/widget/ActionMenuView;

    .local v1, "menuView":Landroid/support/v7/widget/ActionMenuView;
    move-object v0, p2

    .line 214
    check-cast v0, Landroid/support/v7/view/menu/ActionMenuItemView;

    .line 215
    .local v0, "actionItemView":Landroid/support/v7/view/menu/ActionMenuItemView;
    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/ActionMenuItemView;->setItemInvoker(Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;)V

    .line 217
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez v2, :cond_0

    .line 218
    new-instance v2, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V

    iput-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 220
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/ActionMenuItemView;->setPopupCallback(Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;)V

    .line 221
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .prologue
    .line 384
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 385
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 386
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .prologue
    .line 283
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 284
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public flagActionItems()Z
    .locals 29

    .prologue
    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v25

    .line 425
    .local v25, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 431
    .local v15, "itemsSize":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    move/from16 v17, v0

    .line 432
    .local v17, "maxActions":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    move/from16 v26, v0

    .line 433
    .local v26, "widthLimit":I
    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 434
    .local v20, "querySpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/ViewGroup;

    .line 436
    .local v19, "parent":Landroid/view/ViewGroup;
    const/16 v22, 0x0

    .line 437
    .local v22, "requiredItems":I
    const/16 v21, 0x0

    .line 438
    .local v21, "requestedItems":I
    const/4 v8, 0x0

    .line 439
    .local v8, "firstActionWidth":I
    const/4 v10, 0x0

    .line 440
    .local v10, "hasOverflow":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v15, :cond_4

    .line 441
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 442
    .local v14, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 443
    add-int/lit8 v22, v22, 0x1

    .line 449
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 452
    const/16 v17, 0x0

    .line 440
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 427
    .end local v8    # "firstActionWidth":I
    .end local v10    # "hasOverflow":Z
    .end local v11    # "i":I
    .end local v14    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    .end local v15    # "itemsSize":I
    .end local v17    # "maxActions":I
    .end local v19    # "parent":Landroid/view/ViewGroup;
    .end local v20    # "querySpec":I
    .end local v21    # "requestedItems":I
    .end local v22    # "requiredItems":I
    .end local v25    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    .end local v26    # "widthLimit":I
    :cond_1
    const/16 v25, 0x0

    .line 428
    .restart local v25    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    const/4 v15, 0x0

    .restart local v15    # "itemsSize":I
    goto :goto_0

    .line 444
    .restart local v8    # "firstActionWidth":I
    .restart local v10    # "hasOverflow":Z
    .restart local v11    # "i":I
    .restart local v14    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    .restart local v17    # "maxActions":I
    .restart local v19    # "parent":Landroid/view/ViewGroup;
    .restart local v20    # "querySpec":I
    .restart local v21    # "requestedItems":I
    .restart local v22    # "requiredItems":I
    .restart local v26    # "widthLimit":I
    :cond_2
    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_3

    .line 445
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 447
    :cond_3
    const/4 v10, 0x1

    goto :goto_2

    .line 457
    .end local v14    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    if-nez v10, :cond_5

    add-int v27, v22, v21

    move/from16 v0, v27

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    .line 459
    :cond_5
    add-int/lit8 v17, v17, -0x1

    .line 461
    :cond_6
    sub-int v17, v17, v22

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    .line 464
    .local v23, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->clear()V

    .line 466
    const/4 v4, 0x0

    .line 467
    .local v4, "cellSize":I
    const/4 v7, 0x0

    .line 468
    .local v7, "cellsRemaining":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    .line 469
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v7, v26, v27

    .line 470
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    rem-int v5, v26, v27

    .line 471
    .local v5, "cellSizeRemaining":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v28, v5, v7

    add-int v4, v27, v28

    .line 475
    .end local v5    # "cellSizeRemaining":I
    :cond_7
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v15, :cond_1e

    .line 476
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 478
    .restart local v14    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_c

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->getItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 480
    .local v24, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_8

    .line 481
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 483
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_b

    .line 484
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v27

    sub-int v7, v7, v27

    .line 489
    :goto_4
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 490
    .local v18, "measuredWidth":I
    sub-int v26, v26, v18

    .line 491
    if-nez v8, :cond_9

    .line 492
    move/from16 v8, v18

    .line 494
    :cond_9
    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 495
    .local v9, "groupId":I
    if-eqz v9, :cond_a

    .line 496
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 498
    :cond_a
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 475
    .end local v9    # "groupId":I
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 487
    .restart local v24    # "v":Landroid/view/View;
    :cond_b
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 499
    .end local v24    # "v":Landroid/view/View;
    :cond_c
    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_1d

    .line 502
    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 503
    .restart local v9    # "groupId":I
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    .line 504
    .local v12, "inGroup":Z
    if-gtz v17, :cond_d

    if-eqz v12, :cond_15

    :cond_d
    if-lez v26, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_e

    if-lez v7, :cond_15

    :cond_e
    const/4 v13, 0x1

    .line 507
    .local v13, "isAction":Z
    :goto_6
    if-eqz v13, :cond_12

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->getItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 509
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_f

    .line 510
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 512
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_16

    .line 513
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v6

    .line 515
    .local v6, "cells":I
    sub-int/2addr v7, v6

    .line 516
    if-nez v6, :cond_10

    .line 517
    const/4 v13, 0x0

    .line 522
    .end local v6    # "cells":I
    :cond_10
    :goto_7
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 523
    .restart local v18    # "measuredWidth":I
    sub-int v26, v26, v18

    .line 524
    if-nez v8, :cond_11

    .line 525
    move/from16 v8, v18

    .line 528
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_18

    .line 529
    if-ltz v26, :cond_17

    const/16 v27, 0x1

    :goto_8
    and-int v13, v13, v27

    .line 536
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_12
    :goto_9
    if-eqz v13, :cond_1a

    if-eqz v9, :cond_1a

    .line 537
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 551
    :cond_13
    if-eqz v13, :cond_14

    add-int/lit8 v17, v17, -0x1

    .line 553
    :cond_14
    invoke-virtual {v14, v13}, Landroid/support/v7/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_5

    .line 504
    .end local v13    # "isAction":Z
    :cond_15
    const/4 v13, 0x0

    goto :goto_6

    .line 520
    .restart local v13    # "isAction":Z
    .restart local v24    # "v":Landroid/view/View;
    :cond_16
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 529
    .restart local v18    # "measuredWidth":I
    :cond_17
    const/16 v27, 0x0

    goto :goto_8

    .line 532
    :cond_18
    add-int v27, v26, v8

    if-lez v27, :cond_19

    const/16 v27, 0x1

    :goto_a
    and-int v13, v13, v27

    goto :goto_9

    :cond_19
    const/16 v27, 0x0

    goto :goto_a

    .line 538
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_1a
    if-eqz v12, :cond_13

    .line 540
    const/16 v27, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 541
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_b
    move/from16 v0, v16

    if-ge v0, v11, :cond_13

    .line 542
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 543
    .local v3, "areYouMyGroupie":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v27

    move/from16 v0, v27

    if-ne v0, v9, :cond_1c

    .line 545
    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v27

    if-eqz v27, :cond_1b

    add-int/lit8 v17, v17, 0x1

    .line 546
    :cond_1b
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 541
    :cond_1c
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .line 556
    .end local v3    # "areYouMyGroupie":Landroid/support/v7/view/menu/MenuItemImpl;
    .end local v9    # "groupId":I
    .end local v12    # "inGroup":Z
    .end local v13    # "isAction":Z
    .end local v16    # "j":I
    :cond_1d
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_5

    .line 559
    .end local v14    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_1e
    const/16 v27, 0x1

    return v27
.end method

.method public getItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/view/menu/BaseMenuPresenter;->getItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 199
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v2, p3

    .line 201
    check-cast v2, Landroid/support/v7/widget/ActionMenuView;

    .line 202
    .local v2, "menuParent":Landroid/support/v7/widget/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 203
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 204
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    :cond_2
    return-object v0

    .line 199
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "menuParent":Landroid/support/v7/widget/ActionMenuView;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    .line 186
    .local v0, "oldMenuView":Landroid/support/v7/view/menu/MenuView;
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v1

    .line 187
    .local v1, "result":Landroid/support/v7/view/menu/MenuView;
    if-eq v0, v1, :cond_0

    move-object v2, v1

    .line 188
    check-cast v2, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v2, p0}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 190
    :cond_0
    return-object v1
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    .line 177
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 180
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 365
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 367
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    move v1, v2

    .line 376
    :goto_0
    return v1

    .line 371
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    .line 372
    .local v0, "popup":Landroid/support/v7/view/menu/MenuPopupHelper;
    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuPopupHelper;->dismiss()V

    move v1, v2

    .line 374
    goto :goto_0

    .line 376
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideSubMenus()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 397
    const/4 v0, 0x1

    .line 399
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 93
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 97
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Landroid/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;

    move-result-object v0

    .line 98
    .local v0, "abp":Landroid/support/v7/view/ActionBarPolicy;
    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v4, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/support/v7/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v4

    iput-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 102
    :cond_0
    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v4, :cond_1

    .line 103
    invoke-virtual {v0}, Landroid/support/v7/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 107
    :cond_1
    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v4, :cond_2

    .line 108
    invoke-virtual {v0}, Landroid/support/v7/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    .line 111
    :cond_2
    iget v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 112
    .local v3, "width":I
    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v4, :cond_5

    .line 113
    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez v4, :cond_4

    .line 114
    new-instance v4, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 115
    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v4, :cond_3

    .line 116
    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iput-object v7, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 118
    iput-boolean v6, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 120
    :cond_3
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 121
    .local v2, "spec":I
    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v4, v2, v2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->measure(II)V

    .line 123
    .end local v2    # "spec":I
    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v4}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 128
    :goto_0
    iput v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 130
    const/high16 v4, 0x42600000    # 56.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I

    .line 133
    iput-object v7, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 134
    return-void

    .line 125
    :cond_5
    iput-object v7, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    goto :goto_0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 564
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 565
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/BaseMenuPresenter;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 566
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 137
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    .line 140
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 143
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 577
    instance-of v3, p1, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;

    if-nez v3, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p1

    .line 581
    check-cast v1, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;

    .line 582
    .local v1, "saved":Landroid/support/v7/widget/ActionMenuPresenter$SavedState;
    iget v3, v1, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v3, :cond_0

    .line 583
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget v4, v1, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 584
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 585
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/SubMenuBuilder;

    .line 586
    .local v2, "subMenu":Landroid/support/v7/view/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 570
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;-><init>()V

    .line 571
    .local v0, "state":Landroid/support/v7/widget/ActionMenuPresenter$SavedState;
    iget v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 572
    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 9
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/SubMenuBuilder;

    .prologue
    const/4 v6, 0x0

    .line 288
    invoke-virtual {p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v7

    if-nez v7, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v6

    .line 290
    :cond_1
    move-object v5, p1

    .line 291
    .local v5, "topSubMenu":Landroid/support/v7/view/menu/SubMenuBuilder;
    :goto_1
    invoke-virtual {v5}, Landroid/support/v7/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eq v7, v8, :cond_2

    .line 292
    invoke-virtual {v5}, Landroid/support/v7/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v5

    .end local v5    # "topSubMenu":Landroid/support/v7/view/menu/SubMenuBuilder;
    check-cast v5, Landroid/support/v7/view/menu/SubMenuBuilder;

    .restart local v5    # "topSubMenu":Landroid/support/v7/view/menu/SubMenuBuilder;
    goto :goto_1

    .line 294
    :cond_2
    invoke-virtual {v5}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/support/v7/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 295
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    iput v6, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 305
    const/4 v4, 0x0

    .line 306
    .local v4, "preserveIconSpacing":Z
    invoke-virtual {p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->size()I

    move-result v2

    .line 307
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_3

    .line 308
    invoke-virtual {p1, v3}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 309
    .local v1, "childItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 310
    const/4 v4, 0x1

    .line 315
    .end local v1    # "childItem":Landroid/view/MenuItem;
    :cond_3
    new-instance v6, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v7, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7, p1, v0}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/view/menu/SubMenuBuilder;Landroid/view/View;)V

    iput-object v6, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 316
    iget-object v6, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    .line 317
    iget-object v6, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v6}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 319
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z

    .line 320
    const/4 v6, 0x1

    goto :goto_0

    .line 307
    .restart local v1    # "childItem":Landroid/view/MenuItem;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 593
    if-eqz p1, :cond_1

    .line 595
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0
    .param p1, "isExclusive"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 163
    return-void
.end method

.method public setItemLimit(I)V
    .locals 1
    .param p1, "itemCount"    # I

    .prologue
    .line 157
    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 159
    return-void
.end method

.method public setMenuView(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 1
    .param p1, "menuView"    # Landroid/support/v7/widget/ActionMenuView;

    .prologue
    .line 602
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    .line 603
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->initialize(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 604
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 170
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setReserveOverflow(Z)V
    .locals 1
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 154
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    .prologue
    .line 146
    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 147
    iput-boolean p2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 149
    return-void
.end method

.method public shouldIncludeItem(ILandroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    .line 225
    invoke-virtual {p2}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 343
    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 344
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 346
    .local v0, "popup":Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;
    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 348
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 352
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/support/v7/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z

    .line 356
    .end local v0    # "popup":Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 12
    .param p1, "cleared"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 230
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 231
    .local v5, "menuViewParent":Landroid/view/ViewGroup;
    if-eqz v5, :cond_0

    .line 232
    invoke-static {v5}, Landroid/support/v7/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 234
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 236
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->requestLayout()V

    .line 238
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v9, :cond_2

    .line 239
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 240
    .local v0, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 241
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 242
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;

    move-result-object v8

    .line 243
    .local v8, "provider":Landroid/support/v4/view/ActionProvider;
    if-eqz v8, :cond_1

    .line 244
    invoke-virtual {v8, p0}, Landroid/support/v4/view/ActionProvider;->setSubUiVisibilityListener(Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;)V

    .line 241
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    .end local v0    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v8    # "provider":Landroid/support/v4/view/ActionProvider;
    :cond_2
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v9, :cond_7

    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 250
    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 252
    .local v6, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    :goto_1
    const/4 v2, 0x0

    .line 253
    .local v2, "hasOverflow":Z
    iget-boolean v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v9, :cond_3

    if-eqz v6, :cond_3

    .line 254
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 255
    .restart local v1    # "count":I
    if-ne v1, v10, :cond_9

    .line 256
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v9

    if-nez v9, :cond_8

    move v2, v10

    .line 262
    .end local v1    # "count":I
    :cond_3
    :goto_2
    if-eqz v2, :cond_b

    .line 263
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez v9, :cond_4

    .line 264
    new-instance v9, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v10, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v9, p0, v10}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 266
    :cond_4
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v9}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 267
    .local v7, "parent":Landroid/view/ViewGroup;
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    if-eq v7, v9, :cond_6

    .line 268
    if-eqz v7, :cond_5

    .line 269
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 271
    :cond_5
    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v4, Landroid/support/v7/widget/ActionMenuView;

    .line 272
    .local v4, "menuView":Landroid/support/v7/widget/ActionMenuView;
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v4}, Landroid/support/v7/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/support/v7/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    .end local v4    # "menuView":Landroid/support/v7/widget/ActionMenuView;
    .end local v7    # "parent":Landroid/view/ViewGroup;
    :cond_6
    :goto_3
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v9, Landroid/support/v7/widget/ActionMenuView;

    iget-boolean v10, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 279
    return-void

    .line 250
    .end local v2    # "hasOverflow":Z
    .end local v6    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    .restart local v1    # "count":I
    .restart local v2    # "hasOverflow":Z
    .restart local v6    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    :cond_8
    move v2, v11

    .line 256
    goto :goto_2

    .line 258
    :cond_9
    if-lez v1, :cond_a

    move v2, v10

    :goto_4
    goto :goto_2

    :cond_a
    move v2, v11

    goto :goto_4

    .line 274
    .end local v1    # "count":I
    :cond_b
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v9, :cond_6

    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v9}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    iget-object v10, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    if-ne v9, v10, :cond_6

    .line 275
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v9, Landroid/view/ViewGroup;

    iget-object v10, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3
.end method
