.class Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Ring"
.end annotation


# instance fields
.field private mAlpha:I

.field private mArrow:Landroid/graphics/Path;

.field private mArrowHeight:I

.field private final mArrowPaint:Landroid/graphics/Paint;

.field private mArrowScale:F

.field private mArrowWidth:I

.field private mBackgroundColor:I

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mColorIndex:I

.field private mColors:[I

.field private mCurrentColor:I

.field private mEndTrim:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRingCenterRadius:D

.field private mRotation:F

.field private mShowArrow:Z

.field private mStartTrim:F

.field private mStartingEndTrim:F

.field private mStartingRotation:F

.field private mStartingStartTrim:F

.field private mStrokeInset:F

.field private mStrokeWidth:F

.field private final mTempBounds:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/graphics/drawable/Drawable$Callback;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 468
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    .line 469
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    .line 473
    iput v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    .line 474
    iput v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    .line 475
    iput v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    .line 476
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    .line 477
    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    .line 494
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    .line 499
    iput-object p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 501
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 502
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 503
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 505
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 506
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 507
    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 550
    iget-boolean v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mShowArrow:Z

    if-eqz v3, :cond_0

    .line 551
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    if-nez v3, :cond_1

    .line 552
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    .line 553
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 560
    :goto_0
    iget v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float v0, v3, v4

    .line 561
    .local v0, "inset":F
    iget-wide v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    float-to-double v6, v3

    add-double/2addr v4, v6

    double-to-float v1, v4

    .line 562
    .local v1, "x":F
    iget-wide v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    float-to-double v6, v3

    add-double/2addr v4, v6

    double-to-float v2, v4

    .line 568
    .local v2, "y":F
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 569
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 570
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowHeight:I

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 572
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sub-float v4, v1, v0

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 573
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 575
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    iget v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 576
    add-float v3, p2, p3

    const/high16 v4, 0x40a00000    # 5.0f

    sub-float/2addr v3, v4

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    .line 577
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    .line 576
    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 578
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget-object v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 580
    .end local v0    # "inset":F
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_0
    return-void

    .line 555
    :cond_1
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0
.end method

.method private getNextColorIndex()I
    .locals 2

    .prologue
    .line 621
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method private invalidateSelf()V
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 789
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v5, 0x43b40000    # 360.0f

    .line 528
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 529
    .local v1, "arcBounds":Landroid/graphics/RectF;
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 530
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    iget v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    invoke-virtual {v1, v0, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 532
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    iget v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    add-float/2addr v0, v4

    mul-float v2, v0, v5

    .line 533
    .local v2, "startAngle":F
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    iget v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    add-float/2addr v0, v4

    mul-float v6, v0, v5

    .line 534
    .local v6, "endAngle":F
    sub-float v3, v6, v2

    .line 536
    .local v3, "sweepAngle":F
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 537
    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 539
    invoke-direct {p0, p1, v2, v3, p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    .line 541
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    const/16 v4, 0xff

    if-ge v0, v4, :cond_0

    .line 542
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    iget v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 543
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    iget v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    rsub-int v4, v4, 0xff

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 544
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v7, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 547
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 648
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    return v0
.end method

.method public getCenterRadius()D
    .locals 2

    .prologue
    .line 735
    iget-wide v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    return-wide v0
.end method

.method public getEndTrim()F
    .locals 1

    .prologue
    .line 696
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    return v0
.end method

.method public getInsets()F
    .locals 1

    .prologue
    .line 723
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    return v0
.end method

.method public getNextColor()I
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getNextColorIndex()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 707
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    return v0
.end method

.method public getStartTrim()F
    .locals 1

    .prologue
    .line 673
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    return v0
.end method

.method public getStartingColor()I
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    iget v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getStartingEndTrim()F
    .locals 1

    .prologue
    .line 681
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    return v0
.end method

.method public getStartingRotation()F
    .locals 1

    .prologue
    .line 762
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingRotation:F

    return v0
.end method

.method public getStartingStartTrim()F
    .locals 1

    .prologue
    .line 677
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    return v0
.end method

.method public goToNextColor()V
    .locals 1

    .prologue
    .line 629
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getNextColorIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 630
    return-void
.end method

.method public resetOriginals()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 779
    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    .line 780
    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    .line 781
    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingRotation:F

    .line 782
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 783
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 784
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 785
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 641
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    .line 642
    return-void
.end method

.method public setArrowDimensions(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 520
    float-to-int v0, p1

    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowWidth:I

    .line 521
    float-to-int v0, p2

    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowHeight:I

    .line 522
    return-void
.end method

.method public setArrowScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 752
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 753
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    .line 754
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 756
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 510
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    .line 511
    return-void
.end method

.method public setCenterRadius(D)V
    .locals 1
    .param p1, "centerRadius"    # D

    .prologue
    .line 731
    iput-wide p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    .line 732
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 601
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCurrentColor:I

    .line 602
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 633
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 634
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 635
    return-void
.end method

.method public setColorIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 609
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    .line 610
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    iget v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget v0, v0, v1

    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCurrentColor:I

    .line 611
    return-void
.end method

.method public setColors([I)V
    .locals 1
    .param p1, "colors"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 588
    iput-object p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    .line 590
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 591
    return-void
.end method

.method public setEndTrim(F)V
    .locals 0
    .param p1, "endTrim"    # F

    .prologue
    .line 690
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    .line 691
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 692
    return-void
.end method

.method public setInsets(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 711
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v1, v2

    .line 713
    .local v1, "minEdge":F
    iget-wide v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 714
    :cond_0
    iget v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    div-float/2addr v2, v6

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 718
    .local v0, "insets":F
    :goto_0
    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    .line 719
    return-void

    .line 716
    .end local v0    # "insets":F
    :cond_1
    div-float v2, v1, v6

    float-to-double v2, v2

    iget-wide v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    sub-double/2addr v2, v4

    double-to-float v0, v2

    .restart local v0    # "insets":F
    goto :goto_0
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 701
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    .line 702
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 703
    return-void
.end method

.method public setShowArrow(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 742
    iget-boolean v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mShowArrow:Z

    if-eq v0, p1, :cond_0

    .line 743
    iput-boolean p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mShowArrow:Z

    .line 744
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 746
    :cond_0
    return-void
.end method

.method public setStartTrim(F)V
    .locals 0
    .param p1, "startTrim"    # F

    .prologue
    .line 667
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    .line 668
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 669
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .prologue
    .line 655
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    .line 656
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 657
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 658
    return-void
.end method

.method public storeOriginals()V
    .locals 1

    .prologue
    .line 770
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    .line 771
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    .line 772
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingRotation:F

    .line 773
    return-void
.end method
