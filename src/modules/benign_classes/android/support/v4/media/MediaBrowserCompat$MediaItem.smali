.class public Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$MediaItem$Flags;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_BROWSABLE:I = 0x1

.field public static final FLAG_PLAYABLE:I = 0x2


# instance fields
.field private final mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

.field private final mFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 419
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem$1;

    invoke-direct {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem$1;-><init>()V

    sput-object v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mFlags:I

    .line 396
    sget-object v0, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaDescriptionCompat;

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 397
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .locals 2
    .param p1, "description"    # Landroid/support/v4/media/MediaDescriptionCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    if-nez p1, :cond_0

    .line 382
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "description cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "description must have a non-empty media id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_1
    iput p2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mFlags:I

    .line 388
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 389
    return-void
.end method

.method public static fromMediaItem(Ljava/lang/Object;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 4
    .param p0, "itemObj"    # Ljava/lang/Object;

    .prologue
    .line 343
    if-eqz p0, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 344
    :cond_0
    const/4 v2, 0x0

    .line 350
    :goto_0
    return-object v2

    .line 346
    :cond_1
    invoke-static {p0}, Landroid/support/v4/media/MediaBrowserCompatApi21$MediaItem;->getFlags(Ljava/lang/Object;)I

    move-result v1

    .line 349
    .local v1, "flags":I
    invoke-static {p0}, Landroid/support/v4/media/MediaBrowserCompatApi21$MediaItem;->getDescription(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 348
    invoke-static {v2}, Landroid/support/v4/media/MediaDescriptionCompat;->fromMediaDescription(Ljava/lang/Object;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    .line 350
    .local v0, "description":Landroid/support/v4/media/MediaDescriptionCompat;
    new-instance v2, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-direct {v2, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    goto :goto_0
.end method

.method public static fromMediaItemList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "itemList":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p0, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_2

    .line 365
    :cond_0
    const/4 v1, 0x0

    .line 371
    :cond_1
    return-object v1

    .line 367
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 368
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 369
    .local v0, "itemObj":Ljava/lang/Object;
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->fromMediaItem(Ljava/lang/Object;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mFlags:I

    return v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBrowsable()Z
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayable()Z
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaItem{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 414
    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 415
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 406
    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/MediaDescriptionCompat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 408
    return-void
.end method
