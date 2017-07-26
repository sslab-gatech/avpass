.class Landroid/support/v4/view/PointerIconCompatApi24;
.super Ljava/lang/Object;
.source "PointerIconCompatApi24.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/graphics/Bitmap;FF)Ljava/lang/Object;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    .prologue
    .line 30
    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # I

    .prologue
    .line 26
    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public static load(Landroid/content/res/Resources;I)Ljava/lang/Object;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I

    .prologue
    .line 34
    invoke-static {p0, p1}, Landroid/view/PointerIcon;->load(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method
