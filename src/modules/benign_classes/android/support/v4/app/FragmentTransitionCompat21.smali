.class Landroid/support/v4/app/FragmentTransitionCompat21;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;,
        Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    return-void
.end method

.method static synthetic access$000(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-static {p0, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/transition/Transition;
    .param p1, "x1"    # Landroid/transition/Transition;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Z

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-static {p0}, Landroid/support/v4/app/FragmentTransitionCompat21;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "transitionObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v6, p0

    check-cast v6, Landroid/transition/Transition;

    .line 464
    .local v6, "transition":Landroid/transition/Transition;
    instance-of v7, v6, Landroid/transition/TransitionSet;

    if-eqz v7, :cond_0

    move-object v4, v6

    .line 465
    check-cast v4, Landroid/transition/TransitionSet;

    .line 466
    .local v4, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v4}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    .line 467
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 468
    invoke-virtual {v4, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v0

    .line 469
    .local v0, "child":Landroid/transition/Transition;
    invoke-static {v0, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 467
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 471
    .end local v0    # "child":Landroid/transition/Transition;
    .end local v1    # "i":I
    .end local v2    # "numTransitions":I
    .end local v4    # "set":Landroid/transition/TransitionSet;
    :cond_0
    invoke-static {v6}, Landroid/support/v4/app/FragmentTransitionCompat21;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 472
    invoke-virtual {v6}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v5

    .line 473
    .local v5, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {v5}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 475
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 476
    .local v3, "numViews":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 477
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 481
    .end local v1    # "i":I
    .end local v3    # "numViews":I
    .end local v5    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_1
    return-void
.end method

.method public static addTransitionTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 14
    .param p0, "enterTransitionObject"    # Ljava/lang/Object;
    .param p1, "sharedElementTransitionObject"    # Ljava/lang/Object;
    .param p2, "exitTransitionObject"    # Ljava/lang/Object;
    .param p3, "container"    # Landroid/view/View;
    .param p4, "inFragment"    # Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;
    .param p5, "nonExistentView"    # Landroid/view/View;
    .param p6, "epicenterView"    # Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;",
            "Landroid/view/View;",
            "Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p7, "nameOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p8, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p9, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p10, "namedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    .local p11, "renamedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    .local p12, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v5, p0

    check-cast v5, Landroid/transition/Transition;

    .local v5, "enterTransition":Landroid/transition/Transition;
    move-object/from16 v11, p2

    .line 144
    check-cast v11, Landroid/transition/Transition;

    .local v11, "exitTransition":Landroid/transition/Transition;
    move-object v12, p1

    .line 145
    check-cast v12, Landroid/transition/Transition;

    .line 146
    .local v12, "sharedElementTransition":Landroid/transition/Transition;
    const/4 v3, 0x1

    move-object/from16 v0, p9

    invoke-static {v5, v11, v0, v3}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 147
    if-nez p0, :cond_0

    if-eqz p1, :cond_3

    .line 148
    :cond_0
    if-eqz v5, :cond_1

    .line 149
    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 151
    :cond_1
    if-eqz p1, :cond_2

    .line 152
    move-object/from16 v0, p5

    move-object/from16 v1, p10

    move-object/from16 v2, p12

    invoke-static {v12, v0, v1, v2}, Landroid/support/v4/app/FragmentTransitionCompat21;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 154
    const/4 v3, 0x1

    move-object/from16 v0, p12

    invoke-static {v5, v12, v0, v3}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 155
    const/4 v3, 0x1

    move-object/from16 v0, p12

    invoke-static {v11, v12, v0, v3}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 158
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v13

    new-instance v3, Landroid/support/v4/app/FragmentTransitionCompat21$2;

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p11

    move-object/from16 v10, p8

    invoke-direct/range {v3 .. v11}, Landroid/support/v4/app/FragmentTransitionCompat21$2;-><init>(Landroid/view/View;Landroid/transition/Transition;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;Landroid/transition/Transition;)V

    invoke-virtual {v13, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 195
    move-object/from16 v0, p6

    invoke-static {v5, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->setSharedElementEpicenter(Landroid/transition/Transition;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;)V

    .line 197
    :cond_3
    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 1
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transitionObject"    # Ljava/lang/Object;

    .prologue
    .line 66
    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    .line 67
    .local v0, "transition":Landroid/transition/Transition;
    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 68
    return-void
.end method

.method private static bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V
    .locals 8
    .param p1, "startView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 287
    .local v4, "startIndex":I
    invoke-static {p0, p1, v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 304
    :cond_0
    return-void

    .line 290
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    move v3, v4

    .local v3, "index":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 292
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 293
    .local v5, "view":Landroid/view/View;
    instance-of v7, v5, Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    move-object v6, v5

    .line 294
    check-cast v6, Landroid/view/ViewGroup;

    .line 295
    .local v6, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 296
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "childIndex":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 297
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 298
    .local v0, "child":Landroid/view/View;
    invoke-static {p0, v0, v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 299
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 291
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "childIndex":I
    .end local v6    # "viewGroup":Landroid/view/ViewGroup;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static captureExitingViews(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .param p0, "exitTransition"    # Ljava/lang/Object;
    .param p1, "root"    # Landroid/view/View;
    .param p4, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p3, "namedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p0, :cond_1

    .line 46
    invoke-static {p2, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 47
    if-eqz p3, :cond_0

    .line 48
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 50
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    const/4 p0, 0x0

    .line 57
    .end local p0    # "exitTransition":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object p0

    .line 53
    .restart local p0    # "exitTransition":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    .line 54
    check-cast v0, Landroid/transition/Transition;

    invoke-static {v0, p2}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private static captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 347
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object v3, p1

    .line 348
    check-cast v3, Landroid/view/ViewGroup;

    .line 349
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 350
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-void

    .line 352
    .restart local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 353
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 354
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 355
    .local v0, "child":Landroid/view/View;
    invoke-static {p0, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 353
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 359
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static cleanupTransitions(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 13
    .param p0, "sceneRoot"    # Landroid/view/View;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .param p2, "enterTransitionObject"    # Ljava/lang/Object;
    .param p4, "exitTransitionObject"    # Ljava/lang/Object;
    .param p6, "sharedElementTransitionObject"    # Ljava/lang/Object;
    .param p8, "overallTransitionObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p3, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p5, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p7, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p9, "hiddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p10, "renamedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    move-object v2, p2

    check-cast v2, Landroid/transition/Transition;

    .local v2, "enterTransition":Landroid/transition/Transition;
    move-object/from16 v4, p4

    .line 388
    check-cast v4, Landroid/transition/Transition;

    .local v4, "exitTransition":Landroid/transition/Transition;
    move-object/from16 v6, p6

    .line 389
    check-cast v6, Landroid/transition/Transition;

    .local v6, "sharedElementTransition":Landroid/transition/Transition;
    move-object/from16 v10, p8

    .line 390
    check-cast v10, Landroid/transition/Transition;

    .line 391
    .local v10, "overallTransition":Landroid/transition/Transition;
    if-eqz v10, :cond_0

    .line 392
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v12

    new-instance v0, Landroid/support/v4/app/FragmentTransitionCompat21$4;

    move-object v1, p0

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p10

    move-object/from16 v9, p9

    move-object v11, p1

    invoke-direct/range {v0 .. v11}, Landroid/support/v4/app/FragmentTransitionCompat21$4;-><init>(Landroid/view/View;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/view/View;)V

    invoke-virtual {v12, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 426
    :cond_0
    return-void
.end method

.method public static cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "transition"    # Ljava/lang/Object;

    .prologue
    .line 37
    if-eqz p0, :cond_0

    .line 38
    check-cast p0, Landroid/transition/Transition;

    .end local p0    # "transition":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p0

    .line 40
    :cond_0
    return-object p0
.end method

.method private static containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "maxIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 312
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 313
    const/4 v1, 0x1

    .line 316
    :goto_1
    return v1

    .line 311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static excludeSharedElementViews(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Z)V
    .locals 3
    .param p0, "enterTransitionObj"    # Ljava/lang/Object;
    .param p1, "exitTransitionObj"    # Ljava/lang/Object;
    .param p2, "sharedElementTransitionObj"    # Ljava/lang/Object;
    .param p4, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p3, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    .local v0, "enterTransition":Landroid/transition/Transition;
    move-object v1, p1

    .line 119
    check-cast v1, Landroid/transition/Transition;

    .local v1, "exitTransition":Landroid/transition/Transition;
    move-object v2, p2

    .line 120
    check-cast v2, Landroid/transition/Transition;

    .line 121
    .local v2, "sharedElementTransition":Landroid/transition/Transition;
    invoke-static {v0, v2, p3, p4}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 122
    invoke-static {v1, v2, p3, p4}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 123
    return-void
.end method

.method public static excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 1
    .param p0, "transitionObject"    # Ljava/lang/Object;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 61
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    .line 62
    .local v0, "transition":Landroid/transition/Transition;
    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 63
    return-void
.end method

.method private static excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V
    .locals 3
    .param p0, "transition"    # Landroid/transition/Transition;
    .param p1, "fromTransition"    # Landroid/transition/Transition;
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_1

    .line 98
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 99
    .local v1, "viewCount":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 100
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, p3}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    .end local v0    # "i":I
    .end local v1    # "viewCount":I
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    .line 103
    :cond_1
    return-void
.end method

.method public static findNamedViews(Ljava/util/Map;Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "namedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, "transitionName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 368
    invoke-interface {p0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_0
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    move-object v4, p1

    .line 371
    check-cast v4, Landroid/view/ViewGroup;

    .line 372
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 373
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 374
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 375
    .local v0, "child":Landroid/view/View;
    invoke-static {p0, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 379
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "transitionName":Ljava/lang/String;
    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method private static getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 337
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 338
    .local v0, "epicenter":Landroid/graphics/Rect;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 339
    .local v1, "loc":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 341
    aget v2, v1, v4

    aget v3, v1, v6

    aget v4, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 342
    return-object v0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hasSimpleTarget(Landroid/transition/Transition;)Z
    .locals 1
    .param p0, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 484
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNullOrEmpty(Ljava/util/List;)Z
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    .prologue
    .line 490
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 10
    .param p0, "enterTransitionObject"    # Ljava/lang/Object;
    .param p1, "exitTransitionObject"    # Ljava/lang/Object;
    .param p2, "sharedElementTransitionObject"    # Ljava/lang/Object;
    .param p3, "allowOverlap"    # Z

    .prologue
    .line 202
    const/4 v2, 0x1

    .local v2, "overlap":Z
    move-object v0, p0

    .line 203
    check-cast v0, Landroid/transition/Transition;

    .local v0, "enterTransition":Landroid/transition/Transition;
    move-object v1, p1

    .line 204
    check-cast v1, Landroid/transition/Transition;

    .local v1, "exitTransition":Landroid/transition/Transition;
    move-object v3, p2

    .line 205
    check-cast v3, Landroid/transition/Transition;

    .line 207
    .local v3, "sharedElementTransition":Landroid/transition/Transition;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 208
    move v2, p3

    .line 216
    :cond_0
    if-eqz v2, :cond_4

    .line 218
    new-instance v7, Landroid/transition/TransitionSet;

    invoke-direct {v7}, Landroid/transition/TransitionSet;-><init>()V

    .line 219
    .local v7, "transitionSet":Landroid/transition/TransitionSet;
    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {v7, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 222
    :cond_1
    if-eqz v1, :cond_2

    .line 223
    invoke-virtual {v7, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 225
    :cond_2
    if-eqz v3, :cond_3

    .line 226
    invoke-virtual {v7, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 228
    :cond_3
    move-object v6, v7

    .line 254
    .end local v7    # "transitionSet":Landroid/transition/TransitionSet;
    .local v6, "transition":Landroid/transition/Transition;
    :goto_0
    return-object v6

    .line 232
    .end local v6    # "transition":Landroid/transition/Transition;
    :cond_4
    const/4 v4, 0x0

    .line 233
    .local v4, "staggered":Landroid/transition/Transition;
    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 234
    new-instance v8, Landroid/transition/TransitionSet;

    invoke-direct {v8}, Landroid/transition/TransitionSet;-><init>()V

    .line 235
    invoke-virtual {v8, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v8

    .line 236
    invoke-virtual {v8, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v8

    const/4 v9, 0x1

    .line 237
    invoke-virtual {v8, v9}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object v4

    .line 243
    :cond_5
    :goto_1
    if-eqz v3, :cond_9

    .line 244
    new-instance v5, Landroid/transition/TransitionSet;

    invoke-direct {v5}, Landroid/transition/TransitionSet;-><init>()V

    .line 245
    .local v5, "together":Landroid/transition/TransitionSet;
    if-eqz v4, :cond_6

    .line 246
    invoke-virtual {v5, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 248
    :cond_6
    invoke-virtual {v5, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 249
    move-object v6, v5

    .line 250
    .restart local v6    # "transition":Landroid/transition/Transition;
    goto :goto_0

    .line 238
    .end local v5    # "together":Landroid/transition/TransitionSet;
    .end local v6    # "transition":Landroid/transition/Transition;
    :cond_7
    if-eqz v1, :cond_8

    .line 239
    move-object v4, v1

    goto :goto_1

    .line 240
    :cond_8
    if-eqz v0, :cond_5

    .line 241
    move-object v4, v0

    goto :goto_1

    .line 251
    :cond_9
    move-object v6, v4

    .restart local v6    # "transition":Landroid/transition/Transition;
    goto :goto_0
.end method

.method public static removeTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "transitionObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v5, p0

    check-cast v5, Landroid/transition/Transition;

    .line 435
    .local v5, "transition":Landroid/transition/Transition;
    instance-of v6, v5, Landroid/transition/TransitionSet;

    if-eqz v6, :cond_0

    move-object v3, v5

    .line 436
    check-cast v3, Landroid/transition/TransitionSet;

    .line 437
    .local v3, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    .line 438
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 439
    invoke-virtual {v3, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v0

    .line 440
    .local v0, "child":Landroid/transition/Transition;
    invoke-static {v0, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->removeTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    .end local v0    # "child":Landroid/transition/Transition;
    .end local v1    # "i":I
    .end local v2    # "numTransitions":I
    .end local v3    # "set":Landroid/transition/TransitionSet;
    :cond_0
    invoke-static {v5}, Landroid/support/v4/app/FragmentTransitionCompat21;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 443
    invoke-virtual {v5}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v4

    .line 444
    .local v4, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 445
    invoke-interface {v4, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 447
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 448
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 447
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 452
    .end local v1    # "i":I
    .end local v4    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_1
    return-void
.end method

.method public static setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
    .locals 3
    .param p0, "transitionObject"    # Ljava/lang/Object;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 71
    move-object v1, p0

    check-cast v1, Landroid/transition/Transition;

    .line 72
    .local v1, "transition":Landroid/transition/Transition;
    invoke-static {p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 74
    .local v0, "epicenter":Landroid/graphics/Rect;
    new-instance v2, Landroid/support/v4/app/FragmentTransitionCompat21$1;

    invoke-direct {v2, v0}, Landroid/support/v4/app/FragmentTransitionCompat21$1;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 80
    return-void
.end method

.method private static setSharedElementEpicenter(Landroid/transition/Transition;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;)V
    .locals 1
    .param p0, "transition"    # Landroid/transition/Transition;
    .param p1, "epicenterView"    # Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;

    .prologue
    .line 321
    if-eqz p0, :cond_0

    .line 322
    new-instance v0, Landroid/support/v4/app/FragmentTransitionCompat21$3;

    invoke-direct {v0, p1}, Landroid/support/v4/app/FragmentTransitionCompat21$3;-><init>(Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;)V

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 334
    :cond_0
    return-void
.end method

.method public static setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "transitionObj"    # Ljava/lang/Object;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p2, "namedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    .local p3, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v2, p0

    check-cast v2, Landroid/transition/TransitionSet;

    .line 267
    .local v2, "transition":Landroid/transition/TransitionSet;
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 268
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 270
    invoke-virtual {v2}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v4

    .line 271
    .local v4, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 272
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 273
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 274
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 275
    .local v3, "view":Landroid/view/View;
    invoke-static {v4, v3}, Landroid/support/v4/app/FragmentTransitionCompat21;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-static {v2, p3}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 279
    return-void
.end method

.method public static wrapSharedElementTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "transitionObj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 83
    if-nez p0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v0, p0

    .line 86
    check-cast v0, Landroid/transition/Transition;

    .line 87
    .local v0, "transition":Landroid/transition/Transition;
    if-eqz v0, :cond_0

    .line 90
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 91
    .local v1, "transitionSet":Landroid/transition/TransitionSet;
    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto :goto_0
.end method
