.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi24;
.super Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserImplApi24"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;
    .param p3, "callback"    # Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
    .param p4, "rootHints"    # Landroid/os/Bundle;

    .prologue
    .line 1593
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    .line 1594
    return-void
.end method


# virtual methods
.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "callback"    # Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1599
    if-nez p2, :cond_0

    .line 1600
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi24;->mBrowserObj:Ljava/lang/Object;

    .line 1601
    # getter for: Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionCallbackObj:Ljava/lang/Object;
    invoke-static {p3}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->access$200(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Ljava/lang/Object;

    move-result-object v1

    .line 1600
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompatApi21;->subscribe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1606
    :goto_0
    return-void

    .line 1603
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi24;->mBrowserObj:Ljava/lang/Object;

    .line 1604
    # getter for: Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionCallbackObj:Ljava/lang/Object;
    invoke-static {p3}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->access$200(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Ljava/lang/Object;

    move-result-object v1

    .line 1603
    invoke-static {v0, p1, p2, v1}, Landroid/support/v4/media/MediaBrowserCompatApi24;->subscribe(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public unsubscribe(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    .prologue
    .line 1610
    if-nez p2, :cond_0

    .line 1611
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi24;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/MediaBrowserCompatApi21;->unsubscribe(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1616
    :goto_0
    return-void

    .line 1613
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi24;->mBrowserObj:Ljava/lang/Object;

    .line 1614
    # getter for: Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionCallbackObj:Ljava/lang/Object;
    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->access$200(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Ljava/lang/Object;

    move-result-object v1

    .line 1613
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompatApi24;->unsubscribe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
