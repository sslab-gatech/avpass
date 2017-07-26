.class final Landroid/support/v4/app/BackStackRecord;
.super Landroid/support/v4/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$BackStackEntry;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/BackStackRecord$TransitionState;,
        Landroid/support/v4/app/BackStackRecord$Op;
    }
.end annotation


# static fields
.field static final OP_ADD:I = 0x1

.field static final OP_ATTACH:I = 0x7

.field static final OP_DETACH:I = 0x6

.field static final OP_HIDE:I = 0x4

.field static final OP_NULL:I = 0x0

.field static final OP_REMOVE:I = 0x3

.field static final OP_REPLACE:I = 0x2

.field static final OP_SHOW:I = 0x5

.field static final SUPPORTS_TRANSITIONS:Z

.field static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field mAddToBackStack:Z

.field mAllowAddToBackStack:Z

.field mBreadCrumbShortTitleRes:I

.field mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field mBreadCrumbTitleRes:I

.field mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field mCommitted:Z

.field mEnterAnim:I

.field mExitAnim:I

.field mHead:Landroid/support/v4/app/BackStackRecord$Op;

.field mIndex:I

.field final mManager:Landroid/support/v4/app/FragmentManagerImpl;

.field mName:Ljava/lang/String;

.field mNumOp:I

.field mPopEnterAnim:I

.field mPopExitAnim:I

.field mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTail:Landroid/support/v4/app/BackStackRecord$Op;

.field mTransition:I

.field mTransitionStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
    .locals 1
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManagerImpl;

    .prologue
    .line 362
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTransaction;-><init>()V

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 363
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 364
    return-void
.end method

