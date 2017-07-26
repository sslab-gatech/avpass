.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi23;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatApi23.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionContextClick()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CONTEXT_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method

.method public static getActionScrollDown()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method

.method public static getActionScrollLeft()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method

.method public static getActionScrollRight()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method

.method public static getActionScrollToPosition()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method

.method public static getActionScrollUp()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method

.method public static getActionShowOnScreen()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_ON_SCREEN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method

.method public static isContextClickable(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContextClickable()Z

    move-result v0

    return v0
.end method

.method public static setContextClickable(Ljava/lang/Object;Z)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "contextClickable"    # Z

    .prologue
    .line 31
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContextClickable(Z)V

    .line 32
    return-void
.end method
