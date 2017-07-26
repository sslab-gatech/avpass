.class Landroid/support/v4/print/PrintHelperApi24;
.super Landroid/support/v4/print/PrintHelperApi23;
.source "PrintHelperApi24.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 26
    invoke-direct {p0, p1}, Landroid/support/v4/print/PrintHelperApi23;-><init>(Landroid/content/Context;)V

    .line 28
    iput-boolean v0, p0, Landroid/support/v4/print/PrintHelperApi24;->mIsMinMarginsHandlingCorrect:Z

    .line 29
    iput-boolean v0, p0, Landroid/support/v4/print/PrintHelperApi24;->mPrintActivityRespectsOrientation:Z

    .line 30
    return-void
.end method
