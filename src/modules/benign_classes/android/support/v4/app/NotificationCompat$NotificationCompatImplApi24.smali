.class Landroid/support/v4/app/NotificationCompat$NotificationCompatImplApi24;
.super Landroid/support/v4/app/NotificationCompat$NotificationCompatImplApi21;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationCompatImplApi24"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 853
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplApi21;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$BuilderExtender;)Landroid/app/Notification;
    .locals 35
    .param p1, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "extender"    # Landroid/support/v4/app/NotificationCompat$BuilderExtender;

    .prologue
    .line 857
    new-instance v2, Landroid/support/v4/app/NotificationCompatApi24$Builder;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressMax:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgress:I

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mShowWhen:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLocalOnly:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mColor:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mVisibility:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupSummary:Z

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mRemoteInputHistory:[Ljava/lang/CharSequence;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    move-object/from16 v33, v0

    invoke-direct/range {v2 .. v33}, Landroid/support/v4/app/NotificationCompatApi24$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;IILandroid/app/Notification;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/CharSequence;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 865
    .local v2, "builder":Landroid/support/v4/app/NotificationCompatApi24$Builder;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/support/v4/app/NotificationCompat;->addActionsToBuilder(Landroid/support/v4/app/NotificationBuilderWithActions;Ljava/util/ArrayList;)V

    .line 866
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    invoke-static {v2, v3}, Landroid/support/v4/app/NotificationCompat;->addStyleToBuilderApi24(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Style;)V

    .line 867
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;->build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;

    move-result-object v34

    .line 868
    .local v34, "notification":Landroid/app/Notification;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    if-eqz v3, :cond_0

    .line 869
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplApi24;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V

    .line 871
    :cond_0
    return-object v34
.end method
