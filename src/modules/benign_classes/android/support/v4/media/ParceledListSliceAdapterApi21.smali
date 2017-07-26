.class Landroid/support/v4/media/ParceledListSliceAdapterApi21;
.super Ljava/lang/Object;
.source "ParceledListSliceAdapterApi21.java"


# static fields
.field private static sConstructor:Ljava/lang/reflect/Constructor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 32
    :try_start_0
    const-string v2, "android.content.pm.ParceledListSlice"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 33
    .local v1, "theClass":Ljava/lang/Class;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/List;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Landroid/support/v4/media/ParceledListSliceAdapterApi21;->sConstructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_0

    .line 34
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newInstance(Ljava/util/List;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "itemList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    const/4 v1, 0x0

    .line 42
    .local v1, "result":Ljava/lang/Object;
    :try_start_0
    sget-object v2, Landroid/support/v4/media/ParceledListSliceAdapterApi21;->sConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 46
    .end local v1    # "result":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 43
    .restart local v1    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_0

    .line 43
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
