.class Landroid/support/v4/view/WindowInsetsCompatApi20;
.super Ljava/lang/Object;
.source "WindowInsetsCompatApi20.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consumeSystemWindowInsets(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "insets"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p0, Landroid/view/WindowInsets;

    .end local p0    # "insets":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public static getSourceWindowInsets(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "src"    # Ljava/lang/Object;

    .prologue
    .line 60
    new-instance v0, Landroid/view/WindowInsets;

    check-cast p0, Landroid/view/WindowInsets;

    .end local p0    # "src":Ljava/lang/Object;
    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    return-object v0
.end method

.method public static getSystemWindowInsetBottom(Ljava/lang/Object;)I
    .locals 1
    .param p0, "insets"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p0, Landroid/view/WindowInsets;

    .end local p0    # "insets":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    return v0
.end method

.method public static getSystemWindowInsetLeft(Ljava/lang/Object;)I
    .locals 1
    .param p0, "insets"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p0, Landroid/view/WindowInsets;

    .end local p0    # "insets":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    return v0
.end method

.method public static getSystemWindowInsetRight(Ljava/lang/Object;)I
    .locals 1
    .param p0, "insets"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p0, Landroid/view/WindowInsets;

    .end local p0    # "insets":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    return v0
.end method

.method public static getSystemWindowInsetTop(Ljava/lang/Object;)I
    .locals 1
    .param p0, "insets"    # Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p0, Landroid/view/WindowInsets;

    .end local p0    # "insets":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    return v0
.end method

.method public static hasInsets(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "insets"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p0, Landroid/view/WindowInsets;

    .end local p0    # "insets":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/WindowInsets;->hasInsets()Z

    move-result v0

    return v0
.end method

.method public static hasSystemWindowInsets(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "insets"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p0, Landroid/view/WindowInsets;

    .end local p0    # "insets":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/WindowInsets;->hasSystemWindowInsets()Z

    move-result v0

    return v0
.end method

.method public static isRound(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "insets"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p0, Landroid/view/WindowInsets;

    .end local p0    # "insets":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method

.method public static replaceSystemWindowInsets(Ljava/lang/Object;IIII)Ljava/lang/Object;
    .locals 1
    .param p0, "insets"    # Ljava/lang/Object;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 56
    check-cast p0, Landroid/view/WindowInsets;

    .end local p0    # "insets":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
