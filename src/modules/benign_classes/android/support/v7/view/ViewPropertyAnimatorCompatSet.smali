.class public Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatSet.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsStarted:Z

.field mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private final mProxyListener:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    .line 119
    new-instance v0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;

    invoke-direct {v0, p0}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;-><init>(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)V

    iput-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mProxyListener:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    .line 49
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 89
    iget-boolean v1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 93
    .local v0, "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    goto :goto_1

    .line 95
    .end local v0    # "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    goto :goto_0
.end method

.method onAnimationsEnded()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    .line 86
    return-void
.end method

.method public play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .locals 1
    .param p1, "animator"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    return-object p0
.end method

.method public playSequentially(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .locals 2
    .param p1, "anim1"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .param p2, "anim2"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .prologue
    .line 60
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->getDuration()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 62
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    return-object p0
.end method

.method public setDuration(J)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 99
    iget-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 100
    iput-wide p1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    .line 102
    :cond_0
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 106
    iget-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 107
    iput-object p1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 109
    :cond_0
    return-object p0
.end method

.method public setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 114
    iput-object p1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 116
    :cond_0
    return-object p0
.end method

.method public start()V
    .locals 6

    .prologue
    .line 67
    iget-boolean v1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-eqz v1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 69
    .local v0, "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-wide v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 70
    iget-wide v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 72
    :cond_1
    iget-object v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2

    .line 73
    iget-object v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 75
    :cond_2
    iget-object v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_3

    .line 76
    iget-object v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mProxyListener:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 78
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_1

    .line 81
    .end local v0    # "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    goto :goto_0
.end method
