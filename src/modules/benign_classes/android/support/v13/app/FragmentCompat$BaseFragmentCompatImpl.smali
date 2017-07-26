.class Landroid/support/v13/app/FragmentCompat$BaseFragmentCompatImpl;
.super Ljava/lang/Object;
.source "FragmentCompat.java"

# interfaces
.implements Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/app/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseFragmentCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Landroid/support/v13/app/FragmentCompat$BaseFragmentCompatImpl$1;

    invoke-direct {v1, p0, p2, p1, p3}, Landroid/support/v13/app/FragmentCompat$BaseFragmentCompatImpl$1;-><init>(Landroid/support/v13/app/FragmentCompat$BaseFragmentCompatImpl;[Ljava/lang/String;Landroid/app/Fragment;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method

.method public setMenuVisibility(Landroid/app/Fragment;Z)V
    .locals 0
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "visible"    # Z

    .prologue
    .line 45
    return-void
.end method

.method public setUserVisibleHint(Landroid/app/Fragment;Z)V
    .locals 0
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "deferStart"    # Z

    .prologue
    .line 48
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Landroid/app/Fragment;Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method
