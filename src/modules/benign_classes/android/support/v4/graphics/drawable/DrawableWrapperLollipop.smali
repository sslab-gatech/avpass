.class Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;
.super Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;
.source "DrawableWrapperLollipop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop$DrawableWrapperStateLollipop;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 36
    return-void
.end method

.method constructor <init>(Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "state"    # Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 55
    return-void
.end method

.method protected isCompatTintEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 102
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_1

    .line 103
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/graphics/drawable/DrawableContainer;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 107
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return v1
.end method

.method mutateConstantState()Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 113
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop$DrawableWrapperStateLollipop;

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop$DrawableWrapperStateLollipop;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 45
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 50
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->invalidateSelf()V

    .line 95
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tintColor"    # I

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->isCompatTintEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;->setTint(I)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->isCompatTintEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->isCompatTintEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-super {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method
