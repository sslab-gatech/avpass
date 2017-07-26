.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$RangeInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatKitKat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RangeInfo"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCurrent(Ljava/lang/Object;)F
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 188
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getCurrent()F

    move-result v0

    return v0
.end method

.method static getMax(Ljava/lang/Object;)F
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 192
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMax()F

    move-result v0

    return v0
.end method

.method static getMin(Ljava/lang/Object;)F
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 196
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMin()F

    move-result v0

    return v0
.end method

.method static getType(Ljava/lang/Object;)I
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 200
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getType()I

    move-result v0

    return v0
.end method