.method private beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/BackStackRecord$TransitionState;
    .locals 8
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;Z)",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;"
        }
    .end annotation

    .prologue
    .line 1101
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    new-instance v2, Landroid/support/v4/app/BackStackRecord$TransitionState;

    invoke-direct {v2, p0}, Landroid/support/v4/app/BackStackRecord$TransitionState;-><init>(Landroid/support/v4/app/BackStackRecord;)V

    .line 1106
    .local v2, "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    .line 1108
    const/4 v6, 0x0

    .line 1110
    .local v6, "anyTransitionStarted":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 1111
    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .local v1, "containerId":I
    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    .line 1112
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/BackStackRecord;->configureTransitions(ILandroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    const/4 v6, 0x1

    .line 1110
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1119
    .end local v1    # "containerId":I
    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 1120
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1121
    .restart local v1    # "containerId":I
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    .line 1122
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/BackStackRecord;->configureTransitions(ILandroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1124
    const/4 v6, 0x1

    .line 1119
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1128
    .end local v1    # "containerId":I
    :cond_3
    if-nez v6, :cond_4

    .line 1129
    const/4 v2, 0x0

    .line 1132
    :cond_4
    return-object v2
.end method

.method private calculateFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 854
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v4

    if-nez v4, :cond_1

    .line 900
    :cond_0
    return-void

    .line 857
    :cond_1
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 858
    .local v3, "op":Landroid/support/v4/app/BackStackRecord$Op;
    :goto_0
    if-eqz v3, :cond_0

    .line 859
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v4, :pswitch_data_0

    .line 898
    :goto_1
    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_0

    .line 861
    :pswitch_0
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v4}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 864
    :pswitch_1
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 865
    .local v0, "f":Landroid/support/v4/app/Fragment;
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 866
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 867
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 868
    .local v2, "old":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    iget v4, v2, Landroid/support/v4/app/Fragment;->mContainerId:I

    iget v5, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v4, v5, :cond_3

    .line 869
    :cond_2
    if-ne v2, v0, :cond_4

    .line 870
    const/4 v0, 0x0

    .line 871
    iget v4, v2, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 866
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 873
    :cond_4
    invoke-static {p1, p2, v2}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_3

    .line 878
    .end local v1    # "i":I
    .end local v2    # "old":Landroid/support/v4/app/Fragment;
    :cond_5
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v4}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 882
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_2
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v4}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 885
    :pswitch_3
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v4}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 888
    :pswitch_4
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v4}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 891
    :pswitch_5
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v4}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 894
    :pswitch_6
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v4}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 859
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static captureExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .param p0, "exitTransition"    # Ljava/lang/Object;
    .param p1, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p4, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/util/ArrayMap",
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
    .line 1163
    .local p2, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p3, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p0, :cond_0

    .line 1165
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1164
    invoke-static {p0, v0, p2, p3, p4}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureExitingViews(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    .line 1167
    :cond_0
    return-object p0
.end method

.method private configureTransitions(ILandroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 42
    .param p1, "containerId"    # I
    .param p2, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Z",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1214
    .local p4, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .local p5, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1215
    .local v6, "sceneRoot":Landroid/view/ViewGroup;
    if-nez v6, :cond_0

    .line 1216
    const/4 v4, 0x0

    .line 1309
    :goto_0
    return v4

    .line 1218
    :cond_0
    move-object/from16 v0, p5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    .line 1219
    .local v8, "inFragment":Landroid/support/v4/app/Fragment;
    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/Fragment;

    .line 1221
    .local v9, "outFragment":Landroid/support/v4/app/Fragment;
    move/from16 v0, p3

    invoke-static {v8, v0}, Landroid/support/v4/app/BackStackRecord;->getEnterTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v12

    .line 1222
    .local v12, "enterTransition":Ljava/lang/Object;
    move/from16 v0, p3

    invoke-static {v8, v9, v0}, Landroid/support/v4/app/BackStackRecord;->getSharedElementTransition(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    .line 1224
    .local v7, "sharedElementTransition":Ljava/lang/Object;
    move/from16 v0, p3

    invoke-static {v9, v0}, Landroid/support/v4/app/BackStackRecord;->getExitTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v13

    .line 1225
    .local v13, "exitTransition":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 1226
    .local v24, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1227
    .local v11, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v7, :cond_1

    .line 1228
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v9, v2}, Landroid/support/v4/app/BackStackRecord;->remapSharedElements(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;

    move-result-object v24

    .line 1229
    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1230
    const/4 v7, 0x0

    .line 1231
    const/16 v24, 0x0

    .line 1247
    .end local v7    # "sharedElementTransition":Ljava/lang/Object;
    :cond_1
    :goto_1
    if-nez v12, :cond_5

    if-nez v7, :cond_5

    if-nez v13, :cond_5

    .line 1249
    const/4 v4, 0x0

    goto :goto_0

    .line 1234
    .restart local v7    # "sharedElementTransition":Ljava/lang/Object;
    :cond_2
    if-eqz p3, :cond_4

    iget-object v0, v9, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    move-object/from16 v38, v0

    .line 1237
    .local v38, "callback":Landroid/support/v4/app/SharedElementCallback;
    :goto_2
    if-eqz v38, :cond_3

    .line 1238
    new-instance v40, Ljava/util/ArrayList;

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1239
    .local v40, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v41, Ljava/util/ArrayList;

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1240
    .local v41, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2, v4}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .end local v40    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v41    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_3
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move/from16 v10, p3

    .line 1242
    invoke-direct/range {v4 .. v13}, Landroid/support/v4/app/BackStackRecord;->prepareSharedElementTransition(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1234
    .end local v38    # "callback":Landroid/support/v4/app/SharedElementCallback;
    :cond_4
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    move-object/from16 v38, v0

    goto :goto_2

    .line 1252
    .end local v7    # "sharedElementTransition":Ljava/lang/Object;
    :cond_5
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1253
    .local v23, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v13, v9, v0, v1, v4}, Landroid/support/v4/app/BackStackRecord;->captureExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v13

    .line 1257
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    if-eqz v24, :cond_7

    .line 1258
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/view/View;

    .line 1259
    .local v39, "epicenterView":Landroid/view/View;
    if-eqz v39, :cond_7

    .line 1260
    if-eqz v13, :cond_6

    .line 1261
    move-object/from16 v0, v39

    invoke-static {v13, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 1263
    :cond_6
    if-eqz v7, :cond_7

    .line 1264
    move-object/from16 v0, v39

    invoke-static {v7, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 1270
    .end local v39    # "epicenterView":Landroid/view/View;
    :cond_7
    new-instance v18, Landroid/support/v4/app/BackStackRecord$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Landroid/support/v4/app/BackStackRecord$1;-><init>(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/Fragment;)V

    .line 1278
    .local v18, "viewRetriever":Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1279
    .local v22, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v25, Landroid/support/v4/util/ArrayMap;

    invoke-direct/range {v25 .. v25}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1281
    .local v25, "renamedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/16 v37, 0x1

    .line 1282
    .local v37, "allowOverlap":Z
    if-eqz v8, :cond_8

    .line 1283
    if-eqz p3, :cond_a

    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v37

    .line 1286
    :cond_8
    :goto_3
    move/from16 v0, v37

    invoke-static {v12, v13, v7, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v34

    .line 1289
    .local v34, "transition":Ljava/lang/Object;
    if-eqz v34, :cond_9

    .line 1290
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->enteringEpicenterView:Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v21, v0

    move-object v14, v12

    move-object v15, v7

    move-object/from16 v16, v13

    move-object/from16 v17, v6

    move-object/from16 v26, v11

    invoke-static/range {v14 .. v26}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTransitionTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 1294
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v34

    invoke-direct {v0, v6, v1, v2, v3}, Landroid/support/v4/app/BackStackRecord;->excludeHiddenFragmentsAfterEnter(Landroid/view/View;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V

    .line 1298
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    const/4 v5, 0x1

    move-object/from16 v0, v34

    invoke-static {v0, v4, v5}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1300
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/BackStackRecord;->excludeHiddenFragments(Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V

    .line 1302
    move-object/from16 v0, v34

    invoke-static {v6, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 1304
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move-object/from16 v26, v6

    move-object/from16 v28, v12

    move-object/from16 v29, v22

    move-object/from16 v30, v13

    move-object/from16 v31, v23

    move-object/from16 v32, v7

    move-object/from16 v33, v11

    move-object/from16 v36, v25

    invoke-static/range {v26 .. v36}, Landroid/support/v4/app/FragmentTransitionCompat21;->cleanupTransitions(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 1309
    :cond_9
    if-eqz v34, :cond_b

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1284
    .end local v34    # "transition":Ljava/lang/Object;
    :cond_a
    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v37

    goto :goto_3

    .line 1309
    .restart local v34    # "transition":Ljava/lang/Object;
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 6
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "opcmd"    # I

    .prologue
    .line 431
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 432
    .local v0, "fragmentClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 433
    .local v1, "modifiers":I
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 435
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must be a public static class to be  properly recreated from"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instance state."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 440
    :cond_1
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v3, p2, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 442
    if-eqz p3, :cond_3

    .line 443
    iget-object v3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 444
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t change tag of fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " now "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 448
    :cond_2
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 451
    :cond_3
    if-eqz p1, :cond_6

    .line 452
    const/4 v3, -0x1

    if-ne p1, v3, :cond_4

    .line 453
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t add fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to container view with no id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 456
    :cond_4
    iget v3, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v3, :cond_5

    iget v3, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eq v3, p1, :cond_5

    .line 457
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t change container ID of fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " now "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 461
    :cond_5
    iput p1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 464
    :cond_6
    new-instance v2, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v2}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 465
    .local v2, "op":Landroid/support/v4/app/BackStackRecord$Op;
    iput p4, v2, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 466
    iput-object p2, v2, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 467
    invoke-virtual {p0, v2}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 468
    return-void
.end method

.method private excludeHiddenFragmentsAfterEnter(Landroid/view/View;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/View;
    .param p2, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p3, "containerId"    # I
    .param p4, "transition"    # Ljava/lang/Object;

    .prologue
    .line 1451
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v0, Landroid/support/v4/app/BackStackRecord$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/BackStackRecord$3;-><init>(Landroid/support/v4/app/BackStackRecord;Landroid/view/View;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1460
    return-void
.end method

.method private static getEnterTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "isBack"    # Z

    .prologue
    .line 1136
    if-nez p0, :cond_0

    .line 1137
    const/4 v0, 0x0

    .line 1139
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 1140
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    .line 1139
    :goto_1
    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1140
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static getExitTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "isBack"    # Z

    .prologue
    .line 1144
    if-nez p0, :cond_0

    .line 1145
    const/4 v0, 0x0

    .line 1147
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 1148
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    .line 1147
    :goto_1
    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1148
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static getSharedElementTransition(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "isBack"    # Z

    .prologue
    .line 1153
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1154
    :cond_0
    const/4 v0, 0x0

    .line 1156
    :goto_0
    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    .line 1157
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v0

    .line 1156
    :goto_1
    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->wrapSharedElementTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1158
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private mapEnteringSharedElements(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;
    .locals 4
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/app/Fragment;",
            "Z)",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1433
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1434
    .local v0, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 1435
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1436
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1437
    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 1438
    if-eqz p3, :cond_1

    .line 1439
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-static {v2, v3, v0}, Landroid/support/v4/app/BackStackRecord;->remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;)Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1446
    :cond_0
    :goto_0
    return-object v0

    .line 1442
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private prepareSharedElementTransition(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "sceneRoot"    # Landroid/view/View;
    .param p3, "sharedElementTransition"    # Ljava/lang/Object;
    .param p4, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p5, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p6, "isBack"    # Z
    .param p8, "enterTransition"    # Ljava/lang/Object;
    .param p9, "exitTransition"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1317
    .local p7, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p3, :cond_0

    .line 1318
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v11

    new-instance v0, Landroid/support/v4/app/BackStackRecord$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p7

    move-object v5, p1

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move/from16 v8, p6

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Landroid/support/v4/app/BackStackRecord$2;-><init>(Landroid/support/v4/app/BackStackRecord;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Landroid/support/v4/app/BackStackRecord$TransitionState;Ljava/lang/Object;Ljava/lang/Object;ZLandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v11, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1350
    :cond_0
    return-void
.end method

.method private static remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;)Landroid/support/v4/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1408
    .local p0, "inMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "toGoInMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p2}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1419
    .end local p2    # "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :goto_0
    return-object p2

    .line 1411
    .restart local p2    # "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_0
    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1412
    .local v2, "remappedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1413
    .local v1, "numKeys":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1414
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1415
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 1416
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3    # "view":Landroid/view/View;
    :cond_2
    move-object p2, v2

    .line 1419
    goto :goto_0
.end method

.method private remapSharedElements(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;
    .locals 4
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/app/Fragment;",
            "Z)",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1172
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1173
    .local v0, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1174
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 1175
    if-eqz p3, :cond_2

    .line 1176
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 1183
    :cond_0
    :goto_0
    if-eqz p3, :cond_3

    .line 1184
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    if-eqz v1, :cond_1

    .line 1185
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1188
    :cond_1
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/BackStackRecord;->setBackNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V

    .line 1197
    :goto_1
    return-object v0

    .line 1178
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/BackStackRecord;->remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;)Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    goto :goto_0

    .line 1190
    :cond_3
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    if-eqz v1, :cond_4

    .line 1191
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1194
    :cond_4
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/BackStackRecord;->setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V

    goto :goto_1
.end method

.method private setBackNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V
    .locals 7
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p3, "isEnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1510
    .local p2, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    const/4 v0, 0x0

    .line 1511
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1512
    iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1513
    .local v3, "source":Ljava/lang/String;
    iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1514
    .local v2, "originalTarget":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1515
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1516
    invoke-static {v5}, Landroid/support/v4/app/FragmentTransitionCompat21;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 1517
    .local v4, "target":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 1518
    iget-object v6, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    invoke-static {v6, v3, v4}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    .end local v4    # "target":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1510
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "originalTarget":Ljava/lang/String;
    .end local v3    # "source":Ljava/lang/String;
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 1520
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "originalTarget":Ljava/lang/String;
    .restart local v3    # "source":Ljava/lang/String;
    .restart local v4    # "target":Ljava/lang/String;
    .restart local v5    # "view":Landroid/view/View;
    :cond_2
    iget-object v6, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    invoke-static {v6, v4, v3}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1524
    .end local v2    # "originalTarget":Ljava/lang/String;
    .end local v3    # "source":Ljava/lang/String;
    .end local v4    # "target":Ljava/lang/String;
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private static setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 810
    .local p0, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .local p1, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    if-eqz p2, :cond_1

    .line 811
    iget v0, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 812
    .local v0, "containerId":I
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_1

    .line 813
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 814
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 815
    invoke-virtual {p0, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 817
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_1

    .line 818
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 822
    .end local v0    # "containerId":I
    :cond_1
    return-void
.end method

.method private setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 7
    .param p3, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 826
    if-eqz p3, :cond_2

    .line 827
    iget v6, p3, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 828
    .local v6, "containerId":I
    if-eqz v6, :cond_1

    .line 829
    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 830
    invoke-virtual {p2, v6, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 832
    :cond_0
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p3, :cond_1

    .line 833
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 836
    :cond_1
    iget v0, p3, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-lt v0, v2, :cond_2

    .line 837
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentManagerImpl;->makeActive(Landroid/support/v4/app/Fragment;)V

    .line 838
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v1, p3

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 841
    .end local v6    # "containerId":I
    :cond_2
    return-void
.end method

.method private static setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1486
    .local p0, "overrides":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1487
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1488
    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1489
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1495
    .end local v0    # "index":I
    :cond_0
    :goto_1
    return-void

    .line 1487
    .restart local v0    # "index":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1493
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V
    .locals 5
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p3, "isEnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1528
    .local p2, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p2}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 1529
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1530
    invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1531
    .local v2, "source":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 1532
    .local v3, "target":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 1533
    iget-object v4, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    invoke-static {v4, v2, v3}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1535
    :cond_0
    iget-object v4, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    invoke-static {v4, v3, v2}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1538
    .end local v2    # "source":Ljava/lang/String;
    .end local v3    # "target":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1499
    .local p1, "sourceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "targetNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 1500
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1501
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1502
    .local v1, "source":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1503
    .local v2, "target":Ljava/lang/String;
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    invoke-static {v3, v1, v2}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1506
    .end local v0    # "i":I
    .end local v1    # "source":Ljava/lang/String;
    .end local v2    # "target":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 420
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 421
    return-object p0
.end method

.method public add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 426
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 427
    return-object p0
.end method

.method public add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 414
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 415
    return-object p0
.end method

.method addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
    .locals 1
    .param p1, "op"    # Landroid/support/v4/app/BackStackRecord$Op;

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    if-nez v0, :cond_0

    .line 399
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 405
    :goto_0
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    .line 406
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    .line 407
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    .line 408
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    .line 409
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    .line 410
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->prev:Landroid/support/v4/app/BackStackRecord$Op;

    .line 402
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    .line 403
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_0
.end method

.method public addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 3
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 558
    sget-boolean v1, Landroid/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z

    if-eqz v1, :cond_2

    .line 559
    invoke-static {p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "transitionName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 561
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unique transitionNames are required for all sharedElements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 564
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 565
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 566
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 569
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    .end local v0    # "transitionName":Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method public addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 583
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    if-nez v0, :cond_0

    .line 584
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    .line 588
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 589
    return-object p0
.end method

.method public attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 527
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 528
    .local v0, "op":Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v1, 0x7

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 529
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 530
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 532
    return-object p0
.end method

.method bumpBackStackNesting(I)V
    .locals 6
    .param p1, "amt"    # I

    .prologue
    .line 636
    iget-boolean v3, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v3, :cond_1

    .line 658
    :cond_0
    return-void

    .line 639
    :cond_1
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 642
    .local v1, "op":Landroid/support/v4/app/BackStackRecord$Op;
    :goto_0
    if-eqz v1, :cond_0

    .line 643
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_3

    .line 644
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    iget v4, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 645
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    iget v5, v5, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_3
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 649
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 650
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 651
    .local v2, "r":Landroid/support/v4/app/Fragment;
    iget v3, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v3, p1

    iput v3, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 652
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 656
    .end local v0    # "i":I
    .end local v2    # "r":Landroid/support/v4/app/Fragment;
    :cond_5
    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    goto/16 :goto_0
.end method

.method public calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 913
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v2

    if-nez v2, :cond_1

    .line 949
    :cond_0
    return-void

    .line 916
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    .line 917
    .local v1, "op":Landroid/support/v4/app/BackStackRecord$Op;
    :goto_0
    if-eqz v1, :cond_0

    .line 918
    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v2, :pswitch_data_0

    .line 947
    :goto_1
    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord$Op;->prev:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_0

    .line 920
    :pswitch_0
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v2}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 923
    :pswitch_1
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 924
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_2

    .line 925
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v2}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 924
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 928
    .end local v0    # "i":I
    :cond_2
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v2}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 931
    :pswitch_2
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v2}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 934
    :pswitch_3
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v2}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 937
    :pswitch_4
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v2}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 940
    :pswitch_5
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v2}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 943
    :pswitch_6
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v2}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 918
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method callSharedElementEnd(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;)V
    .locals 4
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p4, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1354
    .local p5, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p4, :cond_1

    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    .line 1357
    .local v1, "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    :goto_0
    if-eqz v1, :cond_0

    .line 1358
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p5}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1359
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p5}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1360
    .local v2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1362
    .end local v0    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    return-void

    .line 1354
    .end local v1    # "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    :cond_1
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    goto :goto_0
.end method

.method public commit()I
    .locals 1

    .prologue
    .line 662
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method public commitAllowingStateLoss()I
    .locals 1

    .prologue
    .line 667
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method commitInternal(Z)I
    .locals 6
    .param p1, "allowStateLoss"    # Z

    .prologue
    const/4 v5, 0x0

    .line 683
    iget-boolean v2, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "commit already called"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 684
    :cond_0
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 685
    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Commit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    new-instance v0, Landroid/support/v4/util/LogWriter;

    const-string v2, "FragmentManager"

    invoke-direct {v0, v2}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 687
    .local v0, "logw":Landroid/support/v4/util/LogWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 688
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "  "

    invoke-virtual {p0, v2, v5, v1, v5}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 690
    .end local v0    # "logw":Landroid/support/v4/util/LogWriter;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    .line 691
    iget-boolean v2, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v2, :cond_2

    .line 692
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, p0}, Landroid/support/v4/app/FragmentManagerImpl;->allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I

    move-result v2

    iput v2, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 696
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 697
    iget v2, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    return v2

    .line 694
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    goto :goto_0
.end method

.method public commitNow()V
    .locals 2

    .prologue
    .line 672
    invoke-virtual {p0}, Landroid/support/v4/app/BackStackRecord;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    .line 673
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->execSingleAction(Ljava/lang/Runnable;Z)V

    .line 674
    return-void
.end method

.method public commitNowAllowingStateLoss()V
    .locals 2

    .prologue
    .line 678
    invoke-virtual {p0}, Landroid/support/v4/app/BackStackRecord;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    .line 679
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->execSingleAction(Ljava/lang/Runnable;Z)V

    .line 680
    return-void
.end method

.method public detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 517
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 518
    .local v0, "op":Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v1, 0x6

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 519
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 520
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 522
    return-object p0
.end method

.method public disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;
    .locals 2

    .prologue
    .line 599
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_0

    .line 600
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 604
    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 266
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 267
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "full"    # Z

    .prologue
    .line 270
    if-eqz p3, :cond_8

    .line 271
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mName="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 272
    const-string v5, " mIndex="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 273
    const-string v5, " mCommitted="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 274
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    if-eqz v5, :cond_0

    .line 275
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mTransition=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 276
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 277
    const-string v5, " mTransitionStyle=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    :cond_0
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    if-nez v5, :cond_1

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    if-eqz v5, :cond_2

    .line 281
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    const-string v5, " mExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    :cond_2
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    if-nez v5, :cond_3

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    if-eqz v5, :cond_4

    .line 287
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mPopEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 288
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 289
    const-string v5, " mPopExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    :cond_4
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-nez v5, :cond_5

    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_6

    .line 293
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 294
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    const-string v5, " mBreadCrumbTitleText="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 298
    :cond_6
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-nez v5, :cond_7

    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_8

    .line 299
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 300
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    const-string v5, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 306
    :cond_8
    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    if-eqz v5, :cond_10

    .line 307
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Operations:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "innerPrefix":Ljava/lang/String;
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 310
    .local v4, "op":Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v3, 0x0

    .line 311
    .local v3, "num":I
    :goto_0
    if-eqz v4, :cond_10

    .line 313
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v5, :pswitch_data_0

    .line 322
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cmd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "cmdStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 325
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    const-string v5, " "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 327
    if-eqz p3, :cond_c

    .line 328
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    if-nez v5, :cond_9

    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    if-eqz v5, :cond_a

    .line 329
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "enterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    const-string v5, " exitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    :cond_a
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    if-nez v5, :cond_b

    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    if-eqz v5, :cond_c

    .line 335
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "popEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    const-string v5, " popExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    :cond_c
    iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v5, :cond_f

    iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_f

    .line 342
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_f

    .line 343
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    .line 345
    const-string v5, "Removed: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 353
    :goto_3
    iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 314
    .end local v0    # "cmdStr":Ljava/lang/String;
    .end local v1    # "i":I
    :pswitch_0
    const-string v0, "NULL"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 315
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_1
    const-string v0, "ADD"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 316
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_2
    const-string v0, "REPLACE"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 317
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_3
    const-string v0, "REMOVE"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 318
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_4
    const-string v0, "HIDE"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 319
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_5
    const-string v0, "SHOW"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 320
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_6
    const-string v0, "DETACH"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 321
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_7
    const-string v0, "ATTACH"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 347
    .restart local v1    # "i":I
    :cond_d
    if-nez v1, :cond_e

    .line 348
    const-string v5, "Removed:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    :cond_e
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 351
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 356
    .end local v1    # "i":I
    :cond_f
    iget-object v4, v4, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    .line 357
    add-int/lit8 v3, v3, 0x1

    .line 358
    goto/16 :goto_0

    .line 360
    .end local v0    # "cmdStr":Ljava/lang/String;
    .end local v2    # "innerPrefix":Ljava/lang/String;
    .end local v3    # "num":I
    .end local v4    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    :cond_10
    return-void

    .line 313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method excludeHiddenFragments(Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "containerId"    # I
    .param p3, "transition"    # Ljava/lang/Object;

    .prologue
    .line 1463
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1464
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1465
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1466
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v2, p2, :cond_0

    .line 1468
    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_1

    .line 1469
    iget-object v2, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1470
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-static {p3, v2, v3}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1472
    iget-object v2, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1464
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1475
    :cond_1
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {p3, v2, v3}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1477
    iget-object v2, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1482
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 391
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 394
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getBreadCrumbShortTitleRes()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 383
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 386
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getBreadCrumbTitleRes()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransition()I
    .locals 1

    .prologue
    .line 1056
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    return v0
.end method

.method public getTransitionStyle()I
    .locals 1

    .prologue
    .line 1060
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    return v0
.end method

.method public hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 497
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 498
    .local v0, "op":Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v1, 0x4

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 499
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 500
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 502
    return-object p0
.end method

.method public isAddToBackStackAllowed()Z
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1065
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mapSharedElementsIn(Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/util/ArrayMap;
    .locals 4
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "isBack"    # Z
    .param p3, "inFragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Z",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1378
    invoke-direct {p0, p1, p3, p2}, Landroid/support/v4/app/BackStackRecord;->mapEnteringSharedElements(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1382
    .local v0, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p2, :cond_1

    .line 1383
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    if-eqz v1, :cond_0

    .line 1384
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1387
    :cond_0
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/BackStackRecord;->setBackNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V

    .line 1395
    :goto_0
    return-object v0

    .line 1389
    :cond_1
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    if-eqz v1, :cond_2

    .line 1390
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1393
    :cond_2
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/BackStackRecord;->setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V

    goto :goto_0
.end method

.method public popFromBackStack(ZLandroid/support/v4/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/BackStackRecord$TransitionState;
    .locals 17
    .param p1, "doStateMove"    # Z
    .param p2, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;"
        }
    .end annotation

    .prologue
    .line 953
    .local p3, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .local p4, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    sget-boolean v13, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v13, :cond_0

    .line 954
    const-string v13, "FragmentManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "popFromBackStack: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    new-instance v5, Landroid/support/v4/util/LogWriter;

    const-string v13, "FragmentManager"

    invoke-direct {v5, v13}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 956
    .local v5, "logw":Landroid/support/v4/util/LogWriter;
    new-instance v10, Ljava/io/PrintWriter;

    invoke-direct {v10, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 957
    .local v10, "pw":Ljava/io/PrintWriter;
    const-string v13, "  "

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v10, v15}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 960
    .end local v5    # "logw":Landroid/support/v4/util/LogWriter;
    .end local v10    # "pw":Ljava/io/PrintWriter;
    :cond_0
    sget-boolean v13, Landroid/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v13, v13, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v14, 0x1

    if-lt v13, v14, :cond_2

    .line 961
    if-nez p2, :cond_3

    .line 962
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-nez v13, :cond_1

    invoke-virtual/range {p4 .. p4}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-eqz v13, :cond_2

    .line 963
    :cond_1
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v13}, Landroid/support/v4/app/BackStackRecord;->beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/BackStackRecord$TransitionState;

    move-result-object p2

    .line 970
    :cond_2
    :goto_0
    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 972
    if-eqz p2, :cond_4

    const/4 v12, 0x0

    .line 973
    .local v12, "transitionStyle":I
    :goto_1
    if-eqz p2, :cond_5

    const/4 v11, 0x0

    .line 974
    .local v11, "transition":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    .line 975
    .local v7, "op":Landroid/support/v4/app/BackStackRecord$Op;
    :goto_3
    if-eqz v7, :cond_a

    .line 976
    if-eqz p2, :cond_6

    const/4 v8, 0x0

    .line 977
    .local v8, "popEnterAnim":I
    :goto_4
    if-eqz p2, :cond_7

    const/4 v9, 0x0

    .line 978
    .local v9, "popExitAnim":I
    :goto_5
    iget v13, v7, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v13, :pswitch_data_0

    .line 1030
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown cmd: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 965
    .end local v7    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    .end local v8    # "popEnterAnim":I
    .end local v9    # "popExitAnim":I
    .end local v11    # "transition":I
    .end local v12    # "transitionStyle":I
    :cond_3
    if-nez p1, :cond_2

    .line 966
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Landroid/support/v4/app/BackStackRecord;->setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 972
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    goto :goto_1

    .line 973
    .restart local v12    # "transitionStyle":I
    :cond_5
    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    goto :goto_2

    .line 976
    .restart local v7    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    .restart local v11    # "transition":I
    :cond_6
    iget v8, v7, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    goto :goto_4

    .line 977
    .restart local v8    # "popEnterAnim":I
    :cond_7
    iget v9, v7, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    goto :goto_5

    .line 980
    .restart local v9    # "popExitAnim":I
    :pswitch_0
    iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 981
    .local v3, "f":Landroid/support/v4/app/Fragment;
    iput v9, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 982
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 983
    invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v14

    .line 982
    invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    .line 1034
    :cond_8
    :goto_6
    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->prev:Landroid/support/v4/app/BackStackRecord$Op;

    .line 1035
    goto :goto_3

    .line 986
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_1
    iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 987
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_9

    .line 988
    iput v9, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 989
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 990
    invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v14

    .line 989
    invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    .line 992
    :cond_9
    iget-object v13, v7, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v13, :cond_8

    .line 993
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7
    iget-object v13, v7, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_8

    .line 994
    iget-object v13, v7, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    .line 995
    .local v6, "old":Landroid/support/v4/app/Fragment;
    iput v8, v6, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 996
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v14, 0x0

    invoke-virtual {v13, v6, v14}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 993
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1001
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    .end local v4    # "i":I
    .end local v6    # "old":Landroid/support/v4/app/Fragment;
    :pswitch_2
    iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 1002
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v8, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 1003
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v14, 0x0

    invoke-virtual {v13, v3, v14}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_6

    .line 1006
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_3
    iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 1007
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v8, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 1008
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1009
    invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v14

    .line 1008
    invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 1012
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_4
    iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 1013
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v9, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 1014
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1015
    invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v14

    .line 1014
    invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 1018
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_5
    iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 1019
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v8, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 1020
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1021
    invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v14

    .line 1020
    invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 1024
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_6
    iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 1025
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v8, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 1026
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1027
    invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v14

    .line 1026
    invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    .line 1037
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    .end local v8    # "popEnterAnim":I
    .end local v9    # "popExitAnim":I
    :cond_a
    if-eqz p1, :cond_b

    .line 1038
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v14, v14, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    .line 1039
    invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v15

    const/16 v16, 0x1

    .line 1038
    move/from16 v0, v16

    invoke-virtual {v13, v14, v15, v12, v0}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 1040
    const/16 p2, 0x0

    .line 1043
    :cond_b
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v13, :cond_c

    .line 1044
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v13, v14}, Landroid/support/v4/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    .line 1045
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 1047
    :cond_c
    return-object p2

    .line 978
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 487
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 488
    .local v0, "op":Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v1, 0x3

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 489
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 490
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 492
    return-object p0
.end method

.method public replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 472
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 477
    if-nez p1, :cond_0

    .line 478
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 482
    return-object p0
.end method

.method public run()V
    .locals 15

    .prologue
    .line 702
    sget-boolean v12, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "FragmentManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Run: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_0
    iget-boolean v12, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v12, :cond_1

    .line 705
    iget v12, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-gez v12, :cond_1

    .line 706
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "addToBackStack() called after commit()"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 710
    :cond_1
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 712
    const/4 v9, 0x0

    .line 713
    .local v9, "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    const/4 v4, 0x0

    .line 714
    .local v4, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    const/4 v6, 0x0

    .line 715
    .local v6, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    sget-boolean v12, Landroid/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z

    if-eqz v12, :cond_2

    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v13, 0x1

    if-lt v12, v13, :cond_2

    .line 716
    new-instance v4, Landroid/util/SparseArray;

    .end local v4    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 717
    .restart local v4    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    new-instance v6, Landroid/util/SparseArray;

    .end local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 719
    .restart local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {p0, v4, v6}, Landroid/support/v4/app/BackStackRecord;->calculateFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 721
    const/4 v12, 0x0

    invoke-direct {p0, v4, v6, v12}, Landroid/support/v4/app/BackStackRecord;->beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/BackStackRecord$TransitionState;

    move-result-object v9

    .line 724
    :cond_2
    if-eqz v9, :cond_3

    const/4 v11, 0x0

    .line 725
    .local v11, "transitionStyle":I
    :goto_0
    if-eqz v9, :cond_4

    const/4 v10, 0x0

    .line 726
    .local v10, "transition":I
    :goto_1
    iget-object v8, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 727
    .local v8, "op":Landroid/support/v4/app/BackStackRecord$Op;
    :goto_2
    if-eqz v8, :cond_e

    .line 728
    if-eqz v9, :cond_5

    const/4 v1, 0x0

    .line 729
    .local v1, "enterAnim":I
    :goto_3
    if-eqz v9, :cond_6

    const/4 v2, 0x0

    .line 730
    .local v2, "exitAnim":I
    :goto_4
    iget v12, v8, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v12, :pswitch_data_0

    .line 794
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown cmd: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 724
    .end local v1    # "enterAnim":I
    .end local v2    # "exitAnim":I
    .end local v8    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    .end local v10    # "transition":I
    .end local v11    # "transitionStyle":I
    :cond_3
    iget v11, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    goto :goto_0

    .line 725
    .restart local v11    # "transitionStyle":I
    :cond_4
    iget v10, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    goto :goto_1

    .line 728
    .restart local v8    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    .restart local v10    # "transition":I
    :cond_5
    iget v1, v8, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    goto :goto_3

    .line 729
    .restart local v1    # "enterAnim":I
    :cond_6
    iget v2, v8, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    goto :goto_4

    .line 732
    .restart local v2    # "exitAnim":I
    :pswitch_0
    iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 733
    .local v3, "f":Landroid/support/v4/app/Fragment;
    iput v1, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 734
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 798
    :cond_7
    :goto_5
    iget-object v8, v8, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    .line 799
    goto :goto_2

    .line 737
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_1
    iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 738
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iget v0, v3, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 739
    .local v0, "containerId":I
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v12, :cond_d

    .line 740
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .local v5, "i":I
    :goto_6
    if-ltz v5, :cond_d

    .line 741
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/Fragment;

    .line 742
    .local v7, "old":Landroid/support/v4/app/Fragment;
    sget-boolean v12, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v12, :cond_8

    const-string v12, "FragmentManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OP_REPLACE: adding="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " old="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_8
    iget v12, v7, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v12, v0, :cond_9

    .line 745
    if-ne v7, v3, :cond_a

    .line 746
    const/4 v3, 0x0

    iput-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 740
    :cond_9
    :goto_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 748
    :cond_a
    iget-object v12, v8, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-nez v12, :cond_b

    .line 749
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v8, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    .line 751
    :cond_b
    iget-object v12, v8, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    iput v2, v7, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 753
    iget-boolean v12, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v12, :cond_c

    .line 754
    iget v12, v7, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v7, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 755
    sget-boolean v12, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v12, :cond_c

    const-string v12, "FragmentManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bump nesting of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_c
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v12, v7, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_7

    .line 763
    .end local v5    # "i":I
    .end local v7    # "old":Landroid/support/v4/app/Fragment;
    :cond_d
    if-eqz v3, :cond_7

    .line 764
    iput v1, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 765
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    goto/16 :goto_5

    .line 769
    .end local v0    # "containerId":I
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_2
    iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 770
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v2, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 771
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v12, v3, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_5

    .line 774
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_3
    iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 775
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v2, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 776
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v12, v3, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_5

    .line 779
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_4
    iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 780
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v1, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 781
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v12, v3, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_5

    .line 784
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_5
    iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 785
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v2, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 786
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v12, v3, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_5

    .line 789
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_6
    iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 790
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v1, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 791
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v12, v3, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_5

    .line 801
    .end local v1    # "enterAnim":I
    .end local v2    # "exitAnim":I
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :cond_e
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v13, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v13, v13, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v10, v11, v14}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 803
    iget-boolean v12, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v12, :cond_f

    .line 804
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v12, p0}, Landroid/support/v4/app/FragmentManagerImpl;->addBackStackState(Landroid/support/v4/app/BackStackRecord;)V

    .line 806
    :cond_f
    return-void

    .line 730
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setBreadCrumbShortTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 623
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 625
    return-object p0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 630
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 631
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 632
    return-object p0
.end method

.method public setBreadCrumbTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 609
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 610
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 611
    return-object p0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 616
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 617
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 618
    return-object p0
.end method

.method public setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "enter"    # I
    .param p2, "exit"    # I

    .prologue
    const/4 v0, 0x0

    .line 537
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v4/app/BackStackRecord;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p1, "enter"    # I
    .param p2, "exit"    # I
    .param p3, "popEnter"    # I
    .param p4, "popExit"    # I

    .prologue
    .line 543
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    .line 544
    iput p2, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    .line 545
    iput p3, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    .line 546
    iput p4, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    .line 547
    return-object p0
.end method

.method setEpicenterIn(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/BackStackRecord$TransitionState;)V
    .locals 3
    .param p2, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1365
    .local p1, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1367
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 1368
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1369
    .local v0, "epicenter":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1370
    iget-object v1, p2, Landroid/support/v4/app/BackStackRecord$TransitionState;->enteringEpicenterView:Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;

    iput-object v0, v1, Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;->epicenter:Landroid/view/View;

    .line 1373
    .end local v0    # "epicenter":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setTransition(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p1, "transition"    # I

    .prologue
    .line 552
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    .line 553
    return-object p0
.end method

.method public setTransitionStyle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p1, "styleRes"    # I

    .prologue
    .line 577
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    .line 578
    return-object p0
.end method

.method public show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 507
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 508
    .local v0, "op":Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v1, 0x5

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 509
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 510
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 512
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 251
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v1, :cond_0

    .line 254
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 258
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
