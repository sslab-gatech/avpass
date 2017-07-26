.class Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;
.super Ljava/lang/Object;
.source "GingerbreadAnimatorCompatProvider.java"

# interfaces
.implements Landroid/support/v4/animation/ValueAnimatorCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GingerbreadFloatValueAnimator"
.end annotation


# instance fields
.field private mDuration:J

.field private mEnded:Z

.field private mFraction:F

.field mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/animation/AnimatorListenerCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mLoopRunnable:Ljava/lang/Runnable;

.field private mStartTime:J

.field private mStarted:Z

.field mTarget:Landroid/view/View;

.field mUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/animation/AnimatorUpdateListenerCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mListeners:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    .line 43
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mDuration:J

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mFraction:F

    .line 46
    iput-boolean v2, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mStarted:Z

    .line 47
    iput-boolean v2, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mEnded:Z

    .line 52
    new-instance v0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator$1;

    invoke-direct {v0, p0}, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator$1;-><init>(Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)V

    iput-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mLoopRunnable:Ljava/lang/Runnable;

    .line 50
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)J
    .locals 2
    .param p0, "x0"    # Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)J
    .locals 2
    .param p0, "x0"    # Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;

    .prologue
    .line 36
    iget-wide v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$200(Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)J
    .locals 2
    .param p0, "x0"    # Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;

    .prologue
    .line 36
    iget-wide v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)F
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;

    .prologue
    .line 36
    iget v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mFraction:F

    return v0
.end method

.method static synthetic access$302(Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;F)F
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;
    .param p1, "x1"    # F

    .prologue
    .line 36
    iput p1, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mFraction:F

    return p1
.end method

.method static synthetic access$400(Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->notifyUpdateListeners()V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->dispatchEnd()V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mLoopRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private dispatchCancel()V
    .locals 2

    .prologue
    .line 122
    iget-object v1, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 123
    iget-object v1, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/animation/AnimatorListenerCompat;

    invoke-interface {v1, p0}, Landroid/support/v4/animation/AnimatorListenerCompat;->onAnimationCancel(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 122
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 125
    :cond_0
    return-void
.end method

.method private dispatchEnd()V
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 117
    iget-object v1, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/animation/AnimatorListenerCompat;

    invoke-interface {v1, p0}, Landroid/support/v4/animation/AnimatorListenerCompat;->onAnimationEnd(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 116
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method private dispatchStart()V
    .locals 2

    .prologue
    .line 110
    iget-object v1, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 111
    iget-object v1, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/animation/AnimatorListenerCompat;

    invoke-interface {v1, p0}, Landroid/support/v4/animation/AnimatorListenerCompat;->onAnimationStart(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 110
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method private getTime()J
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyUpdateListeners()V
    .locals 2

    .prologue
    .line 71
    iget-object v1, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 72
    iget-object v1, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/animation/AnimatorUpdateListenerCompat;

    invoke-interface {v1, p0}, Landroid/support/v4/animation/AnimatorUpdateListenerCompat;->onAnimationUpdate(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 71
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Landroid/support/v4/animation/AnimatorListenerCompat;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/animation/AnimatorListenerCompat;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public addUpdateListener(Landroid/support/v4/animation/AnimatorUpdateListenerCompat;)V
    .locals 1
    .param p1, "animatorUpdateListener"    # Landroid/support/v4/animation/AnimatorUpdateListenerCompat;

    .prologue
    .line 141
    iget-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mEnded:Z

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mEnded:Z

    .line 133
    iget-boolean v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mStarted:Z

    if-eqz v0, :cond_1

    .line 134
    invoke-direct {p0}, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->dispatchCancel()V

    .line 136
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->dispatchEnd()V

    goto :goto_0
.end method

.method public getAnimatedFraction()F
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mFraction:F

    return v0
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 88
    iget-boolean v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mStarted:Z

    if-nez v0, :cond_0

    .line 89
    iput-wide p1, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mDuration:J

    .line 91
    :cond_0
    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 78
    iput-object p1, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mTarget:Landroid/view/View;

    .line 79
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mStarted:Z

    if-eqz v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mStarted:Z

    .line 99
    invoke-direct {p0}, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->dispatchStart()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mFraction:F

    .line 101
    invoke-direct {p0}, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mStartTime:J

    .line 102
    iget-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mTarget:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mLoopRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
