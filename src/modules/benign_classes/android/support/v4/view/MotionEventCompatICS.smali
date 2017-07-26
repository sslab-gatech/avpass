.class Landroid/support/v4/view/MotionEventCompatICS;
.super Ljava/lang/Object;
.source "MotionEventCompatICS.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getButtonState(Landroid/view/MotionEvent;)I
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    return v0
.end method
