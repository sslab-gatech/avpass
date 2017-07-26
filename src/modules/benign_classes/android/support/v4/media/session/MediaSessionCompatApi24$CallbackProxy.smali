.class Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;
.super Landroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;
.source "MediaSessionCompatApi24.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompatApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;",
        ">",
        "Landroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy<TT;>;"
    .local p1, "callback":Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;, "TT;"
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onPrepare()V
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepare()V

    .line 61
    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 65
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 70
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 75
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 76
    return-void
.end method
