.class public Landroid/support/v4/app/NotificationCompatApi24$Builder;
.super Ljava/lang/Object;
.source "NotificationCompatApi24.java"

# interfaces
.implements Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
.implements Landroid/support/v4/app/NotificationBuilderWithActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompatApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private b:Landroid/app/Notification$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;IILandroid/app/Notification;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/CharSequence;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 9
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
    .param p19, "category"    # Ljava/lang/String;
    .param p21, "extras"    # Landroid/os/Bundle;
    .param p22, "color"    # I
    .param p23, "visibility"    # I
    .param p24, "publicVersion"    # Landroid/app/Notification;
    .param p25, "groupKey"    # Ljava/lang/String;
    .param p26, "groupSummary"    # Z
    .param p27, "sortKey"    # Ljava/lang/String;
    .param p28, "remoteInputHistory"    # [Ljava/lang/CharSequence;
    .param p29, "contentView"    # Landroid/widget/RemoteViews;
    .param p30, "bigContentView"    # Landroid/widget/RemoteViews;
    .param p31, "headsUpContentView"    # Landroid/widget/RemoteViews;
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
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "II",
            "Landroid/app/Notification;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/CharSequence;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p20, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-wide v6, p2, Landroid/app/Notification;->when:J

    .line 63
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 64
    move/from16 v0, p14

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, p2, Landroid/app/Notification;->icon:I

    iget v7, p2, Landroid/app/Notification;->iconLevel:I

    .line 65
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 66
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 67
    invoke-virtual {v5, v6, p6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v7, p2, Landroid/app/Notification;->audioStreamType:I

    .line 68
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p2, Landroid/app/Notification;->vibrate:[J

    .line 69
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, p2, Landroid/app/Notification;->ledARGB:I

    iget v7, p2, Landroid/app/Notification;->ledOnMS:I

    iget v8, p2, Landroid/app/Notification;->ledOffMS:I

    .line 70
    invoke-virtual {v5, v6, v7, v8}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v5, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    .line 71
    :goto_0
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v5, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    .line 72
    :goto_1
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v5, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    .line 73
    :goto_2
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, p2, Landroid/app/Notification;->defaults:I

    .line 74
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 75
    invoke-virtual {v5, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 76
    invoke-virtual {v5, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 77
    move-object/from16 v0, p17

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 78
    invoke-virtual {v5, p5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 79
    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 80
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v5, p2, Landroid/app/Notification;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    .line 81
    :goto_3
    move-object/from16 v0, p9

    invoke-virtual {v6, v0, v5}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 83
    move-object/from16 v0, p10

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 84
    move/from16 v0, p7

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 85
    move/from16 v0, p15

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 86
    move/from16 v0, p16

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 87
    move/from16 v0, p11

    move/from16 v1, p12

    move/from16 v2, p13

    invoke-virtual {v5, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 88
    move/from16 v0, p18

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 89
    move-object/from16 v0, p21

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 90
    move-object/from16 v0, p25

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 91
    move/from16 v0, p26

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 92
    move-object/from16 v0, p27

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 93
    move-object/from16 v0, p19

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 94
    move/from16 v0, p22

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 95
    move/from16 v0, p23

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 96
    move-object/from16 v0, p24

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 97
    move-object/from16 v0, p28

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    .line 98
    if-eqz p29, :cond_0

    .line 99
    iget-object v5, p0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    move-object/from16 v0, p29

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 101
    :cond_0
    if-eqz p30, :cond_1

    .line 102
    iget-object v5, p0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    move-object/from16 v0, p30

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 104
    :cond_1
    if-eqz p31, :cond_2

    .line 105
    iget-object v5, p0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    move-object/from16 v0, p31

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 107
    :cond_2
    invoke-virtual/range {p20 .. p20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 108
    .local v4, "person":Ljava/lang/String;
    iget-object v6, p0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_4

    .line 70
    .end local v4    # "person":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 71
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 72
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 80
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 110
    :cond_7
    return-void
.end method


# virtual methods
.method public addAction(Landroid/support/v4/app/NotificationCompatBase$Action;)V
    .locals 6
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompatBase$Action;

    .prologue
    .line 114
    new-instance v0, Landroid/app/Notification$Action$Builder;

    .line 115
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 116
    .local v0, "actionBuilder":Landroid/app/Notification$Action$Builder;
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v3

    .line 117
    invoke-static {v3}, Landroid/support/v4/app/RemoteInputCompatApi20;->fromCompat([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 119
    .local v2, "remoteInput":Landroid/app/RemoteInput;
    invoke-virtual {v0, v2}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 117
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    .end local v2    # "remoteInput":Landroid/app/RemoteInput;
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 124
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 128
    .local v1, "actionExtras":Landroid/os/Bundle;
    :goto_1
    const-string v3, "android.support.allowGeneratedReplies"

    .line 129
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getAllowGeneratedReplies()Z

    move-result v4

    .line 128
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    invoke-virtual {v0, v1}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 131
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getAllowGeneratedReplies()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 132
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 133
    return-void

    .line 126
    .end local v1    # "actionExtras":Landroid/os/Bundle;
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .restart local v1    # "actionExtras":Landroid/os/Bundle;
    goto :goto_1
.end method

.method public build()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getBuilder()Landroid/app/Notification$Builder;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    return-object v0
.end method
