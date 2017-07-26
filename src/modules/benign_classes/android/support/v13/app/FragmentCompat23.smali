.class Landroid/support/v13/app/FragmentCompat23;
.super Ljava/lang/Object;
.source "FragmentCompat23.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .locals 0
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Landroid/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 25
    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Fragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
