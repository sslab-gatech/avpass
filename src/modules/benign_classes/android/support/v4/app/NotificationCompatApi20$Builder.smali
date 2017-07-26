.class public Landroid/support/v4/app/NotificationCompatApi20$Builder;
.super Ljava/lang/Object;
.source "NotificationCompatApi20.java"

# interfaces
.implements Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
.implements Landroid/support/v4/app/NotificationBuilderWithActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompatApi20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private b:Landroid/app/Notification$Builder;

.field private mBigContentView:Landroid/widget/RemoteViews;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/util/ArrayList;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "n"    # Landroid/app/Notification;
    .param p3, "contentTitle"    # Ljava/lang/CharSequence;
    .param p4, "contentText"    # Ljava/lang/CharSequence;
    .param p5, "contentInfo"    # Ljava/lang/CharSequence;
    .param p6, "tickerView"    # Landroid/widget/RemoteViews;
    .param p7, "number"    # I
    .param p8, "contentIntent"    # Landroid/app/PendingIntent;
    .param p9, "fullScreenIntent"    # Landroid/app/PendingIntent;
    .param p10, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p11, "progressMax"    # I
    .param p12, "progress"    # I
    .param p13, "progressIndeterminate"    # Z
    .param p14, "showWhen"    # Z
    .param p15, "useChronometer"    # Z
    .param p16, "priority"    # I
    .param p17, "subText"    # Ljava/lang/CharSequence;
    .param p18, "localOnly"    # Z
    .param p20, "extras"    # Landroid/os/Bundle;
    .param p21, "groupKey"    # Ljava/lang/String;
    .param p22, "groupSummary"    # Z
    .param p23, "sortKey"    # Ljava/lang/String;
    .param p24, "contentView"    # Landroid/widget/RemoteViews;
    .param p25, "bigContentView"    # Landroid/widget/RemoteViews;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Notification;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Landroid/widget/RemoteViews;",
            "I",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Landroid/graphics/Bitmap;",
            "IIZZZI",
            "Ljava/lang/CharSequence;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p19, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-wide v6, p2, Landroid/app/Notification;->when:J

    .line 47
    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 48
    move/from16 v0, p14

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, p2, Landroid/app/Notification;->icon:I

    iget v6, p2, Landroid/app/Notification;->iconLevel:I

    .line 49
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 50
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 51
    invoke-virtual {v4, v5, p6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v6, p2, Landroid/app/Notification;->audioStreamType:I

    .line 52
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->vibrate:[J

    .line 53
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, p2, Landroid/app/Notification;->ledARGB:I

    iget v6, p2, Landroid/app/Notification;->ledOnMS:I

    iget v7, p2, Landroid/app/Notification;->ledOffMS:I

    .line 54
    invoke-virtual {v4, v5, v6, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    .line 55
    :goto_0
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    .line 56
    :goto_1
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    .line 57
    :goto_2
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, p2, Landroid/app/Notification;->defaults:I

    .line 58
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 59
    invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 60
    invoke-virtual {v4, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 61
    move-object/from16 v0, p17

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 62
    invoke-virtual {v4, p5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 63
    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 64
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    .line 65
    :goto_3
    move-object/from16 v0, p9

    invoke-virtual {v5, v0, v4}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 67
    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 68
    invoke-virtual {v4, p7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 69
    move/from16 v0, p15

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 70
    move/from16 v0, p16

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 71
    move/from16 v0, p11

    move/from16 v1, p12

    move/from16 v2, p13

    invoke-virtual {v4, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 72
    move/from16 v0, p18

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 73
    move-object/from16 v0, p21

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 74
    move/from16 v0, p22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 75
    move-object/from16 v0, p23

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->b:Landroid/app/Notification$Builder;

    .line 76
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->mExtras:Landroid/os/Bundle;

    .line 77
    if-eqz p20, :cond_0

    .line 78
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v0, p20

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 80
    :cond_0
    if-eqz p19, :cond_1

    invoke-virtual/range {p19 .. p19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 81
    iget-object v5, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->mExtras:Landroid/os/Bundle;

    const-string v6, "android.people"

    .line 82
    invoke-virtual/range {p19 .. p19}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, p19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 81
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
    :cond_1
    move-object/from16 v0, p24

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 85
    move-object/from16 v0, p25

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    .line 86
    return-void

    .line 54
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 55
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 56
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 64
    :cond_5
    const/4 v4, 0x0

    goto :goto_3
.end method


# virtual methods
.method public addAction(Landroid/support/v4/app/NotificationCompatBase$Action;)V
    .locals 1
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompatBase$Action;

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->b:Landroid/app/Notification$Builder;

    invoke-static {v0, p1}, Landroid/support/v4/app/NotificationCompatApi20;->addAction(Landroid/app/Notification$Builder;Landroid/support/v4/app/NotificationCompatBase$Action;)V

    .line 91
    return-void
.end method

.method public build()Landroid/app/Notification;
    .locals 3

    .prologue
    .line 100
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->b:Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 101
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 102
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 105
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 108
    :cond_1
    return-object v0
.end method

.method public getBuilder()Landroid/app/Notification$Builder;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->b:Landroid/app/Notification$Builder;

    return-object v0
.end method
