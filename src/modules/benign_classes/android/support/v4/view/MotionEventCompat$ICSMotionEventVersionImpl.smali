.class Landroid/support/v4/view/MotionEventCompat$ICSMotionEventVersionImpl;
.super Landroid/support/v4/view/MotionEventCompat$HoneycombMr1MotionEventVersionImpl;
.source "MotionEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MotionEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ICSMotionEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/support/v4/view/MotionEventCompat$HoneycombMr1MotionEventVersionImpl;-><init>()V

    .line 78
    return-void
.end method


# virtual methods
.method public getButtonState(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 82
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompatICS;->getButtonState(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method
