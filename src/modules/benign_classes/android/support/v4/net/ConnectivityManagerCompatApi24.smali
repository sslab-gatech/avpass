.class Landroid/support/v4/net/ConnectivityManagerCompatApi24;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompatApi24.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRestrictBackgroundStatus(Landroid/net/ConnectivityManager;)I
    .locals 1
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v0

    return v0
.end method
