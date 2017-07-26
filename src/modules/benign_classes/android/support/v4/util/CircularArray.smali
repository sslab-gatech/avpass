.class public final Landroid/support/v4/util/CircularArray;
.super Ljava/lang/Object;
.source "CircularArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCapacityBitmask:I

.field private mElements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/support/v4/util/CircularArray;-><init>(I)V

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "minCapacity"    # I

    .prologue
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    const/4 v2, 0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-ge p1, v2, :cond_0

    .line 58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "capacity must be >= 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    if-le p1, v1, :cond_1

    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "capacity must be <= 2^30"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 68
    add-int/lit8 v1, p1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .line 73
    .local v0, "arrayCapacity":I
    :goto_0
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    .line 74
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    .line 75
    return-void

    .line 70
    .end local v0    # "arrayCapacity":I
    :cond_2
    move v0, p1

    .restart local v0    # "arrayCapacity":I
    goto :goto_0
.end method

.method private doubleCapacity()V
    .locals 7

    .prologue
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    const/4 v6, 0x0

    .line 28
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v1, v4

    .line 29
    .local v1, "n":I
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    sub-int v3, v1, v4

    .line 30
    .local v3, "r":I
    shl-int/lit8 v2, v1, 0x1

    .line 31
    .local v2, "newCapacity":I
    if-gez v2, :cond_0

    .line 32
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Max array capacity exceeded"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 34
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 35
    .local v0, "a":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v5, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    invoke-static {v4, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v5, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    invoke-static {v4, v6, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    check-cast v0, [Ljava/lang/Object;

    .end local v0    # "a":[Ljava/lang/Object;
    iput-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    .line 38
    iput v6, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    .line 39
    iput v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    .line 40
    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    .line 41
    return-void
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    .line 83
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    aput-object p1, v0, v1

    .line 84
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-ne v0, v1, :cond_0

    .line 85
    invoke-direct {p0}, Landroid/support/v4/util/CircularArray;->doubleCapacity()V

    .line 87
    :cond_0
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    aput-object p1, v0, v1

    .line 95
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    .line 96
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    if-ne v0, v1, :cond_0

    .line 97
    invoke-direct {p0}, Landroid/support/v4/util/CircularArray;->doubleCapacity()V

    .line 99
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 136
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/util/CircularArray;->removeFromStart(I)V

    .line 137
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 241
    :cond_1
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    add-int/2addr v1, p1

    iget v2, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-ne v0, v1, :cond_0

    .line 214
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 216
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-ne v0, v1, :cond_0

    .line 226
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 228
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 257
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public popFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    iget v2, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-ne v1, v2, :cond_0

    .line 108
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 110
    :cond_0
    iget-object v1, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    aget-object v0, v1, v2

    .line 111
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 112
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    .line 113
    return-object v0
.end method

.method public popLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    iget v2, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    iget v3, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-ne v2, v3, :cond_0

    .line 123
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 125
    :cond_0
    iget v2, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int v1, v2, v3

    .line 126
    .local v1, "t":I
    iget-object v2, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    aget-object v0, v2, v1

    .line 127
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 128
    iput v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    .line 129
    return-object v0
.end method

.method public removeFromEnd(I)V
    .locals 6
    .param p1, "numOfElements"    # I

    .prologue
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    const/4 v5, 0x0

    .line 180
    if-gtz p1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v4

    if-le p1, v4, :cond_2

    .line 184
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 186
    :cond_2
    const/4 v3, 0x0

    .line 187
    .local v3, "start":I
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-ge p1, v4, :cond_3

    .line 188
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    sub-int v3, v4, p1

    .line 190
    :cond_3
    move v0, v3

    .local v0, "i":I
    :goto_1
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-ge v0, v4, :cond_4

    .line 191
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v5, v4, v0

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    :cond_4
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    sub-int v2, v4, v3

    .line 194
    .local v2, "removed":I
    sub-int/2addr p1, v2

    .line 195
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    sub-int/2addr v4, v2

    iput v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    .line 196
    if-lez p1, :cond_0

    .line 198
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v4, v4

    iput v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    .line 199
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    sub-int v1, v4, p1

    .line 200
    .local v1, "newTail":I
    move v0, v1

    :goto_2
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-ge v0, v4, :cond_5

    .line 201
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v5, v4, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 203
    :cond_5
    iput v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    goto :goto_0
.end method

.method public removeFromStart(I)V
    .locals 6
    .param p1, "numOfElements"    # I

    .prologue
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    const/4 v5, 0x0

    .line 147
    if-gtz p1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v3

    if-le p1, v3, :cond_2

    .line 151
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 153
    :cond_2
    iget-object v3, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v0, v3

    .line 154
    .local v0, "end":I
    iget v3, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    sub-int v3, v0, v3

    if-ge p1, v3, :cond_3

    .line 155
    iget v3, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    add-int v0, v3, p1

    .line 157
    :cond_3
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 158
    iget-object v3, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v5, v3, v1

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 160
    :cond_4
    iget v3, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    sub-int v2, v0, v3

    .line 161
    .local v2, "removed":I
    sub-int/2addr p1, v2

    .line 162
    iget v3, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    add-int/2addr v3, v2

    iget v4, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    iput v3, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    .line 163
    if-lez p1, :cond_0

    .line 165
    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_5

    .line 166
    iget-object v3, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v5, v3, v1

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 168
    :cond_5
    iput p1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 249
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    return v0
.end method
