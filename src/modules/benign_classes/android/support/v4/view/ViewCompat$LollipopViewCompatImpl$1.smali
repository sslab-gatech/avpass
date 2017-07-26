.class Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl$1;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;

.field final synthetic val$listener:Landroid/support/v4/view/OnApplyWindowInsetsListener;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;

    .prologue
    .line 1662
    iput-object p1, p0, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl$1;->this$0:Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;

    iput-object p2, p0, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl$1;->val$listener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Ljava/lang/Object;

    .prologue
    .line 1665
    invoke-static {p2}, Landroid/support/v4/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    .line 1666
    .local v0, "compatInsets":Landroid/support/v4/view/WindowInsetsCompat;
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl$1;->val$listener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    invoke-interface {v1, p1, v0}, Landroid/support/v4/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    .line 1667
    invoke-static {v0}, Landroid/support/v4/view/WindowInsetsCompat;->unwrap(Landroid/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
