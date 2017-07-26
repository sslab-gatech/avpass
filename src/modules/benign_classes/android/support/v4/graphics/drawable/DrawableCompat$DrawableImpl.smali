.class interface abstract Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;
.super Ljava/lang/Object;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "DrawableImpl"
.end annotation


# virtual methods
.method public abstract applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
.end method

.method public abstract canApplyTheme(Landroid/graphics/drawable/Drawable;)Z
.end method

.method public abstract clearColorFilter(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract getAlpha(Landroid/graphics/drawable/Drawable;)I
.end method

.method public abstract getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;
.end method

.method public abstract getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
.end method

.method public abstract inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
.end method

.method public abstract jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
.end method

.method public abstract setHotspot(Landroid/graphics/drawable/Drawable;FF)V
.end method

.method public abstract setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
.end method

.method public abstract setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
.end method

.method public abstract setTint(Landroid/graphics/drawable/Drawable;I)V
.end method

.method public abstract setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
.end method

.method public abstract wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.end method
