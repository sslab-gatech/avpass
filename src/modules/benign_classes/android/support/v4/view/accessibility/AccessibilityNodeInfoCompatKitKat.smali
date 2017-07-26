.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatKitKat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$RangeInfo;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;
    }
.end annotation


# static fields
.field private static final ROLE_DESCRIPTION_KEY:Ljava/lang/String; = "AccessibilityNodeInfo.roleDescription"

.field private static final TRAITS_KEY:Ljava/lang/String; = "android.view.accessibility.AccessibilityNodeInfo.traits"

.field private static final TRAIT_HAS_IMAGE:J = 0x1L

.field private static final TRAIT_UNSET:B = -0x1t


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    return-void
.end method

.method public static canOpenPopup(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 91
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->canOpenPopup()Z

    move-result v0

    return v0
.end method

.method static getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    return-object v0
.end method

.method static getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 99
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getInputType(Ljava/lang/Object;)I
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 113
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getInputType()I

    move-result v0

    return v0
.end method

.method static getLiveRegion(Ljava/lang/Object;)I
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 34
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getLiveRegion()I

    move-result v0

    return v0
.end method

.method static getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 60
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getRangeInfo()Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getRoleDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 137
    invoke-static {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    .line 138
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "AccessibilityNodeInfo.roleDescription"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static getTraits(Ljava/lang/Object;)J
    .locals 4
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 103
    invoke-static {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.view.accessibility.AccessibilityNodeInfo.traits"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isContentInvalid(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 87
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContentInvalid()Z

    move-result v0

    return v0
.end method

.method public static isDismissable(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 121
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDismissable()Z

    move-result v0

    return v0
.end method

.method public static isMultiLine(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 129
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isMultiLine()Z

    move-result v0

    return v0
.end method

.method public static obtainCollectionInfo(IIZ)Ljava/lang/Object;
    .locals 1
    .param p0, "rowCount"    # I
    .param p1, "columnCount"    # I
    .param p2, "hierarchical"    # Z

    .prologue
    .line 73
    invoke-static {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static obtainCollectionInfo(IIZI)Ljava/lang/Object;
    .locals 1
    .param p0, "rowCount"    # I
    .param p1, "columnCount"    # I
    .param p2, "hierarchical"    # Z
    .param p3, "selectionMode"    # I

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static obtainCollectionItemInfo(IIIIZ)Ljava/lang/Object;
    .locals 1
    .param p0, "rowIndex"    # I
    .param p1, "rowSpan"    # I
    .param p2, "columnIndex"    # I
    .param p3, "columnSpan"    # I
    .param p4, "heading"    # Z

    .prologue
    .line 78
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public static obtainRangeInfo(IFFF)Ljava/lang/Object;
    .locals 1
    .param p0, "type"    # I
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "current"    # F

    .prologue
    .line 147
    invoke-static {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static setCanOpenPopup(Ljava/lang/Object;Z)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "opensPopup"    # Z

    .prologue
    .line 95
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 96
    return-void
.end method

.method public static setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "collectionInfo"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .end local p1    # "collectionInfo":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 52
    return-void
.end method

.method public static setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "collectionItemInfo"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .end local p1    # "collectionItemInfo":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 57
    return-void
.end method

.method public static setContentInvalid(Ljava/lang/Object;Z)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "contentInvalid"    # Z

    .prologue
    .line 83
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    .line 84
    return-void
.end method

.method public static setDismissable(Ljava/lang/Object;Z)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "dismissable"    # Z

    .prologue
    .line 125
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    .line 126
    return-void
.end method

.method public static setInputType(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "inputType"    # I

    .prologue
    .line 117
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    .line 118
    return-void
.end method

.method static setLiveRegion(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "mode"    # I

    .prologue
    .line 38
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    .line 39
    return-void
.end method

.method public static setMultiLine(Ljava/lang/Object;Z)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "multiLine"    # Z

    .prologue
    .line 133
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    .line 134
    return-void
.end method

.method public static setRangeInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "rangeInfo"    # Ljava/lang/Object;

    .prologue
    .line 64
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0    # "info":Ljava/lang/Object;
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .end local p1    # "rangeInfo":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 65
    return-void
.end method

.method public static setRoleDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "roleDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 142
    invoke-static {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    .line 143
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "AccessibilityNodeInfo.roleDescription"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method

.method private static setTrait(Ljava/lang/Object;J)V
    .locals 7
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "trait"    # J

    .prologue
    .line 107
    invoke-static {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    .line 108
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android.view.accessibility.AccessibilityNodeInfo.traits"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 109
    .local v2, "traits":J
    const-string v1, "android.view.accessibility.AccessibilityNodeInfo.traits"

    or-long v4, v2, p1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 110
    return-void
.end method
