.class public final Landroid/support/v4/media/RatingCompat;
.super Ljava/lang/Object;
.source "RatingCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/RatingCompat$StarStyle;,
        Landroid/support/v4/media/RatingCompat$Style;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/RatingCompat;",
            ">;"
        }
    .end annotation
.end field

.field public static final RATING_3_STARS:I = 0x3

.field public static final RATING_4_STARS:I = 0x4

.field public static final RATING_5_STARS:I = 0x5

.field public static final RATING_HEART:I = 0x1

.field public static final RATING_NONE:I = 0x0

.field private static final RATING_NOT_RATED:F = -1.0f

.field public static final RATING_PERCENTAGE:I = 0x6

.field public static final RATING_THUMB_UP_DOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Rating"


# instance fields
.field private mRatingObj:Ljava/lang/Object;

.field private final mRatingStyle:I

.field private final mRatingValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Landroid/support/v4/media/RatingCompat$1;

    invoke-direct {v0}, Landroid/support/v4/media/RatingCompat$1;-><init>()V

    sput-object v0, Landroid/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IF)V
    .locals 0
    .param p1, "ratingStyle"    # I
    .param p2, "rating"    # F

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    .line 106
    iput p2, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    .line 107
    return-void
.end method

.method public static fromRating(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;
    .locals 4
    .param p0, "ratingObj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 327
    if-eqz p0, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-object v0

    .line 331
    :cond_1
    invoke-static {p0}, Landroid/support/v4/media/RatingCompatKitkat;->getRatingStyle(Ljava/lang/Object;)I

    move-result v1

    .line 333
    .local v1, "ratingStyle":I
    invoke-static {p0}, Landroid/support/v4/media/RatingCompatKitkat;->isRated(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 334
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 336
    :pswitch_0
    invoke-static {p0}, Landroid/support/v4/media/RatingCompatKitkat;->hasHeart(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Landroid/support/v4/media/RatingCompat;->newHeartRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    .line 356
    .local v0, "rating":Landroid/support/v4/media/RatingCompat;
    :goto_1
    iput-object p0, v0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    goto :goto_0

    .line 339
    .end local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    :pswitch_1
    invoke-static {p0}, Landroid/support/v4/media/RatingCompatKitkat;->isThumbUp(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Landroid/support/v4/media/RatingCompat;->newThumbRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    .line 340
    .restart local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    goto :goto_1

    .line 345
    .end local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    :pswitch_2
    invoke-static {p0}, Landroid/support/v4/media/RatingCompatKitkat;->getStarRating(Ljava/lang/Object;)F

    move-result v2

    .line 344
    invoke-static {v1, v2}, Landroid/support/v4/media/RatingCompat;->newStarRating(IF)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    .line 346
    .restart local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    goto :goto_1

    .line 348
    .end local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    :pswitch_3
    invoke-static {p0}, Landroid/support/v4/media/RatingCompatKitkat;->getPercentRating(Ljava/lang/Object;)F

    move-result v2

    invoke-static {v2}, Landroid/support/v4/media/RatingCompat;->newPercentageRating(F)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    .line 349
    .restart local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    goto :goto_1

    .line 354
    .end local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    :cond_2
    invoke-static {v1}, Landroid/support/v4/media/RatingCompat;->newUnratedRating(I)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    .restart local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    goto :goto_1

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static newHeartRating(Z)Landroid/support/v4/media/RatingCompat;
    .locals 3
    .param p0, "hasHeart"    # Z

    .prologue
    .line 175
    new-instance v1, Landroid/support/v4/media/RatingCompat;

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {v1, v2, v0}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newPercentageRating(F)Landroid/support/v4/media/RatingCompat;
    .locals 2
    .param p0, "percent"    # F

    .prologue
    .line 233
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 234
    :cond_0
    const-string v0, "Rating"

    const-string v1, "Invalid percentage-based rating value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v0, 0x0

    .line 237
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    goto :goto_0
.end method

.method public static newStarRating(IF)Landroid/support/v4/media/RatingCompat;
    .locals 5
    .param p0, "starRatingStyle"    # I
    .param p1, "starRating"    # F

    .prologue
    const/4 v1, 0x0

    .line 203
    const/high16 v0, -0x40800000    # -1.0f

    .line 204
    .local v0, "maxRating":F
    packed-switch p0, :pswitch_data_0

    .line 215
    const-string v2, "Rating"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid rating style ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for a star rating"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_0
    return-object v1

    .line 206
    :pswitch_0
    const/high16 v0, 0x40400000    # 3.0f

    .line 218
    :goto_1
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_0

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    .line 219
    :cond_0
    const-string v2, "Rating"

    const-string v3, "Trying to set out of range star-based rating"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :pswitch_1
    const/high16 v0, 0x40800000    # 4.0f

    .line 210
    goto :goto_1

    .line 212
    :pswitch_2
    const/high16 v0, 0x40a00000    # 5.0f

    .line 213
    goto :goto_1

    .line 222
    :cond_1
    new-instance v1, Landroid/support/v4/media/RatingCompat;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static newThumbRating(Z)Landroid/support/v4/media/RatingCompat;
    .locals 3
    .param p0, "thumbIsUp"    # Z

    .prologue
    .line 186
    new-instance v1, Landroid/support/v4/media/RatingCompat;

    const/4 v2, 0x2

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {v1, v2, v0}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newUnratedRating(I)Landroid/support/v4/media/RatingCompat;
    .locals 2
    .param p0, "ratingStyle"    # I

    .prologue
    .line 154
    packed-switch p0, :pswitch_data_0

    .line 163
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 161
    :pswitch_0
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    return v0
.end method

.method public getPercentRating()F
    .locals 2

    .prologue
    .line 310
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 313
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    goto :goto_0
.end method

.method public getRating()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 370
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    .line 394
    :goto_0
    return-object v0

    .line 373
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    packed-switch v0, :pswitch_data_0

    .line 389
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 376
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->hasHeart()Z

    move-result v0

    invoke-static {v0}, Landroid/support/v4/media/RatingCompatKitkat;->newHeartRating(Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    .line 394
    :goto_2
    iget-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    goto :goto_0

    .line 379
    :pswitch_1
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isThumbUp()Z

    move-result v0

    invoke-static {v0}, Landroid/support/v4/media/RatingCompatKitkat;->newThumbRating(Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    goto :goto_2

    .line 384
    :pswitch_2
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getStarRating()F

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/media/RatingCompatKitkat;->newStarRating(IF)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    goto :goto_2

    .line 387
    :pswitch_3
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getPercentRating()F

    move-result v0

    invoke-static {v0}, Landroid/support/v4/media/RatingCompatKitkat;->newPercentageRating(F)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    goto :goto_1

    .line 392
    :cond_2
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-static {v0}, Landroid/support/v4/media/RatingCompatKitkat;->newUnratedRating(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    goto :goto_2

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRatingStyle()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    return v0
.end method

.method public getStarRating()F
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    packed-switch v0, :pswitch_data_0

    .line 300
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    .line 296
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hasHeart()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 266
    iget v2, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    if-eq v2, v0, :cond_0

    .line 269
    :goto_0
    return v1

    :cond_0
    iget v2, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isRated()Z
    .locals 2

    .prologue
    .line 246
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThumbUp()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 279
    iget v1, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rating:style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const-string v0, "unrated"

    .line 112
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 111
    :cond_0
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    .line 112
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 122
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 124
    return-void
.end method
