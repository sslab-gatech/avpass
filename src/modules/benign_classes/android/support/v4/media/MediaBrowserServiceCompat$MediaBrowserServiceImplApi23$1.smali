.class Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->onLoadItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/media/MediaBrowserServiceCompat$Result",
        "<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;

.field final synthetic val$resultWrapper:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;
    .param p2, "debug"    # Ljava/lang/Object;

    .prologue
    .line 337
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->val$resultWrapper:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    invoke-direct {p0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->val$resultWrapper:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;->detach()V

    .line 352
    return-void
.end method

.method onResultSent(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;I)V
    .locals 3
    .param p1, "item"    # Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .param p2, "flags"    # I

    .prologue
    .line 340
    if-nez p1, :cond_0

    .line 341
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->val$resultWrapper:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;->sendResult(Ljava/lang/Object;)V

    .line 347
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 344
    .local v0, "parcelItem":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 345
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->val$resultWrapper:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;->sendResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method bridge synthetic onResultSent(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 337
    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->onResultSent(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;I)V

    return-void
.end method
