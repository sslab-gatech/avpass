.class Landroid/support/v4/media/MediaBrowserServiceCompatApi21$BrowserRoot;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BrowserRoot"
.end annotation


# instance fields
.field final mExtras:Landroid/os/Bundle;

.field final mRootId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$BrowserRoot;->mRootId:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$BrowserRoot;->mExtras:Landroid/os/Bundle;

    .line 103
    return-void
.end method
