.class Landroid/support/v4/app/NotificationCompatHoneycomb;
.super Ljava/lang/Object;
.source "NotificationCompatHoneycomb.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static add(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;)Landroid/app/Notification;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "contentTitle"    # Ljava/lang/CharSequence;
    .param p3, "contentText"    # Ljava/lang/CharSequence;
    .param p4, "contentInfo"    # Ljava/lang/CharSequence;
    .param p5, "tickerView"    # Landroid/widget/RemoteViews;
    .param p6, "number"    # I
    .param p7, "contentIntent"    # Landroid/app/PendingIntent;
    .param p8, "fullScreenIntent"    # Landroid/app/PendingIntent;
    .param p9, "largeIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 30
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-wide v2, p1, Landroid/app/Notification;->when:J

    .line 31
    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v2, p1, Landroid/app/Notification;->icon:I

    iget v3, p1, Landroid/app/Notification;->iconLevel:I

    .line 32
    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 33
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 34
    invoke-virtual {v1, v2, p5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v3, p1, Landroid/app/Notification;->audioStreamType:I

    .line 35
    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/Notification;->vibrate:[J

    .line 36
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v2, p1, Landroid/app/Notification;->ledARGB:I

    iget v3, p1, Landroid/app/Notification;->ledOnMS:I

    iget v4, p1, Landroid/app/Notification;->ledOffMS:I

    .line 37
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v1, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 38
    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v1, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 39
    :goto_1
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v1, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 40
    :goto_2
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v2, p1, Landroid/app/Notification;->defaults:I

    .line 41
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 42
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 43
    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 44
    invoke-virtual {v1, p4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 45
    invoke-virtual {v1, p7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 46
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v1, p1, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 47
    :goto_3
    invoke-virtual {v2, p8, v1}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 49
    invoke-virtual {v1, p9}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 50
    invoke-virtual {v1, p6}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 52
    .local v0, "b":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    return-object v1

    .line 37
    .end local v0    # "b":Landroid/app/Notification$Builder;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 38
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 39
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 46
    :cond_3
    const/4 v1, 0x0

    goto :goto_3
.end method
