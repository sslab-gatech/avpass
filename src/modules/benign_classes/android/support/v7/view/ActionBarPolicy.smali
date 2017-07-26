.class public Landroid/support/v7/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "ActionBarPolicy.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public static get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    new-instance v0, Landroid/support/v7/view/ActionBarPolicy;

    invoke-direct {v0, p0}, Landroid/support/v7/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public enableHomeButtonByDefault()Z
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEmbeddedMenuWidthLimit()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getMaxActionButtons()I
    .locals 10

    .prologue
    const/16 v9, 0x3c0

    const/16 v8, 0x2d0

    const/16 v7, 0x280

    const/16 v6, 0x258

    const/16 v5, 0x1e0

    .line 58
    iget-object v4, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 59
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v3

    .line 60
    .local v3, "widthDp":I
    invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v0

    .line 61
    .local v0, "heightDp":I
    invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper;->getSmallestScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v2

    .line 63
    .local v2, "smallest":I
    if-gt v2, v6, :cond_1

    if-gt v3, v6, :cond_1

    if-le v3, v9, :cond_0

    if-gt v0, v8, :cond_1

    :cond_0
    if-le v3, v8, :cond_2

    if-le v0, v9, :cond_2

    .line 66
    :cond_1
    const/4 v4, 0x5

    .line 75
    :goto_0
    return v4

    .line 67
    :cond_2
    const/16 v4, 0x1f4

    if-ge v3, v4, :cond_4

    if-le v3, v7, :cond_3

    if-gt v0, v5, :cond_4

    :cond_3
    if-le v3, v5, :cond_5

    if-le v0, v7, :cond_5

    .line 70
    :cond_4
    const/4 v4, 0x4

    goto :goto_0

    .line 71
    :cond_5
    const/16 v4, 0x168

    if-lt v3, v4, :cond_6

    .line 73
    const/4 v4, 0x3

    goto :goto_0

    .line 75
    :cond_6
    const/4 v4, 0x2

    goto :goto_0
.end method

.method public getStackedTabMaxWidth()I
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->abc_action_bar_stacked_tab_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTabContainerHeight()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 96
    iget-object v3, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 98
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    .line 99
    .local v1, "height":I
    iget-object v3, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 100
    .local v2, "r":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/support/v7/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    sget v3, Landroid/support/v7/appcompat/R$dimen;->abc_action_bar_stacked_max_height:I

    .line 103
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 102
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 105
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    return v1
.end method

.method public hasEmbeddedTabs()Z
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$bool;->abc_action_bar_embed_tabs:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public showsOverflowMenuButton()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 80
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
