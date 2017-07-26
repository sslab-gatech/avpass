.class Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi24.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResultWrapper"
.end annotation


# instance fields
.field mResultObj:Landroid/service/media/MediaBrowserService$Result;


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService$Result;)V
    .locals 0
    .param p1, "result"    # Landroid/service/media/MediaBrowserService$Result;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;->mResultObj:Landroid/service/media/MediaBrowserService$Result;

    .line 64
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;->mResultObj:Landroid/service/media/MediaBrowserService$Result;

    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService$Result;->detach()V

    .line 77
    return-void
.end method

.method parcelListToItemList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Parcel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "parcelList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    if-nez p1, :cond_1

    .line 81
    const/4 v0, 0x0

    .line 89
    :cond_0
    return-object v0

    .line 83
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    .line 85
    .local v1, "parcel":Landroid/os/Parcel;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    sget-object v3, Landroid/media/browse/MediaBrowser$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method public sendResult(Ljava/util/List;I)V
    .locals 3
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Parcel;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    :try_start_0
    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompatApi24;->sResultFlags:Ljava/lang/reflect/Field;
    invoke-static {}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24;->access$000()Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;->mResultObj:Landroid/service/media/MediaBrowserService$Result;

    invoke-virtual {v1, v2, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;->mResultObj:Landroid/service/media/MediaBrowserService$Result;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;->parcelListToItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    .line 73
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "MBSCompatApi24"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
