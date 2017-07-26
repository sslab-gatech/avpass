.class Landroid/support/v7/widget/CardViewGingerbread;
.super Ljava/lang/Object;
.source "CardViewGingerbread.java"

# interfaces
.implements Landroid/support/v7/widget/CardViewImpl;


# instance fields
.field final sCornerRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/CardViewGingerbread;->sCornerRect:Landroid/graphics/RectF;

    return-void
.end method

.method private createBackground(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Landroid/support/v7/widget/RoundRectDrawableWithShadow;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backgroundColor"    # Landroid/content/res/ColorStateList;
    .param p3, "radius"    # F
    .param p4, "elevation"    # F
    .param p5, "maxElevation"    # F

    .prologue
    .line 92
    new-instance v0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    return-object v0
.end method

.method private getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 170
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    return-object v0
.end method


# virtual methods
.method public getBackgroundColor(Landroid/support/v7/widget/CardViewDelegate;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewGingerbread;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getElevation(Landroid/support/v7/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewGingerbread;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getShadowSize()F

    move-result v0

    return v0
.end method

.method public getMaxElevation(Landroid/support/v7/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewGingerbread;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getMaxShadowSize()F

    move-result v0

    return v0
.end method

.method public getMinHeight(Landroid/support/v7/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewGingerbread;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getMinHeight()F

    move-result v0

    return v0
.end method

.method public getMinWidth(Landroid/support/v7/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewGingerbread;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getMinWidth()F

    move-result v0

    return v0
.end method

.method public getRadius(Landroid/support/v7/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewGingerbread;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getCornerRadius()F

    move-result v0

    return v0
.end method

.method public initStatic()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Landroid/support/v7/widget/CardViewGingerbread$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/CardViewGingerbread$1;-><init>(Landroid/support/v7/widget/CardViewGingerbread;)V

    sput-object v0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Landroid/support/v7/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    .line 77
    return-void
.end method

.method public initialize(Landroid/support/v7/widget/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 7
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "backgroundColor"    # Landroid/content/res/ColorStateList;
    .param p4, "radius"    # F
    .param p5, "elevation"    # F
    .param p6, "maxElevation"    # F

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/CardViewGingerbread;->createBackground(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v6

    .line 84
    .local v6, "background":Landroid/support/v7/widget/RoundRectDrawableWithShadow;
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v0

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    .line 85
    invoke-interface {p1, v6}, Landroid/support/v7/widget/CardViewDelegate;->setCardBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewGingerbread;->updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V

    .line 87
    return-void
.end method

.method public onCompatPaddingChanged(Landroid/support/v7/widget/CardViewDelegate;)V
    .locals 0
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 109
    return-void
.end method

.method public onPreventCornerOverlapChanged(Landroid/support/v7/widget/CardViewDelegate;)V
    .locals 2
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewGingerbread;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    .line 114
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewGingerbread;->updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V

    .line 115
    return-void
.end method

.method public setBackgroundColor(Landroid/support/v7/widget/CardViewDelegate;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "color"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewGingerbread;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setColor(Landroid/content/res/ColorStateList;)V

    .line 120
    return-void
.end method

.method public setElevation(Landroid/support/v7/widget/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "elevation"    # F

    .prologue
    .line 140
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewGingerbread;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setShadowSize(F)V

    .line 141
    return-void
.end method

.method public setMaxElevation(Landroid/support/v7/widget/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "maxElevation"    # F

    .prologue
    .line 150
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewGingerbread;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setMaxShadowSize(F)V

    .line 151
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewGingerbread;->updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V

    .line 152
    return-void
.end method

.method public setRadius(Landroid/support/v7/widget/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "radius"    # F

    .prologue
    .line 129
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewGingerbread;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setCornerRadius(F)V

    .line 130
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewGingerbread;->updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V

    .line 131
    return-void
.end method

.method public updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V
    .locals 5
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 99
    .local v0, "shadowPadding":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewGingerbread;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getMaxShadowAndCornerPadding(Landroid/graphics/Rect;)V

    .line 100
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewGingerbread;->getMinWidth(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 101
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewGingerbread;->getMinHeight(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 100
    invoke-interface {p1, v1, v2}, Landroid/support/v7/widget/CardViewDelegate;->setMinWidthHeightInternal(II)V

    .line 102
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/support/v7/widget/CardViewDelegate;->setShadowPadding(IIII)V

    .line 104
    return-void
.end method
