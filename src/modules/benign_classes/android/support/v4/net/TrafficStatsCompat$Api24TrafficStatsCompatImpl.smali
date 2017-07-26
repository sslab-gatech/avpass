.class Landroid/support/v4/net/TrafficStatsCompat$Api24TrafficStatsCompatImpl;
.super Landroid/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;
.source "TrafficStatsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/net/TrafficStatsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24TrafficStatsCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Landroid/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public tagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatApi24;->tagDatagramSocket(Ljava/net/DatagramSocket;)V

    .line 149
    return-void
.end method

.method public untagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatApi24;->untagDatagramSocket(Ljava/net/DatagramSocket;)V

    .line 154
    return-void
.end method
