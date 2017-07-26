.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoApi21Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2141
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "action"    # Ljava/lang/Object;

    .prologue
    .line 2161
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->addAction(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2162
    return-void
.end method

.method public getAccessibilityActionId(Ljava/lang/Object;)I
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 2171
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->getAccessibilityActionId(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getAccessibilityActionLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 2176
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->getAccessibilityActionLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getActionList(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2149
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->getActionList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionInfoSelectionMode(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 2228
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21$CollectionInfo;->getSelectionMode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getError(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 2193
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->getError(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getMaxTextLength(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 2208
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->getMaxTextLength(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getWindow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 2213
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->getWindow(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCollectionItemSelected(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 2188
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21$CollectionItemInfo;->isSelected(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newAccessibilityAction(ILjava/lang/CharSequence;)Ljava/lang/Object;
    .locals 1
    .param p1, "actionId"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 2144
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->newAccessibilityAction(ILjava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public obtainCollectionInfo(IIZI)Ljava/lang/Object;
    .locals 1
    .param p1, "rowCount"    # I
    .param p2, "columnCount"    # I
    .param p3, "hierarchical"    # Z
    .param p4, "selectionMode"    # I

    .prologue
    .line 2155
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->obtainCollectionInfo(IIZI)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;
    .locals 1
    .param p1, "rowIndex"    # I
    .param p2, "rowSpan"    # I
    .param p3, "columnIndex"    # I
    .param p4, "columnSpan"    # I
    .param p5, "heading"    # Z
    .param p6, "selected"    # Z

    .prologue
    .line 2182
    invoke-static/range {p1 .. p6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeAction(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "action"    # Ljava/lang/Object;

    .prologue
    .line 2166
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->removeAction(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeChild(Ljava/lang/Object;Landroid/view/View;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 2218
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->removeChild(Ljava/lang/Object;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public removeChild(Ljava/lang/Object;Landroid/view/View;I)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "virtualDescendantId"    # I

    .prologue
    .line 2223
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->removeChild(Ljava/lang/Object;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public setError(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "error"    # Ljava/lang/CharSequence;

    .prologue
    .line 2198
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->setError(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2199
    return-void
.end method

.method public setMaxTextLength(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "max"    # I

    .prologue
    .line 2203
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->setMaxTextLength(Ljava/lang/Object;I)V

    .line 2204
    return-void
.end method
