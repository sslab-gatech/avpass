.class Landroid/support/v4/graphics/drawable/DrawableCompatBase;
.super Ljava/lang/Object;
.source "DrawableCompatBase.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "t"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public static setTint(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tint"    # I

    .prologue
    .line 35
    instance-of v0, p0, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    if-eqz v0, :cond_0

    .line 36
    check-cast p0, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {p0, p1}, Landroid/support/v4/graphics/drawable/TintAwareDrawable;->setTint(I)V

    .line 38
    :cond_0
    return-void
.end method

.method public static setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 41
    instance-of v0, p0, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    if-eqz v0, :cond_0

    .line 42
    check-cast p0, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {p0, p1}, Landroid/support/v4/graphics/drawable/TintAwareDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 47
    instance-of v0, p0, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {p0, p1}, Landroid/support/v4/graphics/drawable/TintAwareDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 50
    :cond_0
    return-void
.end method

.method public static wrapForTinting(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 53
    instance-of v0, p0, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;

    invoke-direct {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p0, v0

    .line 56
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object p0
.end method
