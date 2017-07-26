.class public Landroid/support/v13/app/FragmentCompat;
.super Ljava/lang/Object;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/app/FragmentCompat$OnRequestPermissionsResultCallback;,
        Landroid/support/v13/app/FragmentCompat$NFragmentCompatImpl;,
        Landroid/support/v13/app/FragmentCompat$MncFragmentCompatImpl;,
        Landroid/support/v13/app/FragmentCompat$ICSMR1FragmentCompatImpl;,
        Landroid/support/v13/app/FragmentCompat$ICSFragmentCompatImpl;,
        Landroid/support/v13/app/FragmentCompat$BaseFragmentCompatImpl;,
        Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Landroid/support/v13/app/FragmentCompat$NFragmentCompatImpl;

    invoke-direct {v0}, Landroid/support/v13/app/FragmentCompat$NFragmentCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    .line 129
    :goto_0
    return-void

    .line 120
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 121
    new-instance v0, Landroid/support/v13/app/FragmentCompat$MncFragmentCompatImpl;

    invoke-direct {v0}, Landroid/support/v13/app/FragmentCompat$MncFragmentCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    goto :goto_0

    .line 122
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_2

    .line 123
    new-instance v0, Landroid/support/v13/app/FragmentCompat$ICSMR1FragmentCompatImpl;

    invoke-direct {v0}, Landroid/support/v13/app/FragmentCompat$ICSMR1FragmentCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    goto :goto_0

    .line 124
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 125
    new-instance v0, Landroid/support/v13/app/FragmentCompat$ICSFragmentCompatImpl;

    invoke-direct {v0}, Landroid/support/v13/app/FragmentCompat$ICSFragmentCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    goto :goto_0

    .line 127
    :cond_3
    new-instance v0, Landroid/support/v13/app/FragmentCompat$BaseFragmentCompatImpl;

    invoke-direct {v0}, Landroid/support/v13/app/FragmentCompat$BaseFragmentCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    return-void
.end method

.method public static requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .locals 1
    .param p0, "fragment"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I

    .prologue
    .line 223
    sget-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V

    .line 224
    return-void
.end method

.method public static setMenuVisibility(Landroid/app/Fragment;Z)V
    .locals 1
    .param p0, "f"    # Landroid/app/Fragment;
    .param p1, "visible"    # Z

    .prologue
    .line 159
    sget-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 160
    return-void
.end method

.method public static setUserVisibleHint(Landroid/app/Fragment;Z)V
    .locals 1
    .param p0, "f"    # Landroid/app/Fragment;
    .param p1, "deferStart"    # Z

    .prologue
    .line 167
    sget-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 168
    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Fragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "fragment"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 249
    sget-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;->shouldShowRequestPermissionRationale(Landroid/app/Fragment;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
