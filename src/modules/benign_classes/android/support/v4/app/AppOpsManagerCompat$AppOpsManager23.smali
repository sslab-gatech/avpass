.class Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManager23;
.super Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;
.source "AppOpsManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/AppOpsManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppOpsManager23"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/app/AppOpsManagerCompat23;->noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {p1, p2, p3}, Landroid/support/v4/app/AppOpsManagerCompat23;->noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p1}, Landroid/support/v4/app/AppOpsManagerCompat23;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
