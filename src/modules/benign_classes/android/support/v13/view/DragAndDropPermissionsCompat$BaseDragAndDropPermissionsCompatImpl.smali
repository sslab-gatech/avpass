.class Landroid/support/v13/view/DragAndDropPermissionsCompat$BaseDragAndDropPermissionsCompatImpl;
.super Ljava/lang/Object;
.source "DragAndDropPermissionsCompat.java"

# interfaces
.implements Landroid/support/v13/view/DragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/view/DragAndDropPermissionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseDragAndDropPermissionsCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public release(Ljava/lang/Object;)V
    .locals 0
    .param p1, "dragAndDropPermissions"    # Ljava/lang/Object;

    .prologue
    .line 46
    return-void
.end method

.method public request(Landroid/app/Activity;Landroid/view/DragEvent;)Ljava/lang/Object;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method
