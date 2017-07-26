.class public Landroid/support/v7/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Landroid/support/v7/widget/DecorContentParent;
.implements Landroid/support/v4/view/NestedScrollingParent;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;,
        Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ATTRS:[I

.field private static final TAG:Ljava/lang/String; = "ActionBarOverlayLayout"


# instance fields
.field private final ACTION_BAR_ANIMATE_DELAY:I

.field private mActionBarHeight:I

.field mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

.field private mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

.field private final mAddActionBarHideOffset:Ljava/lang/Runnable;

.field mAnimatingForFling:Z

.field private final mBaseContentInsets:Landroid/graphics/Rect;

.field private final mBaseInnerInsets:Landroid/graphics/Rect;

.field private mContent:Landroid/support/v7/widget/ContentFrameLayout;

.field private final mContentInsets:Landroid/graphics/Rect;

.field mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

.field private mFlingEstimator:Landroid/support/v4/widget/ScrollerCompat;

.field private mHasNonEmbeddedTabs:Z

.field private mHideOnContentScroll:Z

.field private mHideOnContentScrollReference:I

.field private mIgnoreWindowContentOverlay:Z

.field private final mInnerInsets:Landroid/graphics/Rect;

.field private final mLastBaseContentInsets:Landroid/graphics/Rect;

.field private final mLastInnerInsets:Landroid/graphics/Rect;

.field private mLastSystemUiVisibility:I

.field private mOverlayMode:Z

.field private final mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private final mRemoveActionBarHideOffset:Ljava/lang/Runnable;

.field final mTopAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

.field private mWindowVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarSize:I

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x1010059

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 88
    const/16 v0, 0x258

    iput v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I

    .line 94
    new-instance v0, Landroid/support/v7/widget/ActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ActionBarOverlayLayout$1;-><init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 109
    new-instance v0, Landroid/support/v7/widget/ActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ActionBarOverlayLayout$2;-><init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    .line 117
    new-instance v0, Landroid/support/v7/widget/ActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ActionBarOverlayLayout$3;-><init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    .line 139
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 141
    new-instance v0, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 142
    return-void
.end method

.method private addActionBarHideOffset()V
    .locals 1

    .prologue
    .line 596
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 597
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 598
    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "left"    # Z
    .param p4, "top"    # Z
    .param p5, "bottom"    # Z
    .param p6, "right"    # Z

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    .line 261
    .local v1, "lp":Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
    if-eqz p3, :cond_0

    iget v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_0

    .line 262
    const/4 v0, 0x1

    .line 263
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    .line 265
    :cond_0
    if-eqz p4, :cond_1

    iget v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_1

    .line 266
    const/4 v0, 0x1

    .line 267
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    .line 269
    :cond_1
    if-eqz p6, :cond_2

    iget v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_2

    .line 270
    const/4 v0, 0x1

    .line 271
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    .line 273
    :cond_2
    if-eqz p5, :cond_3

    iget v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_3

    .line 274
    const/4 v0, 0x1

    .line 275
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    .line 277
    :cond_3
    return v0
.end method

.method private getDecorToolbar(Landroid/view/View;)Landroid/support/v7/widget/DecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 537
    instance-of v0, p1, Landroid/support/v7/widget/DecorToolbar;

    if-eqz v0, :cond_0

    .line 538
    check-cast p1, Landroid/support/v7/widget/DecorToolbar;

    .line 540
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 539
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 540
    check-cast p1, Landroid/support/v7/widget/Toolbar;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getWrapper()Landroid/support/v7/widget/DecorToolbar;

    move-result-object p1

    goto :goto_0

    .line 542
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 543
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 145
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v4, Landroid/support/v7/widget/ActionBarOverlayLayout;->ATTRS:[I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 146
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 147
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 148
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setWillNotDraw(Z)V

    .line 149
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x13

    if-ge v1, v4, :cond_1

    :goto_1
    iput-boolean v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 154
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/support/v4/widget/ScrollerCompat;

    .line 155
    return-void

    :cond_0
    move v1, v3

    .line 148
    goto :goto_0

    :cond_1
    move v2, v3

    .line 151
    goto :goto_1
.end method

.method private postAddActionBarHideOffset()V
    .locals 4

    .prologue
    .line 586
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 587
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 588
    return-void
.end method

.method private postRemoveActionBarHideOffset()V
    .locals 4

    .prologue
    .line 581
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 582
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 583
    return-void
.end method

.method private removeActionBarHideOffset()V
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 592
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 593
    return-void
.end method

.method private shouldHideActionBarOnFling(FF)Z
    .locals 10
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 601
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/support/v4/widget/ScrollerCompat;

    float-to-int v4, p2

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 602
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v9

    .line 603
    .local v9, "finalY":I
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v0

    if-le v9, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 677
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 678
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 326
    instance-of v0, p1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    return v0
.end method

.method public dismissPopups()V
    .locals 1

    .prologue
    .line 731
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 732
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->dismissPopupMenus()V

    .line 733
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 444
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 445
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    if-nez v2, :cond_0

    .line 446
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    .line 447
    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContainer;->getBottom()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 449
    .local v0, "top":I
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 450
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 449
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 451
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 453
    .end local v0    # "top":I
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 447
    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 10
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 282
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 284
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v9

    .line 285
    .local v9, "vis":I
    and-int/lit16 v0, v9, 0x100

    if-eqz v0, :cond_2

    move v8, v3

    .line 286
    .local v8, "stable":Z
    :goto_0
    move-object v2, p1

    .line 289
    .local v2, "systemInsets":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    move-object v0, p0

    move v4, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v7

    .line 291
    .local v7, "changed":Z
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 292
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-static {p0, v0, v1}, Landroid/support/v7/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 293
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    const/4 v7, 0x1

    .line 295
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 298
    :cond_0
    if-eqz v7, :cond_1

    .line 299
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->requestLayout()V

    .line 306
    :cond_1
    return v3

    .end local v2    # "systemInsets":Landroid/graphics/Rect;
    .end local v7    # "changed":Z
    .end local v8    # "stable":Z
    :cond_2
    move v8, v5

    .line 285
    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 311
    new-instance v0, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 316
    new-instance v0, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 321
    new-instance v0, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getActionBarHideOffset()I
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 620
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 621
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method haltActionBarHideOffsetAnimations()V
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 574
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 575
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 578
    :cond_0
    return-void
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 647
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 648
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 653
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 654
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 701
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 702
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initFeature(I)V
    .locals 1
    .param p1, "windowFeature"    # I

    .prologue
    .line 626
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 627
    sparse-switch p1, :sswitch_data_0

    .line 638
    :goto_0
    return-void

    .line 629
    :sswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->initProgress()V

    goto :goto_0

    .line 632
    :sswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->initIndeterminateProgress()V

    goto :goto_0

    .line 635
    :sswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    goto :goto_0

    .line 627
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6d -> :sswitch_2
    .end sparse-switch
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    .prologue
    .line 558
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    return v0
.end method

.method public isInOverlayMode()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 689
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 690
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 683
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 684
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 220
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 221
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 222
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 160
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 161
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 418
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getChildCount()I

    move-result v3

    .line 420
    .local v3, "count":I
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v8

    .line 421
    .local v8, "parentLeft":I
    sub-int v12, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v13

    sub-int v9, v12, v13

    .line 423
    .local v9, "parentRight":I
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v10

    .line 424
    .local v10, "parentTop":I
    sub-int v12, p5, p3

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v13

    sub-int v7, v12, v13

    .line 426
    .local v7, "parentBottom":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 427
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 428
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_0

    .line 429
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    .line 431
    .local v6, "lp":Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 432
    .local v11, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 434
    .local v4, "height":I
    iget v12, v6, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int v1, v8, v12

    .line 435
    .local v1, "childLeft":I
    iget v12, v6, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int v2, v10, v12

    .line 437
    .local v2, "childTop":I
    add-int v12, v1, v11

    add-int v13, v2, v4

    invoke-virtual {v0, v1, v2, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 426
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v4    # "height":I
    .end local v6    # "lp":Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
    .end local v11    # "width":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 440
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 331
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 333
    const/4 v11, 0x0

    .line 334
    .local v11, "maxHeight":I
    const/4 v12, 0x0

    .line 335
    .local v12, "maxWidth":I
    const/4 v9, 0x0

    .line 337
    .local v9, "childState":I
    const/4 v15, 0x0

    .line 338
    .local v15, "topInset":I
    const/4 v8, 0x0

    .line 340
    .local v8, "bottomInset":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    .line 342
    .local v10, "lp":Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    .line 343
    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 342
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 344
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    .line 345
    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 344
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 346
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    .line 347
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    .line 346
    invoke-static {v9, v1}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v9

    .line 349
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v16

    .line 350
    .local v16, "vis":I
    move/from16 v0, v16

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2

    const/4 v13, 0x1

    .line 352
    .local v13, "stable":Z
    :goto_0
    if-eqz v13, :cond_3

    .line 355
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 356
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    if-eqz v1, :cond_0

    .line 357
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v14

    .line 358
    .local v14, "tabs":Landroid/view/View;
    if-eqz v14, :cond_0

    .line 360
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    add-int/2addr v15, v1

    .line 373
    .end local v14    # "tabs":Landroid/view/View;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 375
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v1, :cond_4

    if-nez v13, :cond_4

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v15

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 377
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v8

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 382
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/support/v7/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 388
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ContentFrameLayout;->dispatchFitSystemWindows(Landroid/graphics/Rect;)V

    .line 393
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 394
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "lp":Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
    check-cast v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    .line 395
    .restart local v10    # "lp":Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    .line 396
    invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 395
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    .line 398
    invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 397
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    .line 400
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    .line 399
    invoke-static {v9, v1}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v9

    .line 403
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 404
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v11, v1

    .line 407
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 408
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 411
    move/from16 v0, p1

    invoke-static {v12, v0, v9}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v9, 0x10

    .line 412
    move/from16 v0, p2

    invoke-static {v11, v0, v2}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v2

    .line 410
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    .line 414
    return-void

    .line 350
    .end local v13    # "stable":Z
    :cond_2
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 363
    .restart local v13    # "stable":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v15

    goto/16 :goto_1

    .line 379
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v15

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v8

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    const/4 v0, 0x1

    .line 501
    iget-boolean v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v1, :cond_0

    if-nez p4, :cond_1

    .line 502
    :cond_0
    const/4 v0, 0x0

    .line 510
    :goto_0
    return v0

    .line 504
    :cond_1
    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->shouldHideActionBarOnFling(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 505
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->addActionBarHideOffset()V

    .line 509
    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    goto :goto_0

    .line 507
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->removeActionBarHideOffset()V

    goto :goto_1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 516
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 481
    iget v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 482
    iget v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 483
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 470
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 471
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 472
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 473
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStarted()V

    .line 476
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 462
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    :cond_0
    const/4 v0, 0x0

    .line 465
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 487
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    if-nez v0, :cond_0

    .line 488
    iget v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 489
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->postRemoveActionBarHideOffset()V

    .line 494
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStopped()V

    .line 497
    :cond_1
    return-void

    .line 491
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->postAddActionBarHideOffset()V

    goto :goto_0
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 7
    .param p1, "visible"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 225
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    .line 226
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    .line 228
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 229
    iget v5, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    xor-int v1, v5, p1

    .line 230
    .local v1, "diff":I
    iput p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 231
    and-int/lit8 v5, p1, 0x4

    if-nez v5, :cond_4

    move v0, v3

    .line 232
    .local v0, "barVisible":Z
    :goto_0
    and-int/lit16 v5, p1, 0x100

    if-eqz v5, :cond_5

    move v2, v3

    .line 233
    .local v2, "stable":Z
    :goto_1
    iget-object v5, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v5, :cond_2

    .line 237
    iget-object v5, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-nez v2, :cond_6

    :goto_2
    invoke-interface {v5, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->enableContentAnimations(Z)V

    .line 238
    if-nez v0, :cond_1

    if-nez v2, :cond_7

    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v3}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->showForSystem()V

    .line 241
    :cond_2
    :goto_3
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_3

    .line 242
    iget-object v3, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v3, :cond_3

    .line 243
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 246
    :cond_3
    return-void

    .end local v0    # "barVisible":Z
    .end local v2    # "stable":Z
    :cond_4
    move v0, v4

    .line 231
    goto :goto_0

    .restart local v0    # "barVisible":Z
    :cond_5
    move v2, v4

    .line 232
    goto :goto_1

    .restart local v2    # "stable":Z
    :cond_6
    move v3, v4

    .line 237
    goto :goto_2

    .line 239
    :cond_7
    iget-object v3, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v3}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->hideForSystem()V

    goto :goto_3
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 250
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 251
    iput p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 252
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 255
    :cond_0
    return-void
.end method

.method pullChildren()V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    if-nez v0, :cond_0

    .line 530
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    .line 531
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    .line 532
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getDecorToolbar(Landroid/view/View;)Landroid/support/v7/widget/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    .line 534
    :cond_0
    return-void
.end method

.method public restoreToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 725
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 726
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 727
    return-void
.end method

.method public saveToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 719
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 720
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 721
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 566
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 567
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v0

    .line 568
    .local v0, "topHeight":I
    const/4 v1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 569
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    neg-int v2, p1

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 570
    return-void
.end method

.method public setActionBarVisibilityCallback(Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    .prologue
    .line 164
    iput-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    .line 165
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    iget v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    invoke-interface {v1, v2}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 169
    iget v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    if-eqz v1, :cond_0

    .line 170
    iget v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 171
    .local v0, "newVis":I
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 172
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 175
    .end local v0    # "newVis":I
    :cond_0
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .locals 0
    .param p1, "hasNonEmbeddedTabs"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    .line 195
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 1
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    .line 548
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eq p1, v0, :cond_0

    .line 549
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    .line 550
    if-nez p1, :cond_0

    .line 551
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 552
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 555
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 659
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 660
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setIcon(I)V

    .line 661
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 665
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 666
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 667
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 671
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 672
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setLogo(I)V

    .line 673
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .prologue
    .line 713
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 714
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/DecorToolbar;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 715
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .prologue
    .line 707
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 708
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->setMenuPrepared()V

    .line 709
    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 2
    .param p1, "overlayMode"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 184
    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 187
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowingForActionMode(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 216
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0
    .param p1, "uiOptions"    # I

    .prologue
    .line 643
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 608
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 609
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 610
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 614
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 615
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 616
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 695
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 696
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
