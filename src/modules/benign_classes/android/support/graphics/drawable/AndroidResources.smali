.class Landroid/support/graphics/drawable/AndroidResources;
.super Ljava/lang/Object;
.source "AndroidResources.java"


# static fields
.field static final styleable_AnimatedVectorDrawable:[I

.field static final styleable_AnimatedVectorDrawableTarget:[I

.field static final styleable_AnimatedVectorDrawableTarget_animation:I = 0x1

.field static final styleable_AnimatedVectorDrawableTarget_name:I = 0x0

.field static final styleable_AnimatedVectorDrawable_drawable:I = 0x0

.field static final styleable_VectorDrawableClipPath:[I

.field static final styleable_VectorDrawableClipPath_name:I = 0x0

.field static final styleable_VectorDrawableClipPath_pathData:I = 0x1

.field static final styleable_VectorDrawableGroup:[I

.field static final styleable_VectorDrawableGroup_name:I = 0x0

.field static final styleable_VectorDrawableGroup_pivotX:I = 0x1

.field static final styleable_VectorDrawableGroup_pivotY:I = 0x2

.field static final styleable_VectorDrawableGroup_rotation:I = 0x5

.field static final styleable_VectorDrawableGroup_scaleX:I = 0x3

.field static final styleable_VectorDrawableGroup_scaleY:I = 0x4

.field static final styleable_VectorDrawableGroup_translateX:I = 0x6

.field static final styleable_VectorDrawableGroup_translateY:I = 0x7

.field static final styleable_VectorDrawablePath:[I

.field static final styleable_VectorDrawablePath_fillAlpha:I = 0xc

.field static final styleable_VectorDrawablePath_fillColor:I = 0x1

.field static final styleable_VectorDrawablePath_name:I = 0x0

.field static final styleable_VectorDrawablePath_pathData:I = 0x2

.field static final styleable_VectorDrawablePath_strokeAlpha:I = 0xb

.field static final styleable_VectorDrawablePath_strokeColor:I = 0x3

.field static final styleable_VectorDrawablePath_strokeLineCap:I = 0x8

.field static final styleable_VectorDrawablePath_strokeLineJoin:I = 0x9

.field static final styleable_VectorDrawablePath_strokeMiterLimit:I = 0xa

.field static final styleable_VectorDrawablePath_strokeWidth:I = 0x4

.field static final styleable_VectorDrawablePath_trimPathEnd:I = 0x6

.field static final styleable_VectorDrawablePath_trimPathOffset:I = 0x7

.field static final styleable_VectorDrawablePath_trimPathStart:I = 0x5

.field static final styleable_VectorDrawableTypeArray:[I

.field static final styleable_VectorDrawable_alpha:I = 0x4

.field static final styleable_VectorDrawable_autoMirrored:I = 0x5

.field static final styleable_VectorDrawable_height:I = 0x2

.field static final styleable_VectorDrawable_name:I = 0x0

.field static final styleable_VectorDrawable_tint:I = 0x1

.field static final styleable_VectorDrawable_tintMode:I = 0x6

.field static final styleable_VectorDrawable_viewportHeight:I = 0x8

.field static final styleable_VectorDrawable_viewportWidth:I = 0x7

.field static final styleable_VectorDrawable_width:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 20
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/graphics/drawable/AndroidResources;->styleable_VectorDrawableTypeArray:[I

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/graphics/drawable/AndroidResources;->styleable_VectorDrawableGroup:[I

    .line 47
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/support/graphics/drawable/AndroidResources;->styleable_VectorDrawablePath:[I

    .line 67
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/support/graphics/drawable/AndroidResources;->styleable_VectorDrawableClipPath:[I

    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010199

    aput v2, v0, v1

    sput-object v0, Landroid/support/graphics/drawable/AndroidResources;->styleable_AnimatedVectorDrawable:[I

    .line 77
    new-array v0, v3, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/support/graphics/drawable/AndroidResources;->styleable_AnimatedVectorDrawableTarget:[I

    return-void

    .line 20
    :array_0
    .array-data 4
        0x1010003
        0x1010121
        0x1010155
        0x1010159
        0x101031f
        0x10103ea
        0x10103fb
        0x1010402
        0x1010403
    .end array-data

    .line 34
    :array_1
    .array-data 4
        0x1010003
        0x10101b5
        0x10101b6
        0x1010324
        0x1010325
        0x1010326
        0x101045a
        0x101045b
    .end array-data

    .line 47
    :array_2
    .array-data 4
        0x1010003
        0x1010404
        0x1010405
        0x1010406
        0x1010407
        0x1010408
        0x1010409
        0x101040a
        0x101040b
        0x101040c
        0x101040d
        0x10104cb
        0x10104cc
    .end array-data

    .line 67
    :array_3
    .array-data 4
        0x1010003
        0x1010405
    .end array-data

    .line 77
    :array_4
    .array-data 4
        0x1010003
        0x10101cd
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
