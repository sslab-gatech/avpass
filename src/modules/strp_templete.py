#!/usr/bin/env python2

"""
Defined template for string obfuscation module
"""

METHOD_INVOKE = """
    invoke-static {}, L{0};->{1}()Ljava/lang/String;    
    move-result-object {2}
"""

STR_XOR_TEMPLETE = """
.method static public {1}()Ljava/lang/String;
    .locals 9

    .prologue
    const-string v5, {2}

    .local v5, "s_base":Ljava/lang/String;
    const-string v1, {3}

    .local v1, "k":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    .local v3, "result":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .local v4, "s":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    rem-int v8, v0, v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    xor-int/2addr v7, v8

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "r":Ljava/lang/String;
    return-object v2
.end method

"""
