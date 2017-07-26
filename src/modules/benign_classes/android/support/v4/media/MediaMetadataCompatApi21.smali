.class Landroid/support/v4/media/MediaMetadataCompatApi21;
.super Ljava/lang/Object;
.source "MediaMetadataCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaMetadataCompatApi21$Builder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 52
    sget-object v0, Landroid/media/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmap(Ljava/lang/Object;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "metadataObj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 32
    check-cast p0, Landroid/media/MediaMetadata;

    .end local p0    # "metadataObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getLong(Ljava/lang/Object;Ljava/lang/String;)J
    .locals 2
    .param p0, "metadataObj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 36
    check-cast p0, Landroid/media/MediaMetadata;

    .end local p0    # "metadataObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRating(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "metadataObj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 40
    check-cast p0, Landroid/media/MediaMetadata;

    .end local p0    # "metadataObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    move-result-object v0

    return-object v0
.end method

.method public static getText(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "metadataObj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 44
    check-cast p0, Landroid/media/MediaMetadata;

    .end local p0    # "metadataObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static keySet(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p0, "metadataObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    check-cast p0, Landroid/media/MediaMetadata;

    .end local p0    # "metadataObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaMetadata;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static writeToParcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0
    .param p0, "metadataObj"    # Ljava/lang/Object;
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 48
    check-cast p0, Landroid/media/MediaMetadata;

    .end local p0    # "metadataObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    .line 49
    return-void
.end method
