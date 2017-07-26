.class Landroid/support/v4/view/ViewCompatApi24;
.super Ljava/lang/Object;
.source "ViewCompatApi24.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setPointerIcon(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "pointerIcon"    # Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, Landroid/view/PointerIcon;

    .end local p1    # "pointerIcon":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 25
    return-void
.end method
