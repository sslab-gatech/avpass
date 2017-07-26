.class Landroid/support/v13/app/FragmentCompatICS;
.super Ljava/lang/Object;
.source "FragmentCompatICS.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setMenuVisibility(Landroid/app/Fragment;Z)V
    .locals 0
    .param p0, "f"    # Landroid/app/Fragment;
    .param p1, "visible"    # Z

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 24
    return-void
.end method
