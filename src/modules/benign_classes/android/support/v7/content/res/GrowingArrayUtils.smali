.class final Landroid/support/v7/content/res/GrowingArrayUtils;
.super Ljava/lang/Object;
.source "GrowingArrayUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Landroid/support/v7/content/res/GrowingArrayUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/content/res/GrowingArrayUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append([III)[I
    .locals 4
    .param p0, "array"    # [I
    .param p1, "currentSize"    # I
    .param p2, "element"    # I

    .prologue
    const/4 v3, 0x0

    .line 57
    sget-boolean v1, Landroid/support/v7/content/res/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 59
    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-le v1, v2, :cond_1

    .line 60
    invoke-static {p1}, Landroid/support/v7/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v1

    new-array v0, v1, [I

    .line 61
    .local v0, "newArray":[I
    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    move-object p0, v0

    .line 64
    .end local v0    # "newArray":[I
    :cond_1
    aput p2, p0, p1

    .line 65
    return-object p0
.end method

.method public static append([JIJ)[J
    .locals 4
    .param p0, "array"    # [J
    .param p1, "currentSize"    # I
    .param p2, "element"    # J

    .prologue
    const/4 v3, 0x0

    .line 72
    sget-boolean v1, Landroid/support/v7/content/res/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 74
    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-le v1, v2, :cond_1

    .line 75
    invoke-static {p1}, Landroid/support/v7/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v1

    new-array v0, v1, [J

    .line 76
    .local v0, "newArray":[J
    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    move-object p0, v0

    .line 79
    .end local v0    # "newArray":[J
    :cond_1
    aput-wide p2, p0, p1

    .line 80
    return-object p0
.end method

.method public static append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "currentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 41
    sget-boolean v1, Landroid/support/v7/content/res/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 43
    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-le v1, v2, :cond_1

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 45
    invoke-static {p1}, Landroid/support/v7/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v2

    .line 44
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 46
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    move-object p0, v0

    .line 49
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_1
    aput-object p2, p0, p1

    .line 50
    return-object p0
.end method

.method public static append([ZIZ)[Z
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "currentSize"    # I
    .param p2, "element"    # Z

    .prologue
    const/4 v3, 0x0

    .line 87
    sget-boolean v1, Landroid/support/v7/content/res/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 89
    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-le v1, v2, :cond_1

    .line 90
    invoke-static {p1}, Landroid/support/v7/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v1

    new-array v0, v1, [Z

    .line 91
    .local v0, "newArray":[Z
    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    move-object p0, v0

    .line 94
    .end local v0    # "newArray":[Z
    :cond_1
    aput-boolean p2, p0, p1

    .line 95
    return-object p0
.end method

.method public static growSize(I)I
    .locals 1
    .param p0, "currentSize"    # I

    .prologue
    .line 189
    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    mul-int/lit8 v0, p0, 0x2

    goto :goto_0
.end method

.method public static insert([IIII)[I
    .locals 4
    .param p0, "array"    # [I
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .param p3, "element"    # I

    .prologue
    const/4 v3, 0x0

    .line 130
    sget-boolean v1, Landroid/support/v7/content/res/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 132
    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-gt v1, v2, :cond_1

    .line 133
    add-int/lit8 v1, p2, 0x1

    sub-int v2, p1, p2

    invoke-static {p0, p2, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    aput p3, p0, p2

    .line 142
    .end local p0    # "array":[I
    :goto_0
    return-object p0

    .line 138
    .restart local p0    # "array":[I
    :cond_1
    invoke-static {p1}, Landroid/support/v7/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v1

    new-array v0, v1, [I

    .line 139
    .local v0, "newArray":[I
    invoke-static {p0, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    aput p3, v0, p2

    .line 141
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 142
    goto :goto_0
.end method

.method public static insert([JIIJ)[J
    .locals 5
    .param p0, "array"    # [J
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .param p3, "element"    # J

    .prologue
    const/4 v3, 0x0

    .line 149
    sget-boolean v1, Landroid/support/v7/content/res/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 151
    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-gt v1, v2, :cond_1

    .line 152
    add-int/lit8 v1, p2, 0x1

    sub-int v2, p1, p2

    invoke-static {p0, p2, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    aput-wide p3, p0, p2

    .line 161
    .end local p0    # "array":[J
    :goto_0
    return-object p0

    .line 157
    .restart local p0    # "array":[J
    :cond_1
    invoke-static {p1}, Landroid/support/v7/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v1

    new-array v0, v1, [J

    .line 158
    .local v0, "newArray":[J
    invoke-static {p0, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    aput-wide p3, v0, p2

    .line 160
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 161
    goto :goto_0
.end method

.method public static insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p3, "element":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 110
    sget-boolean v1, Landroid/support/v7/content/res/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 112
    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-gt v1, v2, :cond_1

    .line 113
    add-int/lit8 v1, p2, 0x1

    sub-int v2, p1, p2

    invoke-static {p0, p2, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    aput-object p3, p0, p2

    .line 123
    .end local p0    # "array":[Ljava/lang/Object;, "[TT;"
    :goto_0
    return-object p0

    .line 118
    .restart local p0    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 119
    invoke-static {p1}, Landroid/support/v7/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v2

    .line 118
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 120
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    aput-object p3, v0, p2

    .line 122
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 123
    goto :goto_0
.end method

.method public static insert([ZIIZ)[Z
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .param p3, "element"    # Z

    .prologue
    const/4 v3, 0x0

    .line 168
    sget-boolean v1, Landroid/support/v7/content/res/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 170
    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-gt v1, v2, :cond_1

    .line 171
    add-int/lit8 v1, p2, 0x1

    sub-int v2, p1, p2

    invoke-static {p0, p2, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    aput-boolean p3, p0, p2

    .line 180
    .end local p0    # "array":[Z
    :goto_0
    return-object p0

    .line 176
    .restart local p0    # "array":[Z
    :cond_1
    invoke-static {p1}, Landroid/support/v7/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v1

    new-array v0, v1, [Z

    .line 177
    .local v0, "newArray":[Z
    invoke-static {p0, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    aput-boolean p3, v0, p2

    .line 179
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 180
    goto :goto_0
.end method
