.class public Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DrawerArrowDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/graphics/drawable/DrawerArrowDrawable$ArrowDirection;
    }
.end annotation


# static fields
.field public static final ARROW_DIRECTION_END:I = 0x3

.field public static final ARROW_DIRECTION_LEFT:I = 0x0

.field public static final ARROW_DIRECTION_RIGHT:I = 0x1

.field public static final ARROW_DIRECTION_START:I = 0x2

.field private static final ARROW_HEAD_ANGLE:F


# instance fields
.field private mArrowHeadLength:F

.field private mArrowShaftLength:F

.field private mBarGap:F

.field private mBarLength:F

.field private mDirection:I

.field private mMaxCutForBarSize:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mProgress:F

.field private final mSize:I

.field private mSpin:Z

.field private mVerticalMirror:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 127
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 96
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    .line 112
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    .line 116
    iput-boolean v7, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    .line 122
    const/4 v1, 0x2

    iput v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    .line 128
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 130
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 131
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle:[I

    sget v4, Landroid/support/v7/appcompat/R$attr;->drawerArrowStyle:I

    sget v5, Landroid/support/v7/appcompat/R$style;->Base_Widget_AppCompat_DrawerArrowToggle:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 137
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_color:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    .line 138
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_thickness:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setBarThickness(F)V

    .line 139
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_spinBars:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setSpinEnabled(Z)V

    .line 141
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_gapBetweenBars:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setGapSize(F)V

    .line 143
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_drawableSize:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSize:I

    .line 145
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_barLength:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    .line 147
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_arrowHeadLength:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    .line 149
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_arrowShaftLength:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    .line 150
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    return-void
.end method

.method private static lerp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "t"    # F

    .prologue
    .line 464
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 325
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 328
    .local v11, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 341
    :pswitch_0
    invoke-static/range {p0 .. p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/4 v13, 0x1

    .line 348
    .local v13, "flipToPointRight":Z
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v5, v0

    .line 349
    .local v5, "arrowHeadBarLength":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v5, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v5

    .line 350
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v8

    .line 352
    .local v8, "arrowShaftLength":F
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v7, v0

    .line 354
    .local v7, "arrowShaftCut":F
    const/16 v18, 0x0

    sget v19, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v15

    .line 357
    .local v15, "rotation":F
    if-eqz v13, :cond_3

    const/16 v18, 0x0

    move/from16 v19, v18

    :goto_1
    if-eqz v13, :cond_4

    const/high16 v18, 0x43340000    # 180.0f

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v12

    .line 360
    .local v12, "canvasRotate":F
    float-to-double v0, v5

    move-wide/from16 v18, v0

    float-to-double v0, v15

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v9, v0

    .line 361
    .local v9, "arrowWidth":F
    float-to-double v0, v5

    move-wide/from16 v18, v0

    float-to-double v0, v15

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v6, v0

    .line 363
    .local v6, "arrowHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->rewind()V

    .line 364
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v19

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v16

    .line 367
    .local v16, "topBottomBarOffset":F
    neg-float v0, v8

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v4, v18, v19

    .line 369
    .local v4, "arrowEdge":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    add-float v19, v4, v7

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Path;->moveTo(FF)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    mul-float v19, v19, v7

    sub-float v19, v8, v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    neg-float v0, v6

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->close()V

    .line 382
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v10

    .line 387
    .local v10, "barThickness":F
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40400000    # 3.0f

    mul-float v19, v19, v10

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v14, v0

    .line 388
    .local v14, "remainingSpace":I
    div-int/lit8 v18, v14, 0x4

    mul-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v17, v0

    .line 389
    .local v17, "yOffset":F
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    float-to-double v0, v10

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3ff8000000000000L    # 1.5

    mul-double v20, v20, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    .line 391
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 392
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 393
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    move/from16 v18, v0

    xor-int v18, v18, v13

    if-eqz v18, :cond_5

    const/16 v18, -0x1

    :goto_3
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v12

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 397
    :cond_0
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 399
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 400
    return-void

    .line 330
    .end local v4    # "arrowEdge":F
    .end local v5    # "arrowHeadBarLength":F
    .end local v6    # "arrowHeight":F
    .end local v7    # "arrowShaftCut":F
    .end local v8    # "arrowShaftLength":F
    .end local v9    # "arrowWidth":F
    .end local v10    # "barThickness":F
    .end local v12    # "canvasRotate":F
    .end local v13    # "flipToPointRight":Z
    .end local v14    # "remainingSpace":I
    .end local v15    # "rotation":F
    .end local v16    # "topBottomBarOffset":F
    .end local v17    # "yOffset":F
    :pswitch_1
    const/4 v13, 0x0

    .line 331
    .restart local v13    # "flipToPointRight":Z
    goto/16 :goto_0

    .line 333
    .end local v13    # "flipToPointRight":Z
    :pswitch_2
    const/4 v13, 0x1

    .line 334
    .restart local v13    # "flipToPointRight":Z
    goto/16 :goto_0

    .line 336
    .end local v13    # "flipToPointRight":Z
    :pswitch_3
    invoke-static/range {p0 .. p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v18

    if-nez v18, :cond_1

    const/4 v13, 0x1

    .line 338
    .restart local v13    # "flipToPointRight":Z
    :goto_5
    goto/16 :goto_0

    .line 336
    .end local v13    # "flipToPointRight":Z
    :cond_1
    const/4 v13, 0x0

    goto :goto_5

    .line 341
    :cond_2
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 357
    .restart local v5    # "arrowHeadBarLength":F
    .restart local v7    # "arrowShaftCut":F
    .restart local v8    # "arrowShaftLength":F
    .restart local v13    # "flipToPointRight":Z
    .restart local v15    # "rotation":F
    :cond_3
    const/high16 v18, -0x3ccc0000    # -180.0f

    move/from16 v19, v18

    goto/16 :goto_1

    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 393
    .restart local v4    # "arrowEdge":F
    .restart local v6    # "arrowHeight":F
    .restart local v9    # "arrowWidth":F
    .restart local v10    # "barThickness":F
    .restart local v12    # "canvasRotate":F
    .restart local v14    # "remainingSpace":I
    .restart local v16    # "topBottomBarOffset":F
    .restart local v17    # "yOffset":F
    :cond_5
    const/16 v18, 0x1

    goto :goto_3

    .line 394
    :cond_6
    if-eqz v13, :cond_0

    .line 395
    const/high16 v18, 0x43340000    # 180.0f

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_4

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getArrowHeadLength()F
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    return v0
.end method

.method public getArrowShaftLength()F
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    return v0
.end method

.method public getBarLength()F
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    return v0
.end method

.method public getBarThickness()F
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    return v0
.end method

.method public getGapSize()F
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSize:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 428
    const/4 v0, -0x3

    return v0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getProgress()F
    .locals 1
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 436
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    return v0
.end method

.method public isSpinEnabled()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 404
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 405
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 406
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 408
    :cond_0
    return-void
.end method

.method public setArrowHeadLength(F)V
    .locals 1
    .param p1, "length"    # F

    .prologue
    .line 159
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 160
    iput p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    .line 161
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 163
    :cond_0
    return-void
.end method

.method public setArrowShaftLength(F)V
    .locals 1
    .param p1, "length"    # F

    .prologue
    .line 179
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 180
    iput p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    .line 181
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 183
    :cond_0
    return-void
.end method

.method public setBarLength(F)V
    .locals 1
    .param p1, "length"    # F

    .prologue
    .line 205
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 206
    iput p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    .line 207
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 209
    :cond_0
    return-void
.end method

.method public setBarThickness(F)V
    .locals 4
    .param p1, "width"    # F

    .prologue
    .line 235
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 237
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    float-to-double v0, v0

    sget v2, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    .line 238
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 240
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 215
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 216
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 219
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 412
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 413
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 414
    return-void
.end method

.method public setDirection(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 276
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    if-eq p1, v0, :cond_0

    .line 277
    iput p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    .line 278
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 280
    :cond_0
    return-void
.end method

.method public setGapSize(F)V
    .locals 1
    .param p1, "gap"    # F

    .prologue
    .line 266
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 267
    iput p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    .line 268
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 270
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 447
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 448
    iput p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    .line 449
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 451
    :cond_0
    return-void
.end method

.method public setSpinEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 299
    iget-boolean v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    if-eq v0, p1, :cond_0

    .line 300
    iput-boolean p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    .line 301
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 303
    :cond_0
    return-void
.end method

.method public setVerticalMirror(Z)V
    .locals 1
    .param p1, "verticalMirror"    # Z

    .prologue
    .line 317
    iget-boolean v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    if-eq v0, p1, :cond_0

    .line 318
    iput-boolean p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    .line 319
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 321
    :cond_0
    return-void
.end method
