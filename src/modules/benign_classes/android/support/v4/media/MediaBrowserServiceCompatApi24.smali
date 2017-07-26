.class Landroid/support/v4/media/MediaBrowserServiceCompatApi24;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi24.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserServiceCompatApi24$MediaBrowserServiceAdaptor;,
        Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;,
        Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCompatProxy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MBSCompatApi24"

.field private static sResultFlags:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    :try_start_0
    const-class v1, Landroid/service/media/MediaBrowserService$Result;

    const-string v2, "mFlags"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi24;->sResultFlags:Ljava/lang/reflect/Field;

    .line 37
    sget-object v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi24;->sResultFlags:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    return-void

    .line 38
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_0
    move-exception v0

    .line 39
    .restart local v0    # "e":Ljava/lang/NoSuchFieldException;
    const-string v1, "MBSCompatApi24"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method static synthetic access$000()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24;->sResultFlags:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static createService(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCompatProxy;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceProxy"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCompatProxy;

    .prologue
    .line 44
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$MediaBrowserServiceAdaptor;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$MediaBrowserServiceAdaptor;-><init>(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCompatProxy;)V

    return-object v0
.end method

.method public static getBrowserRootHints(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1
    .param p0, "serviceObj"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p0, Landroid/service/media/MediaBrowserService;

    .end local p0    # "serviceObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->getBrowserRootHints()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static notifyChildrenChanged(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "serviceObj"    # Ljava/lang/Object;
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 48
    check-cast p0, Landroid/service/media/MediaBrowserService;

    .end local p0    # "serviceObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/service/media/MediaBrowserService;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 49
    return-void
.end method
