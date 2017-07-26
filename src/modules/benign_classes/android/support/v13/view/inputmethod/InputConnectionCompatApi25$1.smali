.class final Landroid/support/v13/view/inputmethod/InputConnectionCompatApi25$1;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "InputConnectionCompatApi25.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v13/view/inputmethod/InputConnectionCompatApi25;->createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/support/v13/view/inputmethod/InputConnectionCompatApi25$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onCommitContentListener:Landroid/support/v13/view/inputmethod/InputConnectionCompatApi25$OnCommitContentListener;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputConnection;ZLandroid/support/v13/view/inputmethod/InputConnectionCompatApi25$OnCommitContentListener;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "x1"    # Z

    .prologue
    .line 38
    iput-object p3, p0, Landroid/support/v13/view/inputmethod/InputConnectionCompatApi25$1;->val$onCommitContentListener:Landroid/support/v13/view/inputmethod/InputConnectionCompatApi25$OnCommitContentListener;

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p2, "flags"    # I
    .param p3, "opts"    # Landroid/os/Bundle;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/v13/view/inputmethod/InputConnectionCompatApi25$1;->val$onCommitContentListener:Landroid/support/v13/view/inputmethod/InputConnectionCompatApi25$OnCommitContentListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v13/view/inputmethod/InputConnectionCompatApi25$OnCommitContentListener;->onCommitContent(Ljava/lang/Object;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method
