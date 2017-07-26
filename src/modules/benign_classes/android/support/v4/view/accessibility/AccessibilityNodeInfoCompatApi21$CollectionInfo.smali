.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21$CollectionInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CollectionInfo"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSelectionMode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 84
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getSelectionMode()I

    move-result v0

    return v0
.end method
