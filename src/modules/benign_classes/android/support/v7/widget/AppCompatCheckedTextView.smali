.class public Landroid/support/v7/widget/AppCompatCheckedTextView;
.super Landroid/widget/CheckedTextView;
.source "AppCompatCheckedTextView.java"


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010108

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/AppCompatCheckedTextView;->TINT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-static {p1}, Landroid/support/v7/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-static {p0}, Landroid/support/v7/widget/AppCompatTextHelper;->create(Landroid/widget/TextView;)Landroid/support/v7/widget/AppCompatTextHelper;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatCheckedTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    .line 51
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatCheckedTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v1, p2, p3}, Landroid/support/v7/widget/AppCompatTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 52
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatCheckedTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 54
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatCheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/v7/widget/AppCompatCheckedTextView;->TINT_ATTRS:[I

    invoke-static {v1, p2, v2, p3, v3}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 56
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 58
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Landroid/widget/CheckedTextView;->drawableStateChanged()V

    .line 76
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatCheckedTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatCheckedTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 79
    :cond_0
    return-void
.end method

.method public setCheckMarkDrawable(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatCheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Landroid/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 68
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatCheckedTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatCheckedTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/AppCompatTextHelper;->onSetTextAppearance(Landroid/content/Context;I)V

    .line 71
    :cond_0
    return-void
.end method
