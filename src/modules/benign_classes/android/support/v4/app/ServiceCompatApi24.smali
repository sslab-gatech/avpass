.class Landroid/support/v4/app/ServiceCompatApi24;
.super Ljava/lang/Object;
.source "ServiceCompatApi24.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stopForeground(Landroid/app/Service;I)V
    .locals 0
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "flags"    # I

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(I)V

    .line 23
    return-void
.end method
