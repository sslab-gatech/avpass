.class Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;
.super Landroid/support/v4/app/ActivityOptionsCompat;
.source "ActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsImpl23"
.end annotation


# instance fields
.field private final mImpl:Landroid/support/v4/app/ActivityOptionsCompat23;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ActivityOptionsCompat23;)V
    .locals 0
    .param p1, "impl"    # Landroid/support/v4/app/ActivityOptionsCompat23;

    .prologue
    .line 355
    invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    .line 356
    iput-object p1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat23;

    .line 357
    return-void
.end method


# virtual methods
.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    .prologue
    .line 375
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat23;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ActivityOptionsCompat23;->requestUsageTimeReport(Landroid/app/PendingIntent;)V

    .line 376
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat23;

    invoke-virtual {v0}, Landroid/support/v4/app/ActivityOptionsCompat23;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/support/v4/app/ActivityOptionsCompat;)V
    .locals 3
    .param p1, "otherOptions"    # Landroid/support/v4/app/ActivityOptionsCompat;

    .prologue
    .line 366
    instance-of v1, p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 368
    check-cast v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    .line 369
    .local v0, "otherImpl":Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;
    iget-object v1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat23;

    iget-object v2, v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat23;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ActivityOptionsCompat23;->update(Landroid/support/v4/app/ActivityOptionsCompat23;)V

    .line 371
    .end local v0    # "otherImpl":Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;
    :cond_0
    return-void
.end method
