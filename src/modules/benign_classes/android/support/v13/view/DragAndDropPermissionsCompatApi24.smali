.class Landroid/support/v13/view/DragAndDropPermissionsCompatApi24;
.super Ljava/lang/Object;
.source "DragAndDropPermissionsCompatApi24.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static release(Ljava/lang/Object;)V
    .locals 0
    .param p0, "dragAndDropPermissions"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p0, Landroid/view/DragAndDropPermissions;

    .end local p0    # "dragAndDropPermissions":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/DragAndDropPermissions;->release()V

    .line 30
    return-void
.end method

.method public static request(Landroid/app/Activity;Landroid/view/DragEvent;)Ljava/lang/Object;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object v0

    return-object v0
.end method
