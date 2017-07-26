.class Landroid/support/v4/media/MediaBrowserCompatApi21;
.super Ljava/lang/Object;
.source "MediaBrowserCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompatApi21$MediaItem;,
        Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;,
        Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;,
        Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;,
        Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;
    }
.end annotation


# static fields
.field static final NULL_MEDIA_ITEM_ID:Ljava/lang/String; = "android.support.v4.media.MediaBrowserCompat.NULL_MEDIA_ITEM"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method

.method public static connect(Ljava/lang/Object;)V
    .locals 0
    .param p0, "browserObj"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->connect()V

    .line 44
    return-void
.end method

.method public static createBrowser(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/Object;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;
    .param p2, "callback"    # Ljava/lang/Object;
    .param p3, "rootHints"    # Landroid/os/Bundle;

    .prologue
    .line 38
    new-instance v0, Landroid/media/browse/MediaBrowser;

    check-cast p2, Landroid/media/browse/MediaBrowser$ConnectionCallback;

    .end local p2    # "callback":Ljava/lang/Object;
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static createConnectionCallback(Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;

    .prologue
    .line 33
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;-><init>(Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;)V

    return-object v0
.end method

.method public static createSubscriptionCallback(Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;

    .prologue
    .line 72
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;-><init>(Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;)V

    return-object v0
.end method

.method public static disconnect(Ljava/lang/Object;)V
    .locals 0
    .param p0, "browserObj"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->disconnect()V

    .line 49
    return-void
.end method

.method public static getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1
    .param p0, "browserObj"    # Ljava/lang/Object;

    .prologue
    .line 64
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getRoot(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "browserObj"    # Ljava/lang/Object;

    .prologue
    .line 60
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->getRoot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceComponent(Ljava/lang/Object;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "browserObj"    # Ljava/lang/Object;

    .prologue
    .line 56
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static getSessionToken(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "browserObj"    # Ljava/lang/Object;

    .prologue
    .line 68
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    return-object v0
.end method

.method public static isConnected(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "browserObj"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    return v0
.end method

.method public static subscribe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "browserObj"    # Ljava/lang/Object;
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "subscriptionCallbackObj"    # Ljava/lang/Object;

    .prologue
    .line 77
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    check-cast p2, Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    .end local p2    # "subscriptionCallbackObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/browse/MediaBrowser;->subscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    .line 79
    return-void
.end method

.method public static unsubscribe(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p0, "browserObj"    # Ljava/lang/Object;
    .param p1, "parentId"    # Ljava/lang/String;

    .prologue
    .line 82
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/browse/MediaBrowser;->unsubscribe(Ljava/lang/String;)V

    .line 83
    return-void
.end method
