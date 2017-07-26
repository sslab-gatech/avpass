.class Landroid/support/v7/widget/DropDownListView;
.super Landroid/support/v7/widget/ListViewCompat;
.source "DropDownListView.java"


# instance fields
.field private mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mListSelectionHidden:Z

.field private mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    .line 86
    const/4 v0, 0x0

    sget v1, Landroid/support/v7/appcompat/R$attr;->dropDownListViewStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    iput-boolean p2, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/DropDownListView;->setCacheColorHint(I)V

    .line 89
    return-void
.end method

.method private clearPressedItem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 174
    iput-boolean v3, p0, Landroid/support/v7/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 175
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/DropDownListView;->setPressed(Z)V

    .line 177
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->drawableStateChanged()V

    .line 179
    iget v1, p0, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 180
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 184
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 186
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 188
    :cond_1
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 158
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 159
    .local v0, "id":J
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 160
    return-void
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    const/16 v7, 0x15

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 191
    iput-boolean v5, p0, Landroid/support/v7/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 194
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_0

    .line 195
    invoke-virtual {p0, p3, p4}, Landroid/support/v7/widget/DropDownListView;->drawableHotspotChanged(FF)V

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->isPressed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 198
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/DropDownListView;->setPressed(Z)V

    .line 202
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->layoutChildren()V

    .line 206
    iget v3, p0, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 207
    iget v3, p0, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 208
    .local v2, "motionView":Landroid/view/View;
    if-eqz v2, :cond_2

    if-eq v2, p1, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 209
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    .line 212
    .end local v2    # "motionView":Landroid/view/View;
    :cond_2
    iput p2, p0, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float v0, p3, v3

    .line 216
    .local v0, "childX":F
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v1, p4, v3

    .line 217
    .local v1, "childY":F
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_3

    .line 218
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 220
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 221
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 225
    :cond_4
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/support/v7/widget/DropDownListView;->positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V

    .line 230
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/DropDownListView;->setSelectorEnabled(Z)V

    .line 234
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->refreshDrawableState()V

    .line 235
    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/widget/ListViewCompat;->hasFocus()Z

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

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/widget/ListViewCompat;->hasWindowFocus()Z

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

.method public isFocused()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/widget/ListViewCompat;->isFocused()Z

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

.method public isInTouchMode()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/ListViewCompat;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    .prologue
    const/4 v10, 0x1

    .line 98
    const/4 v4, 0x1

    .line 99
    .local v4, "handledEvent":Z
    const/4 v3, 0x0

    .line 101
    .local v3, "clearPressedItem":Z
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 102
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    .line 135
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    if-eqz v3, :cond_2

    .line 136
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/DropDownListView;->clearPressedItem()V

    .line 140
    :cond_2
    if-eqz v4, :cond_7

    .line 141
    iget-object v8, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    if-nez v8, :cond_3

    .line 142
    new-instance v8, Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-direct {v8, p0}, Landroid/support/v4/widget/ListViewAutoScrollHelper;-><init>(Landroid/widget/ListView;)V

    iput-object v8, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    .line 144
    :cond_3
    iget-object v8, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-virtual {v8, v10}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    .line 145
    iget-object v8, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-virtual {v8, p0, p1}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 150
    :cond_4
    :goto_1
    return v4

    .line 104
    :pswitch_0
    const/4 v4, 0x0

    .line 105
    goto :goto_0

    .line 107
    :pswitch_1
    const/4 v4, 0x0

    .line 110
    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 111
    .local v1, "activeIndex":I
    if-gez v1, :cond_5

    .line 112
    const/4 v4, 0x0

    .line 113
    goto :goto_0

    .line 116
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v6, v8

    .line 117
    .local v6, "x":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 118
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Landroid/support/v7/widget/DropDownListView;->pointToPosition(II)I

    move-result v5

    .line 119
    .local v5, "position":I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_6

    .line 120
    const/4 v3, 0x1

    .line 121
    goto :goto_0

    .line 124
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 125
    .local v2, "child":Landroid/view/View;
    int-to-float v8, v6

    int-to-float v9, v7

    invoke-direct {p0, v2, v5, v8, v9}, Landroid/support/v7/widget/DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    .line 126
    const/4 v4, 0x1

    .line 128
    if-ne v0, v10, :cond_0

    .line 129
    invoke-direct {p0, v2, v5}, Landroid/support/v7/widget/DropDownListView;->clickPressedItem(Landroid/view/View;I)V

    goto :goto_0

    .line 146
    .end local v1    # "activeIndex":I
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "position":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_7
    iget-object v8, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    if-eqz v8, :cond_4

    .line 147
    iget-object v8, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    goto :goto_1

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method setListSelectionHidden(Z)V
    .locals 0
    .param p1, "hideListSelection"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Landroid/support/v7/widget/DropDownListView;->mListSelectionHidden:Z

    .line 171
    return-void
.end method

.method protected touchModeDrawsInPressedStateCompat()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mDrawsInPressedState:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/widget/ListViewCompat;->touchModeDrawsInPressedStateCompat()Z

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
