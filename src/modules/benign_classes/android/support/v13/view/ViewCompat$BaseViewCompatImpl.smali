.class Landroid/support/v13/view/ViewCompat$BaseViewCompatImpl;
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
    name = "BaseViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public cancelDragAndDrop(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
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
    .line 42
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;

    .prologue
    .line 53
    return-void
.end method
