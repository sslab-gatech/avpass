.class Landroid/support/v4/media/MediaBrowserServiceCompatApi24$MediaBrowserServiceAdaptor;
.super Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor;
.source "MediaBrowserServiceCompatApi24.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserServiceAdaptor"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCompatProxy;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceWrapper"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCompatProxy;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor;-><init>(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;)V

    .line 97
    return-void
.end method


# virtual methods
.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    .local p2, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;>;"
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$MediaBrowserServiceAdaptor;->mServiceProxy:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;

    check-cast v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCompatProxy;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;

    invoke-direct {v1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    invoke-interface {v0, p1, v1, p3}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCompatProxy;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;Landroid/os/Bundle;)V

    .line 104
    return-void
.end method
