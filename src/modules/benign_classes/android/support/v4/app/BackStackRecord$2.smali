.class Landroid/support/v4/app/BackStackRecord$2;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/BackStackRecord;->prepareSharedElementTransition(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/BackStackRecord;

.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$exitTransition:Ljava/lang/Object;

.field final synthetic val$inFragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$isBack:Z

.field final synthetic val$outFragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$sceneRoot:Landroid/view/View;

.field final synthetic val$sharedElementTargets:Ljava/util/ArrayList;

.field final synthetic val$sharedElementTransition:Ljava/lang/Object;

.field final synthetic val$state:Landroid/support/v4/app/BackStackRecord$TransitionState;


# direct methods
.method constructor <init>(Landroid/support/v4/app/BackStackRecord;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Landroid/support/v4/app/BackStackRecord$TransitionState;Ljava/lang/Object;Ljava/lang/Object;ZLandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/BackStackRecord;

    .prologue
    .line 1319
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord$2;->this$0:Landroid/support/v4/app/BackStackRecord;

    iput-object p2, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sceneRoot:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTransition:Ljava/lang/Object;

    iput-object p4, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/support/v4/app/BackStackRecord$2;->val$state:Landroid/support/v4/app/BackStackRecord$TransitionState;

    iput-object p6, p0, Landroid/support/v4/app/BackStackRecord$2;->val$enterTransition:Ljava/lang/Object;

    iput-object p7, p0, Landroid/support/v4/app/BackStackRecord$2;->val$exitTransition:Ljava/lang/Object;

    iput-boolean p8, p0, Landroid/support/v4/app/BackStackRecord$2;->val$isBack:Z

    iput-object p9, p0, Landroid/support/v4/app/BackStackRecord$2;->val$inFragment:Landroid/support/v4/app/Fragment;

    iput-object p10, p0, Landroid/support/v4/app/BackStackRecord$2;->val$outFragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1322
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sceneRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1325
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTransition:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->removeTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1328
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord$2;->val$state:Landroid/support/v4/app/BackStackRecord$TransitionState;

    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1329
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->val$enterTransition:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord$2;->val$exitTransition:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTransition:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeSharedElementViews(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Z)V

    .line 1331
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1333
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->this$0:Landroid/support/v4/app/BackStackRecord;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord$2;->val$state:Landroid/support/v4/app/BackStackRecord$TransitionState;

    iget-boolean v2, p0, Landroid/support/v4/app/BackStackRecord$2;->val$isBack:Z

    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord$2;->val$inFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/BackStackRecord;->mapSharedElementsIn(Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    .line 1335
    .local v5, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTransition:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord$2;->val$state:Landroid/support/v4/app/BackStackRecord$TransitionState;

    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    invoke-static {v0, v1, v5, v2}, Landroid/support/v4/app/FragmentTransitionCompat21;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 1338
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->this$0:Landroid/support/v4/app/BackStackRecord;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord$2;->val$state:Landroid/support/v4/app/BackStackRecord$TransitionState;

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/app/BackStackRecord;->setEpicenterIn(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/BackStackRecord$TransitionState;)V

    .line 1340
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->this$0:Landroid/support/v4/app/BackStackRecord;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord$2;->val$state:Landroid/support/v4/app/BackStackRecord$TransitionState;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord$2;->val$inFragment:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord$2;->val$outFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v4, p0, Landroid/support/v4/app/BackStackRecord$2;->val$isBack:Z

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/BackStackRecord;->callSharedElementEnd(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;)V

    .line 1344
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->val$enterTransition:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord$2;->val$exitTransition:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTransition:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3, v6}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeSharedElementViews(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Z)V

    .line 1346
    return v6
.end method
