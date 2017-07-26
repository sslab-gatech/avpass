.class Landroid/support/v4/content/res/ConfigurationHelperGingerbread;
.super Ljava/lang/Object;
.source "ConfigurationHelperGingerbread.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDensityDpi(Landroid/content/res/Resources;)I
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method static getScreenHeightDp(Landroid/content/res/Resources;)I
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 28
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method static getScreenWidthDp(Landroid/content/res/Resources;)I
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 33
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method static getSmallestScreenWidthDp(Landroid/content/res/Resources;)I
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelperGingerbread;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v0

    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelperGingerbread;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
