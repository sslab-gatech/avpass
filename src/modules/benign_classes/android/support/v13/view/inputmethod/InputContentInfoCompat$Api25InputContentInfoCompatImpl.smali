.class final Landroid/support/v13/view/inputmethod/InputContentInfoCompat$Api25InputContentInfoCompatImpl;
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
    name = "Api25InputContentInfoCompatImpl"
.end annotation


# instance fields
.field final mObject:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


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
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {p1, p2, p3}, Landroid/support/v13/view/inputmethod/InputContentInfoCompatApi25;->create(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$Api25InputContentInfoCompatImpl;->mObject:Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "inputContentInfo"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$Api25InputContentInfoCompatImpl;->mObject:Ljava/lang/Object;

    .line 107
    return-void
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$Api25InputContentInfoCompatImpl;->mObject:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v13/view/inputmethod/InputContentInfoCompatApi25;->getContentUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Landroid/content/ClipDescription;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$Api25InputContentInfoCompatImpl;->mObject:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v13/view/inputmethod/InputContentInfoCompatApi25;->getDescription(Ljava/lang/Object;)Landroid/content/ClipDescription;

    move-result-object v0

    return-object v0
.end method

.method public getInputContentInfo()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$Api25InputContentInfoCompatImpl;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getLinkUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$Api25InputContentInfoCompatImpl;->mObject:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v13/view/inputmethod/InputContentInfoCompatApi25;->getLinkUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public releasePermission()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$Api25InputContentInfoCompatImpl;->mObject:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v13/view/inputmethod/InputContentInfoCompatApi25;->releasePermission(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public requestPermission()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$Api25InputContentInfoCompatImpl;->mObject:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v13/view/inputmethod/InputContentInfoCompatApi25;->requestPermission(Ljava/lang/Object;)V

    .line 141
    return-void
.end method
