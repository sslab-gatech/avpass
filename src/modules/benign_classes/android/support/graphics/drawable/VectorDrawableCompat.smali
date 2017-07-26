.class public Landroid/support/graphics/drawable/VectorDrawableCompat;
.super Landroid/support/graphics/drawable/VectorDrawableCommon;
.source "VectorDrawableCompat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;,
        Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;,
        Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;,
        Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;,
        Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;,
        Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;,
        Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;
    }
.end annotation


# static fields
.field private static final DBG_VECTOR_DRAWABLE:Z = false

.field static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static final LINECAP_BUTT:I = 0x0

.field private static final LINECAP_ROUND:I = 0x1

.field private static final LINECAP_SQUARE:I = 0x2

.field private static final LINEJOIN_BEVEL:I = 0x2

.field private static final LINEJOIN_MITER:I = 0x0

.field private static final LINEJOIN_ROUND:I = 0x1

.field static final LOGTAG:Ljava/lang/String; = "VectorDrawableCompat"

.field private static final MAX_CACHED_BITMAP_SIZE:I = 0x800

.field private static final SHAPE_CLIP_PATH:Ljava/lang/String; = "clip-path"

.field private static final SHAPE_GROUP:Ljava/lang/String; = "group"

.field private static final SHAPE_PATH:Ljava/lang/String; = "path"

.field private static final SHAPE_VECTOR:Ljava/lang/String; = "vector"


# instance fields
.field private mAllowCaching:Z

