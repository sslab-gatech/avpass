.class final Landroid/support/v13/view/inputmethod/EditorInfoCompat$Api25EditorInfoCompatImpl;
.super Ljava/lang/Object;
.source "EditorInfoCompat.java"

# interfaces
.implements Landroid/support/v13/view/inputmethod/EditorInfoCompat$EditorInfoCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/view/inputmethod/EditorInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api25EditorInfoCompatImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v13/view/inputmethod/EditorInfoCompat$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v13/view/inputmethod/EditorInfoCompat$1;

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/v13/view/inputmethod/EditorInfoCompat$Api25EditorInfoCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;
    .locals 1
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 75
    invoke-static {p1}, Landroid/support/v13/view/inputmethod/EditorInfoCompatApi25;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "result":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "result":[Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":[Ljava/lang/String;
    :cond_0
    # getter for: Landroid/support/v13/view/inputmethod/EditorInfoCompat;->EMPTY_STRING_ARRAY:[Ljava/lang/String;
    invoke-static {}, Landroid/support/v13/view/inputmethod/EditorInfoCompat;->access$000()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setContentMimeTypes(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V
    .locals 0
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "contentMimeTypes"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-static {p1, p2}, Landroid/support/v13/view/inputmethod/EditorInfoCompatApi25;->setContentMimeTypes(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V

    .line 70
    return-void
.end method
