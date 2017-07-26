.class public final Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfo"
.end annotation


# static fields
.field public static final PLAYBACK_TYPE_LOCAL:I = 0x1

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x2


# instance fields
.field private final mAudioStream:I

.field private final mCurrentVolume:I

.field private final mMaxVolume:I

.field private final mPlaybackType:I

.field private final mVolumeControl:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "stream"    # I
    .param p3, "control"    # I
    .param p4, "max"    # I
    .param p5, "current"    # I

    .prologue
    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    iput p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mPlaybackType:I

    .line 798
    iput p2, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mAudioStream:I

    .line 799
    iput p3, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mVolumeControl:I

    .line 800
    iput p4, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mMaxVolume:I

    .line 801
    iput p5, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mCurrentVolume:I

    .line 802
    return-void
.end method


# virtual methods
.method public getAudioStream()I
    .locals 1

    .prologue
    .line 826
    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mAudioStream:I

    return v0
.end method

.method public getCurrentVolume()I
    .locals 1

    .prologue
    .line 859
    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mCurrentVolume:I

    return v0
.end method

.method public getMaxVolume()I
    .locals 1

    .prologue
    .line 850
    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mMaxVolume:I

    return v0
.end method

.method public getPlaybackType()I
    .locals 1

    .prologue
    .line 814
    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mPlaybackType:I

    return v0
.end method

.method public getVolumeControl()I
    .locals 1

    .prologue
    .line 841
    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mVolumeControl:I

    return v0
.end method
