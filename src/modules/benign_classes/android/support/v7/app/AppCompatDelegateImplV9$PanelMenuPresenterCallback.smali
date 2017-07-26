.class final Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
    .locals 0

    .prologue
    .line 1826
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1827
    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 6
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1831
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v2

    .line 1832
    .local v2, "parentMenu":Landroid/view/Menu;
    if-eq v2, p1, :cond_2

    move v0, v3

    .line 1833
    .local v0, "isSubMenu":Z
    :goto_0
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    if-eqz v0, :cond_0

    move-object p1, v2

    .end local p1    # "menu":Landroid/support/v7/view/menu/MenuBuilder;
    :cond_0
    invoke-virtual {v4, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 1834
    .local v1, "panel":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v1, :cond_1

    .line 1835
    if-eqz v0, :cond_3

    .line 1836
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget v5, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    invoke-virtual {v4, v5, v1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V

    .line 1837
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v4, v1, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1844
    :cond_1
    :goto_1
    return-void

    .line 1832
    .end local v0    # "isSubMenu":Z
    .end local v1    # "panel":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .restart local p1    # "menu":Landroid/support/v7/view/menu/MenuBuilder;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1841
    .end local p1    # "menu":Landroid/support/v7/view/menu/MenuBuilder;
    .restart local v0    # "isSubMenu":Z
    .restart local v1    # "panel":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    :cond_3
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v3, v1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_1
.end method

.method public onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 1848
    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-boolean v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v1, :cond_0

    .line 1849
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1850
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1851
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1854
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
