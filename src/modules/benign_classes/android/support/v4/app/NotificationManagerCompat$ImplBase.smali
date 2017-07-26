.class Landroid/support/v4/app/NotificationManagerCompat$ImplBase;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"

# interfaces
.implements Landroid/support/v4/app/NotificationManagerCompat$Impl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areNotificationsEnabled(Landroid/content/Context;Landroid/app/NotificationManager;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationManager"    # Landroid/app/NotificationManager;

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public cancelNotification(Landroid/app/NotificationManager;Ljava/lang/String;I)V
    .locals 0
    .param p1, "notificationManager"    # Landroid/app/NotificationManager;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 173
    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 174
    return-void
.end method

.method public getImportance(Landroid/app/NotificationManager;)I
    .locals 1
    .param p1, "notificationManager"    # Landroid/app/NotificationManager;

    .prologue
    .line 195
    const/16 v0, -0x3e8

    return v0
.end method

.method public getSideChannelBindFlags()I
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public postNotification(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 0
    .param p1, "notificationManager"    # Landroid/app/NotificationManager;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "notification"    # Landroid/app/Notification;

    .prologue
    .line 179
    invoke-virtual {p1, p2, p3, p4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 180
    return-void
.end method
