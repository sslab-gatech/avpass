.class final Landroid/support/v4/print/PrintHelper$PrintHelperApi24Impl;
.super Landroid/support/v4/print/PrintHelper$PrintHelperImpl;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintHelperApi24Impl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/print/PrintHelper$PrintHelperImpl",
        "<",
        "Landroid/support/v4/print/PrintHelperApi24;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    new-instance v0, Landroid/support/v4/print/PrintHelperApi24;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelperApi24;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;-><init>(Landroid/support/v4/print/PrintHelperKitkat;)V

    .line 260
    return-void
.end method
