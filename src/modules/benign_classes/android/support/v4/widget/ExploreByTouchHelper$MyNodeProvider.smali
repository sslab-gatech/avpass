.class Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyNodeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/ExploreByTouchHelper;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ExploreByTouchHelper;)V
    .locals 0

    .prologue
    .line 1224
    iput-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;-><init>()V

    .line 1225
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2
    .param p1, "virtualViewId"    # I

    .prologue
    .line 1231
    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroid/support/v4/widget/ExploreByTouchHelper;

    .line 1232
    invoke-virtual {v1, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 1233
    .local v0, "node":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    return-object v1
.end method

.method public findFocus(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2
    .param p1, "focusType"    # I

    .prologue
    .line 1243
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroid/support/v4/widget/ExploreByTouchHelper;

    .line 1244
    # getter for: Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I
    invoke-static {v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->access$000(Landroid/support/v4/widget/ExploreByTouchHelper;)I

    move-result v0

    .line 1245
    .local v0, "focusedId":I
    :goto_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 1246
    const/4 v1, 0x0

    .line 1248
    :goto_1
    return-object v1

    .line 1244
    .end local v0    # "focusedId":I
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroid/support/v4/widget/ExploreByTouchHelper;

    # getter for: Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I
    invoke-static {v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->access$100(Landroid/support/v4/widget/ExploreByTouchHelper;)I

    move-result v0

    goto :goto_0

    .line 1248
    .restart local v0    # "focusedId":I
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->createAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    goto :goto_1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 1238
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
