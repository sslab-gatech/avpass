.class Landroid/support/v4/net/TrafficStatsCompatIcs;
.super Ljava/lang/Object;
.source "TrafficStatsCompatIcs.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearThreadStatsTag()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 32
    return-void
.end method

.method public static getThreadStatsTag()I
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v0

    return v0
.end method

.method public static incrementOperationCount(I)V
    .locals 0
    .param p0, "operationCount"    # I

    .prologue
    .line 39
    invoke-static {p0}, Landroid/net/TrafficStats;->incrementOperationCount(I)V

    .line 40
    return-void
.end method

.method public static incrementOperationCount(II)V
    .locals 0
    .param p0, "tag"    # I
    .param p1, "operationCount"    # I

    .prologue
    .line 43
    invoke-static {p0, p1}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 44
    return-void
.end method

.method public static setThreadStatsTag(I)V
    .locals 0
    .param p0, "tag"    # I

    .prologue
    .line 47
    invoke-static {p0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 48
    return-void
.end method

.method public static tagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 3
    .param p0, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 60
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v1, Landroid/support/v4/net/DatagramSocketWrapper;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/support/v4/net/DatagramSocketWrapper;-><init>(Ljava/net/DatagramSocket;Ljava/io/FileDescriptor;)V

    invoke-static {v1}, Landroid/net/TrafficStats;->tagSocket(Ljava/net/Socket;)V

    .line 65
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 66
    return-void
.end method

.method public static tagSocket(Ljava/net/Socket;)V
    .locals 0
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {p0}, Landroid/net/TrafficStats;->tagSocket(Ljava/net/Socket;)V

    .line 52
    return-void
.end method

.method public static untagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 3
    .param p0, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 70
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v1, Landroid/support/v4/net/DatagramSocketWrapper;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/support/v4/net/DatagramSocketWrapper;-><init>(Ljava/net/DatagramSocket;Ljava/io/FileDescriptor;)V

    invoke-static {v1}, Landroid/net/TrafficStats;->untagSocket(Ljava/net/Socket;)V

    .line 75
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 76
    return-void
.end method

.method public static untagSocket(Ljava/net/Socket;)V
    .locals 0
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {p0}, Landroid/net/TrafficStats;->untagSocket(Ljava/net/Socket;)V

    .line 56
    return-void
.end method
