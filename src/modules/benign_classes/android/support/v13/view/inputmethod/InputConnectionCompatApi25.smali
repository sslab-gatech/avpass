.class final Landroid/support/v13/view/inputmethod/InputConnectionCompatApi25;
.super Ljava/lang/Object;
.source "InputConnectionCompatApi25.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/view/inputmethod/InputConnectionCompatApi25$OnCommitContentListener;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static commitContent(Landroid/view/inputmethod/InputConnection;Ljava/lang/Object;ILandroid/os/Bundle;)Z
    .locals 1
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "inputContentInfo"    # Ljava/lang/Object;
    .param p2, "flags"    # I
    .param p3, "opts"    # Landroid/os/Bundle;

    .prologue
    .line 29
    check-cast p1, Landroid/view/inputmethod/InputContentInfo;

    .end local p1    # "inputContentInfo":Ljava/lang/Object;
    invoke-interface {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/support/v13/view/inputmethod/InputConnectionCompatApi25$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "onCommitContentListener"    # Landroid/support/v13/view/inputmethod/InputConnectionCompatApi25$OnCommitContentListener;

    .prologue
    .line 38
    new-instance v0, Landroid/support/v13/view/inputmethod/InputConnectionCompatApi25$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Landroid/support/v13/view/inputmethod/InputConnectionCompatApi25$1;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroid/support/v13/view/inputmethod/InputConnectionCompatApi25$OnCommitContentListener;)V

    return-object v0
.end method
