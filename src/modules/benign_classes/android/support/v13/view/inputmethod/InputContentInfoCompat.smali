.class public final Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
.super Ljava/lang/Object;
.source "InputContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/view/inputmethod/InputContentInfoCompat$Api25InputContentInfoCompatImpl;,
        Landroid/support/v13/view/inputmethod/InputContentInfoCompat$BaseInputContentInfoCompatImpl;,
        Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;
    }
.end annotation


# instance fields
.field private final mImpl:Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "description"    # Landroid/content/ClipDescription;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "linkUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastNMR1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$Api25InputContentInfoCompatImpl;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$Api25InputContentInfoCompatImpl;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    iput-object v0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->mImpl:Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$BaseInputContentInfoCompatImpl;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$BaseInputContentInfoCompatImpl;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    iput-object v0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->mImpl:Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;)V
    .locals 0
    .param p1, "impl"    # Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->mImpl:Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    .line 175
    return-void
.end method

.method public static wrap(Ljava/lang/Object;)Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
    .locals 2
    .param p0, "inputContentInfo"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 215
    if-nez p0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-object v0

    .line 218
    :cond_1
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastNMR1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    new-instance v0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

    new-instance v1, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$Api25InputContentInfoCompatImpl;

    invoke-direct {v1, p0}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$Api25InputContentInfoCompatImpl;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;-><init>(Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;)V

    goto :goto_0
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->mImpl:Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v0}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Landroid/content/ClipDescription;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->mImpl:Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v0}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    return-object v0
.end method

.method public getLinkUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->mImpl:Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v0}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getLinkUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public releasePermission()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->mImpl:Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v0}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->releasePermission()V

    .line 253
    return-void
.end method

.method public requestPermission()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->mImpl:Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v0}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->requestPermission()V

    .line 244
    return-void
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->mImpl:Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v0}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getInputContentInfo()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
