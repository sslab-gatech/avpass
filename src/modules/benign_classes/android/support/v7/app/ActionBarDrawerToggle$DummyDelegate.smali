.class Landroid/support/v7/app/ActionBarDrawerToggle$DummyDelegate;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DummyDelegate"
.end annotation


# instance fields
.field final mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$DummyDelegate;->mActivity:Landroid/app/Activity;

    .line 659
    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$DummyDelegate;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 673
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNavigationVisible()Z
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x1

    return v0
.end method

.method public setActionBarDescription(I)V
    .locals 0
    .param p1, "contentDescRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 669
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 664
    return-void
.end method
