.class Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/media/MediaBrowserServiceCompat$Result",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

.field final synthetic val$resultWrapper:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;
    .param p2, "debug"    # Ljava/lang/Object;

    .prologue
    .line 300
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2;->val$resultWrapper:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    invoke-direct {p0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2;->val$resultWrapper:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;->detach()V

    .line 318
    return-void
.end method

.method bridge synthetic onResultSent(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 300
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2;->onResultSent(Ljava/util/List;I)V

    return-void
.end method

.method onResultSent(Ljava/util/List;I)V
    .locals 5
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    const/4 v2, 0x0

    .line 304
    .local v2, "parcelList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    if-eqz p1, :cond_0

    .line 305
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "parcelList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .restart local v2    # "parcelList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 307
    .local v0, "item":Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 308
    .local v1, "parcel":Landroid/os/Parcel;
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 309
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 312
    .end local v0    # "item":Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .end local v1    # "parcel":Landroid/os/Parcel;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2;->val$resultWrapper:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    invoke-virtual {v3, v2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;->sendResult(Ljava/lang/Object;)V

    .line 313
    return-void
.end method
