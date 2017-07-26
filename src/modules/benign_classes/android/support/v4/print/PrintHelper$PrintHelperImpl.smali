.class Landroid/support/v4/print/PrintHelper$PrintHelperImpl;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrintHelperImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RealHelper:",
        "Landroid/support/v4/print/PrintHelperKitkat;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;"
    }
.end annotation


# instance fields
.field private final mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRealHelper;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/support/v4/print/PrintHelperKitkat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRealHelper;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Landroid/support/v4/print/PrintHelper$PrintHelperImpl;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl<TRealHelper;>;"
    .local p1, "helper":Landroid/support/v4/print/PrintHelperKitkat;, "TRealHelper;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    .line 163
    return-void
.end method


# virtual methods
.method public getColorMode()I
    .locals 1

    .prologue
    .line 182
    .local p0, "this":Landroid/support/v4/print/PrintHelper$PrintHelperImpl;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl<TRealHelper;>;"
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0}, Landroid/support/v4/print/PrintHelperKitkat;->getColorMode()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 192
    .local p0, "this":Landroid/support/v4/print/PrintHelper$PrintHelperImpl;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl<TRealHelper;>;"
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0}, Landroid/support/v4/print/PrintHelperKitkat;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getScaleMode()I
    .locals 1

    .prologue
    .line 172
    .local p0, "this":Landroid/support/v4/print/PrintHelper$PrintHelperImpl;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl<TRealHelper;>;"
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0}, Landroid/support/v4/print/PrintHelperKitkat;->getScaleMode()I

    move-result v0

    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .locals 2
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    .prologue
    .line 198
    .local p0, "this":Landroid/support/v4/print/PrintHelper$PrintHelperImpl;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl<TRealHelper;>;"
    const/4 v0, 0x0

    .line 199
    .local v0, "delegateCallback":Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    if-eqz p3, :cond_0

    .line 200
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$1;

    .end local v0    # "delegateCallback":Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    invoke-direct {v0, p0, p3}, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$1;-><init>(Landroid/support/v4/print/PrintHelper$PrintHelperImpl;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 207
    .restart local v0    # "delegateCallback":Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v1, p1, p2, v0}, Landroid/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V

    .line 208
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .locals 2
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Landroid/support/v4/print/PrintHelper$PrintHelperImpl;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl<TRealHelper;>;"
    const/4 v0, 0x0

    .line 214
    .local v0, "delegateCallback":Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    if-eqz p3, :cond_0

    .line 215
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$2;

    .end local v0    # "delegateCallback":Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    invoke-direct {v0, p0, p3}, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$2;-><init>(Landroid/support/v4/print/PrintHelper$PrintHelperImpl;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 222
    .restart local v0    # "delegateCallback":Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v1, p1, p2, v0}, Landroid/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V

    .line 223
    return-void
.end method

.method public setColorMode(I)V
    .locals 1
    .param p1, "colorMode"    # I

    .prologue
    .line 177
    .local p0, "this":Landroid/support/v4/print/PrintHelper$PrintHelperImpl;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl<TRealHelper;>;"
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0, p1}, Landroid/support/v4/print/PrintHelperKitkat;->setColorMode(I)V

    .line 178
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 187
    .local p0, "this":Landroid/support/v4/print/PrintHelper$PrintHelperImpl;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl<TRealHelper;>;"
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0, p1}, Landroid/support/v4/print/PrintHelperKitkat;->setOrientation(I)V

    .line 188
    return-void
.end method

.method public setScaleMode(I)V
    .locals 1
    .param p1, "scaleMode"    # I

    .prologue
    .line 167
    .local p0, "this":Landroid/support/v4/print/PrintHelper$PrintHelperImpl;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl<TRealHelper;>;"
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0, p1}, Landroid/support/v4/print/PrintHelperKitkat;->setScaleMode(I)V

    .line 168
    return-void
.end method
