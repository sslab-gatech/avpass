.class public Landroid/support/v7/widget/MenuPopupWindow;
.super Landroid/support/v7/widget/ListPopupWindow;
.source "MenuPopupWindow.java"

# interfaces
.implements Landroid/support/v7/widget/MenuItemHoverListener;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuPopupWindow"

.field private static sSetTouchModalMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 62
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "setTouchModal"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v7/widget/MenuPopupWindow;->sSetTouchModalMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    return-void

    .line 64
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 65
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "MenuPopupWindow"

    const-string v2, "Could not find method setTouchModal() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method


# virtual methods
.method createDropDownListView(Landroid/content/Context;Z)Landroid/support/v7/widget/DropDownListView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    .line 77
    new-instance v0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;-><init>(Landroid/content/Context;Z)V

    .line 78
    .local v0, "view":Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->setHoverListener(Landroid/support/v7/widget/MenuItemHoverListener;)V

    .line 79
    return-object v0
.end method

.method public onItemHoverEnter(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 115
    iget-object v0, p0, Landroid/support/v7/widget/MenuPopupWindow;->mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Landroid/support/v7/widget/MenuPopupWindow;->mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/MenuItemHoverListener;->onItemHoverEnter(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onItemHoverExit(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    iget-object v0, p0, Landroid/support/v7/widget/MenuPopupWindow;->mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Landroid/support/v7/widget/MenuPopupWindow;->mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/MenuItemHoverListener;->onItemHoverExit(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 126
    :cond_0
    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 2
    .param p1, "enterTransition"    # Ljava/lang/Object;

    .prologue
    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Landroid/support/v7/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/transition/Transition;

    .end local p1    # "enterTransition":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 86
    :cond_0
    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .locals 2
    .param p1, "exitTransition"    # Ljava/lang/Object;

    .prologue
    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Landroid/support/v7/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/transition/Transition;

    .end local p1    # "exitTransition":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 92
    :cond_0
    return-void
.end method

.method public setHoverListener(Landroid/support/v7/widget/MenuItemHoverListener;)V
    .locals 0
    .param p1, "hoverListener"    # Landroid/support/v7/widget/MenuItemHoverListener;

    .prologue
    .line 95
    iput-object p1, p0, Landroid/support/v7/widget/MenuPopupWindow;->mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    .line 96
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 6
    .param p1, "touchModal"    # Z

    .prologue
    .line 103
    sget-object v1, Landroid/support/v7/widget/MenuPopupWindow;->sSetTouchModalMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 105
    :try_start_0
    sget-object v1, Landroid/support/v7/widget/MenuPopupWindow;->sSetTouchModalMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/support/v7/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MenuPopupWindow"

    const-string v2, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
