.class Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;
.super Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;
.source "SearchViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SearchViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchViewCompatHoneycombImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkIfLegalArg(Landroid/view/View;)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;

    .prologue
    .line 248
    invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->checkIfLegalArg(Landroid/view/View;)V

    .line 249
    return-void
.end method

.method public getQuery(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "searchView"    # Landroid/view/View;

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    .line 190
    invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->getQuery(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isIconified(Landroid/view/View;)Z
    .locals 1
    .param p1, "searchView"    # Landroid/view/View;

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    .line 214
    invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->isIconified(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isQueryRefinementEnabled(Landroid/view/View;)Z
    .locals 1
    .param p1, "searchView"    # Landroid/view/View;

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    .line 238
    invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->isQueryRefinementEnabled(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isSubmitButtonEnabled(Landroid/view/View;)Z
    .locals 1
    .param p1, "searchView"    # Landroid/view/View;

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    .line 226
    invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->isSubmitButtonEnabled(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public newOnCloseListener(Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;)Ljava/lang/Object;
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;

    .prologue
    .line 172
    new-instance v0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2;-><init>(Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;)V

    invoke-static {v0}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->newOnCloseListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;)Ljava/lang/Object;
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;

    .prologue
    .line 150
    new-instance v0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;-><init>(Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;)V

    invoke-static {v0}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newSearchView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->newSearchView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setIconified(Landroid/view/View;Z)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "iconify"    # Z

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    .line 208
    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setIconified(Landroid/view/View;Z)V

    .line 209
    return-void
.end method

.method public setMaxWidth(Landroid/view/View;I)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "maxpixels"    # I

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    .line 244
    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setMaxWidth(Landroid/view/View;I)V

    .line 245
    return-void
.end method

.method public setOnCloseListener(Landroid/view/View;Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;)V
    .locals 1
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    .line 184
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->newOnCloseListener(Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setOnCloseListener(Landroid/view/View;Ljava/lang/Object;)V

    .line 185
    return-void
.end method

.method public setOnQueryTextListener(Landroid/view/View;Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;)V
    .locals 1
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    .line 167
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;)Ljava/lang/Object;

    move-result-object v0

    .line 166
    invoke-static {p1, v0}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setOnQueryTextListener(Landroid/view/View;Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method public setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "query"    # Ljava/lang/CharSequence;
    .param p3, "submit"    # Z

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    .line 196
    invoke-static {p1, p2, p3}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    .line 197
    return-void
.end method

.method public setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    .line 202
    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 203
    return-void
.end method

.method public setQueryRefinementEnabled(Landroid/view/View;Z)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "enable"    # Z

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    .line 232
    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setQueryRefinementEnabled(Landroid/view/View;Z)V

    .line 233
    return-void
.end method

.method public setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "searchableComponent"    # Landroid/content/ComponentName;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    .line 145
    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V

    .line 146
    return-void
.end method

.method public setSubmitButtonEnabled(Landroid/view/View;Z)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    .line 220
    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setSubmitButtonEnabled(Landroid/view/View;Z)V

    .line 221
    return-void
.end method
