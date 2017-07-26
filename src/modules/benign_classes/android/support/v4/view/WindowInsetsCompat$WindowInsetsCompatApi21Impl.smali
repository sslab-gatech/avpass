.class Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi21Impl;
.super Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WindowInsetsCompatApi21Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;-><init>()V

    .line 207
    return-void
.end method


# virtual methods
.method public consumeStableInsets(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 211
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi21;->consumeStableInsets(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getStableInsetBottom(Ljava/lang/Object;)I
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 216
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi21;->getStableInsetBottom(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getStableInsetLeft(Ljava/lang/Object;)I
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 221
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi21;->getStableInsetLeft(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getStableInsetRight(Ljava/lang/Object;)I
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 226
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi21;->getStableInsetRight(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getStableInsetTop(Ljava/lang/Object;)I
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 231
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi21;->getStableInsetTop(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hasStableInsets(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 236
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi21;->hasStableInsets(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isConsumed(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 241
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi21;->isConsumed(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replaceSystemWindowInsets(Ljava/lang/Object;Landroid/graphics/Rect;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2
    .param p1, "insets"    # Ljava/lang/Object;
    .param p2, "systemWindowInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 247
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {p1, p2}, Landroid/support/v4/view/WindowInsetsCompatApi21;->replaceSystemWindowInsets(Ljava/lang/Object;Landroid/graphics/Rect;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
