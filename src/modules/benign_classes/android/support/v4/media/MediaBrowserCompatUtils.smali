.class public Landroid/support/v4/media/MediaBrowserCompatUtils;
.super Ljava/lang/Object;
.source "MediaBrowserCompatUtils.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "options1"    # Landroid/os/Bundle;
    .param p1, "options2"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v4, -0x1

    .line 30
    if-ne p0, p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    .line 32
    :cond_1
    if-nez p0, :cond_3

    .line 33
    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    .line 34
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 35
    :cond_3
    if-nez p1, :cond_5

    .line 36
    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_4

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    .line 37
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 39
    :cond_5
    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.media.browse.extra.PAGE"

    .line 40
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_6

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    .line 41
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 42
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 11
    .param p0, "options1"    # Landroid/os/Bundle;
    .param p1, "options2"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v9, -0x1

    .line 47
    if-nez p0, :cond_3

    move v2, v9

    .line 48
    .local v2, "page1":I
    :goto_0
    if-nez p1, :cond_4

    move v3, v9

    .line 49
    .local v3, "page2":I
    :goto_1
    if-nez p0, :cond_5

    move v4, v9

    .line 51
    .local v4, "pageSize1":I
    :goto_2
    if-nez p1, :cond_6

    move v5, v9

    .line 55
    .local v5, "pageSize2":I
    :goto_3
    if-eq v2, v9, :cond_0

    if-ne v4, v9, :cond_7

    .line 56
    :cond_0
    const/4 v6, 0x0

    .line 57
    .local v6, "startIndex1":I
    const v0, 0x7fffffff

    .line 63
    .local v0, "endIndex1":I
    :goto_4
    if-eq v3, v9, :cond_1

    if-ne v5, v9, :cond_8

    .line 64
    :cond_1
    const/4 v7, 0x0

    .line 65
    .local v7, "startIndex2":I
    const v1, 0x7fffffff

    .line 71
    .local v1, "endIndex2":I
    :goto_5
    if-gt v6, v7, :cond_9

    if-gt v7, v0, :cond_9

    .line 76
    :cond_2
    :goto_6
    return v8

    .line 47
    .end local v0    # "endIndex1":I
    .end local v1    # "endIndex2":I
    .end local v2    # "page1":I
    .end local v3    # "page2":I
    .end local v4    # "pageSize1":I
    .end local v5    # "pageSize2":I
    .end local v6    # "startIndex1":I
    .end local v7    # "startIndex2":I
    :cond_3
    const-string v10, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v10, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 48
    .restart local v2    # "page1":I
    :cond_4
    const-string v10, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v10, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    .line 49
    .restart local v3    # "page2":I
    :cond_5
    const-string v10, "android.media.browse.extra.PAGE_SIZE"

    .line 50
    invoke-virtual {p0, v10, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_2

    .line 51
    .restart local v4    # "pageSize1":I
    :cond_6
    const-string v10, "android.media.browse.extra.PAGE_SIZE"

    .line 52
    invoke-virtual {p1, v10, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_3

    .line 59
    .restart local v5    # "pageSize2":I
    :cond_7
    mul-int v6, v4, v2

    .line 60
    .restart local v6    # "startIndex1":I
    add-int v10, v6, v4

    add-int/lit8 v0, v10, -0x1

    .restart local v0    # "endIndex1":I
    goto :goto_4

    .line 67
    :cond_8
    mul-int v7, v5, v3

    .line 68
    .restart local v7    # "startIndex2":I
    add-int v9, v7, v5

    add-int/lit8 v1, v9, -0x1

    .restart local v1    # "endIndex2":I
    goto :goto_5

    .line 73
    :cond_9
    if-gt v6, v1, :cond_a

    if-le v1, v0, :cond_2

    .line 76
    :cond_a
    const/4 v8, 0x0

    goto :goto_6
.end method
