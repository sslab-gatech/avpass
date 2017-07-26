.class Landroid/support/v4/widget/TextViewCompatApi23;
.super Ljava/lang/Object;
.source "TextViewCompatApi23.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTextAppearance(Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 27
    return-void
.end method
