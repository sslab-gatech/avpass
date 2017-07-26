.class public abstract Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;
.super Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;
.source "ActivityCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActivityCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SharedElementCallback23"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;",
            ")V"
        }
    .end annotation
.end method
