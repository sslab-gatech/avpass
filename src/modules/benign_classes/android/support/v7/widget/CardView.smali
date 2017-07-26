.class public Landroid/support/v7/widget/CardView;
.super Landroid/widget/FrameLayout;
.source "CardView.java"


# static fields
.field private static final COLOR_BACKGROUND_ATTR:[I

.field private static final IMPL:Landroid/support/v7/widget/CardViewImpl;


# instance fields
.field private final mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

.field private mCompatPadding:Z

.field final mContentPadding:Landroid/graphics/Rect;

.field private mPreventCornerOverlap:Z

.field final mShadowBounds:Landroid/graphics/Rect;

.field mUserSetMinHeight:I

.field mUserSetMinWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010031

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/CardView;->COLOR_BACKGROUND_ATTR:[I

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 83
    new-instance v0, Landroid/support/v7/widget/CardViewApi21;

    invoke-direct {v0}, Landroid/support/v7/widget/CardViewApi21;-><init>()V

    sput-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    .line 89
    :goto_0
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    invoke-interface {v0}, Landroid/support/v7/widget/CardViewImpl;->initStatic()V

    .line 90
    return-void

    .line 84
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 85
    new-instance v0, Landroid/support/v7/widget/CardViewJellybeanMr1;

    invoke-direct {v0}, Landroid/support/v7/widget/CardViewJellybeanMr1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Landroid/support/v7/widget/CardViewGingerbread;

    invoke-direct {v0}, Landroid/support/v7/widget/CardViewGingerbread;-><init>()V

    sput-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    .line 437
    new-instance v0, Landroid/support/v7/widget/CardView$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/CardView$1;-><init>(Landroid/support/v7/widget/CardView;)V

    iput-object v0, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    .line 111
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/CardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    .line 437
    new-instance v0, Landroid/support/v7/widget/CardView$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/CardView$1;-><init>(Landroid/support/v7/widget/CardView;)V

    iput-object v0, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/CardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    .line 437
    new-instance v0, Landroid/support/v7/widget/CardView$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/CardView$1;-><init>(Landroid/support/v7/widget/CardView;)V

    iput-object v0, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/CardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    return-void
.end method

.method static synthetic access$001(Landroid/support/v7/widget/CardView;IIII)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/CardView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$101(Landroid/support/v7/widget/CardView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/CardView;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method static synthetic access$201(Landroid/support/v7/widget/CardView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/CardView;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 216
    sget-object v0, Landroid/support/v7/cardview/R$styleable;->CardView:[I

    sget v1, Landroid/support/v7/cardview/R$style;->CardView:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 219
    .local v7, "a":Landroid/content/res/TypedArray;
    sget v0, Landroid/support/v7/cardview/R$styleable;->CardView_cardBackgroundColor:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    sget v0, Landroid/support/v7/cardview/R$styleable;->CardView_cardBackgroundColor:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 234
    .local v3, "backgroundColor":Landroid/content/res/ColorStateList;
    :goto_0
    sget v0, Landroid/support/v7/cardview/R$styleable;->CardView_cardCornerRadius:I

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 235
    .local v4, "radius":F
    sget v0, Landroid/support/v7/cardview/R$styleable;->CardView_cardElevation:I

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 236
    .local v5, "elevation":F
    sget v0, Landroid/support/v7/cardview/R$styleable;->CardView_cardMaxElevation:I

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 237
    .local v6, "maxElevation":F
    sget v0, Landroid/support/v7/cardview/R$styleable;->CardView_cardUseCompatPadding:I

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/CardView;->mCompatPadding:Z

    .line 238
    sget v0, Landroid/support/v7/cardview/R$styleable;->CardView_cardPreventCornerOverlap:I

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/CardView;->mPreventCornerOverlap:Z

    .line 239
    sget v0, Landroid/support/v7/cardview/R$styleable;->CardView_contentPadding:I

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 240
    .local v9, "defaultPadding":I
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v1, Landroid/support/v7/cardview/R$styleable;->CardView_contentPaddingLeft:I

    invoke-virtual {v7, v1, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 242
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v1, Landroid/support/v7/cardview/R$styleable;->CardView_contentPaddingTop:I

    invoke-virtual {v7, v1, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 244
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v1, Landroid/support/v7/cardview/R$styleable;->CardView_contentPaddingRight:I

    invoke-virtual {v7, v1, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 246
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v1, Landroid/support/v7/cardview/R$styleable;->CardView_contentPaddingBottom:I

    invoke-virtual {v7, v1, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 248
    cmpl-float v0, v5, v6

    if-lez v0, :cond_0

    .line 249
    move v6, v5

    .line 251
    :cond_0
    sget v0, Landroid/support/v7/cardview/R$styleable;->CardView_android_minWidth:I

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/CardView;->mUserSetMinWidth:I

    .line 252
    sget v0, Landroid/support/v7/cardview/R$styleable;->CardView_android_minHeight:I

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/CardView;->mUserSetMinHeight:I

    .line 253
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 255
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    iget-object v1, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Landroid/support/v7/widget/CardViewImpl;->initialize(Landroid/support/v7/widget/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V

    .line 257
    return-void

    .line 223
    .end local v3    # "backgroundColor":Landroid/content/res/ColorStateList;
    .end local v4    # "radius":F
    .end local v5    # "elevation":F
    .end local v6    # "maxElevation":F
    .end local v9    # "defaultPadding":I
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/CardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/CardView;->COLOR_BACKGROUND_ATTR:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 224
    .local v8, "aa":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .line 225
    .local v11, "themeColorBackground":I
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 228
    const/4 v0, 0x3

    new-array v10, v0, [F

    .line 229
    .local v10, "hsv":[F
    invoke-static {v11, v10}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 230
    const/4 v0, 0x2

    aget v0, v10, v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 231
    invoke-virtual {p0}, Landroid/support/v7/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/cardview/R$color;->cardview_light_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 230
    :goto_1
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .restart local v3    # "backgroundColor":Landroid/content/res/ColorStateList;
    goto/16 :goto_0

    .line 232
    .end local v3    # "backgroundColor":Landroid/content/res/ColorStateList;
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/cardview/R$color;->cardview_dark_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 297
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    iget-object v1, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/CardViewImpl;->getBackgroundColor(Landroid/support/v7/widget/CardViewDelegate;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getCardElevation()F
    .locals 2

    .prologue
    .line 377
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    iget-object v1, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/CardViewImpl;->getElevation(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .locals 2

    .prologue
    .line 403
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    iget-object v1, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/CardViewImpl;->getMaxElevation(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    .prologue
    .line 414
    iget-boolean v0, p0, Landroid/support/v7/widget/CardView;->mPreventCornerOverlap:Z

    return v0
.end method

.method public getRadius()F
    .locals 2

    .prologue
    .line 354
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    iget-object v1, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/CardViewImpl;->getRadius(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Landroid/support/v7/widget/CardView;->mCompatPadding:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 189
    sget-object v4, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    instance-of v4, v4, Landroid/support/v7/widget/CardViewApi21;

    if-nez v4, :cond_0

    .line 190
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 191
    .local v3, "widthMode":I
    sparse-switch v3, :sswitch_data_0

    .line 200
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 201
    .local v0, "heightMode":I
    sparse-switch v0, :sswitch_data_1

    .line 209
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 213
    .end local v0    # "heightMode":I
    .end local v3    # "widthMode":I
    :goto_2
    return-void

    .line 194
    .restart local v3    # "widthMode":I
    :sswitch_0
    sget-object v4, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    iget-object v5, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    invoke-interface {v4, v5}, Landroid/support/v7/widget/CardViewImpl;->getMinWidth(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 196
    .local v2, "minWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 195
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 204
    .end local v2    # "minWidth":I
    .restart local v0    # "heightMode":I
    :sswitch_1
    sget-object v4, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    iget-object v5, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    invoke-interface {v4, v5}, Landroid/support/v7/widget/CardViewImpl;->getMinHeight(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 206
    .local v1, "minHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 205
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    .line 211
    .end local v0    # "heightMode":I
    .end local v1    # "minHeight":I
    .end local v3    # "widthMode":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_2

    .line 191
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 201
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setCardBackgroundColor(I)V
    .locals 3
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 278
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    iget-object v1, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/CardViewImpl;->setBackgroundColor(Landroid/support/v7/widget/CardViewDelegate;Landroid/content/res/ColorStateList;)V

    .line 279
    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "color"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 288
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    iget-object v1, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/CardViewImpl;->setBackgroundColor(Landroid/support/v7/widget/CardViewDelegate;Landroid/content/res/ColorStateList;)V

    .line 289
    return-void
.end method

.method public setCardElevation(F)V
    .locals 2
    .param p1, "elevation"    # F

    .prologue
    .line 366
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    iget-object v1, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/CardViewImpl;->setElevation(Landroid/support/v7/widget/CardViewDelegate;F)V

    .line 367
    return-void
.end method

.method public setContentPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 183
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 184
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    iget-object v1, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/CardViewImpl;->updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V

    .line 185
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 2
    .param p1, "maxElevation"    # F

    .prologue
    .line 392
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    iget-object v1, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/CardViewImpl;->setMaxElevation(Landroid/support/v7/widget/CardViewDelegate;F)V

    .line 393
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0
    .param p1, "minHeight"    # I

    .prologue
    .line 267
    iput p1, p0, Landroid/support/v7/widget/CardView;->mUserSetMinHeight:I

    .line 268
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 269
    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0
    .param p1, "minWidth"    # I

    .prologue
    .line 261
    iput p1, p0, Landroid/support/v7/widget/CardView;->mUserSetMinWidth:I

    .line 262
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 263
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 127
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 131
    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 2
    .param p1, "preventCornerOverlap"    # Z

    .prologue
    .line 431
    iget-boolean v0, p0, Landroid/support/v7/widget/CardView;->mPreventCornerOverlap:Z

    if-eq p1, v0, :cond_0

    .line 432
    iput-boolean p1, p0, Landroid/support/v7/widget/CardView;->mPreventCornerOverlap:Z

    .line 433
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    iget-object v1, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/CardViewImpl;->onPreventCornerOverlapChanged(Landroid/support/v7/widget/CardViewDelegate;)V

    .line 435
    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 2
    .param p1, "radius"    # F

    .prologue
    .line 344
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    iget-object v1, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/CardViewImpl;->setRadius(Landroid/support/v7/widget/CardViewDelegate;F)V

    .line 345
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 2
    .param p1, "useCompatPadding"    # Z

    .prologue
    .line 160
    iget-boolean v0, p0, Landroid/support/v7/widget/CardView;->mCompatPadding:Z

    if-eq v0, p1, :cond_0

    .line 161
    iput-boolean p1, p0, Landroid/support/v7/widget/CardView;->mCompatPadding:Z

    .line 162
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    iget-object v1, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/CardViewImpl;->onCompatPaddingChanged(Landroid/support/v7/widget/CardViewDelegate;)V

    .line 164
    :cond_0
    return-void
.end method
