.class Landroid/support/v13/view/ViewCompat$Api24ViewCompatImpl;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/support/v13/view/ViewCompat$ViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api24ViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public cancelDragAndDrop(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    invoke-static {p1}, Landroid/support/v13/view/ViewCompatApi24;->cancelDragAndDrop(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method public startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Landroid/content/ClipData;
    .param p3, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p4, "localState"    # Ljava/lang/Object;
    .param p5, "flags"    # I

    .prologue
    .line 63
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v13/view/ViewCompatApi24;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;

    .prologue
    .line 74
    invoke-static {p1, p2}, Landroid/support/v13/view/ViewCompatApi24;->updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V

    .line 75
    return-void
.end method
