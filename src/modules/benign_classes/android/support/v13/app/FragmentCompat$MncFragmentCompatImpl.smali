.class Landroid/support/v13/app/FragmentCompat$MncFragmentCompatImpl;
.super Landroid/support/v13/app/FragmentCompat$ICSMR1FragmentCompatImpl;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/app/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MncFragmentCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/support/v13/app/FragmentCompat$ICSMR1FragmentCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    .line 100
    invoke-static {p1, p2, p3}, Landroid/support/v13/app/FragmentCompat23;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V

    .line 101
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Landroid/app/Fragment;Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {p1, p2}, Landroid/support/v13/app/FragmentCompat23;->shouldShowRequestPermissionRationale(Landroid/app/Fragment;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
