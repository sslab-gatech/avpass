.class Landroid/support/v4/view/ViewCompatBase;
.super Ljava/lang/Object;
.source "ViewCompatBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewCompatBase"

.field private static sMinHeightField:Ljava/lang/reflect/Field;

.field private static sMinHeightFieldFetched:Z

.field private static sMinWidthField:Ljava/lang/reflect/Field;

.field private static sMinWidthFieldFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 39
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    .line 40
    .end local p0    # "view":Landroid/view/View;
    invoke-interface {p0}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 51
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    .line 52
    .end local p0    # "view":Landroid/view/View;
    invoke-interface {p0}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getDisplay(Landroid/view/View;)Landroid/view/Display;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 157
    invoke-static {p0}, Landroid/support/v4/view/ViewCompatBase;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 160
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 162
    .end local v0    # "wm":Landroid/view/WindowManager;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getMinimumHeight(Landroid/view/View;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 90
    sget-boolean v0, Landroid/support/v4/view/ViewCompatBase;->sMinHeightFieldFetched:Z

    if-nez v0, :cond_0

    .line 92
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mMinHeight"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    .line 93
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    :goto_0
    sput-boolean v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightFieldFetched:Z

    .line 100
    :cond_0
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 102
    :try_start_1
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 109
    :goto_1
    return v0

    .line 103
    :catch_0
    move-exception v0

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 94
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static getMinimumWidth(Landroid/view/View;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 67
    sget-boolean v0, Landroid/support/v4/view/ViewCompatBase;->sMinWidthFieldFetched:Z

    if-nez v0, :cond_0

    .line 69
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mMinWidth"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    .line 70
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    :goto_0
    sput-boolean v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthFieldFetched:Z

    .line 77
    :cond_0
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 79
    :try_start_1
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 86
    :goto_1
    return v0

    .line 80
    :catch_0
    move-exception v0

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 71
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static isAttachedToWindow(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isLaidOut(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static offsetLeftAndRight(Landroid/view/View;I)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 138
    .local v1, "currentLeft":I
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 140
    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 143
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 144
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 145
    .local v0, "absOffset":I
    check-cast v2, Landroid/view/View;

    .end local v2    # "parent":Landroid/view/ViewParent;
    sub-int v3, v1, v0

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    add-int/2addr v5, v0

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 145
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 154
    .end local v0    # "absOffset":I
    :cond_0
    :goto_0
    return-void

    .line 151
    .restart local v2    # "parent":Landroid/view/ViewParent;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method static offsetTopAndBottom(Landroid/view/View;I)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 118
    .local v1, "currentTop":I
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 120
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 123
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 124
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 125
    .local v0, "absOffset":I
    check-cast v2, Landroid/view/View;

    .line 126
    .end local v2    # "parent":Landroid/view/ViewParent;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v1, v0

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v1

    add-int/2addr v6, v0

    .line 125
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 134
    .end local v0    # "absOffset":I
    :cond_0
    :goto_0
    return-void

    .line 131
    .restart local v2    # "parent":Landroid/view/ViewParent;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 45
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_0

    .line 46
    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    .end local p0    # "view":Landroid/view/View;
    invoke-interface {p0, p1}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 48
    :cond_0
    return-void
.end method

.method static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 57
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_0

    .line 58
    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    .end local p0    # "view":Landroid/view/View;
    invoke-interface {p0, p1}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 60
    :cond_0
    return-void
.end method
