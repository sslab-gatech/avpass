.class Landroid/support/v7/app/AppCompatViewInflater;
.super Ljava/lang/Object;
.source "AppCompatViewInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppCompatViewInflater"

.field private static final sClassPrefixList:[Ljava/lang/String;

.field private static final sConstructorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sOnClickAttrs:[I


# instance fields
.field private final mConstructorArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v3

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    .line 65
    new-array v0, v3, [I

    const v1, 0x101026f

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sOnClickAttrs:[I

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.widget."

    aput-object v1, v0, v2

    const-string v1, "android.view."

    aput-object v1, v0, v3

    const-string v1, "android.webkit."

    aput-object v1, v0, v4

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    .line 75
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 269
    return-void
.end method

.method private checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 196
    .local v1, "context":Landroid/content/Context;
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v3, v4, :cond_1

    .line 197
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasOnClickListeners(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->sOnClickAttrs:[I

    invoke-virtual {v1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 205
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "handlerName":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 207
    new-instance v3, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;

    invoke-direct {v3, p1, v2}, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .prologue
    .line 214
    sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 217
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    if-nez v1, :cond_0

    .line 219
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    if-eqz p3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/view/View;

    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 222
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 223
    sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    invoke-interface {v3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 226
    iget-object v3, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_1
    return-object v3

    :cond_1
    move-object v3, p2

    .line 219
    goto :goto_0

    .line 227
    :catch_0
    move-exception v2

    .line 230
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 158
    const-string v4, "view"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    const-string v4, "class"

    invoke-interface {p3, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 163
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 164
    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object p3, v4, v5

    .line 166
    const/4 v4, -0x1

    const/16 v5, 0x2e

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 167
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v4, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 168
    sget-object v4, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 169
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 183
    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v3, v4, v6

    .line 184
    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v3, v4, v7

    .end local v1    # "i":I
    .end local v2    # "view":Landroid/view/View;
    :goto_1
    return-object v2

    .line 167
    .restart local v1    # "i":I
    .restart local v2    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v3, v4, v6

    .line 184
    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v3, v4, v7

    move-object v2, v3

    goto :goto_1

    .line 175
    .end local v1    # "i":I
    :cond_3
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 183
    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v3, v4, v6

    .line 184
    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v3, v4, v7

    goto :goto_1

    .line 177
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v3, v4, v6

    .line 184
    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v3, v4, v7

    move-object v2, v3

    goto :goto_1

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v3, v5, v6

    .line 184
    iget-object v5, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v3, v5, v7

    throw v4
.end method

.method private static themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "useAndroidTheme"    # Z
    .param p3, "useAppTheme"    # Z

    .prologue
    const/4 v4, 0x0

    .line 239
    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->View:[I

    invoke-virtual {p0, p1, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 240
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .line 241
    .local v2, "themeId":I
    if-eqz p2, :cond_0

    .line 243
    sget v3, Landroid/support/v7/appcompat/R$styleable;->View_android_theme:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 245
    :cond_0
    if-eqz p3, :cond_1

    if-nez v2, :cond_1

    .line 247
    sget v3, Landroid/support/v7/appcompat/R$styleable;->View_theme:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 249
    if-eqz v2, :cond_1

    .line 250
    const-string v3, "AppCompatViewInflater"

    const-string v4, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 256
    if-eqz v2, :cond_3

    instance-of v3, p0, Landroid/support/v7/view/ContextThemeWrapper;

    if-eqz v3, :cond_2

    move-object v3, p0

    check-cast v3, Landroid/support/v7/view/ContextThemeWrapper;

    .line 257
    invoke-virtual {v3}, Landroid/support/v7/view/ContextThemeWrapper;->getThemeResId()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 260
    :cond_2
    new-instance v1, Landroid/support/v7/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v2}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .end local p0    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    move-object p0, v1

    .line 262
    .end local v1    # "context":Landroid/content/Context;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_3
    return-object p0
.end method


# virtual methods
.method public final createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "inheritContext"    # Z
    .param p6, "readAndroidTheme"    # Z
    .param p7, "readAppTheme"    # Z
    .param p8, "wrapContext"    # Z

    .prologue
    .line 83
    move-object v0, p3

    .line 87
    .local v0, "originalContext":Landroid/content/Context;
    if-eqz p5, :cond_0

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 90
    :cond_0
    if-nez p6, :cond_1

    if-eqz p7, :cond_2

    .line 92
    :cond_1
    invoke-static {p3, p4, p6, p7}, Landroid/support/v7/app/AppCompatViewInflater;->themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;

    move-result-object p3

    .line 94
    :cond_2
    if-eqz p8, :cond_3

    .line 95
    invoke-static {p3}, Landroid/support/v7/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    .line 98
    :cond_3
    const/4 v1, 0x0

    .line 101
    .local v1, "view":Landroid/view/View;
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_4
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 143
    :goto_1
    if-nez v1, :cond_5

    if-eq v0, p3, :cond_5

    .line 146
    invoke-direct {p0, p3, p2, p4}, Landroid/support/v7/app/AppCompatViewInflater;->createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 149
    :cond_5
    if-eqz v1, :cond_6

    .line 151
    invoke-direct {p0, v1, p4}, Landroid/support/v7/app/AppCompatViewInflater;->checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 154
    :cond_6
    return-object v1

    .line 101
    :sswitch_0
    const-string v3, "TextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "ImageView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "Button"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "EditText"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "Spinner"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "ImageButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "CheckBox"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string v3, "RadioButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_8
    const-string v3, "CheckedTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0x8

    goto :goto_0

    :sswitch_9
    const-string v3, "AutoCompleteTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0x9

    goto :goto_0

    :sswitch_a
    const-string v3, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "RatingBar"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v3, "SeekBar"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0xc

    goto/16 :goto_0

    .line 103
    :pswitch_0
    new-instance v1, Landroid/support/v7/widget/AppCompatTextView;

    .end local v1    # "view":Landroid/view/View;
    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    .restart local v1    # "view":Landroid/view/View;
    goto/16 :goto_1

    .line 106
    :pswitch_1
    new-instance v1, Landroid/support/v7/widget/AppCompatImageView;

    .end local v1    # "view":Landroid/view/View;
    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    .restart local v1    # "view":Landroid/view/View;
    goto/16 :goto_1

    .line 109
    :pswitch_2
    new-instance v1, Landroid/support/v7/widget/AppCompatButton;

    .end local v1    # "view":Landroid/view/View;
    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    .restart local v1    # "view":Landroid/view/View;
    goto/16 :goto_1

    .line 112
    :pswitch_3
    new-instance v1, Landroid/support/v7/widget/AppCompatEditText;

    .end local v1    # "view":Landroid/view/View;
    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    .restart local v1    # "view":Landroid/view/View;
    goto/16 :goto_1

    .line 115
    :pswitch_4
    new-instance v1, Landroid/support/v7/widget/AppCompatSpinner;

    .end local v1    # "view":Landroid/view/View;
    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    .restart local v1    # "view":Landroid/view/View;
    goto/16 :goto_1

    .line 118
    :pswitch_5
    new-instance v1, Landroid/support/v7/widget/AppCompatImageButton;

    .end local v1    # "view":Landroid/view/View;
    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    .restart local v1    # "view":Landroid/view/View;
    goto/16 :goto_1

    .line 121
    :pswitch_6
    new-instance v1, Landroid/support/v7/widget/AppCompatCheckBox;

    .end local v1    # "view":Landroid/view/View;
    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    .restart local v1    # "view":Landroid/view/View;
    goto/16 :goto_1

    .line 124
    :pswitch_7
    new-instance v1, Landroid/support/v7/widget/AppCompatRadioButton;

    .end local v1    # "view":Landroid/view/View;
    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    .restart local v1    # "view":Landroid/view/View;
    goto/16 :goto_1

    .line 127
    :pswitch_8
    new-instance v1, Landroid/support/v7/widget/AppCompatCheckedTextView;

    .end local v1    # "view":Landroid/view/View;
    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    .restart local v1    # "view":Landroid/view/View;
    goto/16 :goto_1

    .line 130
    :pswitch_9
    new-instance v1, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;

    .end local v1    # "view":Landroid/view/View;
    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    .restart local v1    # "view":Landroid/view/View;
    goto/16 :goto_1

    .line 133
    :pswitch_a
    new-instance v1, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;

    .end local v1    # "view":Landroid/view/View;
    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    .restart local v1    # "view":Landroid/view/View;
    goto/16 :goto_1

    .line 136
    :pswitch_b
    new-instance v1, Landroid/support/v7/widget/AppCompatRatingBar;

    .end local v1    # "view":Landroid/view/View;
    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    .restart local v1    # "view":Landroid/view/View;
    goto/16 :goto_1

    .line 139
    :pswitch_c
    new-instance v1, Landroid/support/v7/widget/AppCompatSeekBar;

    .end local v1    # "view":Landroid/view/View;
    invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v1    # "view":Landroid/view/View;
    goto/16 :goto_1

    .line 101
    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_b
        -0x56c015e7 -> :sswitch_8
        -0x503aa7ad -> :sswitch_a
        -0x37f7066e -> :sswitch_0
        -0x37e04bb3 -> :sswitch_5
        -0x274065a5 -> :sswitch_c
        -0x1440b607 -> :sswitch_4
        0x2e46a6ed -> :sswitch_7
        0x431b5280 -> :sswitch_1
        0x5445f9ba -> :sswitch_9
        0x5f7507c3 -> :sswitch_6
        0x63577677 -> :sswitch_3
        0x77471352 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
