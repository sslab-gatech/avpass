.class public Landroid/support/v4/content/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# static fields
.field private static final DIR_ANDROID:Ljava/lang/String; = "Android"

.field private static final DIR_OBB:Ljava/lang/String; = "obb"

.field private static final TAG:Ljava/lang/String; = "ContextCompat"

.field private static final sLock:Ljava/lang/Object;

.field private static sTempValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/content/ContextCompat;->sLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method private static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "base"    # Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    .prologue
    .line 347
    move-object v0, p0

    .line 348
    .local v0, "cur":Ljava/io/File;
    array-length v4, p1

    const/4 v3, 0x0

    move-object v1, v0

    .end local v0    # "cur":Ljava/io/File;
    .local v1, "cur":Ljava/io/File;
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, p1, v3

    .line 349
    .local v2, "segment":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 350
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    .end local v1    # "cur":Ljava/io/File;
    .restart local v0    # "cur":Ljava/io/File;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v1, v0

    .end local v0    # "cur":Ljava/io/File;
    .restart local v1    # "cur":Ljava/io/File;
    goto :goto_0

    .line 351
    :cond_0
    if-eqz v2, :cond_2

    .line 352
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v1    # "cur":Ljava/io/File;
    .restart local v0    # "cur":Ljava/io/File;
    goto :goto_1

    .line 355
    .end local v0    # "cur":Ljava/io/File;
    .end local v2    # "segment":Ljava/lang/String;
    .restart local v1    # "cur":Ljava/io/File;
    :cond_1
    return-object v1

    .restart local v2    # "segment":Ljava/lang/String;
    :cond_2
    move-object v0, v1

    .end local v1    # "cur":Ljava/io/File;
    .restart local v0    # "cur":Ljava/io/File;
    goto :goto_1
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 449
    if-nez p1, :cond_0

    .line 450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 551
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatApi24;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 554
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized createFilesDir(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 506
    const-class v1, Landroid/support/v4/content/ContextCompat;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    .end local p0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    monitor-exit v1

    return-object p0

    .line 512
    .restart local p0    # "file":Ljava/io/File;
    :cond_1
    :try_start_1
    const-string v0, "ContextCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create files subdir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    const/4 p0, 0x0

    goto :goto_0

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getCodeCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 496
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 497
    .local v1, "version":I
    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 498
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatApi21;->getCodeCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 501
    :goto_0
    return-object v2

    .line 500
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 501
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v4, "code_cache"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/support/v4/content/ContextCompat;->createFilesDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    goto :goto_0
.end method

.method public static final getColor(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 430
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 431
    .local v0, "version":I
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 432
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatApi23;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 434
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method public static final getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 407
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 408
    .local v0, "version":I
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 409
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatApi23;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 411
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDataDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatApi24;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 177
    :goto_0
    return-object v1

    .line 176
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 177
    .local v0, "dataDir":Ljava/lang/String;
    if-eqz v0, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 370
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 371
    .local v1, "version":I
    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 372
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatApi21;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 388
    :goto_0
    return-object v2

    .line 373
    :cond_0
    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 374
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 381
    :cond_1
    sget-object v3, Landroid/support/v4/content/ContextCompat;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 382
    :try_start_0
    sget-object v2, Landroid/support/v4/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    if-nez v2, :cond_2

    .line 383
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    sput-object v2, Landroid/support/v4/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    .line 385
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v4, Landroid/support/v4/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    const/4 v5, 0x1

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 386
    sget-object v2, Landroid/support/v4/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    iget v0, v2, Landroid/util/TypedValue;->resourceId:I

    .line 387
    .local v0, "resolvedId":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 387
    .end local v0    # "resolvedId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 338
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 339
    .local v0, "version":I
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 340
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatKitKat;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v1

    .line 342
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0
.end method

.method public static getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 285
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 286
    .local v0, "version":I
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 287
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatKitKat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 289
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0
.end method

.method public static final getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 471
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 472
    .local v1, "version":I
    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 473
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatApi21;->getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 476
    :goto_0
    return-object v2

    .line 475
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 476
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v4, "no_backup"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/support/v4/content/ContextCompat;->createFilesDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    goto :goto_0
.end method

.method public static getObbDirs(Landroid/content/Context;)[Ljava/io/File;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 225
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 226
    .local v1, "version":I
    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 227
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatKitKat;->getObbDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v2

    .line 236
    :goto_0
    return-object v2

    .line 230
    :cond_0
    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 231
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatHoneycomb;->getObbDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 236
    .local v0, "single":Ljava/io/File;
    :goto_1
    new-array v2, v7, [Ljava/io/File;

    aput-object v0, v2, v6

    goto :goto_0

    .line 233
    .end local v0    # "single":Ljava/io/File;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Android"

    aput-object v4, v3, v6

    const-string v4, "obb"

    aput-object v4, v3, v7

    const/4 v4, 0x2

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 233
    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .restart local v0    # "single":Ljava/io/File;
    goto :goto_1
.end method

.method public static isDeviceProtectedStorage(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 565
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatApi24;->isDeviceProtectedStorage(Landroid/content/Context;)Z

    move-result v0

    .line 568
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v4/content/ContextCompat;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 122
    .local v0, "version":I
    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 123
    invoke-static {p0, p1, p2}, Landroid/support/v4/content/ContextCompatJellybean;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 129
    :goto_0
    return v1

    .line 125
    :cond_0
    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    .line 126
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatHoneycomb;->startActivities(Landroid/content/Context;[Landroid/content/Intent;)V

    goto :goto_0

    .line 129
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 151
    invoke-static {p0, p1, p2}, Landroid/support/v4/content/ContextCompatJellybean;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
