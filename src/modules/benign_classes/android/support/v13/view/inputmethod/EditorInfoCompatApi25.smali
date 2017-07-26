.class final Landroid/support/v13/view/inputmethod/EditorInfoCompatApi25;
.super Ljava/lang/Object;
.source "EditorInfoCompatApi25.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;
    .locals 1
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 28
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public static setContentMimeTypes(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V
    .locals 0
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p1, "contentMimeTypes"    # [Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    .line 25
    return-void
.end method
