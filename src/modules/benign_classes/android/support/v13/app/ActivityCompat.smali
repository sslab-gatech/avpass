.class public Landroid/support/v13/app/ActivityCompat;
.super Landroid/support/v4/app/ActivityCompat;
.source "ActivityCompat.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/ActivityCompat;-><init>()V

    .line 44
    return-void
.end method

.method public static requestDragAndDropPermissions(Landroid/app/Activity;Landroid/view/DragEvent;)Landroid/support/v13/view/DragAndDropPermissionsCompat;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 39
    invoke-static {p0, p1}, Landroid/support/v13/view/DragAndDropPermissionsCompat;->request(Landroid/app/Activity;Landroid/view/DragEvent;)Landroid/support/v13/view/DragAndDropPermissionsCompat;

    move-result-object v0

    return-object v0
.end method
