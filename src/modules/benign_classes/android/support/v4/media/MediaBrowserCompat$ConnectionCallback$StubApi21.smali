.class Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi21"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackInternal:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackInternal:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;->onConnected()V

    .line 525
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnected()V

    .line 526
    return-void
.end method

.method public onConnectionFailed()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackInternal:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackInternal:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;->onConnectionFailed()V

    .line 541
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnectionFailed()V

    .line 542
    return-void
.end method

.method public onConnectionSuspended()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackInternal:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackInternal:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;->onConnectionSuspended()V

    .line 533
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnectionSuspended()V

    .line 534
    return-void
.end method
