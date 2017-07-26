.class Landroid/support/graphics/drawable/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/graphics/drawable/PathParser$PathDataNode;,
        Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "PathParser"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    return-void
.end method

.method private static addNode(Ljava/util/ArrayList;C[F)V
    .locals 1
    .param p1, "cmd"    # C
    .param p2, "val"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/graphics/drawable/PathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/graphics/drawable/PathParser$PathDataNode;>;"
    new-instance v0, Landroid/support/graphics/drawable/PathParser$PathDataNode;

    invoke-direct {v0, p1, p2}, Landroid/support/graphics/drawable/PathParser$PathDataNode;-><init>(C[F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method public static canMorph([Landroid/support/graphics/drawable/PathParser$PathDataNode;[Landroid/support/graphics/drawable/PathParser$PathDataNode;)Z
    .locals 4
    .param p0, "nodesFrom"    # [Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .param p1, "nodesTo"    # [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .prologue
    const/4 v1, 0x0

    .line 126
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v1

    .line 130
    :cond_1
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_0

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 135
    aget-object v2, p0, v0

    iget-char v2, v2, Landroid/support/graphics/drawable/PathParser$PathDataNode;->type:C

    aget-object v3, p1, v0

    iget-char v3, v3, Landroid/support/graphics/drawable/PathParser$PathDataNode;->type:C

    if-ne v2, v3, :cond_0

    aget-object v2, p0, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/PathParser$PathDataNode;->params:[F

    array-length v2, v2

    aget-object v3, p1, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/PathParser$PathDataNode;->params:[F

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static copyOfRange([FII)[F
    .locals 5
    .param p0, "original"    # [F
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 44
    if-le p1, p2, :cond_0

    .line 45
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 47
    :cond_0
    array-length v1, p0

    .line 48
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 49
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 51
    :cond_2
    sub-int v3, p2, p1

    .line 52
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 53
    .local v0, "copyLength":I
    new-array v2, v3, [F

    .line 54
    .local v2, "result":[F
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    return-object v2
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .locals 8
    .param p0, "pathData"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 81
    if-nez p0, :cond_0

    .line 82
    const/4 v5, 0x0

    .line 102
    :goto_0
    return-object v5

    .line 84
    :cond_0
    const/4 v3, 0x0

    .line 85
    .local v3, "start":I
    const/4 v0, 0x1

    .line 87
    .local v0, "end":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/graphics/drawable/PathParser$PathDataNode;>;"
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 89
    invoke-static {p0, v0}, Landroid/support/graphics/drawable/PathParser;->nextStart(Ljava/lang/String;I)I

    move-result v0

    .line 90
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 92
    invoke-static {v2}, Landroid/support/graphics/drawable/PathParser;->getFloats(Ljava/lang/String;)[F

    move-result-object v4

    .line 93
    .local v4, "val":[F
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v1, v5, v4}, Landroid/support/graphics/drawable/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 96
    .end local v4    # "val":[F
    :cond_1
    move v3, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    .line 98
    goto :goto_1

    .line 99
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    sub-int v5, v0, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 100
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    new-array v6, v7, [F

    invoke-static {v1, v5, v6}, Landroid/support/graphics/drawable/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 102
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    goto :goto_0
.end method

.method public static createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 6
    .param p0, "pathData"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 64
    .local v2, "path":Landroid/graphics/Path;
    invoke-static {p0}, Landroid/support/graphics/drawable/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    move-result-object v1

    .line 65
    .local v1, "nodes":[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    if-eqz v1, :cond_0

    .line 67
    :try_start_0
    invoke-static {v1, v2}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->nodesToPath([Landroid/support/graphics/drawable/PathParser$PathDataNode;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v2    # "path":Landroid/graphics/Path;
    :goto_0
    return-object v2

    .line 68
    .restart local v2    # "path":Landroid/graphics/Path;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 73
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static deepCopyNodes([Landroid/support/graphics/drawable/PathParser$PathDataNode;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .locals 4
    .param p0, "source"    # [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .prologue
    .line 110
    if-nez p0, :cond_1

    .line 111
    const/4 v0, 0x0

    .line 117
    :cond_0
    return-object v0

    .line 113
    :cond_1
    array-length v2, p0

    new-array v0, v2, [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 114
    .local v0, "copy":[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 115
    new-instance v2, Landroid/support/graphics/drawable/PathParser$PathDataNode;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/support/graphics/drawable/PathParser$PathDataNode;-><init>(Landroid/support/graphics/drawable/PathParser$PathDataNode;)V

    aput-object v2, v0, v1

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static extract(Ljava/lang/String;ILandroid/support/graphics/drawable/PathParser$ExtractFloatResult;)V
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "result"    # Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;

    .prologue
    const/4 v7, 0x1

    .line 246
    move v1, p1

    .line 247
    .local v1, "currentIndex":I
    const/4 v2, 0x0

    .line 248
    .local v2, "foundSeparator":Z
    const/4 v6, 0x0

    iput-boolean v6, p2, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    .line 249
    const/4 v5, 0x0

    .line 250
    .local v5, "secondDot":Z
    const/4 v3, 0x0

    .line 251
    .local v3, "isExponential":Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 252
    move v4, v3

    .line 253
    .local v4, "isPrevExponential":Z
    const/4 v3, 0x0

    .line 254
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 255
    .local v0, "currentChar":C
    sparse-switch v0, :sswitch_data_0

    .line 281
    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    .line 287
    .end local v0    # "currentChar":C
    .end local v4    # "isPrevExponential":Z
    :cond_1
    iput v1, p2, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->mEndPosition:I

    .line 288
    return-void

    .line 258
    .restart local v0    # "currentChar":C
    .restart local v4    # "isPrevExponential":Z
    :sswitch_0
    const/4 v2, 0x1

    .line 259
    goto :goto_1

    .line 262
    :sswitch_1
    if-eq v1, p1, :cond_0

    if-nez v4, :cond_0

    .line 263
    const/4 v2, 0x1

    .line 264
    iput-boolean v7, p2, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_1

    .line 268
    :sswitch_2
    if-nez v5, :cond_2

    .line 269
    const/4 v5, 0x1

    goto :goto_1

    .line 272
    :cond_2
    const/4 v2, 0x1

    .line 273
    iput-boolean v7, p2, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_1

    .line 278
    :sswitch_3
    const/4 v3, 0x1

    goto :goto_1

    .line 251
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_1
        0x2e -> :sswitch_2
        0x45 -> :sswitch_3
        0x65 -> :sswitch_3
    .end sparse-switch
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .locals 13
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 199
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v11, 0x7a

    if-ne v8, v11, :cond_0

    move v8, v9

    :goto_0
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5a

    if-ne v11, v12, :cond_1

    :goto_1
    or-int/2addr v8, v9

    if-eqz v8, :cond_2

    .line 200
    new-array v8, v10, [F

    .line 230
    :goto_2
    return-object v8

    :cond_0
    move v8, v10

    .line 199
    goto :goto_0

    :cond_1
    move v9, v10

    goto :goto_1

    .line 203
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    new-array v5, v8, [F

    .line 204
    .local v5, "results":[F
    const/4 v0, 0x0

    .line 205
    .local v0, "count":I
    const/4 v6, 0x1

    .line 206
    .local v6, "startPosition":I
    const/4 v3, 0x0

    .line 208
    .local v3, "endPosition":I
    new-instance v4, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;

    invoke-direct {v4}, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;-><init>()V

    .line 209
    .local v4, "result":Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, "totalLength":I
    move v1, v0

    .line 214
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_3
    if-ge v6, v7, :cond_4

    .line 215
    invoke-static {p0, v6, v4}, Landroid/support/graphics/drawable/PathParser;->extract(Ljava/lang/String;ILandroid/support/graphics/drawable/PathParser$ExtractFloatResult;)V

    .line 216
    iget v3, v4, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->mEndPosition:I

    .line 218
    if-ge v6, v3, :cond_5

    .line 219
    add-int/lit8 v0, v1, 0x1

    .line 220
    .end local v1    # "count":I
    .restart local v0    # "count":I
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 219
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v5, v1

    .line 223
    :goto_4
    iget-boolean v8, v4, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    if-eqz v8, :cond_3

    .line 225
    move v6, v3

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_3

    .line 227
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_3
    add-int/lit8 v6, v3, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_3

    .line 230
    :cond_4
    const/4 v8, 0x0

    invoke-static {v5, v8, v1}, Landroid/support/graphics/drawable/PathParser;->copyOfRange([FII)[F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_2

    .line 231
    .end local v1    # "count":I
    .end local v3    # "endPosition":I
    .end local v4    # "result":Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;
    .end local v5    # "results":[F
    .end local v6    # "startPosition":I
    .end local v7    # "totalLength":I
    :catch_0
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error in parsing \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "count":I
    .restart local v3    # "endPosition":I
    .restart local v4    # "result":Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;
    .restart local v5    # "results":[F
    .restart local v6    # "startPosition":I
    .restart local v7    # "totalLength":I
    :cond_5
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_4
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "end"    # I

    .prologue
    .line 162
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 163
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 168
    .local v0, "c":C
    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v1, v2

    if-gtz v1, :cond_2

    :cond_0
    const/16 v1, 0x65

    if-eq v0, v1, :cond_2

    const/16 v1, 0x45

    if-eq v0, v1, :cond_2

    .line 174
    .end local v0    # "c":C
    :cond_1
    return p1

    .line 172
    .restart local v0    # "c":C
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static updateNodes([Landroid/support/graphics/drawable/PathParser$PathDataNode;[Landroid/support/graphics/drawable/PathParser$PathDataNode;)V
    .locals 4
    .param p0, "target"    # [Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .param p1, "source"    # [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .prologue
    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 152
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    iget-char v3, v3, Landroid/support/graphics/drawable/PathParser$PathDataNode;->type:C

    iput-char v3, v2, Landroid/support/graphics/drawable/PathParser$PathDataNode;->type:C

    .line 153
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    aget-object v2, p1, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/PathParser$PathDataNode;->params:[F

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 154
    aget-object v2, p0, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/PathParser$PathDataNode;->params:[F

    aget-object v3, p1, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/PathParser$PathDataNode;->params:[F

    aget v3, v3, v1

    aput v3, v2, v1

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 151
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "j":I
    :cond_1
    return-void
.end method
