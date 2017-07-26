.class Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;
.super Landroid/view/animation/Animation;
.source "SwitchCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SwitchCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbAnimation"
.end annotation


# instance fields
.field final mDiff:F

.field final mEndPosition:F

.field final mStartPosition:F

.field final synthetic this$0:Landroid/support/v7/widget/SwitchCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SwitchCompat;FF)V
    .locals 1
    .param p2, "startPosition"    # F
    .param p3, "endPosition"    # F

    .prologue
    .line 1428
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->this$0:Landroid/support/v7/widget/SwitchCompat;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 1429
    iput p2, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mStartPosition:F

    .line 1430
    iput p3, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mEndPosition:F

    .line 1431
    sub-float v0, p3, p2

    iput v0, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mDiff:F

    .line 1432
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 1436
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->this$0:Landroid/support/v7/widget/SwitchCompat;

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mStartPosition:F

    iget v2, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mDiff:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V

    .line 1437
    return-void
.end method
