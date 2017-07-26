.class Landroid/support/v7/app/AppCompatDelegateImplV9;
.super Landroid/support/v7/app/AppCompatDelegateImplBase;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;
.implements Landroid/support/v4/view/LayoutInflaterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;,
        Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;,
        Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;,
        Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;,
        Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;
    }
.end annotation


# instance fields
.field private mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

.field mActionMode:Landroid/support/v7/view/ActionMode;

.field mActionModePopup:Landroid/widget/PopupWindow;

.field mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

.field private mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

.field private mClosingActionMenu:Z

.field private mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

.field private mEnableDefaultActionBarUp:Z

.field mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private mFeatureIndeterminateProgress:Z

.field private mFeatureProgress:Z

.field mInvalidatePanelMenuFeatures:I

.field mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mLongPressBackDown:Z

.field private mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

.field private mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

.field private mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

.field mShowActionModePopup:Ljava/lang/Runnable;

.field private mStatusGuard:Landroid/view/View;

.field private mSubDecor:Landroid/view/ViewGroup;

.field private mSubDecorInstalled:Z

.field private mTempRect1:Landroid/graphics/Rect;

.field private mTempRect2:Landroid/graphics/Rect;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Landroid/support/v7/app/AppCompatCallback;

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplBase;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 125
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$1;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 148
    return-void
.end method

.method private applyFixedSizeWindow()V
    .locals 7

    .prologue
    .line 527
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ContentFrameLayout;

    .line 533
    .local v1, "cfl":Landroid/support/v7/widget/ContentFrameLayout;
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 534
    .local v2, "windowDecor":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 535
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 536
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 534
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/support/v7/widget/ContentFrameLayout;->setDecorPadding(IIII)V

    .line 538
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 539
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 540
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 542
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 543
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    .line 544
    invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v4

    .line 543
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 546
    :cond_0
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 547
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    .line 548
    invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v4

    .line 547
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 550
    :cond_1
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 551
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    .line 552
    invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v4

    .line 551
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 554
    :cond_2
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 555
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    .line 556
    invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v4

    .line 555
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 558
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 560
    invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    .line 561
    return-void
.end method

