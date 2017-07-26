.class Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl;
.super Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;
.source "SearchViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SearchViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchViewCompatIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public newSearchView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 256
    invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompatIcs;->newSearchView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setImeOptions(Landroid/view/View;I)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "imeOptions"    # I

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl;->checkIfLegalArg(Landroid/view/View;)V

    .line 262
    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatIcs;->setImeOptions(Landroid/view/View;I)V

    .line 263
    return-void
.end method

.method public setInputType(Landroid/view/View;I)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "inputType"    # I

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl;->checkIfLegalArg(Landroid/view/View;)V

    .line 268
    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatIcs;->setInputType(Landroid/view/View;I)V

    .line 269
    return-void
.end method
