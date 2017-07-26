.class public Landroid/support/v4/os/UserManagerCompat;
.super Ljava/lang/Object;
.source "UserManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static isUserRunningAndLocked(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 40
    invoke-static {p0}, Landroid/support/v4/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUserRunningAndUnlocked(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 54
    invoke-static {p0}, Landroid/support/v4/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isUserUnlocked(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p0}, Landroid/support/v4/os/UserManagerCompatApi24;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
