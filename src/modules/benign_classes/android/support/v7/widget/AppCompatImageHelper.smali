.class public Landroid/support/v7/widget/AppCompatImageHelper;
.super Ljava/lang/Object;
.source "AppCompatImageHelper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 39
    return-void
.end method


# virtual methods
.method hasOverlappingRendering()Z
    .locals 3

    .prologue
    .line 84
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 85
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    .line 89
    const/4 v1, 0x0

    .line 91
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    const/4 v6, -0x1

    .line 42
    const/4 v0, 0x0

    .line 44
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    :try_start_0
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 46
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 47
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView:[I

    const/4 v5, 0x0

    invoke-static {v3, p1, v4, p2, v5}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 52
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_srcCompat:I

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 53
    .local v2, "id":I
    if-eq v2, v6, :cond_0

    .line 54
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    .end local v2    # "id":I
    :cond_0
    if-eqz v1, :cond_1

    .line 62
    invoke-static {v1}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 69
    :cond_2
    return-void

    .line 65
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 66
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    :cond_3
    throw v3
.end method

.method public setImageResource(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 72
    if-eqz p1, :cond_1

    .line 73
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 74
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 75
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
