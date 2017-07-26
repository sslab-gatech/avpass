.class public Landroid/support/v7/widget/ActionMenuView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;
.implements Landroid/support/v7/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionMenuView$LayoutParams;,
        Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;,
        Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;,
        Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 83
    .local v0, "density":F
    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    .line 84
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 85
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 86
    iput v2, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    .line 87
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .prologue
    .line 404
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 406
    .local v8, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .line 408
    .local v2, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 409
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 411
    .local v3, "childHeightSpec":I
    instance-of v11, p0, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_3

    move-object v11, p0

    check-cast v11, Landroid/support/v7/view/menu/ActionMenuItemView;

    move-object v7, v11

    .line 413
    .local v7, "itemView":Landroid/support/v7/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x1

    .line 415
    .local v6, "hasText":Z
    :goto_1
    const/4 v0, 0x0

    .line 416
    .local v0, "cellsUsed":I
    if-lez p2, :cond_2

    if-eqz v6, :cond_0

    const/4 v11, 0x2

    if-lt p2, v11, :cond_2

    .line 417
    :cond_0
    mul-int v11, p1, p2

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 419
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 421
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 422
    .local v9, "measuredWidth":I
    div-int v0, v9, p1

    .line 423
    rem-int v11, v9, p1

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 424
    :cond_1
    if-eqz v6, :cond_2

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    const/4 v0, 0x2

    .line 427
    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_2
    iget-boolean v11, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    .line 428
    .local v5, "expandable":Z
    :goto_2
    iput-boolean v5, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 430
    iput v0, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 431
    mul-int v10, v0, p1

    .line 432
    .local v10, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    .line 434
    return v0

    .line 411
    .end local v0    # "cellsUsed":I
    .end local v5    # "expandable":Z
    .end local v6    # "hasText":Z
    .end local v7    # "itemView":Landroid/support/v7/view/menu/ActionMenuItemView;
    .end local v10    # "targetWidth":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 413
    .restart local v7    # "itemView":Landroid/support/v7/view/menu/ActionMenuItemView;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 427
    .restart local v0    # "cellsUsed":I
    .restart local v6    # "hasText":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 42
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 178
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 179
    .local v17, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v37

    .line 180
    .local v37, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 182
    .local v19, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v39

    add-int v36, v38, v39

    .line 183
    .local v36, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingTop()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingBottom()I

    move-result v39

    add-int v18, v38, v39

    .line 185
    .local v18, "heightPadding":I
    const/16 v38, -0x2

    move/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v22

    .line 188
    .local v22, "itemHeightSpec":I
    sub-int v37, v37, v36

    .line 191
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v4, v37, v38

    .line 192
    .local v4, "cellCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    rem-int v6, v37, v38

    .line 194
    .local v6, "cellSizeRemaining":I
    if-nez v4, :cond_0

    .line 196
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 387
    :goto_0
    return-void

    .line 200
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v39, v6, v4

    add-int v5, v38, v39

    .line 202
    .local v5, "cellSize":I
    move v8, v4

    .line 203
    .local v8, "cellsRemaining":I
    const/16 v25, 0x0

    .line 204
    .local v25, "maxChildHeight":I
    const/16 v24, 0x0

    .line 205
    .local v24, "maxCellsUsed":I
    const/4 v14, 0x0

    .line 206
    .local v14, "expandableItemCount":I
    const/16 v34, 0x0

    .line 207
    .local v34, "visibleItemCount":I
    const/16 v16, 0x0

    .line 210
    .local v16, "hasOverflow":Z
    const-wide/16 v32, 0x0

    .line 212
    .local v32, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v12

    .line 213
    .local v12, "childCount":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v0, v12, :cond_8

    .line 214
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 215
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_2

    .line 213
    :cond_1
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 217
    :cond_2
    instance-of v0, v11, Landroid/support/v7/view/menu/ActionMenuItemView;

    move/from16 v21, v0

    .line 218
    .local v21, "isGeneratedItem":Z
    add-int/lit8 v34, v34, 0x1

    .line 220
    if-eqz v21, :cond_3

    .line 223
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 226
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 227
    .local v23, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 228
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 229
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 230
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 231
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 232
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 233
    if-eqz v21, :cond_6

    move-object/from16 v38, v11

    check-cast v38, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual/range {v38 .. v38}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v38

    if-eqz v38, :cond_6

    const/16 v38, 0x1

    :goto_3
    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 236
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_7

    const/4 v7, 0x1

    .line 238
    .local v7, "cellsAvailable":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v11, v5, v7, v0, v1}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 241
    .local v9, "cellsUsed":I
    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 242
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_4

    add-int/lit8 v14, v14, 0x1

    .line 243
    :cond_4
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_5

    const/16 v16, 0x1

    .line 245
    :cond_5
    sub-int/2addr v8, v9

    .line 246
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 247
    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v9, v0, :cond_1

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    goto/16 :goto_2

    .line 233
    .end local v7    # "cellsAvailable":I
    .end local v9    # "cellsUsed":I
    :cond_6
    const/16 v38, 0x0

    goto :goto_3

    :cond_7
    move v7, v8

    .line 236
    goto :goto_4

    .line 252
    .end local v11    # "child":Landroid/view/View;
    .end local v21    # "isGeneratedItem":Z
    .end local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_8
    if-eqz v16, :cond_a

    const/16 v38, 0x2

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_a

    const/4 v10, 0x1

    .line 257
    .local v10, "centerSingleExpandedItem":Z
    :goto_5
    const/16 v30, 0x0

    .line 258
    .local v30, "needsExpansion":Z
    :goto_6
    if-lez v14, :cond_e

    if-lez v8, :cond_e

    .line 259
    const v26, 0x7fffffff

    .line 260
    .local v26, "minCells":I
    const-wide/16 v28, 0x0

    .line 261
    .local v28, "minCellsAt":J
    const/16 v27, 0x0

    .line 262
    .local v27, "minCellsItemCount":I
    const/16 v20, 0x0

    :goto_7
    move/from16 v0, v20

    if-ge v0, v12, :cond_d

    .line 263
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 264
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 267
    .restart local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-nez v38, :cond_b

    .line 262
    :cond_9
    :goto_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 252
    .end local v10    # "centerSingleExpandedItem":Z
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    .end local v30    # "needsExpansion":Z
    :cond_a
    const/4 v10, 0x0

    goto :goto_5

    .line 270
    .restart local v10    # "centerSingleExpandedItem":Z
    .restart local v11    # "child":Landroid/view/View;
    .restart local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsItemCount":I
    .restart local v28    # "minCellsAt":J
    .restart local v30    # "needsExpansion":Z
    :cond_b
    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ge v0, v1, :cond_c

    .line 271
    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v26, v0

    .line 272
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v28, v0

    .line 273
    const/16 v27, 0x1

    goto :goto_8

    .line 274
    :cond_c
    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 275
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v28, v28, v38

    .line 276
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    .line 281
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_d
    or-long v32, v32, v28

    .line 283
    move/from16 v0, v27

    if-le v0, v8, :cond_13

    .line 312
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    :cond_e
    if-nez v16, :cond_18

    const/16 v38, 0x1

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_18

    const/16 v31, 0x1

    .line 313
    .local v31, "singleItem":Z
    :goto_9
    if-lez v8, :cond_20

    const-wide/16 v38, 0x0

    cmp-long v38, v32, v38

    if-eqz v38, :cond_20

    add-int/lit8 v38, v34, -0x1

    move/from16 v0, v38

    if-lt v8, v0, :cond_f

    if-nez v31, :cond_f

    const/16 v38, 0x1

    move/from16 v0, v24

    move/from16 v1, v38

    if-le v0, v1, :cond_20

    .line 315
    :cond_f
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v38

    move/from16 v0, v38

    int-to-float v13, v0

    .line 317
    .local v13, "expandCount":F
    if-nez v31, :cond_11

    .line 319
    const-wide/16 v38, 0x1

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_10

    .line 320
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 321
    .restart local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_10

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 323
    .end local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_10
    const/16 v38, 0x1

    add-int/lit8 v39, v12, -0x1

    shl-int v38, v38, v39

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_11

    .line 324
    add-int/lit8 v38, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 325
    .restart local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_11

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 329
    .end local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_11
    const/16 v38, 0x0

    cmpl-float v38, v13, v38

    if-lez v38, :cond_19

    mul-int v38, v8, v5

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v38, v38, v13

    move/from16 v0, v38

    float-to-int v15, v0

    .line 332
    .local v15, "extraPixels":I
    :goto_a
    const/16 v20, 0x0

    :goto_b
    move/from16 v0, v20

    if-ge v0, v12, :cond_1f

    .line 333
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_1a

    .line 332
    :cond_12
    :goto_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_b

    .line 286
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    .end local v31    # "singleItem":Z
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsItemCount":I
    .restart local v28    # "minCellsAt":J
    :cond_13
    add-int/lit8 v26, v26, 0x1

    .line 288
    const/16 v20, 0x0

    :goto_d
    move/from16 v0, v20

    if-ge v0, v12, :cond_17

    .line 289
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 290
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 291
    .restart local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v28

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_15

    .line 293
    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    .line 288
    :cond_14
    :goto_e
    add-int/lit8 v20, v20, 0x1

    goto :goto_d

    .line 297
    :cond_15
    if-eqz v10, :cond_16

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-eqz v38, :cond_16

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v8, v0, :cond_16

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    add-int v38, v38, v5

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 301
    :cond_16
    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 302
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 303
    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    .line 306
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_17
    const/16 v30, 0x1

    .line 307
    goto/16 :goto_6

    .line 312
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    :cond_18
    const/16 v31, 0x0

    goto/16 :goto_9

    .line 329
    .restart local v13    # "expandCount":F
    .restart local v31    # "singleItem":Z
    :cond_19
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 335
    .restart local v15    # "extraPixels":I
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 336
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 337
    .restart local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    instance-of v0, v11, Landroid/support/v7/view/menu/ActionMenuItemView;

    move/from16 v38, v0

    if-eqz v38, :cond_1c

    .line 339
    move-object/from16 v0, v23

    iput v15, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 340
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 341
    if-nez v20, :cond_1b

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_1b

    .line 344
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 346
    :cond_1b
    const/16 v30, 0x1

    goto/16 :goto_c

    .line 347
    :cond_1c
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1d

    .line 348
    move-object/from16 v0, v23

    iput v15, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 349
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 350
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 351
    const/16 v30, 0x1

    goto/16 :goto_c

    .line 356
    :cond_1d
    if-eqz v20, :cond_1e

    .line 357
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 359
    :cond_1e
    add-int/lit8 v38, v12, -0x1

    move/from16 v0, v20

    move/from16 v1, v38

    if-eq v0, v1, :cond_12

    .line 360
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_c

    .line 365
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_1f
    const/4 v8, 0x0

    .line 369
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    :cond_20
    if-eqz v30, :cond_22

    .line 370
    const/16 v20, 0x0

    :goto_f
    move/from16 v0, v20

    if-ge v0, v12, :cond_22

    .line 371
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 372
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 374
    .restart local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v38, v0

    if-nez v38, :cond_21

    .line 370
    :goto_10
    add-int/lit8 v20, v20, 0x1

    goto :goto_f

    .line 376
    :cond_21
    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    mul-int v38, v38, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v39, v0

    add-int v35, v38, v39

    .line 377
    .local v35, "width":I
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_10

    .line 382
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v35    # "width":I
    :cond_22
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v38

    if-eq v0, v1, :cond_23

    .line 383
    move/from16 v19, v25

    .line 386
    :cond_23
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 610
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 723
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 746
    const/4 v0, 0x0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 583
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 585
    .local v0, "params":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 586
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 591
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 596
    if-eqz p1, :cond_2

    .line 597
    instance-of v1, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    check-cast p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/support/v7/widget/ActionMenuView$LayoutParams;)V

    .line 600
    .local v0, "result":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 601
    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 605
    .end local v0    # "result":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_0
    :goto_1
    return-object v0

    .line 597
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 605
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 616
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 617
    .local v0, "result":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 618
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    .prologue
    .line 648
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    .line 649
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 650
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 651
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    new-instance v2, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/support/v7/widget/ActionMenuView;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 652
    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 653
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 654
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    :goto_0
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 656
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 657
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->setMenuView(Landroid/support/v7/widget/ActionMenuView;)V

    .line 660
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v1

    .line 654
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v1, Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/widget/ActionMenuView;)V

    goto :goto_0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 565
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 566
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 630
    const/4 v0, 0x0

    return v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 730
    if-nez p1, :cond_1

    .line 731
    const/4 v2, 0x0

    .line 742
    :cond_0
    :goto_0
    return v2

    .line 733
    :cond_1
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 734
    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 735
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 736
    .local v2, "result":Z
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    instance-of v3, v1, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 737
    check-cast v1, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 739
    :cond_2
    if-lez p1, :cond_0

    instance-of v3, v0, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 740
    check-cast v0, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 636
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 637
    return-void
