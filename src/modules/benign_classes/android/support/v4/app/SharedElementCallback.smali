.class public abstract Landroid/support/v4/app/SharedElementCallback;
.super Ljava/lang/Object;
.source "SharedElementCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener;
    }
.end annotation


# static fields
.field private static final BUNDLE_SNAPSHOT_BITMAP:Ljava/lang/String; = "sharedElement:snapshot:bitmap"

.field private static final BUNDLE_SNAPSHOT_IMAGE_MATRIX:Ljava/lang/String; = "sharedElement:snapshot:imageMatrix"

.field private static final BUNDLE_SNAPSHOT_IMAGE_SCALETYPE:Ljava/lang/String; = "sharedElement:snapshot:imageScaleType"

.field private static MAX_IMAGE_SIZE:I


# instance fields
.field private mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/high16 v0, 0x100000

    sput v0, Landroid/support/v4/app/SharedElementCallback;->MAX_IMAGE_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    return-void
.end method

.method private static createDrawableBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 215
    .local v11, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 216
    .local v6, "height":I
    if-lez v11, :cond_0

    if-gtz v6, :cond_1

    .line 217
    :cond_0
    const/4 v0, 0x0

    .line 236
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 219
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/high16 v12, 0x3f800000    # 1.0f

    sget v13, Landroid/support/v4/app/SharedElementCallback;->MAX_IMAGE_SIZE:I

    int-to-float v13, v13

    mul-int v14, v11, v6

    int-to-float v14, v14

    div-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 220
    .local v9, "scale":F
    instance-of v12, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_2

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v9, v12

    if-nez v12, :cond_2

    .line 222
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 224
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    int-to-float v12, v11

    mul-float/2addr v12, v9

    float-to-int v2, v12

    .line 225
    .local v2, "bitmapWidth":I
    int-to-float v12, v6

    mul-float/2addr v12, v9

    float-to-int v1, v12

    .line 226
    .local v1, "bitmapHeight":I
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 227
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 228
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 229
    .local v5, "existingBounds":Landroid/graphics/Rect;
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 230
    .local v7, "left":I
    iget v10, v5, Landroid/graphics/Rect;->top:I

    .line 231
    .local v10, "top":I
    iget v8, v5, Landroid/graphics/Rect;->right:I

    .line 232
    .local v8, "right":I
    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    .line 233
    .local v3, "bottom":I
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 234
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 235
    invoke-virtual {p0, v7, v10, v8, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 15
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "viewToGlobalMatrix"    # Landroid/graphics/Matrix;
    .param p3, "screenBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 168
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/widget/ImageView;

    if-eqz v12, :cond_1

    move-object/from16 v8, p1

    .line 169
    check-cast v8, Landroid/widget/ImageView;

    .line 170
    .local v8, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 171
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 172
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_1

    if-nez v1, :cond_1

    .line 173
    invoke-static {v7}, Landroid/support/v4/app/SharedElementCallback;->createDrawableBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 174
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 175
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 176
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v12, "sharedElement:snapshot:bitmap"

    invoke-virtual {v5, v12, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 177
    const-string v12, "sharedElement:snapshot:imageScaleType"

    .line 178
    invoke-virtual {v8}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/ImageView$ScaleType;->toString()Ljava/lang/String;

    move-result-object v13

    .line 177
    invoke-virtual {v5, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v8}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v12

    sget-object v13, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v12, v13, :cond_0

    .line 180
    invoke-virtual {v8}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    .line 181
    .local v9, "matrix":Landroid/graphics/Matrix;
    const/16 v12, 0x9

    new-array v11, v12, [F

    .line 182
    .local v11, "values":[F
    invoke-virtual {v9, v11}, Landroid/graphics/Matrix;->getValues([F)V

    .line 183
    const-string v12, "sharedElement:snapshot:imageMatrix"

    invoke-virtual {v5, v12, v11}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 207
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    .end local v8    # "imageView":Landroid/widget/ImageView;
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v11    # "values":[F
    :cond_0
    :goto_0
    return-object v5

    .line 189
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 190
    .local v4, "bitmapWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 191
    .local v3, "bitmapHeight":I
    const/4 v2, 0x0

    .line 192
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    if-lez v4, :cond_3

    if-lez v3, :cond_3

    .line 193
    const/high16 v12, 0x3f800000    # 1.0f

    sget v13, Landroid/support/v4/app/SharedElementCallback;->MAX_IMAGE_SIZE:I

    int-to-float v13, v13

    mul-int v14, v4, v3

    int-to-float v14, v14

    div-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 194
    .local v10, "scale":F
    int-to-float v12, v4

    mul-float/2addr v12, v10

    float-to-int v4, v12

    .line 195
    int-to-float v12, v3

    mul-float/2addr v12, v10

    float-to-int v3, v12

    .line 196
    iget-object v12, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    if-nez v12, :cond_2

    .line 197
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    iput-object v12, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    .line 199
    :cond_2
    iget-object v12, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 200
    iget-object v12, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/RectF;->left:F

    neg-float v13, v13

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/RectF;->top:F

    neg-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 201
    iget-object v12, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 202
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 203
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 204
    .local v6, "canvas":Landroid/graphics/Canvas;
    iget-object v12, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v12}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 205
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "scale":F
    :cond_3
    move-object v5, v2

    .line 207
    goto :goto_0
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "snapshot"    # Landroid/os/Parcelable;

    .prologue
    .line 257
    const/4 v5, 0x0

    .line 258
    .local v5, "view":Landroid/widget/ImageView;
    instance-of v6, p2, Landroid/os/Bundle;

    if-eqz v6, :cond_2

    move-object v1, p2

    .line 259
    check-cast v1, Landroid/os/Bundle;

    .line 260
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v6, "sharedElement:snapshot:bitmap"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 261
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 262
    const/4 v6, 0x0

    .line 280
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v6

    .line 264
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 265
    .local v2, "imageView":Landroid/widget/ImageView;
    move-object v5, v2

    .line 266
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 267
    const-string v6, "sharedElement:snapshot:imageScaleType"

    .line 268
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    .line 267
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 269
    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    sget-object v7, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_1

    .line 270
    const-string v6, "sharedElement:snapshot:imageMatrix"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v4

    .line 271
    .local v4, "values":[F
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 272
    .local v3, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->setValues([F)V

    .line 273
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .end local v4    # "values":[F
    :cond_1
    :goto_1
    move-object v6, v5

    .line 280
    goto :goto_0

    .line 275
    :cond_2
    instance-of v6, p2, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    move-object v0, p2

    .line 276
    check-cast v0, Landroid/graphics/Bitmap;

    .line 277
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/widget/ImageView;

    .end local v5    # "view":Landroid/widget/ImageView;
    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 278
    .restart local v5    # "view":Landroid/widget/ImageView;
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "rejectedSharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 0
    .param p3, "listener"    # Landroid/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p3}, Landroid/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    .line 302
    return-void
.end method
