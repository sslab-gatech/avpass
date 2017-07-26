.class Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1;
.super Ljava/lang/ThreadLocal;
.source "TrafficStatsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;


# direct methods
.method constructor <init>(Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;

    .prologue
    .line 51
    iput-object p1, p0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1;->this$0:Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;

    invoke-direct {v0}, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1;->initialValue()Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;

    move-result-object v0

    return-object v0
.end method
