.class Landroid/support/v4/view/ScaleGestureDetectorCompat$BaseScaleGestureDetectorImpl;
.super Ljava/lang/Object;
.source "ScaleGestureDetectorCompat.java"

# interfaces
.implements Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ScaleGestureDetectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseScaleGestureDetectorImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public isQuickScaleEnabled(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public setQuickScaleEnabled(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "enabled"    # Z

    .prologue
    .line 40
    return-void
.end method
