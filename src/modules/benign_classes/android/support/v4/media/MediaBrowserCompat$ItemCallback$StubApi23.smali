.class Landroid/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi23"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 740
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onError(Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method public onItemLoaded(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "itemParcel"    # Landroid/os/Parcel;

    .prologue
    .line 732
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 733
    sget-object v1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 734
    .local v0, "item":Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 735
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onItemLoaded(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    .line 736
    return-void
.end method
