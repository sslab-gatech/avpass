.class public Landroid/support/v4/app/NotificationCompatJellybean$Builder;
.super Ljava/lang/Object;
.source "NotificationCompatJellybean.java"

# interfaces
.implements Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
.implements Landroid/support/v4/app/NotificationBuilderWithActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompatJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private b:Landroid/app/Notification$Builder;

.field private mActionExtrasList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mBigContentView:Landroid/widget/RemoteViews;

.field private mContentView:Landroid/widget/RemoteViews;

.field private final mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
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
    .param p14, "useChronometer"    # Z
    .param p15, "priority"    # I
    .param p16, "subText"    # Ljava/lang/CharSequence;
    .param p17, "localOnly"    # Z
    .param p18, "extras"    # Landroid/os/Bundle;
    .param p19, "groupKey"    # Ljava/lang/String;
    .param p20, "groupSummary"    # Z
    .param p21, "sortKey"    # Ljava/lang/String;
    .param p22, "contentView"    # Landroid/widget/RemoteViews;
    .param p23, "bigContentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mActionExtrasList:Ljava/util/List;

    .line 82
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-wide v6, p2, Landroid/app/Notification;->when:J

    .line 83
    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, p2, Landroid/app/Notification;->icon:I

    iget v6, p2, Landroid/app/Notification;->iconLevel:I

    .line 84
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 85
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 86
    invoke-virtual {v4, v5, p6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v6, p2, Landroid/app/Notification;->audioStreamType:I

    .line 87
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->vibrate:[J

    .line 88
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, p2, Landroid/app/Notification;->ledARGB:I

    iget v6, p2, Landroid/app/Notification;->ledOnMS:I

    iget v7, p2, Landroid/app/Notification;->ledOffMS:I

    .line 89
    invoke-virtual {v4, v5, v6, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    .line 90
    :goto_0
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    .line 91
    :goto_1
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    .line 92
    :goto_2
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, p2, Landroid/app/Notification;->defaults:I

    .line 93
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 94
    invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 95
    invoke-virtual {v4, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 96
    move-object/from16 v0, p16

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 97
    invoke-virtual {v4, p5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 98
    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 99
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    .line 100
    :goto_3
    move-object/from16 v0, p9

    invoke-virtual {v5, v0, v4}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 102
    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 103
    invoke-virtual {v4, p7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 104
    move/from16 v0, p14

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 105
    move/from16 v0, p15

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 106
    move/from16 v0, p11

    move/from16 v1, p12

    move/from16 v2, p13

    invoke-virtual {v4, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->b:Landroid/app/Notification$Builder;

    .line 107
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mExtras:Landroid/os/Bundle;

    .line 108
    if-eqz p18, :cond_0

    .line 109
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v0, p18

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 111
    :cond_0
    if-eqz p17, :cond_1

    .line 112
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mExtras:Landroid/os/Bundle;

    const-string v5, "android.support.localOnly"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    :cond_1
    if-eqz p19, :cond_2

    .line 115
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mExtras:Landroid/os/Bundle;

    const-string v5, "android.support.groupKey"

    move-object/from16 v0, p19

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    if-eqz p20, :cond_8

    .line 117
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mExtras:Landroid/os/Bundle;

    const-string v5, "android.support.isGroupSummary"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    :cond_2
    :goto_4
    if-eqz p21, :cond_3

    .line 123
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mExtras:Landroid/os/Bundle;

    const-string v5, "android.support.sortKey"

    move-object/from16 v0, p21

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_3
    move-object/from16 v0, p22

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 126
    move-object/from16 v0, p23

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    .line 127
    return-void

    .line 89
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 90
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 91
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 99
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 119
    :cond_8
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mExtras:Landroid/os/Bundle;

    const-string v5, "android.support.useSideChannel"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4
.end method


# virtual methods
.method public addAction(Landroid/support/v4/app/NotificationCompatBase$Action;)V
    .locals 2
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompatBase$Action;

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mActionExtrasList:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->b:Landroid/app/Notification$Builder;

    invoke-static {v1, p1}, Landroid/support/v4/app/NotificationCompatJellybean;->writeActionAndGetExtras(Landroid/app/Notification$Builder;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public build()Landroid/app/Notification;
    .locals 7

    .prologue
    .line 140
    iget-object v5, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 143
    .local v4, "notif":Landroid/app/Notification;
    invoke-static {v4}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    .line 144
    .local v1, "extras":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    iget-object v5, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mExtras:Landroid/os/Bundle;

    invoke-direct {v3, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 145
    .local v3, "mergeBundle":Landroid/os/Bundle;
    iget-object v5, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 146
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 147
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 151
    iget-object v5, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mActionExtrasList:Ljava/util/List;

    invoke-static {v5}, Landroid/support/v4/app/NotificationCompatJellybean;->buildActionExtrasMap(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    .line 152
    .local v0, "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    if-eqz v0, :cond_2

    .line 154
    invoke-static {v4}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "android.support.actionExtras"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 156
    :cond_2
    iget-object v5, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_3

    .line 157
    iget-object v5, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v5, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 159
    :cond_3
    iget-object v5, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_4

    .line 160
    iget-object v5, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v5, v4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 162
    :cond_4
    return-object v4
.end method

.method public getBuilder()Landroid/app/Notification$Builder;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->b:Landroid/app/Notification$Builder;

    return-object v0
.end method
