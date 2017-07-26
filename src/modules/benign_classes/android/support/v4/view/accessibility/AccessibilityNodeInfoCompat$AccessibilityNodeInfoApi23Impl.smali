.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi23Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi22Impl;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoApi23Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2264
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi22Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionContextClick()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2297
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi23;->getActionContextClick()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getActionScrollDown()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2282
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi23;->getActionScrollDown()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getActionScrollLeft()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2287
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi23;->getActionScrollLeft()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getActionScrollRight()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2292
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi23;->getActionScrollRight()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getActionScrollToPosition()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2267
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi23;->getActionScrollToPosition()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getActionScrollUp()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2277
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi23;->getActionScrollUp()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getActionShowOnScreen()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2272
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi23;->getActionShowOnScreen()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isContextClickable(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 2302
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi23;->isContextClickable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setContextClickable(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "contextClickable"    # Z

    .prologue
    .line 2307
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi23;->setContextClickable(Ljava/lang/Object;Z)V

    .line 2308
    return-void
.end method
