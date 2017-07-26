.class Landroid/support/v13/app/FragmentCompat$NFragmentCompatImpl;
.super Landroid/support/v13/app/FragmentCompat$MncFragmentCompatImpl;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/app/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NFragmentCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/support/v13/app/FragmentCompat$MncFragmentCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setUserVisibleHint(Landroid/app/Fragment;Z)V
    .locals 0
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "deferStart"    # Z

    .prologue
    .line 112
    invoke-static {p1, p2}, Landroid/support/v13/app/FragmentCompatApi24;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 113
    return-void
.end method
