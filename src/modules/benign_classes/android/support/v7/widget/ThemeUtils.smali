.class Landroid/support/v7/widget/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field static final ACTIVATED_STATE_SET:[I

.field static final CHECKED_STATE_SET:[I

.field static final DISABLED_STATE_SET:[I

.field static final EMPTY_STATE_SET:[I

.field static final FOCUSED_STATE_SET:[I

.field static final NOT_PRESSED_OR_FOCUSED_STATE_SET:[I

.field static final PRESSED_STATE_SET:[I

.field static final SELECTED_STATE_SET:[I

.field private static final TEMP_ARRAY:[I

.field private static final TL_TYPED_VALUE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    .line 29
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    .line 30
    new-array v0, v3, [I

    const v1, 0x101009c

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    .line 31
    new-array v0, v3, [I

    const v1, 0x10102fe

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->ACTIVATED_STATE_SET:[I

    .line 32
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    .line 33
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    .line 34
    new-array v0, v3, [I

    const v1, 0x10100a1

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->SELECTED_STATE_SET:[I

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->NOT_PRESSED_OR_FOCUSED_STATE_SET:[I

    .line 37
    new-array v0, v2, [I

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    .line 39
    new-array v0, v3, [I

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->TEMP_ARRAY:[I

    return-void

    .line 35
    :array_0
    .array-data 4
        -0x10100a7
        -0x101009c
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDisabledStateList(II)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "textColor"    # I
    .param p1, "disabledTextColor"    # I

    .prologue
    const/4 v3, 0x2

    .line 44
    new-array v2, v3, [[I

    .line 45
    .local v2, "states":[[I
    new-array v0, v3, [I

    .line 46
    .local v0, "colors":[I
    const/4 v1, 0x0

    .line 49
    .local v1, "i":I
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v3, v2, v1

    .line 50
    aput p1, v0, v1

    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 54
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v3, v2, v1

    .line 55
    aput p0, v0, v1

    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 58
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public static getDisabledThemeAttrColor(Landroid/content/Context;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .prologue
    .line 82
    invoke-static {p0, p1}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 83
    .local v0, "csl":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 94
    :goto_0
    return v3

    .line 89
    :cond_0
    invoke-static {}, Landroid/support/v7/widget/ThemeUtils;->getTypedValue()Landroid/util/TypedValue;

    move-result-object v2

    .line 91
    .local v2, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010033

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 92
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    .line 94
    .local v1, "disabledAlpha":F
    invoke-static {p0, p1, v1}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;IF)I

    move-result v3

    goto :goto_0
.end method

.method public static getThemeAttrColor(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .prologue
    const/4 v2, 0x0

    .line 62
    sget-object v1, Landroid/support/v7/widget/ThemeUtils;->TEMP_ARRAY:[I

    aput p1, v1, v2

    .line 63
    const/4 v1, 0x0

    sget-object v2, Landroid/support/v7/widget/ThemeUtils;->TEMP_ARRAY:[I

    invoke-static {p0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 65
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 67
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    throw v1
.end method

.method static getThemeAttrColor(Landroid/content/Context;IF)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I
    .param p2, "alpha"    # F

    .prologue
    .line 108
    invoke-static {p0, p1}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 109
    .local v0, "color":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 110
    .local v1, "originalAlpha":I
    int-to-float v2, v1

    mul-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v0, v2}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    return v2
.end method

.method public static getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .prologue
    const/4 v2, 0x0

    .line 72
    sget-object v1, Landroid/support/v7/widget/ThemeUtils;->TEMP_ARRAY:[I

    aput p1, v1, v2

    .line 73
    const/4 v1, 0x0

    sget-object v2, Landroid/support/v7/widget/ThemeUtils;->TEMP_ARRAY:[I

    invoke-static {p0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 75
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 77
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    throw v1
.end method

.method private static getTypedValue()Landroid/util/TypedValue;
    .locals 2

    .prologue
    .line 99
    sget-object v1, Landroid/support/v7/widget/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    .line 100
    .local v0, "typedValue":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 101
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "typedValue":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 102
    .restart local v0    # "typedValue":Landroid/util/TypedValue;
    sget-object v1, Landroid/support/v7/widget/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 104
    :cond_0
    return-object v0
.end method
