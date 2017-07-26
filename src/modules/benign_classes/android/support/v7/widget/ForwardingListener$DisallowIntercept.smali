.class Landroid/support/v7/widget/ForwardingListener$DisallowIntercept;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisallowIntercept"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ForwardingListener;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ForwardingListener;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Landroid/support/v7/widget/ForwardingListener$DisallowIntercept;->this$0:Landroid/support/v7/widget/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 352
    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener$DisallowIntercept;->this$0:Landroid/support/v7/widget/ForwardingListener;

    iget-object v1, v1, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 353
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 354
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 356
    :cond_0
    return-void
.end method
