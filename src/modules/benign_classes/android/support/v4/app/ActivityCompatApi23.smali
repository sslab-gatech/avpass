.class Landroid/support/v4/app/ActivityCompatApi23;
.super Ljava/lang/Object;
.source "ActivityCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;,
        Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;,
        Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;,
        Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method private static createCallback(Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)Landroid/app/SharedElementCallback;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "newListener":Landroid/app/SharedElementCallback;
    if-eqz p0, :cond_0

    .line 66
    new-instance v0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;

    .end local v0    # "newListener":Landroid/app/SharedElementCallback;
    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;-><init>(Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)V

    .line 68
    .restart local v0    # "newListener":Landroid/app/SharedElementCallback;
    :cond_0
    return-object v0
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 41
    instance-of v0, p0, Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 42
    check-cast v0, Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;

    .line 43
    invoke-interface {v0, p2}, Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;->validateRequestPermissionsRequestCode(I)V

    .line 45
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 46
    return-void
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;

    .prologue
    .line 55
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompatApi23;->createCallback(Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 56
    return-void
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;

    .prologue
    .line 60
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompatApi23;->createCallback(Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 61
    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
