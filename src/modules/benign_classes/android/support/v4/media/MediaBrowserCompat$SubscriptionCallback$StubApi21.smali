.class Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi21"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    return-void
.end method


# virtual methods
.method applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .locals 6
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    const/4 v5, -0x1

    .line 656
    if-nez p1, :cond_1

    .line 657
    const/4 p1, 0x0

    .line 672
    .end local p1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 659
    .restart local p1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    :cond_1
    const-string v4, "android.media.browse.extra.PAGE"

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 660
    .local v1, "page":I
    const-string v4, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 661
    .local v2, "pageSize":I
    if-ne v1, v5, :cond_2

    if-eq v2, v5, :cond_0

    .line 664
    :cond_2
    mul-int v0, v2, v1

    .line 665
    .local v0, "fromIndex":I
    add-int v3, v0, v2

    .line 666
    .local v3, "toIndex":I
    if-ltz v1, :cond_3

    const/4 v4, 0x1

    if-lt v2, v4, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_4

    .line 667
    :cond_3
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 669
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 670
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 672
    :cond_5
    invoke-interface {p1, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    goto :goto_0
.end method

.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 628
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionRef:Ljava/lang/ref/WeakReference;

    if-nez v6, :cond_1

    const/4 v5, 0x0

    .line 629
    .local v5, "sub":Landroid/support/v4/media/MediaBrowserCompat$Subscription;
    :goto_0
    if-nez v5, :cond_2

    .line 630
    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    .line 631
    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->fromMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 630
    invoke-virtual {v6, p1, v7}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    .line 647
    :cond_0
    return-void

    .line 628
    .end local v5    # "sub":Landroid/support/v4/media/MediaBrowserCompat$Subscription;
    :cond_1
    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    move-object v5, v6

    goto :goto_0

    .line 634
    .restart local v5    # "sub":Landroid/support/v4/media/MediaBrowserCompat$Subscription;
    :cond_2
    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->fromMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 635
    .local v2, "itemList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    invoke-virtual {v5}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getCallbacks()Ljava/util/List;

    move-result-object v0

    .line 636
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;>;"
    invoke-virtual {v5}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v4

    .line 637
    .local v4, "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 638
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 639
    .local v3, "options":Landroid/os/Bundle;
    if-nez v3, :cond_3

    .line 640
    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-virtual {v6, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    .line 637
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 642
    :cond_3
    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    .line 643
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v7

    .line 642
    invoke-virtual {v6, p1, v7, v3}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 651
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onError(Ljava/lang/String;)V

    .line 652
    return-void
.end method
