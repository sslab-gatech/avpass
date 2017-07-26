.class final Landroid/support/v13/view/inputmethod/InputContentInfoCompat$BaseInputContentInfoCompatImpl;
.super Ljava/lang/Object;
.source "InputContentInfoCompat.java"

# interfaces
.implements Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BaseInputContentInfoCompatImpl"
.end annotation


# instance fields
.field private final mContentUri:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDescription:Landroid/content/ClipDescription;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLinkUri:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .locals 0
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
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$BaseInputContentInfoCompatImpl;->mContentUri:Landroid/net/Uri;

    .line 61
    iput-object p2, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$BaseInputContentInfoCompatImpl;->mDescription:Landroid/content/ClipDescription;

    .line 62
    iput-object p3, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$BaseInputContentInfoCompatImpl;->mLinkUri:Landroid/net/Uri;

    .line 63
    return-void
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$BaseInputContentInfoCompatImpl;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDescription()Landroid/content/ClipDescription;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$BaseInputContentInfoCompatImpl;->mDescription:Landroid/content/ClipDescription;

    return-object v0
.end method

.method public getInputContentInfo()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLinkUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$BaseInputContentInfoCompatImpl;->mLinkUri:Landroid/net/Uri;

    return-object v0
.end method

.method public releasePermission()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public requestPermission()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
