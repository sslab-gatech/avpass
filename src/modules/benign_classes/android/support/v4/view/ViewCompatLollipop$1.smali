.class final Landroid/support/v4/view/ViewCompatLollipop$1;
.super Ljava/lang/Object;
.source "ViewCompatLollipop.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/ViewCompatLollipop;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bridge:Landroid/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Landroid/support/v4/view/ViewCompatLollipop$1;->val$bridge:Landroid/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v4/view/ViewCompatLollipop$1;->val$bridge:Landroid/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;->onApplyWindowInsets(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    return-object v0
.end method
