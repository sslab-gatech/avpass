.class Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;
.source "AccessibilityWindowInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityWindowInfoApi21Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;-><init>()V

    .line 133
    return-void
.end method


# virtual methods
.method public getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 172
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 173
    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 197
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getChild(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 192
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getChildCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getId(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 167
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getId(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getLayer(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 152
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getLayer(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 162
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getParent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRoot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 157
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getRoot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 147
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getType(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAccessibilityFocused(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 187
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->isAccessibilityFocused(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isActive(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 177
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->isActive(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFocused(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 182
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->isFocused(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public obtain()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->obtain()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 142
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public recycle(Ljava/lang/Object;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 202
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->recycle(Ljava/lang/Object;)V

    .line 203
    return-void
.end method
