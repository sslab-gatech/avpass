.class public final Landroid/support/v4/print/PrintHelper;
.super Ljava/lang/Object;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/print/PrintHelper$PrintHelperApi24Impl;,
        Landroid/support/v4/print/PrintHelper$PrintHelperApi23Impl;,
        Landroid/support/v4/print/PrintHelper$PrintHelperApi20Impl;,
        Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;,
        Landroid/support/v4/print/PrintHelper$PrintHelperImpl;,
        Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;,
        Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;,
        Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
    }
.end annotation


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2

.field public static final COLOR_MODE_MONOCHROME:I = 0x1

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x2

.field public static final SCALE_MODE_FILL:I = 0x2

.field public static final SCALE_MODE_FIT:I = 0x1


# instance fields
.field mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    invoke-static {}, Landroid/support/v4/print/PrintHelper;->systemSupportsPrint()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 272
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi24Impl;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi24Impl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    .line 283
    :goto_0
    return-void

    .line 273
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 274
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi23Impl;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi23Impl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    goto :goto_0

    .line 275
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    .line 276
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi20Impl;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi20Impl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    goto :goto_0

    .line 278
    :cond_2
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    goto :goto_0

    .line 281
    :cond_3
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;-><init>(Landroid/support/v4/print/PrintHelper$1;)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    goto :goto_0
.end method

.method public static systemSupportsPrint()Z
    .locals 2

    .prologue
    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getColorMode()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->getColorMode()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getScaleMode()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->getScaleMode()I

    move-result v0

    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 359
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 360
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .locals 1
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    .prologue
    .line 370
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 371
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 384
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .locals 1
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 399
    return-void
.end method

.method public setColorMode(I)V
    .locals 1
    .param p1, "colorMode"    # I

    .prologue
    .line 317
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->setColorMode(I)V

    .line 318
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 338
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->setOrientation(I)V

    .line 339
    return-void
.end method

.method public setScaleMode(I)V
    .locals 1
    .param p1, "scaleMode"    # I

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->setScaleMode(I)V

    .line 296
    return-void
.end method
