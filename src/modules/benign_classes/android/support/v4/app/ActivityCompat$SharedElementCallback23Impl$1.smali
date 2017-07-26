.class Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl$1;
.super Ljava/lang/Object;
.source "ActivityCompat.java"

# interfaces
.implements Landroid/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;

.field final synthetic val$listener:Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;

    .prologue
    .line 538
    iput-object p1, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl$1;->this$0:Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;

    iput-object p2, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl$1;->val$listener:Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedElementsReady()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl$1;->val$listener:Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;

    invoke-interface {v0}, Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;->onSharedElementsReady()V

    .line 542
    return-void
.end method
