.class Landroid/support/v7/widget/AppCompatDrawableManager$AvdcInflateDelegate;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"

# interfaces
.implements Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/AppCompatDrawableManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AvdcInflateDelegate"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    return-void
.end method


# virtual methods
.method public createFromXmlInner(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 761
    .line 762
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, v1, p2, p3, p4}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 765
    :goto_0
    return-object v1

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AvdcInflateDelegate"

    const-string v2, "Exception while inflating <animated-vector>"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 765
    const/4 v1, 0x0

    goto :goto_0
.end method
