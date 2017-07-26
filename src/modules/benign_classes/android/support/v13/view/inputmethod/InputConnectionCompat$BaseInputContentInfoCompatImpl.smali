.class final Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;
.super Ljava/lang/Object;
.source "InputConnectionCompat.java"

# interfaces
.implements Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputConnectionCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/view/inputmethod/InputConnectionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BaseInputContentInfoCompatImpl"
.end annotation


# static fields
.field private static COMMIT_CONTENT_ACTION:Ljava/lang/String;

.field private static COMMIT_CONTENT_CONTENT_URI_KEY:Ljava/lang/String;

.field private static COMMIT_CONTENT_DESCRIPTION_KEY:Ljava/lang/String;

.field private static COMMIT_CONTENT_FLAGS_KEY:Ljava/lang/String;

.field private static COMMIT_CONTENT_LINK_URI_KEY:Ljava/lang/String;

.field private static COMMIT_CONTENT_OPTS_KEY:Ljava/lang/String;

.field private static COMMIT_CONTENT_RESULT_RECEIVER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    sput-object v0, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;->COMMIT_CONTENT_ACTION:Ljava/lang/String;

    .line 50
    const-string v0, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    sput-object v0, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;->COMMIT_CONTENT_CONTENT_URI_KEY:Ljava/lang/String;

    .line 52
    const-string v0, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    sput-object v0, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;->COMMIT_CONTENT_DESCRIPTION_KEY:Ljava/lang/String;

    .line 54
    const-string v0, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    sput-object v0, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;->COMMIT_CONTENT_LINK_URI_KEY:Ljava/lang/String;

    .line 56
    const-string v0, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    sput-object v0, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;->COMMIT_CONTENT_OPTS_KEY:Ljava/lang/String;

    .line 58
    const-string v0, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    sput-object v0, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;->COMMIT_CONTENT_FLAGS_KEY:Ljava/lang/String;

    .line 60
    const-string v0, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

    sput-object v0, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;->COMMIT_CONTENT_RESULT_RECEIVER:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handlePerformPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Z
    .locals 13
    .param p0, "action"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "data"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "onCommitContentListener"    # Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 103
    sget-object v9, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;->COMMIT_CONTENT_ACTION:Ljava/lang/String;

    invoke-static {v9, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v11

    .line 106
    :cond_1
    if-eqz p1, :cond_0

    .line 109
    const/4 v8, 0x0

    .line 110
    .local v8, "resultReceiver":Landroid/os/ResultReceiver;
    const/4 v7, 0x0

    .line 112
    .local v7, "result":Z
    :try_start_0
    sget-object v9, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;->COMMIT_CONTENT_RESULT_RECEIVER:Ljava/lang/String;

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/os/ResultReceiver;

    move-object v8, v0

    .line 113
    sget-object v9, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;->COMMIT_CONTENT_CONTENT_URI_KEY:Ljava/lang/String;

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 114
    .local v1, "contentUri":Landroid/net/Uri;
    sget-object v9, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;->COMMIT_CONTENT_DESCRIPTION_KEY:Ljava/lang/String;

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/ClipDescription;

    .line 116
    .local v2, "description":Landroid/content/ClipDescription;
    sget-object v9, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;->COMMIT_CONTENT_LINK_URI_KEY:Ljava/lang/String;

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 117
    .local v5, "linkUri":Landroid/net/Uri;
    sget-object v9, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;->COMMIT_CONTENT_FLAGS_KEY:Ljava/lang/String;

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 118
    .local v3, "flags":I
    sget-object v9, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;->COMMIT_CONTENT_OPTS_KEY:Ljava/lang/String;

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 119
    .local v6, "opts":Landroid/os/Bundle;
    new-instance v4, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

    invoke-direct {v4, v1, v2, v5}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    .line 121
    .local v4, "inputContentInfo":Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
    invoke-interface {p2, v4, v3, v6}, Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;->onCommitContent(Landroid/support/v13/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 123
    if-eqz v8, :cond_2

    .line 124
    if-eqz v7, :cond_3

    move v9, v10

    :goto_1
    invoke-virtual {v8, v9, v12}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_2
    move v11, v7

    .line 127
    goto :goto_0

    :cond_3
    move v9, v11

    .line 124
    goto :goto_1

    .line 123
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v2    # "description":Landroid/content/ClipDescription;
    .end local v3    # "flags":I
    .end local v4    # "inputContentInfo":Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
    .end local v5    # "linkUri":Landroid/net/Uri;
    .end local v6    # "opts":Landroid/os/Bundle;
    :catchall_0
    move-exception v9

    if-eqz v8, :cond_4

    .line 124
    if-eqz v7, :cond_5

    :goto_2
    invoke-virtual {v8, v10, v12}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_4
    throw v9

    :cond_5
    move v10, v11

    goto :goto_2
.end method


# virtual methods
.method public commitContent(Landroid/view/inputmethod/InputConnection;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "inputContentInfo"    # Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "flags"    # I
    .param p4, "opts"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v0, "params":Landroid/os/Bundle;
    sget-object v1, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;->COMMIT_CONTENT_CONTENT_URI_KEY:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 69
    sget-object v1, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;->COMMIT_CONTENT_DESCRIPTION_KEY:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 70
    sget-object v1, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;->COMMIT_CONTENT_LINK_URI_KEY:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->getLinkUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 71
    sget-object v1, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;->COMMIT_CONTENT_FLAGS_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    sget-object v1, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;->COMMIT_CONTENT_OPTS_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 74
    sget-object v1, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;->COMMIT_CONTENT_ACTION:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    return v1
.end method

.method public createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "onCommitContentListener"    # Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 82
    invoke-static {p2}, Landroid/support/v13/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "contentMimeTypes":[Ljava/lang/String;
    array-length v2, v0

    if-nez v2, :cond_0

    .line 87
    .end local p1    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_0
    return-object p1

    .line 86
    .restart local p1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    move-object v1, p3

    .line 87
    .local v1, "listener":Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    new-instance v2, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3, v1}, Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl$1;-><init>(Landroid/support/v13/view/inputmethod/InputConnectionCompat$BaseInputContentInfoCompatImpl;Landroid/view/inputmethod/InputConnection;ZLandroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    move-object p1, v2

    goto :goto_0
.end method
