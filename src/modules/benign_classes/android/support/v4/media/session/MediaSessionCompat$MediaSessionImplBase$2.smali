.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompatApi19$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .prologue
    .line 1371
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekTo(J)V
    .locals 3
    .param p1, "pos"    # J

    .prologue
    .line 1380
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    const/16 v1, 0x12

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->postToHandler(ILjava/lang/Object;)V

    .line 1381
    return-void
.end method

.method public onSetRating(Ljava/lang/Object;)V
    .locals 3
    .param p1, "ratingObj"    # Ljava/lang/Object;

    .prologue
    .line 1374
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    const/16 v1, 0x13

    .line 1375
    invoke-static {p1}, Landroid/support/v4/media/RatingCompat;->fromRating(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;

    move-result-object v2

    .line 1374
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->postToHandler(ILjava/lang/Object;)V

    .line 1376
    return-void
.end method
