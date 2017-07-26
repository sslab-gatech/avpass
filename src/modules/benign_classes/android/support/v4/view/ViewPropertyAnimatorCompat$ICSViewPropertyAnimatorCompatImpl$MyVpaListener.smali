.class Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyVpaListener"
.end annotation


# instance fields
.field mAnimEndCalled:Z

.field mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 0
    .param p1, "vpa"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-object p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 532
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 585
    const/high16 v2, 0x7e000000

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 586
    .local v1, "listenerTag":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 587
    .local v0, "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    instance-of v2, v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 588
    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 590
    :cond_0
    if-eqz v0, :cond_1

    .line 591
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    .line 593
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 559
    iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget v3, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    if-ltz v3, :cond_0

    .line 560
    iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget v3, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    invoke-static {p1, v3, v5}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 561
    iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    .line 563
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    iget-boolean v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mAnimEndCalled:Z

    if-nez v3, :cond_5

    .line 566
    :cond_1
    iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v3, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    .line 567
    iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 568
    .local v0, "endAction":Ljava/lang/Runnable;
    iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object v5, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 569
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 571
    .end local v0    # "endAction":Ljava/lang/Runnable;
    :cond_2
    const/high16 v3, 0x7e000000

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 572
    .local v2, "listenerTag":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 573
    .local v1, "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    instance-of v3, v2, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v3, :cond_3

    move-object v1, v2

    .line 574
    check-cast v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 576
    :cond_3
    if-eqz v1, :cond_4

    .line 577
    invoke-interface {v1, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 579
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mAnimEndCalled:Z

    .line 581
    .end local v1    # "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    .end local v2    # "listenerTag":Ljava/lang/Object;
    :cond_5
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 537
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mAnimEndCalled:Z

    .line 539
    iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget v3, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    if-ltz v3, :cond_0

    .line 540
    const/4 v3, 0x2

    invoke-static {p1, v3, v4}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 542
    :cond_0
    iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v3, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    .line 543
    iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v2, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 544
    .local v2, "startAction":Ljava/lang/Runnable;
    iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object v4, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 545
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 547
    .end local v2    # "startAction":Ljava/lang/Runnable;
    :cond_1
    const/high16 v3, 0x7e000000

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 548
    .local v1, "listenerTag":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 549
    .local v0, "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    instance-of v3, v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 550
    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 552
    :cond_2
    if-eqz v0, :cond_3

    .line 553
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    .line 555
    :cond_3
    return-void
.end method
