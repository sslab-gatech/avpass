.class public Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;
.super Ljava/lang/Object;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransportControls"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fastForward(Ljava/lang/Object;)V
    .locals 0
    .param p0, "controlsObj"    # Ljava/lang/Object;

    .prologue
    .line 140
    check-cast p0, Landroid/media/session/MediaController$TransportControls;

    .end local p0    # "controlsObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->fastForward()V

    .line 141
    return-void
.end method

.method public static pause(Ljava/lang/Object;)V
    .locals 0
    .param p0, "controlsObj"    # Ljava/lang/Object;

    .prologue
    .line 128
    check-cast p0, Landroid/media/session/MediaController$TransportControls;

    .end local p0    # "controlsObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    .line 129
    return-void
.end method

.method public static play(Ljava/lang/Object;)V
    .locals 0
    .param p0, "controlsObj"    # Ljava/lang/Object;

    .prologue
    .line 124
    check-cast p0, Landroid/media/session/MediaController$TransportControls;

    .end local p0    # "controlsObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->play()V

    .line 125
    return-void
.end method

.method public static playFromMediaId(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "controlsObj"    # Ljava/lang/Object;
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 160
    check-cast p0, Landroid/media/session/MediaController$TransportControls;

    .end local p0    # "controlsObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 161
    return-void
.end method

.method public static playFromSearch(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "controlsObj"    # Ljava/lang/Object;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 164
    check-cast p0, Landroid/media/session/MediaController$TransportControls;

    .end local p0    # "controlsObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 165
    return-void
.end method

.method public static rewind(Ljava/lang/Object;)V
    .locals 0
    .param p0, "controlsObj"    # Ljava/lang/Object;

    .prologue
    .line 144
    check-cast p0, Landroid/media/session/MediaController$TransportControls;

    .end local p0    # "controlsObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->rewind()V

    .line 145
    return-void
.end method

.method public static seekTo(Ljava/lang/Object;J)V
    .locals 1
    .param p0, "controlsObj"    # Ljava/lang/Object;
    .param p1, "pos"    # J

    .prologue
    .line 136
    check-cast p0, Landroid/media/session/MediaController$TransportControls;

    .end local p0    # "controlsObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    .line 137
    return-void
.end method

.method public static sendCustomAction(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "controlsObj"    # Ljava/lang/Object;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 172
    check-cast p0, Landroid/media/session/MediaController$TransportControls;

    .end local p0    # "controlsObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 173
    return-void
.end method

.method public static setRating(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "controlsObj"    # Ljava/lang/Object;
    .param p1, "ratingObj"    # Ljava/lang/Object;

    .prologue
    .line 156
    check-cast p0, Landroid/media/session/MediaController$TransportControls;

    .end local p0    # "controlsObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/Rating;

    .end local p1    # "ratingObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/session/MediaController$TransportControls;->setRating(Landroid/media/Rating;)V

    .line 157
    return-void
.end method

.method public static skipToNext(Ljava/lang/Object;)V
    .locals 0
    .param p0, "controlsObj"    # Ljava/lang/Object;

    .prologue
    .line 148
    check-cast p0, Landroid/media/session/MediaController$TransportControls;

    .end local p0    # "controlsObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    .line 149
    return-void
.end method

.method public static skipToPrevious(Ljava/lang/Object;)V
    .locals 0
    .param p0, "controlsObj"    # Ljava/lang/Object;

    .prologue
    .line 152
    check-cast p0, Landroid/media/session/MediaController$TransportControls;

    .end local p0    # "controlsObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    .line 153
    return-void
.end method

.method public static skipToQueueItem(Ljava/lang/Object;J)V
    .locals 1
    .param p0, "controlsObj"    # Ljava/lang/Object;
    .param p1, "id"    # J

    .prologue
    .line 168
    check-cast p0, Landroid/media/session/MediaController$TransportControls;

    .end local p0    # "controlsObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->skipToQueueItem(J)V

    .line 169
    return-void
.end method

.method public static stop(Ljava/lang/Object;)V
    .locals 0
    .param p0, "controlsObj"    # Ljava/lang/Object;

    .prologue
    .line 132
    check-cast p0, Landroid/media/session/MediaController$TransportControls;

    .end local p0    # "controlsObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->stop()V

    .line 133
    return-void
.end method
