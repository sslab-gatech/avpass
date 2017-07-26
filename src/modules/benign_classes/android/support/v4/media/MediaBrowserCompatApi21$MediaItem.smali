.class Landroid/support/v4/media/MediaBrowserCompatApi21$MediaItem;
.super Ljava/lang/Object;
.source "MediaBrowserCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaItem"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescription(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "itemObj"    # Ljava/lang/Object;

    .prologue
    .line 147
    check-cast p0, Landroid/media/browse/MediaBrowser$MediaItem;

    .end local p0    # "itemObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser$MediaItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    return-object v0
.end method

.method public static getFlags(Ljava/lang/Object;)I
    .locals 1
    .param p0, "itemObj"    # Ljava/lang/Object;

    .prologue
    .line 143
    check-cast p0, Landroid/media/browse/MediaBrowser$MediaItem;

    .end local p0    # "itemObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser$MediaItem;->getFlags()I

    move-result v0

    return v0
.end method