.end method

.method public invokeItem(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 713
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

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
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 572
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 133
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 135
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 138
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 544
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 545
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->dismissPopupMenus()V

    .line 546
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 32
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 439
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    move/from16 v30, v0

    if-nez v30, :cond_1

    .line 440
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v6

    .line 445
    .local v6, "childCount":I
    sub-int v30, p5, p3

    div-int/lit8 v15, v30, 0x2

    .line 446
    .local v15, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getDividerWidth()I

    move-result v7

    .line 447
    .local v7, "dividerWidth":I
    const/16 v18, 0x0

    .line 448
    .local v18, "overflowWidth":I
    const/16 v17, 0x0

    .line 449
    .local v17, "nonOverflowWidth":I
    const/16 v16, 0x0

    .line 450
    .local v16, "nonOverflowCount":I
    sub-int v30, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v31

    sub-int v30, v30, v31

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v31

    sub-int v29, v30, v31

    .line 451
    .local v29, "widthRemaining":I
    const/4 v8, 0x0

    .line 452
    .local v8, "hasOverflow":Z
    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    .line 453
    .local v11, "isLayoutRtl":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_7

    .line 454
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 455
    .local v27, "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 453
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 459
    :cond_2
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 460
    .local v19, "p":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_5

    .line 461
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 462
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 463
    add-int v18, v18, v7

    .line 465
    :cond_3
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 468
    .local v9, "height":I
    if-eqz v11, :cond_4

    .line 469
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v30

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v12, v30, v31

    .line 470
    .local v12, "l":I
    add-int v20, v12, v18

    .line 475
    .local v20, "r":I
    :goto_3
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 476
    .local v26, "t":I
    add-int v5, v26, v9

    .line 477
    .local v5, "b":I
    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v0, v12, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 479
    sub-int v29, v29, v18

    .line 480
    const/4 v8, 0x1

    .line 481
    goto :goto_2

    .line 472
    .end local v5    # "b":I
    .end local v12    # "l":I
    .end local v20    # "r":I
    .end local v26    # "t":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v31

    sub-int v30, v30, v31

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    sub-int v20, v30, v31

    .line 473
    .restart local v20    # "r":I
    sub-int v12, v20, v18

    .restart local v12    # "l":I
    goto :goto_3

    .line 482
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v20    # "r":I
    :cond_5
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    add-int v21, v30, v31

    .line 483
    .local v21, "size":I
    add-int v17, v17, v21

    .line 484
    sub-int v29, v29, v21

    .line 485
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 486
    add-int v17, v17, v7

    .line 488
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 492
    .end local v19    # "p":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v21    # "size":I
    .end local v27    # "v":Landroid/view/View;
    :cond_7
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v6, v0, :cond_8

    if-nez v8, :cond_8

    .line 494
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 495
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 496
    .local v28, "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 497
    .restart local v9    # "height":I
    sub-int v30, p4, p2

    div-int/lit8 v14, v30, 0x2

    .line 498
    .local v14, "midHorizontal":I
    div-int/lit8 v30, v28, 0x2

    sub-int v12, v14, v30

    .line 499
    .restart local v12    # "l":I
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 500
    .restart local v26    # "t":I
    add-int v30, v12, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 504
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v14    # "midHorizontal":I
    .end local v26    # "t":I
    .end local v27    # "v":Landroid/view/View;
    .end local v28    # "width":I
    :cond_8
    if-eqz v8, :cond_a

    const/16 v30, 0x0

    :goto_4
    sub-int v22, v16, v30

    .line 505
    .local v22, "spacerCount":I
    const/16 v31, 0x0

    if-lez v22, :cond_b

    div-int v30, v29, v22

    :goto_5
    move/from16 v0, v31

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 507
    .local v23, "spacerSize":I
    if-eqz v11, :cond_d

    .line 508
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v31

    sub-int v25, v30, v31

    .line 509
    .local v25, "startRight":I
    const/4 v10, 0x0

    :goto_6
    if-ge v10, v6, :cond_0

    .line 510
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 511
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 512
    .local v13, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_9

    iget-boolean v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_c

    .line 509
    :cond_9
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 504
    .end local v13    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v22    # "spacerCount":I
    .end local v23    # "spacerSize":I
    .end local v25    # "startRight":I
    .end local v27    # "v":Landroid/view/View;
    :cond_a
    const/16 v30, 0x1

    goto :goto_4

    .line 505
    .restart local v22    # "spacerCount":I
    :cond_b
    const/16 v30, 0x0

    goto :goto_5

    .line 516
    .restart local v13    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .restart local v23    # "spacerSize":I
    .restart local v25    # "startRight":I
    .restart local v27    # "v":Landroid/view/View;
    :cond_c
    iget v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    sub-int v25, v25, v30

    .line 517
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 518
    .restart local v28    # "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 519
    .restart local v9    # "height":I
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 520
    .restart local v26    # "t":I
    sub-int v30, v25, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v30

    move/from16 v2, v26

    move/from16 v3, v25

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 521
    iget v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v30, v0

    add-int v30, v30, v28

    add-int v30, v30, v23

    sub-int v25, v25, v30

    goto :goto_7

    .line 524
    .end local v9    # "height":I
    .end local v13    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v25    # "startRight":I
    .end local v26    # "t":I
    .end local v27    # "v":Landroid/view/View;
    .end local v28    # "width":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v24

    .line 525
    .local v24, "startLeft":I
    const/4 v10, 0x0

    :goto_8
    if-ge v10, v6, :cond_0

    .line 526
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 527
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 528
    .restart local v13    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_e

    iget-boolean v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_f

    .line 525
    :cond_e
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 532
    :cond_f
    iget v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v30, v0

    add-int v24, v24, v30

    .line 533
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 534
    .restart local v28    # "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 535
    .restart local v9    # "height":I
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 536
    .restart local v26    # "t":I
    add-int v30, v24, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 537
    iget v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    add-int v30, v30, v28

    add-int v30, v30, v23

    add-int v24, v24, v30

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 147
    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    .line 148
    .local v4, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v6, v9, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    .line 150
    iget-boolean v6, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_0

    .line 151
    iput v8, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 156
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 157
    .local v5, "widthSize":I
    iget-boolean v6, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v6, :cond_1

    iget v6, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_1

    .line 158
    iput v5, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 159
    iget-object v6, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 162
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .line 163
    .local v1, "childCount":I
    iget-boolean v6, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_3

    if-lez v1, :cond_3

    .line 164
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ActionMenuView;->onMeasureExactFormat(II)V

    .line 174
    :goto_1
    return-void

    .end local v1    # "childCount":I
    .end local v5    # "widthSize":I
    :cond_2
    move v6, v8

    .line 148
    goto :goto_0

    .line 167
    .restart local v1    # "childCount":I
    .restart local v5    # "widthSize":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 168
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 170
    .local v3, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    iput v8, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v8, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 172
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    goto :goto_1
.end method

.method public peekMenu()Landroid/support/v7/view/menu/MenuBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 679
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1
    .param p1, "exclusive"    # Z
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 752
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 753
    return-void
.end method

.method public setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Landroid/support/v7/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Landroid/support/v7/view/menu/MenuBuilder$Callback;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 669
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 670
    iput-object p2, p0, Landroid/support/v7/widget/ActionMenuView;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .line 671
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    .prologue
    .line 141
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    .line 142
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 554
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 555
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 556
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 578
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuView;->mReserveOverflow:Z

    .line 579
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 97
    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 98
    iput p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    .line 99
    if-nez p1, :cond_1

    .line 100
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Landroid/support/v7/widget/ActionMenuPresenter;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 122
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 123
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->setMenuView(Landroid/support/v7/widget/ActionMenuView;)V

    .line 124
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
