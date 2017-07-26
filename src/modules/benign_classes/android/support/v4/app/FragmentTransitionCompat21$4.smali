.class final Landroid/support/v4/app/FragmentTransitionCompat21$4;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentTransitionCompat21;->cleanupTransitions(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Landroid/transition/Transition;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Landroid/transition/Transition;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$hiddenViews:Ljava/util/ArrayList;

.field final synthetic val$nonExistentView:Landroid/view/View;

.field final synthetic val$overallTransition:Landroid/transition/Transition;

.field final synthetic val$renamedViews:Ljava/util/Map;

.field final synthetic val$sceneRoot:Landroid/view/View;

.field final synthetic val$sharedElementTargets:Ljava/util/ArrayList;

.field final synthetic val$sharedElementTransition:Landroid/transition/Transition;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$sceneRoot:Landroid/view/View;

    iput-object p2, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$enterTransition:Landroid/transition/Transition;

    iput-object p3, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$enteringViews:Ljava/util/ArrayList;

    iput-object p4, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$exitTransition:Landroid/transition/Transition;

    iput-object p5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$exitingViews:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$sharedElementTransition:Landroid/transition/Transition;

    iput-object p7, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$sharedElementTargets:Ljava/util/ArrayList;

    iput-object p8, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$renamedViews:Ljava/util/Map;

    iput-object p9, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$hiddenViews:Ljava/util/ArrayList;

    iput-object p10, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$overallTransition:Landroid/transition/Transition;

    iput-object p11, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$nonExistentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 396
    iget-object v5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$sceneRoot:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 397
    iget-object v5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$enterTransition:Landroid/transition/Transition;

    if-eqz v5, :cond_0

    .line 398
    iget-object v5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$enterTransition:Landroid/transition/Transition;

    iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$enteringViews:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Landroid/support/v4/app/FragmentTransitionCompat21;->removeTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 399
    iget-object v5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$enterTransition:Landroid/transition/Transition;

    iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$exitTransition:Landroid/transition/Transition;

    iget-object v7, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$exitingViews:Ljava/util/ArrayList;

    # invokes: Landroid/support/v4/app/FragmentTransitionCompat21;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V
    invoke-static {v5, v6, v7, v8}, Landroid/support/v4/app/FragmentTransitionCompat21;->access$100(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 400
    iget-object v5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$enterTransition:Landroid/transition/Transition;

    iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$sharedElementTransition:Landroid/transition/Transition;

    iget-object v7, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$sharedElementTargets:Ljava/util/ArrayList;

    # invokes: Landroid/support/v4/app/FragmentTransitionCompat21;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V
    invoke-static {v5, v6, v7, v8}, Landroid/support/v4/app/FragmentTransitionCompat21;->access$100(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 403
    :cond_0
    iget-object v5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$exitTransition:Landroid/transition/Transition;

    if-eqz v5, :cond_1

    .line 404
    iget-object v5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$exitTransition:Landroid/transition/Transition;

    iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$exitingViews:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Landroid/support/v4/app/FragmentTransitionCompat21;->removeTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 405
    iget-object v5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$exitTransition:Landroid/transition/Transition;

    iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$enterTransition:Landroid/transition/Transition;

    iget-object v7, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$enteringViews:Ljava/util/ArrayList;

    # invokes: Landroid/support/v4/app/FragmentTransitionCompat21;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V
    invoke-static {v5, v6, v7, v8}, Landroid/support/v4/app/FragmentTransitionCompat21;->access$100(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 406
    iget-object v5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$exitTransition:Landroid/transition/Transition;

    iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$sharedElementTransition:Landroid/transition/Transition;

    iget-object v7, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$sharedElementTargets:Ljava/util/ArrayList;

    # invokes: Landroid/support/v4/app/FragmentTransitionCompat21;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V
    invoke-static {v5, v6, v7, v8}, Landroid/support/v4/app/FragmentTransitionCompat21;->access$100(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 409
    :cond_1
    iget-object v5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$sharedElementTransition:Landroid/transition/Transition;

    if-eqz v5, :cond_2

    .line 410
    iget-object v5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$sharedElementTransition:Landroid/transition/Transition;

    iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$sharedElementTargets:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Landroid/support/v4/app/FragmentTransitionCompat21;->removeTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 412
    :cond_2
    iget-object v5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$renamedViews:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 413
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/view/View;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 414
    .local v4, "view":Landroid/view/View;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 415
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto :goto_0

    .line 417
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/view/View;>;"
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    iget-object v5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$hiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 418
    .local v3, "numViews":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 419
    iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$overallTransition:Landroid/transition/Transition;

    iget-object v5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$hiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v6, v5, v8}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 421
    :cond_4
    iget-object v5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$overallTransition:Landroid/transition/Transition;

    iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v5, v6, v8}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 422
    const/4 v5, 0x1

    return v5
.end method
