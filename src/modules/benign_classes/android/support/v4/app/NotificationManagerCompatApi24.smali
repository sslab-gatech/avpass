.class Landroid/support/v4/app/NotificationManagerCompatApi24;
.super Ljava/lang/Object;
.source "NotificationManagerCompatApi24.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areNotificationsEnabled(Landroid/app/NotificationManager;)Z
    .locals 1
    .param p0, "notificationManager"    # Landroid/app/NotificationManager;

    .prologue
    .line 22
    invoke-virtual {p0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method public static getImportance(Landroid/app/NotificationManager;)I
    .locals 1
    .param p0, "notificationManager"    # Landroid/app/NotificationManager;

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getImportance()I

    move-result v0

    return v0
.end method