.method private createSubDecor()Landroid/view/ViewGroup;
    .locals 15

    .prologue
    const v14, 0x1020002

    const/16 v13, 0x6d

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 347
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v8, v9}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 349
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 350
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 351
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 355
    :cond_0
    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowNoTitle:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 356
    invoke-virtual {p0, v12}, Landroid/support/v7/app/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    .line 361
    :cond_1
    :goto_0
    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 362
    invoke-virtual {p0, v13}, Landroid/support/v7/app/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    .line 364
    :cond_2
    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 365
    const/16 v8, 0xa

    invoke-virtual {p0, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    .line 367
    :cond_3
    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mIsFloating:Z

    .line 368
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 371
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 373
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 374
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    .line 377
    .local v5, "subDecor":Landroid/view/ViewGroup;
    iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    if-nez v8, :cond_a

    .line 378
    iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mIsFloating:Z

    if-eqz v8, :cond_6

    .line 380
    sget v8, Landroid/support/v7/appcompat/R$layout;->abc_dialog_title_material:I

    invoke-virtual {v3, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5    # "subDecor":Landroid/view/ViewGroup;
    check-cast v5, Landroid/view/ViewGroup;

    .line 384
    .restart local v5    # "subDecor":Landroid/view/ViewGroup;
    iput-boolean v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    iput-boolean v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    .line 465
    :cond_4
    :goto_1
    if-nez v5, :cond_d

    .line 466
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", windowActionBarOverlay: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", android:windowIsFloating: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mIsFloating:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", windowActionModeOverlay: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", windowNoTitle: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " }"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 357
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "subDecor":Landroid/view/ViewGroup;
    :cond_5
    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 359
    const/16 v8, 0x6c

    invoke-virtual {p0, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    goto/16 :goto_0

    .line 385
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "subDecor":Landroid/view/ViewGroup;
    :cond_6
    iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v8, :cond_4

    .line 391
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 392
    .local v4, "outValue":Landroid/util/TypedValue;
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget v9, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v8, v9, v4, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 395
    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_9

    .line 396
    new-instance v6, Landroid/support/v7/view/ContextThemeWrapper;

    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v6, v8, v9}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 402
    .local v6, "themedContext":Landroid/content/Context;
    :goto_2
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Landroid/support/v7/appcompat/R$layout;->abc_screen_toolbar:I

    .line 403
    invoke-virtual {v8, v9, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5    # "subDecor":Landroid/view/ViewGroup;
    check-cast v5, Landroid/view/ViewGroup;

    .line 405
    .restart local v5    # "subDecor":Landroid/view/ViewGroup;
    sget v8, Landroid/support/v7/appcompat/R$id;->decor_content_parent:I

    .line 406
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/DecorContentParent;

    iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    .line 407
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/support/v7/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 412
    iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    if-eqz v8, :cond_7

    .line 413
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v8, v13}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    .line 415
    :cond_7
    iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureProgress:Z

    if-eqz v8, :cond_8

    .line 416
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    .line 418
    :cond_8
    iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureIndeterminateProgress:Z

    if-eqz v8, :cond_4

    .line 419
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    goto/16 :goto_1

    .line 398
    .end local v6    # "themedContext":Landroid/content/Context;
    :cond_9
    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    .restart local v6    # "themedContext":Landroid/content/Context;
    goto :goto_2

    .line 423
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .end local v6    # "themedContext":Landroid/content/Context;
    :cond_a
    iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    if-eqz v8, :cond_b

    .line 424
    sget v8, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v3, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5    # "subDecor":Landroid/view/ViewGroup;
    check-cast v5, Landroid/view/ViewGroup;

    .line 430
    .restart local v5    # "subDecor":Landroid/view/ViewGroup;
    :goto_3
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_c

    .line 433
    new-instance v8, Landroid/support/v7/app/AppCompatDelegateImplV9$2;

    invoke-direct {v8, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$2;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-static {v5, v8}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    goto/16 :goto_1

    .line 427
    :cond_b
    sget v8, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple:I

    invoke-virtual {v3, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5    # "subDecor":Landroid/view/ViewGroup;
    check-cast v5, Landroid/view/ViewGroup;

    .restart local v5    # "subDecor":Landroid/view/ViewGroup;
    goto :goto_3

    :cond_c
    move-object v8, v5

    .line 455
    check-cast v8, Landroid/support/v7/widget/FitWindowsViewGroup;

    new-instance v9, Landroid/support/v7/app/AppCompatDelegateImplV9$3;

    invoke-direct {v9, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$3;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-interface {v8, v9}, Landroid/support/v7/widget/FitWindowsViewGroup;->setOnFitSystemWindowsListener(Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V

    goto/16 :goto_1

    .line 476
    :cond_d
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-nez v8, :cond_e

    .line 477
    sget v8, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTitleView:Landroid/widget/TextView;

    .line 481
    :cond_e
    invoke-static {v5}, Landroid/support/v7/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 483
    sget v8, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ContentFrameLayout;

    .line 486
    .local v2, "contentView":Landroid/support/v7/widget/ContentFrameLayout;
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v8, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 487
    .local v7, "windowContentView":Landroid/view/ViewGroup;
    if-eqz v7, :cond_10

    .line 490
    :goto_4
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_f

    .line 491
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 492
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 493
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 498
    .end local v1    # "child":Landroid/view/View;
    :cond_f
    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setId(I)V

    .line 499
    invoke-virtual {v2, v14}, Landroid/support/v7/widget/ContentFrameLayout;->setId(I)V

    .line 503
    instance-of v8, v7, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_10

    .line 504
    check-cast v7, Landroid/widget/FrameLayout;

    .end local v7    # "windowContentView":Landroid/view/ViewGroup;
    invoke-virtual {v7, v11}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 509
    :cond_10
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v8, v5}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 511
    new-instance v8, Landroid/support/v7/app/AppCompatDelegateImplV9$4;

    invoke-direct {v8, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$4;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/ContentFrameLayout;->setAttachListener(Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;)V

    .line 521
    return-object v5
.end method

.method private ensureSubDecor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 319
    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    if-nez v2, :cond_2

    .line 320
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->createSubDecor()Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    .line 323
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 324
    .local v1, "title":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 325
    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 328
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->applyFixedSizeWindow()V

    .line 330
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onSubDecorInstalled(Landroid/view/ViewGroup;)V

    .line 332
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    .line 339
    invoke-virtual {p0, v3, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 340
    .local v0, "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v2, :cond_2

    .line 341
    :cond_1
    const/16 v2, 0x6c

    invoke-direct {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->invalidatePanelMenu(I)V

    .line 344
    .end local v0    # "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .end local v1    # "title":Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method

.method private initializePanelContent(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z
    .locals 4
    .param p1, "st"    # Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1286
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1287
    iget-object v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1303
    :cond_0
    :goto_0
    return v1

    .line 1291
    :cond_1
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v3, :cond_2

    move v1, v2

    .line 1292
    goto :goto_0

    .line 1295
    :cond_2
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    if-nez v3, :cond_3

    .line 1296
    new-instance v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    iput-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    .line 1299
    :cond_3
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    invoke-virtual {p1, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->getListMenuView(Landroid/support/v7/view/menu/MenuPresenter$Callback;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v0

    .line 1301
    .local v0, "menuView":Landroid/support/v7/view/menu/MenuView;
    check-cast v0, Landroid/view/View;

    .end local v0    # "menuView":Landroid/support/v7/view/menu/MenuView;
    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1303
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private initializePanelDecor(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z
    .locals 2
    .param p1, "st"    # Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    .prologue
    .line 1192
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1193
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/content/Context;)V

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    .line 1194
    const/16 v0, 0x51

    iput v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->gravity:I

    .line 1195
    const/4 v0, 0x1

    return v0
.end method

.method private initializePanelMenu(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z
    .locals 9
    .param p1, "st"    # Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    .prologue
    const/4 v8, 0x1

    .line 1243
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    .line 1246
    .local v1, "context":Landroid/content/Context;
    iget v6, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    if-eqz v6, :cond_0

    iget v6, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    const/16 v7, 0x6c

    if-ne v6, v7, :cond_3

    :cond_0
    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v6, :cond_3

    .line 1248
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1249
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1250
    .local v0, "baseTheme":Landroid/content/res/Resources$Theme;
    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v0, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1252
    const/4 v5, 0x0

    .line 1253
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_4

    .line 1254
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1255
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1256
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1257
    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v5, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1264
    :goto_0
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_2

    .line 1265
    if-nez v5, :cond_1

    .line 1266
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1267
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1269
    :cond_1
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1272
    :cond_2
    if-eqz v5, :cond_3

    .line 1273
    new-instance v2, Landroid/support/v7/view/ContextThemeWrapper;

    const/4 v6, 0x0

    invoke-direct {v2, v1, v6}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1274
    .end local v1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v1, v2

    .line 1278
    .end local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .end local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_3
    new-instance v3, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v3, v1}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1279
    .local v3, "menu":Landroid/support/v7/view/menu/MenuBuilder;
    invoke-virtual {v3, p0}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 1280
    invoke-virtual {p1, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->setMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1282
    return v8

    .line 1260
    .end local v3    # "menu":Landroid/support/v7/view/menu/MenuBuilder;
    .restart local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v4    # "outValue":Landroid/util/TypedValue;
    .restart local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_4
    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v0, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0
.end method

.method private invalidatePanelMenu(I)V
    .locals 3
    .param p1, "featureId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1607
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I

    .line 1609
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_0

    .line 1610
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1611
    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z

    .line 1613
    :cond_0
    return-void
.end method

.method private onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1461
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1462
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 1463
    .local v0, "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v1, :cond_0

    .line 1464
    invoke-direct {p0, v0, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1468
    .end local v0    # "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onKeyUpPanel(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1472
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v5, :cond_1

    move v1, v4

    .line 1521
    :cond_0
    :goto_0
    return v1

    .line 1476
    :cond_1
    const/4 v1, 0x0

    .line 1477
    .local v1, "handled":Z
    invoke-virtual {p0, p1, v6}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v3

    .line 1478
    .local v3, "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    if-nez p1, :cond_4

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    .line 1479
    invoke-interface {v5}, Landroid/support/v7/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    .line 1480
    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1481
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v5}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1482
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1483
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v5}, Landroid/support/v7/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v1

    .line 1512
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 1513
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1515
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_8

    .line 1516
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 1486
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_3
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v5}, Landroid/support/v7/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v1

    goto :goto_1

    .line 1489
    :cond_4
    iget-boolean v5, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v5, :cond_5

    iget-boolean v5, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    if-eqz v5, :cond_6

    .line 1492
    :cond_5
    iget-boolean v1, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    .line 1494
    invoke-virtual {p0, v3, v6}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_1

    .line 1495
    :cond_6
    iget-boolean v5, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    if-eqz v5, :cond_2

    .line 1496
    const/4 v2, 0x1

    .line 1497
    .local v2, "show":Z
    iget-boolean v5, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v5, :cond_7

    .line 1500
    iput-boolean v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 1501
    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    .line 1504
    :cond_7
    if-eqz v2, :cond_2

    .line 1506
    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->openPanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1507
    const/4 v1, 0x1

    goto :goto_1

    .line 1518
    .end local v2    # "show":Z
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_8
    const-string v4, "AppCompatDelegate"

    const-string v5, "Couldn\'t get audio manager"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private openPanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 18
    .param p1, "st"    # Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1093
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1189
    :cond_0
    :goto_0
    return-void

    .line 1099
    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    if-nez v4, :cond_2

    .line 1100
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    .line 1101
    .local v13, "context":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 1102
    .local v12, "config":Landroid/content/res/Configuration;
    iget v4, v12, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    const/4 v15, 0x1

    .line 1104
    .local v15, "isXLarge":Z
    :goto_1
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4

    const/4 v14, 0x1

    .line 1107
    .local v14, "isHoneycombApp":Z
    :goto_2
    if-eqz v15, :cond_2

    if-nez v14, :cond_0

    .line 1112
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "isHoneycombApp":Z
    .end local v15    # "isXLarge":Z
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v11

    .line 1113
    .local v11, "cb":Landroid/view/Window$Callback;
    if-eqz v11, :cond_5

    move-object/from16 v0, p1

    iget v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v11, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1115
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_0

    .line 1102
    .end local v11    # "cb":Landroid/view/Window$Callback;
    .restart local v12    # "config":Landroid/content/res/Configuration;
    .restart local v13    # "context":Landroid/content/Context;
    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 1104
    .restart local v15    # "isXLarge":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 1119
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v15    # "isXLarge":Z
    .restart local v11    # "cb":Landroid/view/Window$Callback;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowManager;

    .line 1120
    .local v17, "wm":Landroid/view/WindowManager;
    if-eqz v17, :cond_0

    .line 1125
    invoke-direct/range {p0 .. p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1129
    const/4 v3, -0x2

    .line 1130
    .local v3, "width":I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_6

    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_c

    .line 1131
    :cond_6
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-nez v4, :cond_b

    .line 1133
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->initializePanelDecor(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 1141
    :cond_7
    :goto_3
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->initializePanelContent(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->hasPanelItems()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1145
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1146
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_8

    .line 1147
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1150
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    move-object/from16 v0, p1

    iget v10, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->background:I

    .line 1151
    .local v10, "backgroundResId":I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1153
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    .line 1154
    .local v16, "shownPanelParent":Landroid/view/ViewParent;
    if-eqz v16, :cond_9

    move-object/from16 v0, v16

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_9

    .line 1155
    check-cast v16, Landroid/view/ViewGroup;

    .end local v16    # "shownPanelParent":Landroid/view/ViewParent;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1157
    :cond_9
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1163
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1164
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 1175
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "backgroundResId":I
    :cond_a
    :goto_4
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    .line 1177
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    move-object/from16 v0, p1

    iget v5, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->x:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->y:I

    const/16 v7, 0x3ea

    const/high16 v8, 0x820000

    const/4 v9, -0x3

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1184
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->gravity:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1185
    move-object/from16 v0, p1

    iget v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->windowAnimations:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1187
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    invoke-interface {v0, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1188
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    goto/16 :goto_0

    .line 1135
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_b
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_7

    .line 1137
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_3

    .line 1166
    :cond_c
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v4, :cond_a

    .line 1169
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1170
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_a

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    .line 1171
    const/4 v3, -0x1

    goto :goto_4
.end method

.method private performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 2
    .param p1, "st"    # Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    .line 1583
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1584
    const/4 v0, 0x0

    .line 1603
    :cond_0
    :goto_0
    return v0

    .line 1587
    :cond_1
    const/4 v0, 0x0

    .line 1591
    .local v0, "handled":Z
    iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_3

    .line 1593
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Landroid/support/v7/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1596
    :cond_3
    if-eqz v0, :cond_0

    .line 1598
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-nez v1, :cond_0

    .line 1599
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method private preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "st"    # Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1307
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1407
    :cond_0
    :goto_0
    return v5

    .line 1312
    :cond_1
    iget-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    if-eqz v3, :cond_2

    move v5, v4

    .line 1313
    goto :goto_0

    .line 1316
    :cond_2
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eq v3, p1, :cond_3

    .line 1318
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    invoke-virtual {p0, v3, v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1321
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1323
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_4

    .line 1324
    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 1327
    :cond_4
    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    if-eqz v3, :cond_5

    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    const/16 v6, 0x6c

    if-ne v3, v6, :cond_c

    :cond_5
    move v1, v4

    .line 1330
    .local v1, "isActionBarMenu":Z
    :goto_1
    if-eqz v1, :cond_6

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v3, :cond_6

    .line 1333
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v3}, Landroid/support/v7/widget/DecorContentParent;->setMenuPrepared()V

    .line 1336
    :cond_6
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v3, :cond_12

    if-eqz v1, :cond_7

    .line 1337
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    instance-of v3, v3, Landroid/support/v7/app/ToolbarActionBar;

    if-nez v3, :cond_12

    .line 1340
    :cond_7
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v3, :cond_8

    iget-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v3, :cond_e

    .line 1341
    :cond_8
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v3, :cond_9

    .line 1342
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->initializePanelMenu(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v3, :cond_0

    .line 1347
    :cond_9
    if-eqz v1, :cond_b

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v3, :cond_b

    .line 1348
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    if-nez v3, :cond_a

    .line 1349
    new-instance v3, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    iput-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    .line 1351
    :cond_a
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    iget-object v6, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v7, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-interface {v3, v6, v7}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1356
    :cond_b
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1357
    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    iget-object v6, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v3, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1359
    invoke-virtual {p1, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->setMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1361
    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v3, :cond_0

    .line 1363
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-interface {v3, v8, v4}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    goto/16 :goto_0

    .end local v1    # "isActionBarMenu":Z
    :cond_c
    move v1, v5

    .line 1327
    goto :goto_1

    .line 1369
    .restart local v1    # "isActionBarMenu":Z
    :cond_d
    iput-boolean v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    .line 1374
    :cond_e
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1378
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v3, :cond_f

    .line 1379
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v6, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v3, v6}, Landroid/support/v7/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 1380
    iput-object v8, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1384
    :cond_f
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v6, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v5, v3, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1385
    if-eqz v1, :cond_10

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v3, :cond_10

    .line 1388
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-interface {v3, v8, v4}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1390
    :cond_10
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto/16 :goto_0

    .line 1395
    :cond_11
    if-eqz p2, :cond_13

    .line 1396
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    .line 1395
    :goto_2
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 1397
    .local v2, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v3

    if-eq v3, v4, :cond_14

    move v3, v4

    :goto_3
    iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->qwertyMode:Z

    .line 1398
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-boolean v6, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v3, v6}, Landroid/support/v7/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 1399
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1403
    .end local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_12
    iput-boolean v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 1404
    iput-boolean v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    .line 1405
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move v5, v4

    .line 1407
    goto/16 :goto_0

    .line 1396
    :cond_13
    const/4 v3, -0x1

    goto :goto_2

    .restart local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_14
    move v3, v5

    .line 1397
    goto :goto_3
.end method

.method private reopenMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 7
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "toggleMenuMode"    # Z

    .prologue
    const/16 v6, 0x6c

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1199
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v2}, Landroid/support/v7/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    .line 1200
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    .line 1201
    invoke-interface {v2}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1203
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1205
    .local v0, "cb":Landroid/view/Window$Callback;
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v2}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_4

    .line 1206
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1208
    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1210
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1211
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1214
    :cond_2
    invoke-virtual {p0, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 1218
    .local v1, "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v3, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 1219
    invoke-interface {v0, v4, v2, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1220
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1221
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v2}, Landroid/support/v7/widget/DecorContentParent;->showOverflowMenu()Z

    .line 1240
    .end local v0    # "cb":Landroid/view/Window$Callback;
    .end local v1    # "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    :cond_3
    :goto_0
    return-void

    .line 1225
    .restart local v0    # "cb":Landroid/view/Window$Callback;
    :cond_4
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v2}, Landroid/support/v7/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 1226
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1227
    invoke-virtual {p0, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 1228
    .restart local v1    # "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1234
    .end local v0    # "cb":Landroid/view/Window$Callback;
    .end local v1    # "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    :cond_5
    invoke-virtual {p0, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 1236
    .restart local v1    # "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    iput-boolean v5, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    .line 1237
    invoke-virtual {p0, v1, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1239
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->openPanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private sanitizeWindowFeatureId(I)I
    .locals 2
    .param p1, "featureId"    # I

    .prologue
    .line 1726
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 1727
    const-string v0, "AppCompatDelegate"

    const-string v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    const/16 p1, 0x6c

    .line 1736
    .end local p1    # "featureId":I
    :cond_0
    :goto_0
    return p1

    .line 1730
    .restart local p1    # "featureId":I
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 1731
    const-string v0, "AppCompatDelegate"

    const-string v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    const/16 p1, 0x6d

    goto :goto_0
.end method

.method private shouldInheritContext(Landroid/view/ViewParent;)Z
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewParent;

    .prologue
    const/4 v2, 0x0

    .line 1025
    if-nez p1, :cond_0

    move v1, v2

    .line 1043
    :goto_0
    return v1

    .line 1029
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1031
    .local v0, "windowDecor":Landroid/view/View;
    :goto_1
    if-nez p1, :cond_1

    .line 1036
    const/4 v1, 0x1

    goto :goto_0

    .line 1037
    :cond_1
    if-eq p1, v0, :cond_2

    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    .line 1038
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v1, v2

    .line 1043
    goto :goto_0

    .line 1045
    :cond_3
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_1
.end method

.method private throwFeatureRequestIfSubDecorInstalled()V
    .locals 2

    .prologue
    .line 1719
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    .line 1720
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1723
    :cond_0
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 299
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 300
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 301
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 303
    return-void
.end method

.method callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1081
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/view/LayoutInflater$Factory;

    if-eqz v1, :cond_0

    .line 1082
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/view/LayoutInflater$Factory;

    .line 1083
    invoke-interface {v1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 1084
    .local v0, "result":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1088
    .end local v0    # "result":Landroid/view/View;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "panel"    # Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1526
    if-nez p3, :cond_1

    .line 1528
    if-nez p2, :cond_0

    .line 1529
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1530
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    aget-object p2, v0, p1

    .line 1534
    :cond_0
    if-eqz p2, :cond_1

    .line 1536
    iget-object p3, p2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 1541
    :cond_1
    if-eqz p2, :cond_3

    iget-boolean v0, p2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v0, :cond_3

    .line 1550
    :cond_2
    :goto_0
    return-void

    .line 1544
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1548
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method checkCloseActionMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 1411
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mClosingActionMenu:Z

    if-eqz v1, :cond_0

    .line 1422
    :goto_0
    return-void

    .line 1415
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mClosingActionMenu:Z

    .line 1416
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorContentParent;->dismissPopups()V

    .line 1417
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1418
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1419
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1421
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mClosingActionMenu:Z

    goto :goto_0
.end method

.method closePanel(I)V
    .locals 2
    .param p1, "featureId"    # I

    .prologue
    const/4 v1, 0x1

    .line 1425
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1426
    return-void
.end method

.method closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V
    .locals 5
    .param p1, "st"    # Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .param p2, "doCallback"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1429
    if-eqz p2, :cond_1

    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    .line 1430
    invoke-interface {v1}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1431
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->checkCloseActionMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1458
    :cond_0
    :goto_0
    return-void

    .line 1435
    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1436
    .local v0, "wm":Landroid/view/WindowManager;
    if-eqz v0, :cond_2

    iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 1437
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1439
    if-eqz p2, :cond_2

    .line 1440
    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    invoke-virtual {p0, v1, p1, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V

    .line 1444
    :cond_2
    iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 1445
    iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    .line 1446
    iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    .line 1449
    iput-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1453
    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    .line 1455
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-ne v1, p1, :cond_0

    .line 1456
    iput-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    goto :goto_0
.end method

.method public createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 1008
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_1

    move v6, v7

    .line 1010
    .local v6, "isPre21":Z
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

    if-nez v0, :cond_0

    .line 1011
    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

    .line 1015
    :cond_0
    if-eqz v6, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->shouldInheritContext(Landroid/view/ViewParent;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v5, v7

    .line 1017
    .local v5, "inheritContext":Z
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

    .line 1020
    invoke-static {}, Landroid/support/v7/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1017
    invoke-virtual/range {v0 .. v8}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .end local v5    # "inheritContext":Z
    .end local v6    # "isPre21":Z
    :cond_1
    move v6, v1

    .line 1008
    goto :goto_0

    .restart local v6    # "isPre21":Z
    :cond_2
    move v5, v1

    .line 1015
    goto :goto_1
.end method

.method dismissPopups()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1744
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v1, :cond_0

    .line 1745
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorContentParent;->dismissPopups()V

    .line 1748
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    .line 1749
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1750
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1752
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1758
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 1760
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->endOnGoingFadeAnimation()V

    .line 1762
    invoke-virtual {p0, v3, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 1763
    .local v0, "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_3

    .line 1764
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->close()V

    .line 1766
    :cond_3
    return-void

    .line 1753
    .end local v0    # "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 939
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x52

    if-ne v4, v5, :cond_0

    .line 941
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v4, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 950
    :goto_0
    return v3

    .line 946
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 947
    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 948
    .local v0, "action":I
    if-nez v0, :cond_1

    move v1, v3

    .line 950
    .local v1, "isDown":Z
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0, v2, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 948
    .end local v1    # "isDown":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 950
    .restart local v1    # "isDown":Z
    :cond_2
    invoke-virtual {p0, v2, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method doInvalidatePanelMenu(I)V
    .locals 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1616
    invoke-virtual {p0, p1, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 1617
    .local v1, "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    const/4 v0, 0x0

    .line 1618
    .local v0, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v2, :cond_1

    .line 1619
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "savedActionViewStates":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1620
    .restart local v0    # "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Landroid/support/v7/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1621
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1622
    iput-object v0, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1625
    :cond_0
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1626
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->clear()V

    .line 1628
    :cond_1
    iput-boolean v4, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    .line 1629
    iput-boolean v4, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    .line 1632
    const/16 v2, 0x6c

    if-eq p1, v2, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v2, :cond_3

    .line 1634
    invoke-virtual {p0, v3, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 1635
    if-eqz v1, :cond_3

    .line 1636
    iput-boolean v3, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 1637
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1640
    :cond_3
    return-void
.end method

.method endOnGoingFadeAnimation()V
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 881
    :cond_0
    return-void
.end method

.method findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1553
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    .line 1554
    .local v3, "panels":[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v3, :cond_0

    array-length v0, v3

    .line 1555
    .local v0, "N":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1556
    aget-object v2, v3, v1

    .line 1557
    .local v2, "panel":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v2, :cond_1

    iget-object v4, v2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_1

    .line 1561
    .end local v2    # "panel":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    :goto_2
    return-object v2

    .line 1554
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1555
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "panel":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1561
    .end local v2    # "panel":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 231
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1566
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    .local v0, "ar":[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-gt v3, p1, :cond_2

    .line 1567
    :cond_0
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    .line 1568
    .local v1, "nar":[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v0, :cond_1

    .line 1569
    array-length v3, v0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1571
    :cond_1
    move-object v0, v1

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    .line 1574
    .end local v1    # "nar":[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    :cond_2
    aget-object v2, v0, p1

    .line 1575
    .local v2, "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    if-nez v2, :cond_3

    .line 1576
    new-instance v2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    .end local v2    # "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    invoke-direct {v2, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;-><init>(I)V

    .restart local v2    # "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    aput-object v2, v0, p1

    .line 1578
    :cond_3
    return-object v2
.end method

.method getSubDecor()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1740
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public hasWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 607
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->sanitizeWindowFeatureId(I)I

    move-result p1

    .line 608
    sparse-switch p1, :sswitch_data_0

    .line 622
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    :goto_0
    return v0

    .line 610
    :sswitch_0
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    goto :goto_0

    .line 612
    :sswitch_1
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    goto :goto_0

    .line 614
    :sswitch_2
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    goto :goto_0

    .line 616
    :sswitch_3
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureProgress:Z

    goto :goto_0

    .line 618
    :sswitch_4
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureIndeterminateProgress:Z

    goto :goto_0

    .line 620
    :sswitch_5
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    goto :goto_0

    .line 608
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method public initWindowDecorActionBar()V
    .locals 3

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 175
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 180
    new-instance v1, Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    invoke-direct {v1, v0, v2}, Landroid/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 185
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_0

    .line 182
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 183
    new-instance v1, Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroid/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    goto :goto_1
.end method

.method public installViewFactory()V
    .locals 3

    .prologue
    .line 1051
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1052
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1053
    invoke-static {v0, p0}, Landroid/support/v4/view/LayoutInflaterCompat;->setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    invoke-static {v0}, Landroid/support/v4/view/LayoutInflaterCompat;->getFactory(Landroid/view/LayoutInflater;)Landroid/support/v4/view/LayoutInflaterFactory;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;

    if-nez v1, :cond_0

    .line 1057
    const-string v1, "AppCompatDelegate"

    const-string v2, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 712
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 713
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    :goto_0
    return-void

    .line 715
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->invalidatePanelMenu(I)V

    goto :goto_0
.end method

.method onBackPressed()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 885
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v2, :cond_1

    .line 886
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v2}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 897
    :cond_0
    :goto_0
    return v1

    .line 891
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 892
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->collapseActionView()Z

    move-result v2

    if-nez v2, :cond_0

    .line 897
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 238
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    if-eqz v1, :cond_0

    .line 241
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 242
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 248
    .end local v0    # "ab":Landroid/support/v7/app/ActionBar;
    :cond_0
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->onConfigurationChanged(Landroid/content/Context;)V

    .line 251
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->applyDayNight()Z

    .line 252
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 152
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 156
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-nez v0, :cond_1

    .line 157
    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mEnableDefaultActionBarUp:Z

    .line 163
    .end local v0    # "ab":Landroid/support/v7/app/ActionBar;
    :cond_0
    :goto_0
    return-void

    .line 159
    .restart local v0    # "ab":Landroid/support/v7/app/ActionBar;
    :cond_1
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1070
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 1071
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1076
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 307
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 311
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplBase;->onDestroy()V

    .line 313
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->onDestroy()V

    .line 316
    :cond_1
    return-void
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 981
    sparse-switch p1, :sswitch_data_0

    .line 997
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    .line 1000
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    :cond_0
    move v0, v1

    .line 1002
    :goto_1
    return v0

    .line 983
    :sswitch_0
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 991
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    :goto_2
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mLongPressBackDown:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 981
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 903
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 904
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 934
    :cond_0
    :goto_0
    return v3

    .line 910
    :cond_1
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v5, :cond_2

    .line 911
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-direct {p0, v5, v6, p2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 913
    .local v1, "handled":Z
    if-eqz v1, :cond_2

    .line 914
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v4, :cond_0

    .line 915
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    iput-boolean v3, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    goto :goto_0

    .line 925
    .end local v1    # "handled":Z
    :cond_2
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-nez v5, :cond_3

    .line 926
    invoke-virtual {p0, v4, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v2

    .line 927
    .local v2, "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 928
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-direct {p0, v2, v5, p2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 929
    .restart local v1    # "handled":Z
    iput-boolean v4, v2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 930
    if-nez v1, :cond_0

    .end local v1    # "handled":Z
    .end local v2    # "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    :cond_3
    move v3, v4

    .line 934
    goto :goto_0
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 954
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v2, v3

    .line 977
    :cond_1
    :goto_0
    return v2

    .line 956
    :sswitch_0
    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyUpPanel(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 959
    :sswitch_1
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mLongPressBackDown:Z

    .line 960
    .local v1, "wasLongPressBackDown":Z
    iput-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mLongPressBackDown:Z

    .line 962
    invoke-virtual {p0, v3, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 963
    .local v0, "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v0, :cond_2

    iget-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-eqz v4, :cond_2

    .line 964
    if-nez v1, :cond_1

    .line 968
    invoke-virtual {p0, v0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_0

    .line 972
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onBackPressed()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 954
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 667
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 668
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 669
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 670
    .local v1, "panel":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v1, :cond_0

    .line 671
    iget v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    .line 674
    .end local v1    # "panel":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 679
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->reopenMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 680
    return-void
.end method

.method onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 655
    const/16 v2, 0x6c

    if-ne p1, v2, :cond_1

    .line 656
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 657
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 662
    .end local v0    # "ab":Landroid/support/v7/app/ActionBar;
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onPanelClosed(ILandroid/view/Menu;)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 638
    const/16 v2, 0x6c

    if-ne p1, v2, :cond_1

    .line 639
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 640
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 651
    .end local v0    # "ab":Landroid/support/v7/app/ActionBar;
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    if-nez p1, :cond_0

    .line 646
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 647
    .local v1, "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    iget-boolean v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_0

    .line 648
    invoke-virtual {p0, v1, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 168
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 169
    return-void
.end method

.method public onPostResume()V
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 265
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 266
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 268
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 257
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 258
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 260
    :cond_0
    return-void
.end method

.method onSubDecorInstalled(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "subDecor"    # Landroid/view/ViewGroup;

    .prologue
    .line 524
    return-void
.end method

.method onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 627
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 630
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 631
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public requestWindowFeature(I)Z
    .locals 3
    .param p1, "featureId"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 565
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->sanitizeWindowFeatureId(I)I

    move-result p1

    .line 567
    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x6c

    if-ne p1, v2, :cond_0

    .line 602
    :goto_0
    return v0

    .line 570
    :cond_0
    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v2, :cond_1

    if-ne p1, v1, :cond_1

    .line 572
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    .line 575
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 602
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    goto :goto_0

    .line 577
    :sswitch_0
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 578
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    move v0, v1

    .line 579
    goto :goto_0

    .line 581
    :sswitch_1
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 582
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    move v0, v1

    .line 583
    goto :goto_0

    .line 585
    :sswitch_2
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 586
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    move v0, v1

    .line 587
    goto :goto_0

    .line 589
    :sswitch_3
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 590
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureProgress:Z

    move v0, v1

    .line 591
    goto :goto_0

    .line 593
    :sswitch_4
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 594
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureIndeterminateProgress:Z

    move v0, v1

    .line 595
    goto :goto_0

    .line 597
    :sswitch_5
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 598
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    move v0, v1

    .line 599
    goto :goto_0

    .line 575
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 281
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 282
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 283
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 284
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 285
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 286
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 272
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 273
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 274
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 275
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 276
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 277
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 290
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 291
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 292
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 293
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 295
    return-void
.end method

.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .locals 4
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;

    .prologue
    const/4 v3, 0x0

    .line 192
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 225
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 198
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    instance-of v2, v0, Landroid/support/v7/app/WindowDecorActionBar;

    if-eqz v2, :cond_1

    .line 199
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_1
    iput-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mMenuInflater:Landroid/view/MenuInflater;

    .line 209
    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->onDestroy()V

    .line 213
    :cond_2
    if-eqz p1, :cond_3

    .line 214
    new-instance v1, Landroid/support/v7/app/ToolbarActionBar;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    .line 215
    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-direct {v1, p1, v2, v3}, Landroid/support/v7/app/ToolbarActionBar;-><init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 216
    .local v1, "tbab":Landroid/support/v7/app/ToolbarActionBar;
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 217
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/support/v7/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 224
    .end local v1    # "tbab":Landroid/support/v7/app/ToolbarActionBar;
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->invalidateOptionsMenu()V

    goto :goto_0

    .line 219
    :cond_3
    iput-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 221
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_1
.end method

.method final shouldAnimateActionModeView()Z
    .locals 1

    .prologue
    .line 874
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 4
    .param p1, "callback"    # Landroid/support/v7/view/ActionMode$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 684
    if-nez p1, :cond_0

    .line 685
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ActionMode callback can not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 688
    :cond_0
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v2, :cond_1

    .line 689
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v2}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 692
    :cond_1
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/view/ActionMode$Callback;)V

    .line 694
    .local v1, "wrappedCallback":Landroid/support/v7/view/ActionMode$Callback;
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 695
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_2

    .line 696
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 697
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v2, :cond_2

    .line 698
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-interface {v2, v3}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 702
    :cond_2
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-nez v2, :cond_3

    .line 704
    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 707
    :cond_3
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    return-object v2
.end method

.method startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 11
    .param p1, "callback"    # Landroid/support/v7/view/ActionMode$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 720
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->endOnGoingFadeAnimation()V

    .line 721
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v8, :cond_0

    .line 722
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v8}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 725
    :cond_0
    instance-of v8, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    if-nez v8, :cond_1

    .line 727
    new-instance v3, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    invoke-direct {v3, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/view/ActionMode$Callback;)V

    .end local p1    # "callback":Landroid/support/v7/view/ActionMode$Callback;
    .local v3, "callback":Landroid/support/v7/view/ActionMode$Callback;
    move-object p1, v3

    .line 730
    .end local v3    # "callback":Landroid/support/v7/view/ActionMode$Callback;
    .restart local p1    # "callback":Landroid/support/v7/view/ActionMode$Callback;
    :cond_1
    const/4 v5, 0x0

    .line 731
    .local v5, "mode":Landroid/support/v7/view/ActionMode;
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v8

    if-nez v8, :cond_2

    .line 733
    :try_start_0
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    invoke-interface {v8, p1}, Landroid/support/v7/app/AppCompatCallback;->onWindowStartingSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 739
    :cond_2
    :goto_0
    if-eqz v5, :cond_5

    .line 740
    iput-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 865
    :cond_3
    :goto_1
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v8, :cond_4

    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v8, :cond_4

    .line 866
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    iget-object v9, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-interface {v8, v9}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 868
    :cond_4
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    return-object v8

    .line 742
    :cond_5
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    if-nez v8, :cond_6

    .line 743
    iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mIsFloating:Z

    if-eqz v8, :cond_9

    .line 745
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 746
    .local v6, "outValue":Landroid/util/TypedValue;
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 747
    .local v2, "baseTheme":Landroid/content/res/Resources$Theme;
    sget v8, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v6, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 750
    iget v8, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_8

    .line 751
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 752
    .local v1, "actionBarTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 753
    iget v8, v6, Landroid/util/TypedValue;->resourceId:I

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 755
    new-instance v0, Landroid/support/v7/view/ContextThemeWrapper;

    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {v0, v8, v9}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 756
    .local v0, "actionBarContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 761
    .end local v1    # "actionBarTheme":Landroid/content/res/Resources$Theme;
    :goto_2
    new-instance v8, Landroid/support/v7/widget/ActionBarContextView;

    invoke-direct {v8, v0}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    .line 762
    new-instance v8, Landroid/widget/PopupWindow;

    const/4 v9, 0x0

    sget v10, Landroid/support/v7/appcompat/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v8, v0, v9, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 764
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/support/v4/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 766
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v9, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 767
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 769
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget v9, Landroid/support/v7/appcompat/R$attr;->actionBarSize:I

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v6, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 771
    iget v8, v6, Landroid/util/TypedValue;->data:I

    .line 772
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 771
    invoke-static {v8, v9}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    .line 773
    .local v4, "height":I
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8, v4}, Landroid/support/v7/widget/ActionBarContextView;->setContentHeight(I)V

    .line 774
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v9, -0x2

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 775
    new-instance v8, Landroid/support/v7/app/AppCompatDelegateImplV9$5;

    invoke-direct {v8, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$5;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mShowActionModePopup:Ljava/lang/Runnable;

    .line 816
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v4    # "height":I
    .end local v6    # "outValue":Landroid/util/TypedValue;
    :cond_6
    :goto_3
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v8, :cond_3

    .line 817
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->endOnGoingFadeAnimation()V

    .line 818
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->killMode()V

    .line 819
    new-instance v5, Landroid/support/v7/view/StandaloneActionMode;

    .end local v5    # "mode":Landroid/support/v7/view/ActionMode;
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v8, :cond_a

    const/4 v8, 0x1

    :goto_4
    invoke-direct {v5, v9, v10, p1, v8}, Landroid/support/v7/view/StandaloneActionMode;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/ActionMode$Callback;Z)V

    .line 821
    .restart local v5    # "mode":Landroid/support/v7/view/ActionMode;
    invoke-virtual {v5}, Landroid/support/v7/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v8

    invoke-interface {p1, v5, v8}, Landroid/support/v7/view/ActionMode$Callback;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 822
    invoke-virtual {v5}, Landroid/support/v7/view/ActionMode;->invalidate()V

    .line 823
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8, v5}, Landroid/support/v7/widget/ActionBarContextView;->initForMode(Landroid/support/v7/view/ActionMode;)V

    .line 824
    iput-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 826
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->shouldAnimateActionModeView()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 827
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 828
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 829
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v9, Landroid/support/v7/app/AppCompatDelegateImplV9$6;

    invoke-direct {v9, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$6;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 857
    :cond_7
    :goto_5
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v8, :cond_3

    .line 858
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 758
    .restart local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v6    # "outValue":Landroid/util/TypedValue;
    :cond_8
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    .restart local v0    # "actionBarContext":Landroid/content/Context;
    goto/16 :goto_2

    .line 806
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v6    # "outValue":Landroid/util/TypedValue;
    :cond_9
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    sget v9, Landroid/support/v7/appcompat/R$id;->action_mode_bar_stub:I

    .line 807
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/ViewStubCompat;

    .line 808
    .local v7, "stub":Landroid/support/v7/widget/ViewStubCompat;
    if-eqz v7, :cond_6

    .line 810
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 811
    invoke-virtual {v7}, Landroid/support/v7/widget/ViewStubCompat;->inflate()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    goto/16 :goto_3

    .line 819
    .end local v5    # "mode":Landroid/support/v7/view/ActionMode;
    .end local v7    # "stub":Landroid/support/v7/widget/ViewStubCompat;
    :cond_a
    const/4 v8, 0x0

    goto :goto_4

    .line 848
    .restart local v5    # "mode":Landroid/support/v7/view/ActionMode;
    :cond_b
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 849
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 850
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 852
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Landroid/view/View;

    if-eqz v8, :cond_7

    .line 853
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_5

    .line 861
    :cond_c
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    goto/16 :goto_1

    .line 734
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method

.method updateStatusGuard(I)I
    .locals 12
    .param p1, "insetTop"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v7, 0x0

    .line 1649
    const/4 v6, 0x0

    .line 1651
    .local v6, "showStatusGuard":Z
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v8, :cond_3

    .line 1652
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_3

    .line 1653
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    .line 1654
    invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1655
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v4, 0x0

    .line 1657
    .local v4, "mlpChanged":Z
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->isShown()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1658
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect1:Landroid/graphics/Rect;

    if-nez v8, :cond_0

    .line 1659
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect1:Landroid/graphics/Rect;

    .line 1660
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect2:Landroid/graphics/Rect;

    .line 1662
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect1:Landroid/graphics/Rect;

    .line 1663
    .local v0, "insets":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect2:Landroid/graphics/Rect;

    .line 1664
    .local v1, "localInsets":Landroid/graphics/Rect;
    invoke-virtual {v0, v7, p1, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1666
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v8, v0, v1}, Landroid/support/v7/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1667
    iget v8, v1, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_5

    move v5, p1

    .line 1668
    .local v5, "newMargin":I
    :goto_0
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v8, v5, :cond_1

    .line 1669
    const/4 v4, 0x1

    .line 1670
    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1672
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    if-nez v8, :cond_6

    .line 1673
    new-instance v8, Landroid/view/View;

    iget-object v9, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    .line 1674
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    iget-object v9, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Landroid/support/v7/appcompat/R$color;->abc_input_method_navigation_guard:I

    .line 1675
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 1674
    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1676
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    iget-object v9, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v11, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1690
    :cond_1
    :goto_1
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    if-eqz v8, :cond_7

    const/4 v6, 0x1

    .line 1696
    :goto_2
    iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    if-nez v8, :cond_2

    if-eqz v6, :cond_2

    .line 1697
    const/4 p1, 0x0

    .line 1706
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "localInsets":Landroid/graphics/Rect;
    .end local v5    # "newMargin":I
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 1707
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8, v3}, Landroid/support/v7/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1711
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "mlpChanged":Z
    :cond_3
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    if-eqz v8, :cond_4

    .line 1712
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    if-eqz v6, :cond_9

    :goto_4
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1715
    :cond_4
    return p1

    .restart local v0    # "insets":Landroid/graphics/Rect;
    .restart local v1    # "localInsets":Landroid/graphics/Rect;
    .restart local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v4    # "mlpChanged":Z
    :cond_5
    move v5, v7

    .line 1667
    goto :goto_0

    .line 1680
    .restart local v5    # "newMargin":I
    :cond_6
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1681
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v8, p1, :cond_1

    .line 1682
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1683
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    move v6, v7

    .line 1690
    goto :goto_2

    .line 1701
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "localInsets":Landroid/graphics/Rect;
    .end local v5    # "newMargin":I
    :cond_8
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v8, :cond_2

    .line 1702
    const/4 v4, 0x1

    .line 1703
    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 1712
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "mlpChanged":Z
    :cond_9
    const/16 v7, 0x8

    goto :goto_4
.end method
