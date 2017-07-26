.class Landroid/support/v4/media/MediaBrowserCompatApi24;
.super Ljava/lang/Object;
.source "MediaBrowserCompatApi24.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallbackProxy;,
        Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallback;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static createSubscriptionCallback(Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallback;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallback;

    .prologue
    .line 27
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallbackProxy;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallbackProxy;-><init>(Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallback;)V

    return-object v0
.end method

.method public static subscribe(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0
    .param p0, "browserObj"    # Ljava/lang/Object;
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "subscriptionCallbackObj"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    check-cast p3, Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    .end local p3    # "subscriptionCallbackObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/browse/MediaBrowser;->subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    .line 34
    return-void
.end method

.method public static unsubscribe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "browserObj"    # Ljava/lang/Object;
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "subscriptionCallbackObj"    # Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    check-cast p2, Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    .end local p2    # "subscriptionCallbackObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/browse/MediaBrowser;->unsubscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    .line 40
    return-void
.end method
