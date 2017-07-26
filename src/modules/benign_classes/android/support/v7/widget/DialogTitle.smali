.class public Landroid/support/v7/widget/DialogTitle;
.super Landroid/widget/TextView;
.source "DialogTitle.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    .line 53
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 55
    invoke-virtual {p0}, Landroid/support/v7/widget/DialogTitle;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 56
    .local v2, "layout":Landroid/text/Layout;
    if-eqz v2, :cond_1

    .line 57
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    .line 58
    .local v3, "lineCount":I
    if-lez v3, :cond_1

    .line 59
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v1

    .line 60
    .local v1, "ellipsisCount":I
    if-lez v1, :cond_1

    .line 61
    invoke-virtual {p0, v10}, Landroid/support/v7/widget/DialogTitle;->setSingleLine(Z)V

    .line 62
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/DialogTitle;->setMaxLines(I)V

    .line 64
    invoke-virtual {p0}, Landroid/support/v7/widget/DialogTitle;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    const v8, 0x1010041

    const v9, 0x1030044

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 70
    .local v4, "textSize":I
    if-eqz v4, :cond_0

    .line 72
    int-to-float v5, v4

    invoke-virtual {p0, v10, v5}, Landroid/support/v7/widget/DialogTitle;->setTextSize(IF)V

    .line 74
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 80
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "ellipsisCount":I
    .end local v3    # "lineCount":I
    .end local v4    # "textSize":I
    :cond_1
    return-void
.end method
