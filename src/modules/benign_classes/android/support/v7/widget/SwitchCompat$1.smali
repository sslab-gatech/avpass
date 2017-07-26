.class Landroid/support/v7/widget/SwitchCompat$1;
.super Ljava/lang/Object;
.source "SwitchCompat.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SwitchCompat;->animateThumbToCheckedState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SwitchCompat;

.field final synthetic val$newCheckedState:Z


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SwitchCompat;Z)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/SwitchCompat;

    .prologue
    .line 1015
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat$1;->this$0:Landroid/support/v7/widget/SwitchCompat;

    iput-boolean p2, p0, Landroid/support/v7/widget/SwitchCompat$1;->val$newCheckedState:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1021
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat$1;->this$0:Landroid/support/v7/widget/SwitchCompat;

    iget-object v0, v0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    if-ne v0, p1, :cond_0

    .line 1023
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat$1;->this$0:Landroid/support/v7/widget/SwitchCompat;

    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat$1;->val$newCheckedState:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V

    .line 1024
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat$1;->this$0:Landroid/support/v7/widget/SwitchCompat;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    .line 1026
    :cond_0
    return-void

    .line 1023
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1029
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1017
    return-void
.end method
