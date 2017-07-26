.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi22Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoApi22Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2232
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getTraversalAfter(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 2250
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->getTraversalAfter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTraversalBefore(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 2235
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->getTraversalBefore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setTraversalAfter(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 2255
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->setTraversalAfter(Ljava/lang/Object;Landroid/view/View;)V

    .line 2256
    return-void
.end method

.method public setTraversalAfter(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "virtualDescendantId"    # I

    .prologue
    .line 2260
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->setTraversalAfter(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2261
    return-void
.end method

.method public setTraversalBefore(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 2240
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->setTraversalBefore(Ljava/lang/Object;Landroid/view/View;)V

    .line 2241
    return-void
.end method

.method public setTraversalBefore(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "virtualDescendantId"    # I

    .prologue
    .line 2245
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->setTraversalBefore(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2246
    return-void
.end method