.field private mCachedConstantStateDelegate:Landroid/graphics/drawable/Drawable$ConstantState;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mMutated:Z

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpFloats:[F

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 229
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/graphics/drawable/VectorDrawableCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 270
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;-><init>()V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mAllowCaching:Z

    .line 266
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpFloats:[F

    .line 267
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 268
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    .line 271
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-direct {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    .line 272
    return-void
.end method

.method constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;)V
    .locals 3
    .param p1, "state"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 274
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;-><init>()V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mAllowCaching:Z

    .line 266
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpFloats:[F

    .line 267
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 268
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    .line 275
    iput-object p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    .line 276
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v2, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/graphics/drawable/VectorDrawableCompat;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 277
    return-void
.end method

.method static applyAlpha(IF)I
    .locals 2
    .param p0, "color"    # I
    .param p1, "alpha"    # F

    .prologue
    .line 622
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 623
    .local v0, "alphaBytes":I
    const v1, 0xffffff

    and-int/2addr p0, v1

    .line 624
    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr p0, v1

    .line 625
    return p0
.end method

.method public static create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/VectorDrawableCompat;
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 580
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_0

    .line 581
    new-instance v1, Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>()V

    .line 582
    .local v1, "drawable":Landroid/support/graphics/drawable/VectorDrawableCompat;
    invoke-static {p0, p1, p2}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 583
    new-instance v5, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;

    iget-object v6, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 584
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object v5, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mCachedConstantStateDelegate:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 605
    .end local v1    # "drawable":Landroid/support/graphics/drawable/VectorDrawableCompat;
    :goto_0
    return-object v1

    .line 589
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 590
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 592
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    if-eq v4, v7, :cond_2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 596
    :cond_2
    if-eq v4, v7, :cond_3

    .line 597
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "No start tag found"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 600
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :catch_0
    move-exception v2

    .line 601
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v5, "VectorDrawableCompat"

    const-string v6, "parser error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 599
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "type":I
    :cond_3
    :try_start_1
    invoke-static {p0, v3, v0, p2}, Landroid/support/graphics/drawable/VectorDrawableCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/VectorDrawableCompat;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 602
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :catch_1
    move-exception v2

    .line 603
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "VectorDrawableCompat"

    const-string v6, "parser error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/VectorDrawableCompat;
    .locals 1
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 616
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>()V

    .line 617
    .local v0, "drawable":Landroid/support/graphics/drawable/VectorDrawableCompat;
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/graphics/drawable/VectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 618
    return-object v0
.end method

.method private inflateInternal(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 18
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 750
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    .line 751
    .local v12, "state":Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;
    iget-object v11, v12, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    .line 752
    .local v11, "pathRenderer":Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    const/4 v9, 0x1

    .line 756
    .local v9, "noPathTag":Z
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 757
    .local v6, "groupStack":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;>;"
    iget-object v15, v11, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-virtual {v6, v15}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 760
    .local v5, "eventType":I
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    add-int/lit8 v7, v15, 0x1

    .line 763
    .local v7, "innerDepth":I
    :goto_0
    const/4 v15, 0x1

    if-eq v5, v15, :cond_8

    .line 764
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-ge v15, v7, :cond_0

    const/4 v15, 0x3

    if-eq v5, v15, :cond_8

    .line 765
    :cond_0
    const/4 v15, 0x2

    if-ne v5, v15, :cond_7

    .line 766
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 767
    .local v14, "tagName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 768
    .local v4, "currentGroup":Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    const-string v15, "path"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 769
    new-instance v10, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    invoke-direct {v10}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;-><init>()V

    .line 770
    .local v10, "path":Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 771
    iget-object v15, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    invoke-virtual {v10}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->getPathName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 773
    iget-object v15, v11, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v10}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->getPathName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    :cond_1
    const/4 v9, 0x0

    .line 776
    iget v15, v12, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    iget v0, v10, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mChangingConfigurations:I

    move/from16 v16, v0

    or-int v15, v15, v16

    iput v15, v12, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    .line 802
    .end local v4    # "currentGroup":Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    .end local v10    # "path":Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;
    .end local v14    # "tagName":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_0

    .line 777
    .restart local v4    # "currentGroup":Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    .restart local v14    # "tagName":Ljava/lang/String;
    :cond_3
    const-string v15, "clip-path"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 778
    new-instance v10, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;

    invoke-direct {v10}, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;-><init>()V

    .line 779
    .local v10, "path":Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 780
    iget-object v15, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    invoke-virtual {v10}, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->getPathName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 782
    iget-object v15, v11, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v10}, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->getPathName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    :cond_4
    iget v15, v12, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    iget v0, v10, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->mChangingConfigurations:I

    move/from16 v16, v0

    or-int v15, v15, v16

    iput v15, v12, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    goto :goto_1

    .line 785
    .end local v10    # "path":Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;
    :cond_5
    const-string v15, "group"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 786
    new-instance v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-direct {v8}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;-><init>()V

    .line 787
    .local v8, "newChildGroup":Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 788
    iget-object v15, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    invoke-virtual {v6, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    invoke-virtual {v8}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 791
    iget-object v15, v11, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v8}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    :cond_6
    iget v15, v12, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    iget v0, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChangingConfigurations:I

    move/from16 v16, v0

    or-int v15, v15, v16

    iput v15, v12, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    goto :goto_1

    .line 796
    .end local v4    # "currentGroup":Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    .end local v8    # "newChildGroup":Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    .end local v14    # "tagName":Ljava/lang/String;
    :cond_7
    const/4 v15, 0x3

    if-ne v5, v15, :cond_2

    .line 797
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 798
    .restart local v14    # "tagName":Ljava/lang/String;
    const-string v15, "group"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 799
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_1

    .line 810
    .end local v14    # "tagName":Ljava/lang/String;
    :cond_8
    if-eqz v9, :cond_a

    .line 811
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 813
    .local v13, "tag":Ljava/lang/StringBuffer;
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    if-lez v15, :cond_9

    .line 814
    const-string v15, " or "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 816
    :cond_9
    const-string v15, "path"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 818
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "no "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " defined"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 820
    .end local v13    # "tag":Ljava/lang/StringBuffer;
    :cond_a
    return-void
.end method

.method private needMirroring()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 848
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_0

    .line 851
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->isAutoMirrored()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static parseTintModeCompat(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .param p0, "value"    # I
    .param p1, "defaultMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 669
    packed-switch p0, :pswitch_data_0

    .line 683
    .end local p1    # "defaultMode":Landroid/graphics/PorterDuff$Mode;
    :goto_0
    :pswitch_0
    return-object p1

    .line 671
    .restart local p1    # "defaultMode":Landroid/graphics/PorterDuff$Mode;
    :pswitch_1
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 673
    :pswitch_2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 675
    :pswitch_3
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 677
    :pswitch_4
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 679
    :pswitch_5
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 681
    :pswitch_6
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 669
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private printGroupTree(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;I)V
    .locals 6
    .param p1, "currentGroup"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    .param p2, "level"    # I

    .prologue
    .line 823
    const-string v2, ""

    .line 824
    .local v2, "indent":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 825
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 824
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 828
    :cond_0
    const-string v3, "VectorDrawableCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "current group is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rotation is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const-string v3, "VectorDrawableCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "matrix is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Matrix;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 833
    iget-object v3, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 834
    .local v0, "child":Ljava/lang/Object;
    instance-of v3, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    if-eqz v3, :cond_1

    .line 835
    check-cast v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    .end local v0    # "child":Ljava/lang/Object;
    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v0, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat;->printGroupTree(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;I)V

    .line 832
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 837
    .restart local v0    # "child":Ljava/lang/Object;
    :cond_1
    check-cast v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;

    .end local v0    # "child":Ljava/lang/Object;
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v0, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->printVPath(I)V

    goto :goto_2

    .line 840
    :cond_2
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 689
    iget-object v4, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    .line 690
    .local v4, "state":Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;
    iget-object v3, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    .line 695
    .local v3, "pathRenderer":Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    const-string v6, "tintMode"

    const/4 v7, 0x6

    const/4 v8, -0x1

    invoke-static {p1, p2, v6, v7, v8}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 697
    .local v1, "mode":I
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v6}, Landroid/support/graphics/drawable/VectorDrawableCompat;->parseTintModeCompat(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 699
    const/4 v6, 0x1

    .line 700
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 701
    .local v5, "tint":Landroid/content/res/ColorStateList;
    if-eqz v5, :cond_0

    .line 702
    iput-object v5, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    .line 705
    :cond_0
    const-string v6, "autoMirrored"

    const/4 v7, 0x5

    iget-boolean v8, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mAutoMirrored:Z

    invoke-static {p1, p2, v6, v7, v8}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v6

    iput-boolean v6, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mAutoMirrored:Z

    .line 708
    const-string v6, "viewportWidth"

    const/4 v7, 0x7

    iget v8, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    invoke-static {p1, p2, v6, v7, v8}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v6

    iput v6, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 712
    const-string v6, "viewportHeight"

    const/16 v7, 0x8

    iget v8, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    invoke-static {p1, p2, v6, v7, v8}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v6

    iput v6, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 716
    iget v6, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    cmpg-float v6, v6, v9

    if-gtz v6, :cond_1

    .line 717
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 719
    :cond_1
    iget v6, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    cmpg-float v6, v6, v9

    if-gtz v6, :cond_2

    .line 720
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 724
    :cond_2
    const/4 v6, 0x3

    iget v7, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 726
    const/4 v6, 0x2

    iget v7, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 728
    iget v6, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    cmpg-float v6, v6, v9

    if-gtz v6, :cond_3

    .line 729
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<vector> tag requires width > 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 731
    :cond_3
    iget v6, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    cmpg-float v6, v6, v9

    if-gtz v6, :cond_4

    .line 732
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<vector> tag requires height > 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 737
    :cond_4
    const-string v6, "alpha"

    const/4 v7, 0x4

    .line 738
    invoke-virtual {v3}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getAlpha()F

    move-result v8

    .line 737
    invoke-static {p1, p2, v6, v7, v8}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    .line 739
    .local v0, "alphaInFloat":F
    invoke-virtual {v3, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->setAlpha(F)V

    .line 741
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 742
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 743
    iput-object v2, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 744
    iget-object v6, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v6, v2, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    :cond_5
    return-void
.end method


# virtual methods
.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    .line 526
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic clearColorFilter()V
    .locals 0

    .prologue
    .line 225
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v13, 0x800

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 309
    iget-object v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1

    .line 310
    iget-object v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v9}, Landroid/support/graphics/drawable/VectorDrawableCompat;->copyBounds(Landroid/graphics/Rect;)V

    .line 316
    iget-object v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lez v9, :cond_0

    iget-object v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez v9, :cond_0

    .line 322
    iget-object v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v9, :cond_6

    iget-object v4, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 328
    .local v4, "colorFilter":Landroid/graphics/ColorFilter;
    :goto_1
    iget-object v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 329
    iget-object v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpFloats:[F

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->getValues([F)V

    .line 330
    iget-object v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpFloats:[F

    aget v9, v9, v12

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 331
    .local v0, "canvasScaleX":F
    iget-object v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpFloats:[F

    const/4 v10, 0x4

    aget v9, v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 333
    .local v1, "canvasScaleY":F
    iget-object v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpFloats:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 334
    .local v2, "canvasSkewX":F
    iget-object v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpFloats:[F

    const/4 v10, 0x3

    aget v9, v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 337
    .local v3, "canvasSkewY":F
    cmpl-float v9, v2, v11

    if-nez v9, :cond_2

    cmpl-float v9, v3, v11

    if-eqz v9, :cond_3

    .line 338
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 339
    const/high16 v1, 0x3f800000    # 1.0f

    .line 342
    :cond_3
    iget-object v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v8, v9

    .line 343
    .local v8, "scaledWidth":I
    iget-object v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v1

    float-to-int v7, v9

    .line 344
    .local v7, "scaledHeight":I
    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 345
    invoke-static {v13, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 347
    if-lez v8, :cond_0

    if-lez v7, :cond_0

    .line 351
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 352
    .local v6, "saveCount":I
    iget-object v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget-object v10, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 355
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->needMirroring()Z

    move-result v5

    .line 356
    .local v5, "needMirroring":Z
    if-eqz v5, :cond_4

    .line 357
    iget-object v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1, v9, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 358
    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 364
    :cond_4
    iget-object v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v12, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 366
    iget-object v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-virtual {v9, v8, v7}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->createCachedBitmapIfNeeded(II)V

    .line 367
    iget-boolean v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mAllowCaching:Z

    if-nez v9, :cond_7

    .line 368
    iget-object v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-virtual {v9, v8, v7}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->updateCachedBitmap(II)V

    .line 375
    :cond_5
    :goto_2
    iget-object v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v10, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, p1, v4, v10}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->drawCachedBitmapWithRootAlpha(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V

    .line 376
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 322
    .end local v0    # "canvasScaleX":F
    .end local v1    # "canvasScaleY":F
    .end local v2    # "canvasSkewX":F
    .end local v3    # "canvasSkewY":F
    .end local v4    # "colorFilter":Landroid/graphics/ColorFilter;
    .end local v5    # "needMirroring":Z
    .end local v6    # "saveCount":I
    .end local v7    # "scaledHeight":I
    .end local v8    # "scaledWidth":I
    :cond_6
    iget-object v4, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mColorFilter:Landroid/graphics/ColorFilter;

    goto/16 :goto_1

    .line 370
    .restart local v0    # "canvasScaleX":F
    .restart local v1    # "canvasScaleY":F
    .restart local v2    # "canvasSkewX":F
    .restart local v3    # "canvasSkewY":F
    .restart local v4    # "colorFilter":Landroid/graphics/ColorFilter;
    .restart local v5    # "needMirroring":Z
    .restart local v6    # "saveCount":I
    .restart local v7    # "scaledHeight":I
    .restart local v8    # "scaledWidth":I
    :cond_7
    iget-object v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-virtual {v9}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->canReuseCache()Z

    move-result v9

    if-nez v9, :cond_5

    .line 371
    iget-object v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-virtual {v9, v8, v7}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->updateCachedBitmap(II)V

    .line 372
    iget-object v9, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-virtual {v9}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->updateCacheStates()V

    goto :goto_2
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 385
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result v0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 865
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    .line 868
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-virtual {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 301
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 304
    :goto_0
    return-object v0

    .line 303
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    .line 304
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    goto :goto_0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 516
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 507
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 498
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getPixelSize()F
    .locals 8
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 553
    iget-object v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v6, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    if-eqz v6, :cond_1

    :cond_0
    iget-object v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v6, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v6, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v6, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v6, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v6, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v6, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v6, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v6, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    .line 558
    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    .line 566
    :goto_0
    return v6

    .line 560
    :cond_2
    iget-object v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v6, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v1, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 561
    .local v1, "intrinsicWidth":F
    iget-object v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v6, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v0, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 562
    .local v0, "intrinsicHeight":F
    iget-object v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v6, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v5, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 563
    .local v5, "viewportWidth":F
    iget-object v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v6, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v4, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 564
    .local v4, "viewportHeight":F
    div-float v2, v5, v1

    .line 565
    .local v2, "scaleX":F
    div-float v3, v4, v0

    .line 566
    .local v3, "scaleY":F
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto :goto_0
.end method

.method public bridge synthetic getState()[I
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method getTargetByName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 294
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 637
    :goto_0
    return-void

    .line 636
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 642
    iget-object v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 643
    iget-object v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, p1, p2, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 661
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    .line 648
    .local v2, "state":Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;
    new-instance v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-direct {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;-><init>()V

    .line 649
    .local v1, "pathRenderer":Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    iput-object v1, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    .line 651
    sget-object v3, Landroid/support/graphics/drawable/AndroidResources;->styleable_VectorDrawableTypeArray:[I

    invoke-static {p1, p4, p3, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 654
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0, p2}, Landroid/support/graphics/drawable/VectorDrawableCompat;->updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 655
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 656
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getChangingConfigurations()I

    move-result v3

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    .line 657
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCacheDirty:Z

    .line 658
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/graphics/drawable/VectorDrawableCompat;->inflateInternal(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 660
    iget-object v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v4, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v5, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v3, v4, v5}, Landroid/support/graphics/drawable/VectorDrawableCompat;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    iput-object v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 878
    :goto_0
    return-void

    .line 877
    :cond_0
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->invalidateSelf()V

    goto :goto_0
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 534
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-boolean v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mAutoMirrored:Z

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    .line 474
    :goto_0
    return v0

    .line 473
    :cond_0
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    .line 474
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic jumpToCurrentState()V
    .locals 0

    .prologue
    .line 225
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 290
    :cond_0
    :goto_0
    return-object p0

    .line 286
    :cond_1
    iget-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 287
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-direct {v0, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mMutated:Z

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 858
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 861
    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1, "stateSet"    # [I

    .prologue
    .line 479
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 489
    :goto_0
    return v1

    .line 483
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    .line 484
    .local v0, "state":Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;
    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_1

    .line 485
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v3, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 486
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    .line 487
    const/4 v1, 0x1

    goto :goto_0

    .line 489
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "what"    # Ljava/lang/Runnable;
    .param p2, "when"    # J

    .prologue
    .line 882
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 887
    :goto_0
    return-void

    .line 886
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/graphics/drawable/VectorDrawableCommon;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method setAllowCaching(Z)V
    .locals 0
    .param p1, "allowCaching"    # Z

    .prologue
    .line 843
    iput-boolean p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mAllowCaching:Z

    .line 844
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 390
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 396
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->setRootAlpha(I)V

    .line 397
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    goto :goto_0
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    .prologue
    .line 539
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    .line 544
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iput-boolean p1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mAutoMirrored:Z

    goto :goto_0
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .locals 0

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 225
    invoke-super {p0, p1, p2}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 403
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_0
    iput-object p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 409
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    goto :goto_0
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .locals 0

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0

    .prologue
    .line 225
    invoke-super {p0, p1, p2}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    .prologue
    .line 225
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setState([I)Z
    .locals 1

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setState([I)Z

    move-result v0

    return v0
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tint"    # I

    .prologue
    .line 429
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 435
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 439
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 440
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    .line 445
    .local v0, "state":Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;
    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 446
    iput-object p1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    .line 447
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, p1, v2}, Landroid/support/graphics/drawable/VectorDrawableCompat;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 448
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    goto :goto_0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 454
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 455
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    .line 460
    .local v0, "state":Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;
    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    .line 461
    iput-object p1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 462
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1, v2, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 463
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 891
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 894
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setVisible(ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 899
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 904
    :goto_0
    return-void

    .line 903
    :cond_0
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3
    .param p1, "tintFilter"    # Landroid/graphics/PorterDuffColorFilter;
    .param p2, "tint"    # Landroid/content/res/ColorStateList;
    .param p3, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 418
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 419
    :cond_0
    const/4 v1, 0x0

    .line 424
    :goto_0
    return-object v1

    .line 423
    :cond_1
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 424
    .local v0, "color":I
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method
