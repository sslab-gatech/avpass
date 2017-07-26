.class Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectionalityEstimator"
.end annotation


# static fields
.field private static final DIR_TYPE_CACHE:[B

.field private static final DIR_TYPE_CACHE_SIZE:I = 0x700


# instance fields
.field private charIndex:I

.field private final isHtml:Z

.field private lastChar:C

.field private final length:I

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x700

    .line 583
    new-array v1, v3, [B

    sput-object v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    .line 584
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 585
    sget-object v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    aput-byte v2, v1, v0

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 587
    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isHtml"    # Z

    .prologue
    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    iput-object p1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    .line 629
    iput-boolean p2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    .line 630
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    .line 631
    return-void
.end method

.method private static getCachedDirectionality(C)B
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 802
    const/16 v0, 0x700

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    aget-byte v0, v0, p0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    goto :goto_0
.end method

.method private skipEntityBackward()B
    .locals 4

    .prologue
    const/16 v3, 0x3b

    .line 943
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 944
    .local v0, "initialCharIndex":I
    :cond_0
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v1, :cond_2

    .line 945
    iget-object v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 946
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_1

    .line 947
    const/16 v1, 0xc

    .line 955
    :goto_0
    return v1

    .line 949
    :cond_1
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v1, v3, :cond_0

    .line 953
    :cond_2
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 954
    iput-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 955
    const/16 v1, 0xd

    goto :goto_0
.end method

.method private skipEntityForward()B
    .locals 3

    .prologue
    .line 928
    :cond_0
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 929
    :cond_1
    const/16 v0, 0xc

    return v0
.end method

.method private skipTagBackward()B
    .locals 5

    .prologue
    const/16 v4, 0x3e

    .line 900
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 901
    .local v0, "initialCharIndex":I
    :cond_0
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_2

    .line 902
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 903
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1

    .line 905
    const/16 v2, 0xc

    .line 919
    :goto_0
    return v2

    .line 907
    :cond_1
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v2, v4, :cond_3

    .line 917
    :cond_2
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 918
    iput-char v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 919
    const/16 v2, 0xd

    goto :goto_0

    .line 910
    :cond_3
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x22

    if-eq v2, v3, :cond_4

    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x27

    if-ne v2, v3, :cond_0

    .line 912
    :cond_4
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 913
    .local v1, "quote":C
    :goto_1
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_0

    goto :goto_1
.end method

.method private skipTagForward()B
    .locals 5

    .prologue
    .line 871
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 872
    .local v0, "initialCharIndex":I
    :cond_0
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_3

    .line 873
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 874
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_1

    .line 876
    const/16 v2, 0xc

    .line 887
    :goto_0
    return v2

    .line 878
    :cond_1
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x22

    if-eq v2, v3, :cond_2

    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x27

    if-ne v2, v3, :cond_0

    .line 880
    :cond_2
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 881
    .local v1, "quote":C
    :goto_1
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_0

    goto :goto_1

    .line 885
    .end local v1    # "quote":C
    :cond_3
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 886
    const/16 v2, 0x3c

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 887
    const/16 v2, 0xd

    goto :goto_0
.end method


# virtual methods
.method dirTypeBackward()B
    .locals 4

    .prologue
    .line 845
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 846
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 847
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 848
    .local v0, "codePoint":I
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 849
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    .line 861
    .end local v0    # "codePoint":I
    :cond_0
    :goto_0
    return v1

    .line 851
    :cond_1
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 852
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v1

    .line 853
    .local v1, "dirType":B
    iget-boolean v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v2, :cond_0

    .line 855
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_2

    .line 856
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    move-result v1

    goto :goto_0

    .line 857
    :cond_2
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    .line 858
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    move-result v1

    goto :goto_0
.end method

.method dirTypeForward()B
    .locals 4

    .prologue
    .line 815
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 816
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 817
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 818
    .local v0, "codePoint":I
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 819
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    .line 831
    .end local v0    # "codePoint":I
    :cond_0
    :goto_0
    return v1

    .line 821
    :cond_1
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 822
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v1

    .line 823
    .local v1, "dirType":B
    iget-boolean v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v2, :cond_0

    .line 825
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_2

    .line 826
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    move-result v1

    goto :goto_0

    .line 827
    :cond_2
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x26

    if-ne v2, v3, :cond_0

    .line 828
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    move-result v1

    goto :goto_0
.end method

.method getEntryDir()I
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 645
    iput v5, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 646
    const/4 v0, 0x0

    .line 647
    .local v0, "embeddingLevel":I
    const/4 v1, 0x0

    .line 648
    .local v1, "embeddingLevelDir":I
    const/4 v2, 0x0

    .line 649
    .local v2, "firstNonEmptyEmbeddingLevel":I
    :goto_0
    :pswitch_0
    iget v6, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v7, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v6, v7, :cond_3

    if-nez v2, :cond_3

    .line 650
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 684
    :pswitch_1
    move v2, v0

    .line 685
    goto :goto_0

    .line 653
    :pswitch_2
    add-int/lit8 v0, v0, 0x1

    .line 654
    const/4 v1, -0x1

    .line 655
    goto :goto_0

    .line 658
    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 659
    const/4 v1, 0x1

    .line 660
    goto :goto_0

    .line 662
    :pswitch_4
    add-int/lit8 v0, v0, -0x1

    .line 666
    const/4 v1, 0x0

    .line 667
    goto :goto_0

    .line 671
    :pswitch_5
    if-nez v0, :cond_1

    move v1, v3

    .line 727
    .end local v1    # "embeddingLevelDir":I
    :cond_0
    :goto_1
    return v1

    .line 674
    .restart local v1    # "embeddingLevelDir":I
    :cond_1
    move v2, v0

    .line 675
    goto :goto_0

    .line 678
    :pswitch_6
    if-nez v0, :cond_2

    move v1, v4

    .line 679
    goto :goto_1

    .line 681
    :cond_2
    move v2, v0

    .line 682
    goto :goto_0

    .line 691
    :cond_3
    if-nez v2, :cond_4

    move v1, v5

    .line 694
    goto :goto_1

    .line 698
    :cond_4
    if-nez v1, :cond_0

    .line 705
    :goto_2
    iget v6, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v6, :cond_7

    .line 706
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v6

    packed-switch v6, :pswitch_data_1

    goto :goto_2

    .line 709
    :pswitch_7
    if-ne v2, v0, :cond_5

    move v1, v3

    .line 710
    goto :goto_1

    .line 712
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 713
    goto :goto_2

    .line 716
    :pswitch_8
    if-ne v2, v0, :cond_6

    move v1, v4

    .line 717
    goto :goto_1

    .line 719
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 720
    goto :goto_2

    .line 722
    :pswitch_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v1, v5

    .line 727
    goto :goto_1

    .line 650
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 706
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method getExitDir()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 743
    iget v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 744
    const/4 v0, 0x0

    .line 745
    .local v0, "embeddingLevel":I
    const/4 v1, 0x0

    .line 746
    .local v1, "lastNonEmptyEmbeddingLevel":I
    :cond_0
    :goto_0
    :pswitch_0
    iget v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v4, :cond_5

    .line 747
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 785
    :pswitch_1
    if-nez v1, :cond_0

    .line 786
    move v1, v0

    goto :goto_0

    .line 749
    :pswitch_2
    if-nez v0, :cond_2

    .line 791
    :cond_1
    :goto_1
    return v2

    .line 752
    :cond_2
    if-nez v1, :cond_0

    .line 753
    move v1, v0

    goto :goto_0

    .line 758
    :pswitch_3
    if-eq v1, v0, :cond_1

    .line 761
    add-int/lit8 v0, v0, -0x1

    .line 762
    goto :goto_0

    .line 765
    :pswitch_4
    if-nez v0, :cond_3

    move v2, v3

    .line 766
    goto :goto_1

    .line 768
    :cond_3
    if-nez v1, :cond_0

    .line 769
    move v1, v0

    goto :goto_0

    .line 774
    :pswitch_5
    if-ne v1, v0, :cond_4

    move v2, v3

    .line 775
    goto :goto_1

    .line 777
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 778
    goto :goto_0

    .line 780
    :pswitch_6
    add-int/lit8 v0, v0, 0x1

    .line 781
    goto :goto_0

    .line 791
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 747
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
