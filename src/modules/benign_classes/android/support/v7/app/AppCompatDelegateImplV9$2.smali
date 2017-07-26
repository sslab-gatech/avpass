.class Landroid/support/v7/app/AppCompatDelegateImplV9$2;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9;->createSubDecor()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/app/AppCompatDelegateImplV9;

    .prologue
    .line 434
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$2;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 438
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    .line 439
    .local v1, "top":I
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$2;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v2, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->updateStatusGuard(I)I

    move-result v0

    .line 441
    .local v0, "newTop":I
    if-eq v1, v0, :cond_0

    .line 443
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    .line 445
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v3

    .line 446
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v4

    .line 442
    invoke-virtual {p2, v2, v0, v3, v4}, Landroid/support/v4/view/WindowInsetsCompat;->replaceSystemWindowInsets(IIII)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p2

    .line 450
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v2

    return-object v2
.end method
