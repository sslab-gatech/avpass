.class public Landroid/support/v7/app/AppCompatDialog;
.super Landroid/app/Dialog;
.source "AppCompatDialog.java"

# interfaces
.implements Landroid/support/v7/app/AppCompatCallback;


# instance fields
.field private mDelegate:Landroid/support/v7/app/AppCompatDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 46
    invoke-static {p1, p2}, Landroid/support/v7/app/AppCompatDialog;->getThemeResId(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 52
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->applyDayNight()Z

    .line 56
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 61
    return-void
.end method

.method private static getThemeResId(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeId"    # I

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 164
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 165
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->dialogTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 166
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 168
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    return p1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Landroid/support/v7/app/AppCompatDelegate;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDialog;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    if-nez v0, :cond_0

    .line 156
    invoke-static {p0, p0}, Landroid/support/v7/app/AppCompatDelegate;->create(Landroid/app/Dialog;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDialog;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    .line 158
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDialog;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    return-object v0
.end method

.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 149
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->installViewFactory()V

    .line 66
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 122
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onStop()V

    .line 123
    return-void
.end method

.method public onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;

    .prologue
    .line 177
    return-void
.end method

.method public onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;

    .prologue
    .line 173
    return-void
.end method

.method public onWindowStartingSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/support/v7/view/ActionMode$Callback;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(I)V

    .line 84
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 111
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->requestWindowFeature(I)Z

    move-result v0

    return v0
.end method
