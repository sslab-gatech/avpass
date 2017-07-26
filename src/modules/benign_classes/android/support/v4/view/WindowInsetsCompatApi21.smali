.class Landroid/support/v4/view/WindowInsetsCompatApi21;
.super Ljava/lang/Object;
.source "WindowInsetsCompatApi21.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consumeStableInsets(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "insets"    # Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p0, Landroid/view/WindowInsets;

    .end local p0    # "insets":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public static getStableInsetBottom(Ljava/lang/Object;)I
    .locals 1
    .param p0, "insets"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p0, Landroid/view/WindowInsets;

    .end local p0    # "insets":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    return v0
.end method

.method public static getStableInsetLeft(Ljava/lang/Object;)I
    .locals 1
    .param p0, "insets"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p0, Landroid/view/WindowInsets;

    .end local p0    # "insets":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    return v0
.end method

.method public static getStableInsetRight(Ljava/lang/Object;)I
    .locals 1
    .param p0, "insets"    # Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p0, Landroid/view/WindowInsets;

    .end local p0    # "insets":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v0

    return v0
.end method

.method public static getStableInsetTop(Ljava/lang/Object;)I
    .locals 1
    .param p0, "insets"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p0, Landroid/view/WindowInsets;

    .end local p0    # "insets":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v0

    return v0
.end method

.method public static hasStableInsets(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "insets"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p0, Landroid/view/WindowInsets;

    .end local p0    # "insets":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/WindowInsets;->hasStableInsets()Z

    move-result v0

    return v0
.end method

.method public static isConsumed(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "insets"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p0, Landroid/view/WindowInsets;

    .end local p0    # "insets":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

.method public static replaceSystemWindowInsets(Ljava/lang/Object;Landroid/graphics/Rect;)Ljava/lang/Object;
    .locals 1
    .param p0, "insets"    # Ljava/lang/Object;
    .param p1, "systemWindowInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 52
    check-cast p0, Landroid/view/WindowInsets;

    .end local p0    # "insets":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
