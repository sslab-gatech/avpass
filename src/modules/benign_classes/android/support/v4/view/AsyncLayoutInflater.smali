.class public final Landroid/support/v4/view/AsyncLayoutInflater;
.super Ljava/lang/Object;
.source "AsyncLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;,
        Landroid/support/v4/view/AsyncLayoutInflater$BasicInflater;,
        Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;,
        Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncLayoutInflater"


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field mInflateThread:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater$1;

    invoke-direct {v0, p0}, Landroid/support/v4/view/AsyncLayoutInflater$1;-><init>(Landroid/support/v4/view/AsyncLayoutInflater;)V

    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 75
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater$BasicInflater;

    invoke-direct {v0, p1}, Landroid/support/v4/view/AsyncLayoutInflater$BasicInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    .line 76
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/view/AsyncLayoutInflater;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater;->mHandler:Landroid/os/Handler;

    .line 77
    invoke-static {}, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->getInstance()Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater;->mInflateThread:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    .line 78
    return-void
.end method


# virtual methods
.method public inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V
    .locals 3
    .param p1, "resid"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "callback"    # Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 83
    if-nez p3, :cond_0

    .line 84
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "callback argument may not be null!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/AsyncLayoutInflater;->mInflateThread:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    invoke-virtual {v1}, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->obtainRequest()Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;

    move-result-object v0

    .line 87
    .local v0, "request":Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;
    iput-object p0, v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroid/support/v4/view/AsyncLayoutInflater;

    .line 88
    iput p1, v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->resid:I

    .line 89
    iput-object p2, v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    .line 90
    iput-object p3, v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->callback:Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;

    .line 91
    iget-object v1, p0, Landroid/support/v4/view/AsyncLayoutInflater;->mInflateThread:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->enqueue(Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;)V

    .line 92
    return-void
.end method
