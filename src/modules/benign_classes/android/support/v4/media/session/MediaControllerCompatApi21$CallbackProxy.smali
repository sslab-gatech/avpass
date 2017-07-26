.class Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;
.super Landroid/media/session/MediaController$Callback;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;",
        ">",
        "Landroid/media/session/MediaController$Callback;"
    }
.end annotation


# instance fields
.field protected final mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy<TT;>;"
    .local p1, "callback":Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;, "TT;"
    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    .line 263
    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;

    .line 264
    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/media/session/MediaController$PlaybackInfo;

    .prologue
    .line 303
    .local p0, "this":Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v1

    .line 304
    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getLegacyAudioStream(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v3

    .line 305
    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v5

    .line 303
    invoke-interface/range {v0 .. v5}, Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;->onAudioInfoChanged(IIIII)V

    .line 306
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 298
    .local p0, "this":Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 299
    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    .line 283
    .local p0, "this":Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;->onMetadataChanged(Ljava/lang/Object;)V

    .line 284
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 278
    .local p0, "this":Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;->onPlaybackStateChanged(Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy<TT;>;"
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;->onQueueChanged(Ljava/util/List;)V

    .line 289
    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 293
    .local p0, "this":Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    .line 294
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 1

    .prologue
    .line 268
    .local p0, "this":Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;->onSessionDestroyed()V

    .line 269
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 273
    .local p0, "this":Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 274
    return-void
.end method
