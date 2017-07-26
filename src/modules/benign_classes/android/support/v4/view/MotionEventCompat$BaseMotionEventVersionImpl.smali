.class Landroid/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"

# interfaces
.implements Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MotionEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseMotionEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAxisValue(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "axis"    # I

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getAxisValue(Landroid/view/MotionEvent;II)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "axis"    # I
    .param p3, "pointerIndex"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getButtonState(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method
