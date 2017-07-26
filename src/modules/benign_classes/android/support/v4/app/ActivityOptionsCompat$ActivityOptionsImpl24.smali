.class Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;
.super Landroid/support/v4/app/ActivityOptionsCompat;
.source "ActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsImpl24"
.end annotation


# instance fields
.field private final mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V
    .locals 0
    .param p1, "impl"    # Landroid/support/v4/app/ActivityOptionsCompat24;

    .prologue
    .line 382
    invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    .line 383
    iput-object p1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    .line 384
    return-void
.end method


# virtual methods
.method public getLaunchBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    invoke-virtual {v0}, Landroid/support/v4/app/ActivityOptionsCompat24;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    .prologue
    .line 412
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ActivityOptionsCompat24;->requestUsageTimeReport(Landroid/app/PendingIntent;)V

    .line 413
    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 2
    .param p1, "screenSpacePixelRect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 402
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    iget-object v1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/ActivityOptionsCompat24;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/support/v4/app/ActivityOptionsCompat24;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    invoke-virtual {v0}, Landroid/support/v4/app/ActivityOptionsCompat24;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/support/v4/app/ActivityOptionsCompat;)V
    .locals 3
    .param p1, "otherOptions"    # Landroid/support/v4/app/ActivityOptionsCompat;

    .prologue
    .line 393
    instance-of v1, p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 395
    check-cast v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    .line 396
    .local v0, "otherImpl":Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;
    iget-object v1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    iget-object v2, v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ActivityOptionsCompat24;->update(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    .line 398
    .end local v0    # "otherImpl":Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;
    :cond_0
    return-void
.end method
