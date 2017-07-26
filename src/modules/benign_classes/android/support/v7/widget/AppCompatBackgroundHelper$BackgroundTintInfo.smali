.class Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;
.super Landroid/support/v7/widget/TintInfo;
.source "AppCompatBackgroundHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/AppCompatBackgroundHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundTintInfo"
.end annotation


# instance fields
.field public mOriginalTintList:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    .line 242
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 246
    invoke-super {p0}, Landroid/support/v7/widget/TintInfo;->clear()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mOriginalTintList:Landroid/content/res/ColorStateList;

    .line 248
    return-void
.end method
