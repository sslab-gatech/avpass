.class Landroid/support/v7/app/AppCompatDelegateImplV14;
.super Landroid/support/v7/app/AppCompatDelegateImplV11;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;,
        Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;
    }
.end annotation


# static fields
.field private static final FLUSH_RESOURCE_CACHES_ON_NIGHT_CHANGE:Z = true

.field private static final KEY_LOCAL_NIGHT_MODE:Ljava/lang/String; = "appcompat:local_night_mode"


# instance fields
.field private mApplyDayNightCalled:Z

.field private mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

.field private mHandleNativeActionModes:Z

.field private mLocalNightMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Landroid/support/v7/app/AppCompatCallback;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV11;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    .line 44
    const/16 v0, -0x64

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z

    .line 54
    return-void
.end method

.method private ensureAutoNightModeManager()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v7/app/TwilightManager;->getInstance(Landroid/content/Context;)Landroid/support/v7/app/TwilightManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/support/v7/app/TwilightManager;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    .line 244
    :cond_0
    return-void
.end method

.method private getNightMode()I
    .locals 2

    .prologue
    .line 162
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/support/v7/app/AppCompatDelegateImplV14;->getDefaultNightMode()I

    move-result v0

    goto :goto_0
.end method

.method private shouldRecreateOnNightModeChange()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 253
    iget-boolean v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mApplyDayNightCalled:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 256
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 258
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    .line 259
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v6, 0x0

    .line 258
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 262
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    iget v5, v1, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_0

    .line 270
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .restart local v1    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    move v3, v4

    .line 262
    goto :goto_0

    .line 263
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "AppCompatDelegate"

    const-string v5, "Exception while getting ActivityInfo"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    move v3, v4

    .line 270
    goto :goto_0
.end method

.method private updateForNightMode(I)Z
    .locals 9
    .param p1, "mode"    # I

    .prologue
    .line 190
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 191
    .local v7, "res":Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 192
    .local v1, "conf":Landroid/content/res/Configuration;
    iget v8, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v8, 0x30

    .line 194
    .local v3, "currentNightMode":I
    const/4 v8, 0x2

    if-ne p1, v8, :cond_0

    const/16 v5, 0x20

    .line 198
    .local v5, "newNightMode":I
    :goto_0
    if-eq v3, v5, :cond_2

    .line 199
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->shouldRecreateOnNightModeChange()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 205
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 206
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 231
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_1
    const/4 v8, 0x1

    .line 237
    :goto_2
    return v8

    .line 194
    .end local v5    # "newNightMode":I
    :cond_0
    const/16 v5, 0x10

    goto :goto_0

    .line 211
    .restart local v5    # "newNightMode":I
    :cond_1
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 212
    .local v2, "config":Landroid/content/res/Configuration;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 213
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    iget v6, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 216
    .local v6, "originalFontScale":F
    iget v8, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, -0x31

    or-int/2addr v8, v5

    iput v8, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 219
    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v6

    iput v8, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 222
    invoke-virtual {v7, v2, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 227
    iput v6, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 228
    invoke-virtual {v7, v2, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_1

    .line 237
    .end local v2    # "config":Landroid/content/res/Configuration;
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "originalFontScale":F
    :cond_2
    const/4 v8, 0x0

    goto :goto_2
.end method


# virtual methods
.method public applyDayNight()Z
    .locals 4

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "applied":Z
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->getNightMode()I

    move-result v2

    .line 90
    .local v2, "nightMode":I
    invoke-virtual {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV14;->mapNightMode(I)I

    move-result v1

    .line 91
    .local v1, "modeToApply":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 92
    invoke-direct {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV14;->updateForNightMode(I)Z

    move-result v0

    .line 95
    :cond_0
    if-nez v2, :cond_1

    .line 97
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->ensureAutoNightModeManager()V

    .line 98
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->setup()V

    .line 101
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mApplyDayNightCalled:Z

    .line 102
    return v0
.end method

.method final getAutoNightModeManager()Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 248
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->ensureAutoNightModeManager()V

    .line 249
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    return-object v0
.end method

.method public isHandleNativeActionModesEnabled()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z

    return v0
.end method

.method mapNightMode(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 148
    sparse-switch p1, :sswitch_data_0

    .line 156
    .end local p1    # "mode":I
    :goto_0
    return p1

    .line 150
    .restart local p1    # "mode":I
    :sswitch_0
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->ensureAutoNightModeManager()V

    .line 151
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->getApplyableNightMode()I

    move-result p1

    goto :goto_0

    .line 154
    :sswitch_1
    const/4 p1, -0x1

    goto :goto_0

    .line 148
    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, -0x64

    .line 58
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onCreate(Landroid/os/Bundle;)V

    .line 60
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    if-ne v0, v1, :cond_0

    .line 63
    const-string v0, "appcompat:local_night_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    .line 66
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onDestroy()V

    .line 180
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->cleanup()V

    .line 183
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 169
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    .line 171
    const-string v0, "appcompat:local_night_mode"

    iget v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onStart()V

    .line 111
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->applyDayNight()Z

    .line 112
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onStop()V

    .line 119
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->cleanup()V

    .line 122
    :cond_0
    return-void
.end method

.method public setHandleNativeActionModesEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z

    .line 78
    return-void
.end method

.method public setLocalNightMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 126
    packed-switch p1, :pswitch_data_0

    .line 141
    const-string v0, "AppCompatDelegate"

    const-string v1, "setLocalNightMode() called with an unknown mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 131
    :pswitch_0
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    if-eq v0, p1, :cond_0

    .line 132
    iput p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    .line 133
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mApplyDayNightCalled:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->applyDayNight()Z

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 72
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/view/Window$Callback;)V

    return-object v0
.end method
