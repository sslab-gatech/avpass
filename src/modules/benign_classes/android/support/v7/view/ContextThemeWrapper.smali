.class public Landroid/support/v7/view/ContextThemeWrapper;
.super Landroid/content/ContextWrapper;
.source "ContextThemeWrapper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 43
    iput p2, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p2, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 49
    return-void
.end method

.method private initializeTheme()V
    .locals 4

    .prologue
    .line 104
    iget-object v2, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 105
    .local v0, "first":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/support/v7/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 107
    invoke-virtual {p0}, Landroid/support/v7/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 108
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    if-eqz v1, :cond_0

    .line 109
    iget-object v2, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 112
    .end local v1    # "theme":Landroid/content/res/Resources$Theme;
    :cond_0
    iget-object v2, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    iget v3, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    invoke-virtual {p0, v2, v3, v0}, Landroid/support/v7/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 113
    return-void

    .line 104
    .end local v0    # "first":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/support/v7/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 83
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 85
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 74
    :goto_0
    return-object v0

    .line 69
    :cond_0
    iget v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    if-nez v0, :cond_1

    .line 70
    sget v0, Landroid/support/v7/appcompat/R$style;->Theme_AppCompat_Light:I

    iput v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    .line 72
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/view/ContextThemeWrapper;->initializeTheme()V

    .line 74
    iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    goto :goto_0
.end method

.method public getThemeResId()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 101
    return-void
.end method

.method public setTheme(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 53
    iget v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    if-eq v0, p1, :cond_0

    .line 54
    iput p1, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    .line 55
    invoke-direct {p0}, Landroid/support/v7/view/ContextThemeWrapper;->initializeTheme()V

    .line 57
    :cond_0
    return-void
.end method
