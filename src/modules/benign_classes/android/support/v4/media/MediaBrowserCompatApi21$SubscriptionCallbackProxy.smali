.class Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;
.super Landroid/media/browse/MediaBrowser$SubscriptionCallback;
.source "MediaBrowserCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubscriptionCallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;",
        ">",
        "Landroid/media/browse/MediaBrowser$SubscriptionCallback;"
    }
.end annotation


# instance fields
.field protected final mSubscriptionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;, "Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy<TT;>;"
    .local p1, "callback":Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;, "TT;"
    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$SubscriptionCallback;-><init>()V

    .line 125
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;->mSubscriptionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;

    .line 126
    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;, "Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy<TT;>;"
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;->mSubscriptionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    .line 132
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 136
    .local p0, "this":Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;, "Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;->mSubscriptionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;

    invoke-interface {v0, p1}, Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;->onError(Ljava/lang/String;)V

    .line 137
    return-void
.end method
