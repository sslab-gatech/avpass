.class Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionRecord"
.end annotation


# instance fields
.field callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

.field pkg:Ljava/lang/String;

.field root:Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

.field rootHints:Landroid/os/Bundle;

.field subscriptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/os/Bundle;",
            ">;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .locals 1

    .prologue
    .line 487
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    .line 488
    return-void
.end method
