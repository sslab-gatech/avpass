.class Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "MediaBrowserCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectionCallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;",
        ">",
        "Landroid/media/browse/MediaBrowser$ConnectionCallback;"
    }
.end annotation


# instance fields
.field protected final mConnectionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;, "Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy<TT;>;"
    .local p1, "connectionCallback":Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;, "TT;"
    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    .line 96
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;->mConnectionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;

    .line 97
    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;, "Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;->mConnectionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;->onConnected()V

    .line 102
    return-void
.end method

.method public onConnectionFailed()V
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;, "Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;->mConnectionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;->onConnectionFailed()V

    .line 112
    return-void
.end method

.method public onConnectionSuspended()V
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;, "Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;->mConnectionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;->onConnectionSuspended()V

    .line 107
    return-void
.end method
