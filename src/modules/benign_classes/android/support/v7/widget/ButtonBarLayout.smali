.class public Landroid/support/v7/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ALLOW_STACKING_MIN_HEIGHT_DP:I = 0x140


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 51
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v2

    const/16 v3, 0x140

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    .line 53
    .local v0, "allowStackingDefault":Z
    :goto_0
    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 54
    .local v1, "ta":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout_allowStacking:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 56
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    return-void

    .line 51
    .end local v0    # "allowStackingDefault":Z
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStacked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 137
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setStacked(Z)V
    .locals 4
    .param p1, "stacked"    # Z

    .prologue
    .line 122
    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->setOrientation(I)V

    .line 123
    if-eqz p1, :cond_2

    const/4 v3, 0x5

    :goto_1
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->setGravity(I)V

    .line 124
    sget v3, Landroid/support/v7/appcompat/R$id;->spacer:I

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 125
    .local v2, "spacer":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 126
    if-eqz p1, :cond_3

    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    .line 131
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x2

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_4

    .line 132
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 131
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 122
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "spacer":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 123
    :cond_2
    const/16 v3, 0x50

    goto :goto_1

    .line 126
    .restart local v2    # "spacer":Landroid/view/View;
    :cond_3
    const/4 v3, 0x4

    goto :goto_2

    .line 134
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 71
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 72
    .local v8, "widthSize":I
    iget-boolean v10, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v10, :cond_1

    .line 73
    iget v10, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v8, v10, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 75
    invoke-direct {p0, v7}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 77
    :cond_0
    iput v8, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 79
    :cond_1
    const/4 v6, 0x0

    .line 84
    .local v6, "needsRemeasure":Z
    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    if-ne v10, v11, :cond_5

    .line 85
    const/high16 v10, -0x80000000

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 87
    .local v3, "initialWidthMeasureSpec":I
    const/4 v6, 0x1

    .line 91
    :goto_0
    invoke-super {p0, v3, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 92
    iget-boolean v10, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v10, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v10

    if-nez v10, :cond_3

    .line 95
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xb

    if-lt v10, v11, :cond_6

    .line 97
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result v4

    .line 98
    .local v4, "measuredWidth":I
    const/high16 v10, -0x1000000

    and-int v5, v4, v10

    .line 99
    .local v5, "measuredWidthState":I
    const/high16 v10, 0x1000000

    if-ne v5, v10, :cond_2

    move v7, v9

    .line 110
    .end local v4    # "measuredWidth":I
    .end local v5    # "measuredWidthState":I
    .local v7, "stack":Z
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 111
    invoke-direct {p0, v9}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 113
    const/4 v6, 0x1

    .line 116
    .end local v7    # "stack":Z
    :cond_3
    if-eqz v6, :cond_4

    .line 117
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 119
    :cond_4
    return-void

    .line 89
    .end local v3    # "initialWidthMeasureSpec":I
    :cond_5
    move v3, p1

    .restart local v3    # "initialWidthMeasureSpec":I
    goto :goto_0

    .line 103
    :cond_6
    const/4 v0, 0x0

    .line 104
    .local v0, "childWidthTotal":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_2
    if-ge v2, v1, :cond_7

    .line 105
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v0, v10

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 107
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingLeft()I

    move-result v10

    add-int/2addr v10, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    if-le v10, v8, :cond_8

    move v7, v9

    .restart local v7    # "stack":Z
    :cond_8
    goto :goto_1
.end method

.method public setAllowStacking(Z)V
    .locals 2
    .param p1, "allowStacking"    # Z

    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_1

    .line 61
    iput-boolean p1, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 62
    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->requestLayout()V

    .line 67
    :cond_1
    return-void
.end method
