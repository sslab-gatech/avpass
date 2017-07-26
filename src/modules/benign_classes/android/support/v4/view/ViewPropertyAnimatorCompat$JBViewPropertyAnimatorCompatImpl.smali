.class Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;
.super Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JBViewPropertyAnimatorCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 597
    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setListener(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorListener;)V
    .locals 0
    .param p1, "vpa"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "listener"    # Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .prologue
    .line 601
    invoke-static {p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompatJB;->setListener(Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorListener;)V

    .line 602
    return-void
.end method

.method public withEndAction(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "vpa"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 611
    invoke-static {p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompatJB;->withEndAction(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 612
    return-void
.end method

.method public withLayer(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 0
    .param p1, "vpa"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 616
    invoke-static {p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompatJB;->withLayer(Landroid/view/View;)V

    .line 617
    return-void
.end method

.method public withStartAction(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "vpa"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 606
    invoke-static {p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompatJB;->withStartAction(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 607
    return-void
.end method
