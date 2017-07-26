.class final Landroid/support/v4/app/FragmentManagerImpl;
.super Landroid/support/v4/app/FragmentManager;
.source "FragmentManager.java"

# interfaces
.implements Landroid/support/v4/view/LayoutInflaterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentManagerImpl$FragmentTag;,
        Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;
    }
.end annotation


# static fields
.field static final ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final ANIM_DUR:I = 0xdc

.field public static final ANIM_STYLE_CLOSE_ENTER:I = 0x3

.field public static final ANIM_STYLE_CLOSE_EXIT:I = 0x4

.field public static final ANIM_STYLE_FADE_ENTER:I = 0x5

.field public static final ANIM_STYLE_FADE_EXIT:I = 0x6

.field public static final ANIM_STYLE_OPEN_ENTER:I = 0x1

.field public static final ANIM_STYLE_OPEN_EXIT:I = 0x2

.field static DEBUG:Z = false

.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final HONEYCOMB:Z

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"

.field static sAnimationListenerField:Ljava/lang/reflect/Field;


# instance fields
.field mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAvailIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Landroid/support/v4/app/FragmentContainer;

.field mController:Landroid/support/v4/app/FragmentController;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mHost:Landroid/support/v4/app/FragmentHostCallback;

.field mNeedMenuInvalidate:Z

.field mNoTransactionsBecause:Ljava/lang/String;

.field mParent:Landroid/support/v4/app/Fragment;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mTmpActions:[Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x40200000    # 2.5f

    const/high16 v3, 0x3fc00000    # 1.5f

    .line 426
    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    .line 429
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z

    .line 526
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    .line 854
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 855
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    .line 856
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 857
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 425
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;-><init>()V

    .line 520
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    .line 535
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 536
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 538
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$1;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    .line 2467
    return-void
.end method

.method private checkStateLoss()V
    .locals 3

    .prologue
    .line 1537
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    if-eqz v0, :cond_0

    .line 1538
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1541
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1542
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1545
    :cond_1
    return-void
.end method

.method static makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 877
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 878
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 879
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 880
    return-object v0
.end method

.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startScale"    # F
    .param p2, "endScale"    # F
    .param p3, "startAlpha"    # F
    .param p4, "endAlpha"    # F

    .prologue
    .line 863
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 864
    .local v10, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 866
    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 867
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 868
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 869
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 870
    .local v9, "alpha":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 871
    const-wide/16 v2, 0xdc

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 872
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 873
    return-object v10
.end method

.method static modifiesAlpha(Landroid/view/animation/Animation;)Z
    .locals 4
    .param p0, "anim"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x1

    .line 546
    instance-of v3, p0, Landroid/view/animation/AlphaAnimation;

    if-eqz v3, :cond_1

    .line 556
    .end local p0    # "anim":Landroid/view/animation/Animation;
    .local v0, "anims":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .local v1, "i":I
    :cond_0
    :goto_0
    return v2

    .line 548
    .end local v0    # "anims":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .end local v1    # "i":I
    .restart local p0    # "anim":Landroid/view/animation/Animation;
    :cond_1
    instance-of v3, p0, Landroid/view/animation/AnimationSet;

    if-eqz v3, :cond_2

    .line 549
    check-cast p0, Landroid/view/animation/AnimationSet;

    .end local p0    # "anim":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    .line 550
    .restart local v0    # "anims":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 551
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/view/animation/AlphaAnimation;

    if-nez v3, :cond_0

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 556
    .end local v0    # "anims":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .end local v1    # "i":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static reverseTransit(I)I
    .locals 1
    .param p0, "transit"    # I

    .prologue
    .line 2330
    const/4 v0, 0x0

    .line 2331
    .local v0, "rev":I
    sparse-switch p0, :sswitch_data_0

    .line 2342
    :goto_0
    return v0

    .line 2333
    :sswitch_0
    const/16 v0, 0x2002

    .line 2334
    goto :goto_0

    .line 2336
    :sswitch_1
    const/16 v0, 0x1001

    .line 2337
    goto :goto_0

    .line 2339
    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    .line 2331
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 962
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 985
    :cond_0
    :goto_0
    return-void

    .line 965
    :cond_1
    invoke-static {p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroid/view/animation/Animation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 966
    const/4 v2, 0x0

    .line 968
    .local v2, "originalListener":Landroid/view/animation/Animation$AnimationListener;
    :try_start_0
    sget-object v3, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    if-nez v3, :cond_2

    .line 969
    const-class v3, Landroid/view/animation/Animation;

    const-string v4, "mListener"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    .line 970
    sget-object v3, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 972
    :cond_2
    sget-object v3, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/view/animation/Animation$AnimationListener;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 981
    :goto_1
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 982
    new-instance v3, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    invoke-direct {v3, p1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 973
    :catch_0
    move-exception v1

    .line 974
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "FragmentManager"

    const-string v4, "No field with the name mListener is found in Animation class"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 975
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 976
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "FragmentManager"

    const-string v4, "Cannot access Animation\'s mListener field"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static shouldRunOnHWLayer(Landroid/view/View;Landroid/view/animation/Animation;)Z
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 560
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 561
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 562
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    invoke-static {p1}, Landroid/support/v4/app/FragmentManagerImpl;->modifiesAlpha(Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .locals 7
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    .prologue
    .line 567
    const-string v3, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string v3, "FragmentManager"

    const-string v4, "Activity state:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance v1, Landroid/support/v4/util/LogWriter;

    const-string v3, "FragmentManager"

    invoke-direct {v1, v3}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 570
    .local v1, "logw":Landroid/support/v4/util/LogWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 571
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v3, :cond_0

    .line 573
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    const-string v4, "  "

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/support/v4/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :goto_0
    throw p1

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "FragmentManager"

    const-string v4, "Failed dumping state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 579
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-string v3, "  "

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v2, v5}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 580
    :catch_1
    move-exception v0

    .line 581
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "FragmentManager"

    const-string v4, "Failed dumping state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static transitToStyleIndex(IZ)I
    .locals 1
    .param p0, "transit"    # I
    .param p1, "enter"    # Z

    .prologue
    .line 2354
    const/4 v0, -0x1

    .line 2355
    .local v0, "animAttr":I
    sparse-switch p0, :sswitch_data_0

    .line 2366
    :goto_0
    return v0

    .line 2357
    :sswitch_0
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2358
    :goto_1
    goto :goto_0

    .line 2357
    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    .line 2360
    :sswitch_1
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    .line 2361
    :goto_2
    goto :goto_0

    .line 2360
    :cond_1
    const/4 v0, 0x4

    goto :goto_2

    .line 2363
    :sswitch_2
    if-eqz p1, :cond_2

    const/4 v0, 0x5

    :goto_3
    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_3

    .line 2355
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method addBackStackState(Landroid/support/v4/app/BackStackRecord;)V
    .locals 1
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord;

    .prologue
    .line 1719
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1720
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1722
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1723
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 1724
    return-void
.end method

.method public addFragment(Landroid/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "moveToStateNow"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1359
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1362
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->makeActive(Landroid/support/v4/app/Fragment;)V

    .line 1364
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_4

    .line 1365
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1366
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1368
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1369
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1370
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1371
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1372
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1374
    :cond_3
    if-eqz p2, :cond_4

    .line 1375
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V

    .line 1378
    :cond_4
    return-void
.end method

.method public addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .prologue
    .line 663
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 664
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 666
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    return-void
.end method

.method public allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I
    .locals 5
    .param p1, "bse"    # Landroid/support/v4/app/BackStackRecord;

    .prologue
    .line 1574
    monitor-enter p0

    .line 1575
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1576
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1577
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1579
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1580
    .local v0, "index":I
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1582
    monitor-exit p0

    move v1, v0

    .line 1588
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    return v1

    .line 1585
    .end local v1    # "index":I
    :cond_3
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1586
    .restart local v0    # "index":I
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :cond_4
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1588
    monitor-exit p0

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 1590
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public attachController(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "host"    # Landroid/support/v4/app/FragmentHostCallback;
    .param p2, "container"    # Landroid/support/v4/app/FragmentContainer;
    .param p3, "parent"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 2137
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2138
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 2139
    iput-object p2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    .line 2140
    iput-object p3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    .line 2141
    return-void
.end method

.method public attachFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1457
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_5

    .line 1459
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1460
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v0, :cond_5

    .line 1461
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1464
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1465
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1467
    :cond_2
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1469
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1470
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_4

    .line 1471
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1473
    :cond_4
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1476
    :cond_5
    return-void
.end method

.method public beginTransaction()Landroid/support/v4/app/FragmentTransaction;
    .locals 1

    .prologue
    .line 589
    new-instance v0, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method public detachFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1438
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_4

    .line 1440
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1441
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_4

    .line 1443
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1444
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove from detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1447
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1448
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1450
    :cond_3
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 1451
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1454
    :cond_4
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2153
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2154
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2155
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2222
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2223
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2224
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2225
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 2226
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2223
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2230
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2305
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2306
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2307
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2308
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 2309
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2310
    const/4 v2, 0x1

    .line 2315
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 2306
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2315
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public dispatchCreate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2148
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2149
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2150
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 2244
    const/4 v3, 0x0

    .line 2245
    .local v3, "show":Z
    const/4 v2, 0x0

    .line 2246
    .local v2, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 2247
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 2248
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2249
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    .line 2250
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2251
    const/4 v3, 0x1

    .line 2252
    if-nez v2, :cond_0

    .line 2253
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2255
    .restart local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2247
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2261
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_2
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 2262
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 2263
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2264
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2265
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    .line 2262
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2270
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_5
    iput-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    .line 2272
    return v3
.end method

.method public dispatchDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2189
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    .line 2190
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2191
    invoke-virtual {p0, v2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2192
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 2193
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    .line 2194
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    .line 2195
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 2

    .prologue
    .line 2185
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2186
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 3

    .prologue
    .line 2233
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2234
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2235
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2236
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 2237
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->performLowMemory()V

    .line 2234
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2241
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 3
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 2198
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 2207
    :cond_0
    return-void

    .line 2201
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2202
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2203
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    .line 2204
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performMultiWindowModeChanged(Z)V

    .line 2201
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2291
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2292
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2293
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2294
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 2295
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2296
    const/4 v2, 0x1

    .line 2301
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 2292
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2301
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2319
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2320
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2321
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2322
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 2323
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2320
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2327
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchPause()V
    .locals 2

    .prologue
    .line 2168
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2169
    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 3
    .param p1, "isInPictureInPictureMode"    # Z

    .prologue
    .line 2210
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 2219
    :cond_0
    return-void

    .line 2213
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2214
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2215
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    .line 2216
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performPictureInPictureModeChanged(Z)V

    .line 2213
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2276
    const/4 v2, 0x0

    .line 2277
    .local v2, "show":Z
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 2278
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2279
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2280
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 2281
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2282
    const/4 v2, 0x1

    .line 2278
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2287
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return v2
.end method

.method public dispatchReallyStop()V
    .locals 2

    .prologue
    .line 2181
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2182
    return-void
.end method

.method public dispatchResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2163
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2164
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2165
    return-void
.end method

.method public dispatchStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2158
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2159
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2160
    return-void
.end method

.method public dispatchStop()V
    .locals 2

    .prologue
    .line 2175
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2177
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2178
    return-void
.end method

.method doPendingDeferredStart()V
    .locals 4

    .prologue
    .line 1695
    iget-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v3, :cond_2

    .line 1696
    const/4 v2, 0x0

    .line 1697
    .local v2, "loadersRunning":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1698
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1699
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v3, :cond_0

    .line 1700
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v3}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v3

    or-int/2addr v2, v3

    .line 1697
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1703
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    if-nez v2, :cond_2

    .line 1704
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 1705
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1708
    .end local v1    # "i":I
    .end local v2    # "loadersRunning":Z
    :cond_2
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 743
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 746
    .local v4, "innerPrefix":Ljava/lang/String;
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 747
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 748
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 749
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Active Fragments in "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 750
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 751
    const-string v6, ":"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 753
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 754
    .local v2, "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 755
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 756
    if-eqz v2, :cond_0

    .line 757
    invoke-virtual {v2, v4, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 752
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 763
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v3    # "i":I
    :cond_1
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 764
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 765
    .restart local v0    # "N":I
    if-lez v0, :cond_2

    .line 766
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Added Fragments:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 768
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 769
    .restart local v2    # "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 770
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 775
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v3    # "i":I
    :cond_2
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 776
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 777
    .restart local v0    # "N":I
    if-lez v0, :cond_3

    .line 778
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Fragments Created Menus:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 779
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 780
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 781
    .restart local v2    # "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 782
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 779
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 787
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v3    # "i":I
    :cond_3
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 788
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 789
    .restart local v0    # "N":I
    if-lez v0, :cond_4

    .line 790
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Back Stack:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 791
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v0, :cond_4

    .line 792
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    .line 793
    .local v1, "bs":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 794
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 795
    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 791
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 800
    .end local v0    # "N":I
    .end local v1    # "bs":Landroid/support/v4/app/BackStackRecord;
    .end local v3    # "i":I
    :cond_4
    monitor-enter p0

    .line 801
    :try_start_0
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 802
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 803
    .restart local v0    # "N":I
    if-lez v0, :cond_5

    .line 804
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Back Stack Indices:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 805
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v0, :cond_5

    .line 806
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    .line 807
    .restart local v1    # "bs":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 808
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 805
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 813
    .end local v0    # "N":I
    .end local v1    # "bs":Landroid/support/v4/app/BackStackRecord;
    .end local v3    # "i":I
    :cond_5
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 814
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mAvailBackStackIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 815
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    .line 820
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 821
    .restart local v0    # "N":I
    if-lez v0, :cond_7

    .line 822
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Pending Actions:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v0, :cond_7

    .line 824
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 825
    .local v5, "r":Ljava/lang/Runnable;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 826
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 823
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 817
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v5    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 831
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "FragmentManager misc state:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mHost="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 833
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mContainer="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 834
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_8

    .line 835
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mParent="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 837
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mCurState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 838
    const-string v6, " mStateSaved="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 839
    const-string v6, " mDestroyed="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 840
    iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v6, :cond_9

    .line 841
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 842
    iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 844
    :cond_9
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 845
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mNoTransactionsBecause="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 846
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 848
    :cond_a
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_b

    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b

    .line 849
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mAvailIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 850
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 852
    :cond_b
    return-void
.end method

.method public enqueueAction(Ljava/lang/Runnable;Z)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "allowStateLoss"    # Z

    .prologue
    .line 1555
    if-nez p2, :cond_0

    .line 1556
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 1558
    :cond_0
    monitor-enter p0

    .line 1559
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_2

    .line 1560
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1570
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1562
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 1565
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1566
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1567
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1568
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1570
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1571
    return-void
.end method

.method public execPendingActions()Z
    .locals 5

    .prologue
    .line 1653
    iget-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v3, :cond_0

    .line 1654
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "FragmentManager is already executing transactions"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1657
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 1658
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Must be called from main thread of fragment host"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1661
    :cond_1
    const/4 v0, 0x0

    .line 1666
    .local v0, "didSomething":Z
    :goto_0
    monitor-enter p0

    .line 1667
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 1668
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1689
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 1691
    return v0

    .line 1671
    :cond_3
    :try_start_1
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1672
    .local v2, "numActions":I
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    array-length v3, v3

    if-ge v3, v2, :cond_5

    .line 1673
    :cond_4
    new-array v3, v2, [Ljava/lang/Runnable;

    iput-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    .line 1675
    :cond_5
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1676
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1677
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1678
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1680
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1681
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 1682
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    aget-object v3, v3, v1

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1683
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 1681
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1678
    .end local v1    # "i":I
    .end local v2    # "numActions":I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1685
    .restart local v1    # "i":I
    .restart local v2    # "numActions":I
    :cond_6
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1686
    const/4 v0, 0x1

    .line 1687
    goto :goto_0
.end method

.method public execSingleAction(Ljava/lang/Runnable;Z)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "allowStateLoss"    # Z

    .prologue
    .line 1630
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_0

    .line 1631
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1634
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1635
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1638
    :cond_1
    if-nez p2, :cond_2

    .line 1639
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 1642
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1643
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1644
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1646
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 1647
    return-void
.end method

.method public executePendingTransactions()Z
    .locals 1

    .prologue
    .line 594
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public findFragmentById(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1480
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1482
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1483
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1484
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_1

    .line 1498
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return-object v0

    .line 1482
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1489
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 1491
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_4

    .line 1492
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1493
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_3

    iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eq v2, p1, :cond_0

    .line 1491
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1498
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1503
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 1505
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1506
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1507
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1521
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return-object v0

    .line 1505
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1512
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    .line 1514
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_4

    .line 1515
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1516
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1514
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1521
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    .line 1525
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1526
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1527
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1528
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1533
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :goto_1
    return-object v0

    .line 1526
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1533
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public freeBackStackIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1619
    monitor-enter p0

    .line 1620
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1621
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1622
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1624
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1626
    monitor-exit p0

    .line 1627
    return-void

    .line 1626
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 658
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager$BackStackEntry;

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 687
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 688
    .local v1, "index":I
    if-ne v1, v2, :cond_1

    .line 689
    const/4 v0, 0x0

    .line 700
    :cond_0
    :goto_0
    return-object v0

    .line 691
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 692
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 695
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 696
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_0

    .line 697
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 705
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    return-object v0
.end method

.method getLayoutInflaterFactory()Landroid/support/v4/view/LayoutInflaterFactory;
    .locals 0

    .prologue
    .line 2464
    return-object p0
.end method

.method public hideFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v4, 0x1

    .line 1398
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :cond_0
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v1, :cond_4

    .line 1400
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1401
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1402
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, p3}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1404
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 1405
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1406
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1408
    :cond_1
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1410
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_2
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_3

    .line 1411
    iput-boolean v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1413
    :cond_3
    invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1415
    :cond_4
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    return v0
.end method

.method isStateAtLeast(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 988
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "transitionStyle"    # I

    .prologue
    const v8, 0x3f79999a    # 0.975f

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 885
    iget v4, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-virtual {p1, p2, p3, v4}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v1

    .line 887
    .local v1, "animObj":Landroid/view/animation/Animation;
    if-eqz v1, :cond_0

    .line 939
    .end local v1    # "animObj":Landroid/view/animation/Animation;
    :goto_0
    return-object v1

    .line 891
    .restart local v1    # "animObj":Landroid/view/animation/Animation;
    :cond_0
    iget v4, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    if-eqz v4, :cond_1

    .line 892
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 893
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 894
    goto :goto_0

    .line 898
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_1
    if-nez p2, :cond_2

    move-object v1, v3

    .line 899
    goto :goto_0

    .line 902
    :cond_2
    invoke-static {p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v2

    .line 903
    .local v2, "styleIndex":I
    if-gez v2, :cond_3

    move-object v1, v3

    .line 904
    goto :goto_0

    .line 907
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 922
    if-nez p4, :cond_4

    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->onHasWindowAnimations()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 923
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->onGetWindowAnimations()I

    move-result p4

    .line 925
    :cond_4
    if-nez p4, :cond_5

    move-object v1, v3

    .line 926
    goto :goto_0

    .line 909
    :pswitch_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x3f900000    # 1.125f

    invoke-static {v3, v4, v6, v7, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 911
    :pswitch_1
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6, v8, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 913
    :pswitch_2
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8, v6, v7, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 915
    :pswitch_3
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x3f89999a    # 1.075f

    invoke-static {v3, v6, v4, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 917
    :pswitch_4
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 919
    :pswitch_5
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v1, v3

    .line 939
    goto :goto_0

    .line 907
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method makeActive(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 1325
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_1

    .line 1341
    :cond_0
    :goto_0
    return-void

    .line 1329
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 1330
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1333
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    .line 1334
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    :goto_1
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Allocated fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1337
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    .line 1338
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method makeInactive(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 1344
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 1356
    :goto_0
    return-void

    .line 1348
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1350
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1353
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1354
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentHostCallback;->inactivateFragment(Ljava/lang/String;)V

    .line 1355
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->initState()V

    goto :goto_0
.end method

.method moveToState(IIIZ)V
    .locals 8
    .param p1, "newState"    # I
    .param p2, "transit"    # I
    .param p3, "transitStyle"    # I
    .param p4, "always"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1281
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1282
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No host"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1285
    :cond_0
    if-nez p4, :cond_2

    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-ne v0, p1, :cond_2

    .line 1311
    :cond_1
    :goto_0
    return-void

    .line 1289
    :cond_2
    iput p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    .line 1290
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1291
    const/4 v7, 0x0

    .line 1292
    .local v7, "loadersRunning":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 1293
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1294
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_3

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 1295
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1296
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_3

    .line 1297
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v0

    or-int/2addr v7, v0

    .line 1292
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1302
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_4
    if-nez v7, :cond_5

    .line 1303
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1306
    :cond_5
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 1307
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 1308
    iput-boolean v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_0
.end method

.method moveToState(IZ)V
    .locals 1
    .param p1, "newState"    # I
    .param p2, "always"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1277
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 1278
    return-void
.end method

.method moveToState(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v3, 0x0

    .line 1273
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1274
    return-void
.end method

.method moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
    .locals 17
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "newState"    # I
    .param p3, "transit"    # I
    .param p4, "transitionStyle"    # I
    .param p5, "keepActive"    # Z

    .prologue
    .line 994
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    move/from16 v0, p2

    if-le v0, v4, :cond_1

    .line 995
    const/16 p2, 0x1

    .line 997
    :cond_1
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/support/v4/app/Fragment;->mState:I

    move/from16 v0, p2

    if-le v0, v4, :cond_2

    .line 999
    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/Fragment;->mState:I

    move/from16 p2, v0

    .line 1003
    :cond_2
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v5, 0x4

    if-ge v4, v5, :cond_3

    const/4 v4, 0x3

    move/from16 v0, p2

    if-le v0, v4, :cond_3

    .line 1004
    const/16 p2, 0x3

    .line 1006
    :cond_3
    move-object/from16 v0, p1

    iget v4, v0, Landroid/support/v4/app/Fragment;->mState:I

    move/from16 v0, p2

    if-ge v4, v0, :cond_22

    .line 1010
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-nez v4, :cond_5

    .line 1270
    :cond_4
    :goto_0
    return-void

    .line 1013
    :cond_5
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v4, :cond_6

    .line 1018
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1019
    move-object/from16 v0, p1

    iget v6, v0, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1021
    :cond_6
    move-object/from16 v0, p1

    iget v4, v0, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 1265
    :cond_7
    :goto_1
    move-object/from16 v0, p1

    iget v4, v0, Landroid/support/v4/app/Fragment;->mState:I

    move/from16 v0, p2

    if-eq v4, v0, :cond_4

    .line 1266
    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveToState: Fragment state for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not updated inline; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "expected state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/support/v4/app/Fragment;->mState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Landroid/support/v4/app/Fragment;->mState:I

    goto :goto_0

    .line 1023
    :pswitch_0
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_8
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v4, :cond_a

    .line 1025
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1026
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v5, "android:view_state"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1028
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v5, "android:target_state"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 1030
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_9

    .line 1031
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v5, "android:target_req_state"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p1

    iput v4, v0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    .line 1034
    :cond_9
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v5, "android:user_visible_hint"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p1

    iput-boolean v4, v0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 1036
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v4, :cond_a

    .line 1037
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 1038
    const/4 v4, 0x3

    move/from16 v0, p2

    if-le v0, v4, :cond_a

    .line 1039
    const/16 p2, 0x3

    .line 1043
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 1044
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 1045
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    iget-object v4, v4, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1046
    :goto_2
    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1047
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1048
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1049
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v4, :cond_c

    .line 1050
    new-instance v4, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onAttach()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1045
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 1046
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->getFragmentManagerImpl()Landroid/support/v4/app/FragmentManagerImpl;

    move-result-object v4

    goto :goto_2

    .line 1053
    :cond_c
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    if-nez v4, :cond_1c

    .line 1054
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentHostCallback;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 1059
    :goto_3
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v4, :cond_1d

    .line 1060
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 1065
    :goto_4
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 1066
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v4, :cond_e

    .line 1070
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1072
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_1f

    .line 1073
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1074
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1e

    .line 1075
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setSaveFromParentEnabled(Landroid/view/View;Z)V

    .line 1079
    :goto_5
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1080
    :cond_d
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1086
    :cond_e
    :goto_6
    :pswitch_1
    const/4 v4, 0x1

    move/from16 v0, p2

    if-le v0, v4, :cond_17

    .line 1087
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_f

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_f
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-nez v4, :cond_15

    .line 1089
    const/4 v11, 0x0

    .line 1090
    .local v11, "container":Landroid/view/ViewGroup;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-eqz v4, :cond_11

    .line 1091
    move-object/from16 v0, p1

    iget v4, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_10

    .line 1092
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot create fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for a container view with no id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1097
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11    # "container":Landroid/view/ViewGroup;
    check-cast v11, Landroid/view/ViewGroup;

    .line 1098
    .restart local v11    # "container":Landroid/view/ViewGroup;
    if-nez v11, :cond_11

    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mRestored:Z

    if-nez v4, :cond_11

    .line 1101
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 1105
    .local v14, "resName":Ljava/lang/String;
    :goto_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No view found for id 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 1107
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") for fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1105
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1112
    .end local v14    # "resName":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p1

    iput-object v11, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1113
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v5}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1115
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_21

    .line 1116
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1117
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_20

    .line 1118
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setSaveFromParentEnabled(Landroid/view/View;Z)V

    .line 1122
    :goto_8
    if-eqz v11, :cond_13

    .line 1123
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v10

    .line 1125
    .local v10, "anim":Landroid/view/animation/Animation;
    if-eqz v10, :cond_12

    .line 1126
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1127
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1129
    :cond_12
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1131
    .end local v10    # "anim":Landroid/view/animation/Animation;
    :cond_13
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v4, :cond_14

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1132
    :cond_14
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1138
    .end local v11    # "container":Landroid/view/ViewGroup;
    :cond_15
    :goto_9
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 1139
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_16

    .line 1140
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 1142
    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1145
    :cond_17
    :pswitch_2
    const/4 v4, 0x2

    move/from16 v0, p2

    if-le v0, v4, :cond_18

    .line 1146
    const/4 v4, 0x3

    move-object/from16 v0, p1

    iput v4, v0, Landroid/support/v4/app/Fragment;->mState:I

    .line 1149
    :cond_18
    :pswitch_3
    const/4 v4, 0x3

    move/from16 v0, p2

    if-le v0, v4, :cond_1a

    .line 1150
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_19

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto STARTED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performStart()V

    .line 1154
    :cond_1a
    :pswitch_4
    const/4 v4, 0x4

    move/from16 v0, p2

    if-le v0, v4, :cond_7

    .line 1155
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_1b

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto RESUMED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performResume()V

    .line 1157
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1158
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_1

    .line 1056
    :cond_1c
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/support/v4/app/Fragment;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_3

    .line 1062
    :cond_1d
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 1063
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Landroid/support/v4/app/Fragment;->mState:I

    goto/16 :goto_4

    .line 1077
    :cond_1e
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_5

    .line 1082
    :cond_1f
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_6

    .line 1102
    .restart local v11    # "container":Landroid/view/ViewGroup;
    :catch_0
    move-exception v12

    .line 1103
    .local v12, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v14, "unknown"

    .restart local v14    # "resName":Ljava/lang/String;
    goto/16 :goto_7

    .line 1120
    .end local v12    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v14    # "resName":Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_8

    .line 1134
    :cond_21
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_9

    .line 1161
    .end local v11    # "container":Landroid/view/ViewGroup;
    :cond_22
    move-object/from16 v0, p1

    iget v4, v0, Landroid/support/v4/app/Fragment;->mState:I

    move/from16 v0, p2

    if-le v4, v0, :cond_7

    .line 1162
    move-object/from16 v0, p1

    iget v4, v0, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_1

    .line 1221
    :cond_23
    :goto_a
    :pswitch_5
    const/4 v4, 0x1

    move/from16 v0, p2

    if-ge v0, v4, :cond_7

    .line 1222
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v4, :cond_24

    .line 1223
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v4, :cond_24

    .line 1230
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1231
    .local v15, "v":Landroid/view/View;
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1232
    invoke-virtual {v15}, Landroid/view/View;->clearAnimation()V

    .line 1235
    .end local v15    # "v":Landroid/view/View;
    :cond_24
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v4, :cond_30

    .line 1240
    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    .line 1241
    const/16 p2, 0x1

    goto/16 :goto_1

    .line 1164
    :pswitch_6
    const/4 v4, 0x5

    move/from16 v0, p2

    if-ge v0, v4, :cond_26

    .line 1165
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_25

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom RESUMED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performPause()V

    .line 1169
    :cond_26
    :pswitch_7
    const/4 v4, 0x4

    move/from16 v0, p2

    if-ge v0, v4, :cond_28

    .line 1170
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_27

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom STARTED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performStop()V

    .line 1174
    :cond_28
    :pswitch_8
    const/4 v4, 0x3

    move/from16 v0, p2

    if-ge v0, v4, :cond_2a

    .line 1175
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_29

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom STOPPED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :cond_29
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performReallyStop()V

    .line 1179
    :cond_2a
    :pswitch_9
    const/4 v4, 0x2

    move/from16 v0, p2

    if-ge v0, v4, :cond_23

    .line 1180
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_2b

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_2b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_2c

    .line 1184
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroid/support/v4/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v4, :cond_2c

    .line 1185
    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V

    .line 1188
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performDestroyView()V

    .line 1189
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_2f

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_2f

    .line 1190
    const/4 v10, 0x0

    .line 1191
    .restart local v10    # "anim":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-lez v4, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v4, :cond_2d

    .line 1192
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v10

    .line 1195
    :cond_2d
    if-eqz v10, :cond_2e

    .line 1196
    move-object/from16 v13, p1

    .line 1197
    .local v13, "fragment":Landroid/support/v4/app/Fragment;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1198
    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    .line 1199
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 1200
    .local v16, "viewToAnimate":Landroid/view/View;
    new-instance v4, Landroid/support/v4/app/FragmentManagerImpl$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1, v10, v13}, Landroid/support/v4/app/FragmentManagerImpl$5;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/view/View;Landroid/view/animation/Animation;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v10, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1212
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1214
    .end local v13    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v16    # "viewToAnimate":Landroid/view/View;
    :cond_2e
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1216
    .end local v10    # "anim":Landroid/view/animation/Animation;
    :cond_2f
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1217
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1218
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_a

    .line 1243
    :cond_30
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_31

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :cond_31
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v4, :cond_32

    .line 1245
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performDestroy()V

    .line 1250
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performDetach()V

    .line 1251
    if-nez p5, :cond_7

    .line 1252
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v4, :cond_33

    .line 1253
    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/FragmentManagerImpl;->makeInactive(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_1

    .line 1247
    :cond_32
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput v4, v0, Landroid/support/v4/app/Fragment;->mState:I

    goto :goto_b

    .line 1255
    :cond_33
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 1256
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 1257
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    goto/16 :goto_1

    .line 1021
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1162
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .locals 1

    .prologue
    .line 2144
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2145
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x1

    .line 2371
    const-string v4, "fragment"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2460
    :cond_0
    :goto_0
    return-object v0

    .line 2375
    :cond_1
    const-string v4, "class"

    invoke-interface {p4, v0, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2376
    .local v8, "fname":Ljava/lang/String;
    sget-object v4, Landroid/support/v4/app/FragmentManagerImpl$FragmentTag;->Fragment:[I

    invoke-virtual {p3, p4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 2377
    .local v6, "a":Landroid/content/res/TypedArray;
    if-nez v8, :cond_2

    .line 2378
    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2380
    :cond_2
    invoke-virtual {v6, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 2381
    .local v9, "id":I
    const/4 v4, 0x2

    invoke-virtual {v6, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2382
    .local v10, "tag":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 2384
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Landroid/support/v4/app/Fragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2390
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 2391
    .local v7, "containerId":I
    :goto_1
    if-ne v7, v5, :cond_4

    if-ne v9, v5, :cond_4

    if-nez v10, :cond_4

    .line 2392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v7    # "containerId":I
    :cond_3
    move v7, v3

    .line 2390
    goto :goto_1

    .line 2399
    .restart local v7    # "containerId":I
    :cond_4
    if-eq v9, v5, :cond_9

    invoke-virtual {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 2400
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    :goto_2
    if-nez v1, :cond_5

    if-eqz v10, :cond_5

    .line 2401
    invoke-virtual {p0, v10}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 2403
    :cond_5
    if-nez v1, :cond_6

    if-eq v7, v5, :cond_6

    .line 2404
    invoke-virtual {p0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 2407
    :cond_6
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateView: id=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2408
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " existing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2407
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    :cond_7
    if-nez v1, :cond_b

    .line 2411
    invoke-static {p3, v8}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 2412
    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 2413
    if-eqz v9, :cond_a

    move v0, v9

    :goto_3
    iput v0, v1, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 2414
    iput v7, v1, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 2415
    iput-object v10, v1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 2416
    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 2417
    iput-object p0, v1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 2418
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iput-object v0, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 2419
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p4, v4}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2420
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 2444
    :cond_8
    :goto_4
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-ge v0, v2, :cond_d

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_d

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 2445
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 2450
    :goto_5
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_e

    .line 2451
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " did not create a view."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_9
    move-object v1, v0

    .line 2399
    goto/16 :goto_2

    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_a
    move v0, v7

    .line 2413
    goto :goto_3

    .line 2422
    :cond_b
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-eqz v0, :cond_c

    .line 2425
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Duplicate id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2426
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", or parent id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2427
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with another fragment for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2432
    :cond_c
    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 2433
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iput-object v0, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 2437
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_8

    .line 2438
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p4, v4}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 2447
    :cond_d
    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_5

    .line 2454
    :cond_e
    if-eqz v9, :cond_f

    .line 2455
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    .line 2457
    :cond_f
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    .line 2458
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2460
    :cond_10
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v3, 0x0

    .line 943
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_0

    .line 944
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_1

    .line 946
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 949
    :cond_1
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 950
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_0
.end method

.method public popBackStack()V
    .locals 2

    .prologue
    .line 599
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$2;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$2;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 604
    return-void
.end method

.method public popBackStack(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 631
    if-gez p1, :cond_0

    .line 632
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_0
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$4;-><init>(Landroid/support/v4/app/FragmentManagerImpl;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 639
    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 615
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$3;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$3;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 620
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 4

    .prologue
    .line 608
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 609
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 610
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 643
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 644
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 645
    if-gez p1, :cond_0

    .line 646
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 624
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 625
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 626
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
    .locals 12
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1728
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    .line 1729
    const/4 v9, 0x0

    .line 1801
    :goto_0
    return v9

    .line 1731
    :cond_0
    if-nez p2, :cond_3

    if-gez p3, :cond_3

    and-int/lit8 v9, p4, 0x1

    if-nez v9, :cond_3

    .line 1732
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 1733
    .local v5, "last":I
    if-gez v5, :cond_1

    .line 1734
    const/4 v9, 0x0

    goto :goto_0

    .line 1736
    :cond_1
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    .line 1737
    .local v1, "bss":Landroid/support/v4/app/BackStackRecord;
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1738
    .local v2, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 1739
    .local v6, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    iget v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v10, 0x1

    if-lt v9, v10, :cond_2

    .line 1740
    invoke-virtual {v1, v2, v6}, Landroid/support/v4/app/BackStackRecord;->calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1742
    :cond_2
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10, v2, v6}, Landroid/support/v4/app/BackStackRecord;->popFromBackStack(ZLandroid/support/v4/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/BackStackRecord$TransitionState;

    .line 1743
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 1801
    .end local v1    # "bss":Landroid/support/v4/app/BackStackRecord;
    .end local v5    # "last":I
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 1745
    .end local v2    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .end local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    :cond_3
    const/4 v4, -0x1

    .line 1746
    .local v4, "index":I
    if-nez p2, :cond_4

    if-ltz p3, :cond_b

    .line 1749
    :cond_4
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .line 1750
    :goto_2
    if-ltz v4, :cond_5

    .line 1751
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    .line 1752
    .restart local v1    # "bss":Landroid/support/v4/app/BackStackRecord;
    if-eqz p2, :cond_6

    invoke-virtual {v1}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1760
    .end local v1    # "bss":Landroid/support/v4/app/BackStackRecord;
    :cond_5
    if-gez v4, :cond_8

    .line 1761
    const/4 v9, 0x0

    goto :goto_0

    .line 1755
    .restart local v1    # "bss":Landroid/support/v4/app/BackStackRecord;
    :cond_6
    if-ltz p3, :cond_7

    iget v9, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-eq p3, v9, :cond_5

    .line 1758
    :cond_7
    add-int/lit8 v4, v4, -0x1

    .line 1759
    goto :goto_2

    .line 1763
    .end local v1    # "bss":Landroid/support/v4/app/BackStackRecord;
    :cond_8
    and-int/lit8 v9, p4, 0x1

    if-eqz v9, :cond_b

    .line 1764
    add-int/lit8 v4, v4, -0x1

    .line 1766
    :goto_3
    if-ltz v4, :cond_b

    .line 1767
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    .line 1768
    .restart local v1    # "bss":Landroid/support/v4/app/BackStackRecord;
    if-eqz p2, :cond_9

    invoke-virtual {v1}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    :cond_9
    if-ltz p3, :cond_b

    iget v9, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ne p3, v9, :cond_b

    .line 1770
    :cond_a
    add-int/lit8 v4, v4, -0x1

    .line 1771
    goto :goto_3

    .line 1777
    .end local v1    # "bss":Landroid/support/v4/app/BackStackRecord;
    :cond_b
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v4, v9, :cond_c

    .line 1778
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1780
    :cond_c
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1782
    .local v8, "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, "i":I
    :goto_4
    if-le v3, v4, :cond_d

    .line 1783
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1782
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 1785
    :cond_d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .line 1786
    .local v0, "LAST":I
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1787
    .restart local v2    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 1788
    .restart local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    iget v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v10, 0x1

    if-lt v9, v10, :cond_e

    .line 1789
    const/4 v3, 0x0

    :goto_5
    if-gt v3, v0, :cond_e

    .line 1790
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/BackStackRecord;

    invoke-virtual {v9, v2, v6}, Landroid/support/v4/app/BackStackRecord;->calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1789
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1793
    :cond_e
    const/4 v7, 0x0

    .line 1794
    .local v7, "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    const/4 v3, 0x0

    :goto_6
    if-gt v3, v0, :cond_11

    .line 1795
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_f

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Popping back stack state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    :cond_f
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/BackStackRecord;

    if-ne v3, v0, :cond_10

    const/4 v10, 0x1

    :goto_7
    invoke-virtual {v9, v10, v7, v2, v6}, Landroid/support/v4/app/BackStackRecord;->popFromBackStack(ZLandroid/support/v4/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/BackStackRecord$TransitionState;

    move-result-object v7

    .line 1794
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1796
    :cond_10
    const/4 v10, 0x0

    goto :goto_7

    .line 1799
    :cond_11
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    goto/16 :goto_1
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 678
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 679
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 682
    :cond_0
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 683
    return-void
.end method

.method public removeFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 7
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 1381
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v1

    if-nez v1, :cond_5

    move v6, v0

    .line 1383
    .local v6, "inactive":Z
    :goto_0
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v1, :cond_1

    if-eqz v6, :cond_4

    .line 1384
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 1385
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1387
    :cond_2
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_3

    .line 1388
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1390
    :cond_3
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1391
    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1392
    if-eqz v6, :cond_6

    move v2, v5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1395
    :cond_4
    return-void

    .end local v6    # "inactive":Z
    :cond_5
    move v6, v5

    .line 1382
    goto :goto_0

    .restart local v6    # "inactive":Z
    :cond_6
    move v2, v0

    .line 1392
    goto :goto_1
.end method

.method public removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .prologue
    .line 671
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 674
    :cond_0
    return-void
.end method

.method reportBackStackChanged()V
    .locals 2

    .prologue
    .line 1711
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1712
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1713
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 1712
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1716
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Landroid/support/v4/app/FragmentManagerNonConfig;)V
    .locals 14
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "nonConfig"    # Landroid/support/v4/app/FragmentManagerNonConfig;

    .prologue
    .line 2014
    if-nez p1, :cond_1

    .line 2133
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v5, p1

    .line 2015
    check-cast v5, Landroid/support/v4/app/FragmentManagerState;

    .line 2016
    .local v5, "fms":Landroid/support/v4/app/FragmentManagerState;
    iget-object v11, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    if-eqz v11, :cond_0

    .line 2018
    const/4 v2, 0x0

    .line 2022
    .local v2, "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    if-eqz p2, :cond_5

    .line 2023
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v9

    .line 2024
    .local v9, "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v2

    .line 2025
    if-eqz v9, :cond_4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    .line 2026
    .local v3, "count":I
    :goto_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v3, :cond_5

    .line 2027
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 2028
    .local v4, "f":Landroid/support/v4/app/Fragment;
    sget-boolean v11, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_2

    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "restoreAllState: re-attaching retained "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    :cond_2
    iget-object v11, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    iget v12, v4, Landroid/support/v4/app/Fragment;->mIndex:I

    aget-object v6, v11, v12

    .line 2030
    .local v6, "fs":Landroid/support/v4/app/FragmentState;
    iput-object v4, v6, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    .line 2031
    const/4 v11, 0x0

    iput-object v11, v4, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2032
    const/4 v11, 0x0

    iput v11, v4, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 2033
    const/4 v11, 0x0

    iput-boolean v11, v4, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 2034
    const/4 v11, 0x0

    iput-boolean v11, v4, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 2035
    const/4 v11, 0x0

    iput-object v11, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 2036
    iget-object v11, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v11, :cond_3

    .line 2037
    iget-object v11, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v12, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2038
    iget-object v11, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v12, "android:view_state"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v11

    iput-object v11, v4, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2040
    iget-object v11, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v11, v4, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2026
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2025
    .end local v3    # "count":I
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    .end local v6    # "fs":Landroid/support/v4/app/FragmentState;
    .end local v7    # "i":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 2047
    .end local v9    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    iget-object v12, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v12, v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 2048
    iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v11, :cond_6

    .line 2049
    iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2051
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    iget-object v11, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v11, v11

    if-ge v7, v11, :cond_c

    .line 2052
    iget-object v11, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    aget-object v6, v11, v7

    .line 2053
    .restart local v6    # "fs":Landroid/support/v4/app/FragmentState;
    if-eqz v6, :cond_9

    .line 2054
    const/4 v1, 0x0

    .line 2055
    .local v1, "childNonConfig":Landroid/support/v4/app/FragmentManagerNonConfig;
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_7

    .line 2056
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "childNonConfig":Landroid/support/v4/app/FragmentManagerNonConfig;
    check-cast v1, Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 2058
    .restart local v1    # "childNonConfig":Landroid/support/v4/app/FragmentManagerNonConfig;
    :cond_7
    iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v12, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v6, v11, v12, v1}, Landroid/support/v4/app/FragmentState;->instantiate(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManagerNonConfig;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 2059
    .restart local v4    # "f":Landroid/support/v4/app/Fragment;
    sget-boolean v11, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_8

    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "restoreAllState: active #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    :cond_8
    iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2064
    const/4 v11, 0x0

    iput-object v11, v6, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    .line 2051
    .end local v1    # "childNonConfig":Landroid/support/v4/app/FragmentManagerNonConfig;
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2066
    :cond_9
    iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2067
    iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v11, :cond_a

    .line 2068
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 2070
    :cond_a
    sget-boolean v11, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_b

    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "restoreAllState: avail #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    :cond_b
    iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2076
    .end local v6    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_c
    if-eqz p2, :cond_10

    .line 2077
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v9

    .line 2078
    .restart local v9    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v9, :cond_e

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    .line 2079
    .restart local v3    # "count":I
    :goto_5
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v3, :cond_10

    .line 2080
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 2081
    .restart local v4    # "f":Landroid/support/v4/app/Fragment;
    iget v11, v4, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    if-ltz v11, :cond_d

    .line 2082
    iget v11, v4, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    iget-object v12, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_f

    .line 2083
    iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v12, v4, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/Fragment;

    iput-object v11, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 2079
    :cond_d
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 2078
    .end local v3    # "count":I
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    :cond_e
    const/4 v3, 0x0

    goto :goto_5

    .line 2085
    .restart local v3    # "count":I
    .restart local v4    # "f":Landroid/support/v4/app/Fragment;
    :cond_f
    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Re-attaching retained fragment "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " target no longer exists: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v4, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    const/4 v11, 0x0

    iput-object v11, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    goto :goto_7

    .line 2094
    .end local v3    # "count":I
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    .end local v9    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    :cond_10
    iget-object v11, v5, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    if-eqz v11, :cond_14

    .line 2095
    new-instance v11, Ljava/util/ArrayList;

    iget-object v12, v5, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    array-length v12, v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 2096
    const/4 v7, 0x0

    :goto_8
    iget-object v11, v5, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    array-length v11, v11

    if-ge v7, v11, :cond_15

    .line 2097
    iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget-object v12, v5, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    aget v12, v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 2098
    .restart local v4    # "f":Landroid/support/v4/app/Fragment;
    if-nez v4, :cond_11

    .line 2099
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No instantiated fragment for index #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    aget v13, v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2102
    :cond_11
    const/4 v11, 0x1

    iput-boolean v11, v4, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 2103
    sget-boolean v11, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_12

    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "restoreAllState: added #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    :cond_12
    iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 2105
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Already added!"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2107
    :cond_13
    iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2096
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 2110
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    :cond_14
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 2114
    :cond_15
    iget-object v11, v5, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    if-eqz v11, :cond_18

    .line 2115
    new-instance v11, Ljava/util/ArrayList;

    iget-object v12, v5, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    array-length v12, v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2116
    const/4 v7, 0x0

    :goto_9
    iget-object v11, v5, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    array-length v11, v11

    if-ge v7, v11, :cond_0

    .line 2117
    iget-object v11, v5, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    aget-object v11, v11, v7

    invoke-virtual {v11, p0}, Landroid/support/v4/app/BackStackState;->instantiate(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;

    move-result-object v0

    .line 2118
    .local v0, "bse":Landroid/support/v4/app/BackStackRecord;
    sget-boolean v11, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_16

    .line 2119
    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "restoreAllState: back stack #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (index "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    new-instance v8, Landroid/support/v4/util/LogWriter;

    const-string v11, "FragmentManager"

    invoke-direct {v8, v11}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 2122
    .local v8, "logw":Landroid/support/v4/util/LogWriter;
    new-instance v10, Ljava/io/PrintWriter;

    invoke-direct {v10, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2123
    .local v10, "pw":Ljava/io/PrintWriter;
    const-string v11, "  "

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v10, v12}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2125
    .end local v8    # "logw":Landroid/support/v4/util/LogWriter;
    .end local v10    # "pw":Ljava/io/PrintWriter;
    :cond_16
    iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2126
    iget v11, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v11, :cond_17

    .line 2127
    iget v11, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {p0, v11, v0}, Landroid/support/v4/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V

    .line 2116
    :cond_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 2131
    .end local v0    # "bse":Landroid/support/v4/app/BackStackRecord;
    :cond_18
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method retainNonConfig()Landroid/support/v4/app/FragmentManagerNonConfig;
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 1805
    const/4 v4, 0x0

    .line 1806
    .local v4, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    const/4 v2, 0x0

    .line 1807
    .local v2, "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    .line 1808
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_6

    .line 1809
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 1810
    .local v3, "f":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_5

    .line 1811
    iget-boolean v7, v3, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    if-eqz v7, :cond_1

    .line 1812
    if-nez v4, :cond_0

    .line 1813
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1815
    .restart local v4    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1816
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 1817
    iget-object v7, v3, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v7, :cond_2

    iget-object v7, v3, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v7, v7, Landroid/support/v4/app/Fragment;->mIndex:I

    :goto_1
    iput v7, v3, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    .line 1818
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "retainNonConfig: keeping retained "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    :cond_1
    const/4 v0, 0x0

    .line 1821
    .local v0, "addedChild":Z
    iget-object v7, v3, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v7, :cond_4

    .line 1822
    iget-object v7, v3, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManagerImpl;->retainNonConfig()Landroid/support/v4/app/FragmentManagerNonConfig;

    move-result-object v1

    .line 1823
    .local v1, "child":Landroid/support/v4/app/FragmentManagerNonConfig;
    if-eqz v1, :cond_4

    .line 1824
    if-nez v2, :cond_3

    .line 1825
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1826
    .restart local v2    # "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v5, :cond_3

    .line 1827
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1826
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1817
    .end local v0    # "addedChild":Z
    .end local v1    # "child":Landroid/support/v4/app/FragmentManagerNonConfig;
    .end local v6    # "j":I
    :cond_2
    const/4 v7, -0x1

    goto :goto_1

    .line 1830
    .restart local v0    # "addedChild":Z
    .restart local v1    # "child":Landroid/support/v4/app/FragmentManagerNonConfig;
    :cond_3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1831
    const/4 v0, 0x1

    .line 1834
    .end local v1    # "child":Landroid/support/v4/app/FragmentManagerNonConfig;
    :cond_4
    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    .line 1835
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1808
    .end local v0    # "addedChild":Z
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1840
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    .end local v5    # "i":I
    :cond_6
    if-nez v4, :cond_7

    if-nez v2, :cond_7

    move-object v7, v8

    .line 1843
    :goto_3
    return-object v7

    :cond_7
    new-instance v7, Landroid/support/v4/app/FragmentManagerNonConfig;

    invoke-direct {v7, v4, v2}, Landroid/support/v4/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto :goto_3
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 1898
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 1900
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z

    if-eqz v9, :cond_0

    .line 1910
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1913
    :cond_0
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_2

    .line 2008
    :cond_1
    :goto_0
    return-object v5

    .line 1918
    :cond_2
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1919
    .local v0, "N":I
    new-array v1, v0, [Landroid/support/v4/app/FragmentState;

    .line 1920
    .local v1, "active":[Landroid/support/v4/app/FragmentState;
    const/4 v7, 0x0

    .line 1921
    .local v7, "haveFragments":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v0, :cond_9

    .line 1922
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 1923
    .local v4, "f":Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_7

    .line 1924
    iget v9, v4, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v9, :cond_3

    .line 1925
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has cleared index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1930
    :cond_3
    const/4 v7, 0x1

    .line 1932
    new-instance v6, Landroid/support/v4/app/FragmentState;

    invoke-direct {v6, v4}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 1933
    .local v6, "fs":Landroid/support/v4/app/FragmentState;
    aput-object v6, v1, v8

    .line 1935
    iget v9, v4, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v9, :cond_8

    iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v9, :cond_8

    .line 1936
    invoke-virtual {p0, v4}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v9

    iput-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1938
    iget-object v9, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v9, :cond_6

    .line 1939
    iget-object v9, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v9, v9, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v9, :cond_4

    .line 1940
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure saving state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has target not in fragment manager: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1944
    :cond_4
    iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v9, :cond_5

    .line 1945
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iput-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1947
    :cond_5
    iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v10, "android:target_state"

    iget-object v11, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v9, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 1949
    iget v9, v4, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    if-eqz v9, :cond_6

    .line 1950
    iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v10, "android:target_req_state"

    iget v11, v4, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1960
    :cond_6
    :goto_2
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_7

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Saved state of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    .end local v6    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1957
    .restart local v6    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_8
    iget-object v9, v4, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_2

    .line 1965
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    .end local v6    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_9
    if-nez v7, :cond_a

    .line 1966
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "FragmentManager"

    const-string v10, "saveAllState: no fragments!"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1970
    :cond_a
    const/4 v2, 0x0

    .line 1971
    .local v2, "added":[I
    const/4 v3, 0x0

    .line 1974
    .local v3, "backStack":[Landroid/support/v4/app/BackStackState;
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v9, :cond_d

    .line 1975
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1976
    if-lez v0, :cond_d

    .line 1977
    new-array v2, v0, [I

    .line 1978
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v0, :cond_d

    .line 1979
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/Fragment;

    iget v9, v9, Landroid/support/v4/app/Fragment;->mIndex:I

    aput v9, v2, v8

    .line 1980
    aget v9, v2, v8

    if-gez v9, :cond_b

    .line 1981
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1982
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has cleared index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v2, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1981
    invoke-direct {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1985
    :cond_b
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_c

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveAllState: adding fragment #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1986
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1985
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1992
    :cond_d
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v9, :cond_f

    .line 1993
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1994
    if-lez v0, :cond_f

    .line 1995
    new-array v3, v0, [Landroid/support/v4/app/BackStackState;

    .line 1996
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v0, :cond_f

    .line 1997
    new-instance v10, Landroid/support/v4/app/BackStackState;

    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v10, v9}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/BackStackRecord;)V

    aput-object v10, v3, v8

    .line 1998
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_e

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveAllState: adding back stack #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1999
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1998
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 2004
    :cond_f
    new-instance v5, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v5}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 2005
    .local v5, "fms":Landroid/support/v4/app/FragmentManagerState;
    iput-object v1, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    .line 2006
    iput-object v2, v5, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    .line 2007
    iput-object v3, v5, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    goto/16 :goto_0
.end method

.method saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 1863
    const/4 v0, 0x0

    .line 1865
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 1866
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1868
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 1869
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1870
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1871
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1874
    :cond_1
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1875
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V

    .line 1877
    :cond_2
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_4

    .line 1878
    if-nez v0, :cond_3

    .line 1879
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "result":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1881
    .restart local v0    # "result":Landroid/os/Bundle;
    :cond_3
    const-string v1, "android:view_state"

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1884
    :cond_4
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_6

    .line 1885
    if-nez v0, :cond_5

    .line 1886
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "result":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1889
    .restart local v0    # "result":Landroid/os/Bundle;
    :cond_5
    const-string v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1892
    :cond_6
    return-object v0
.end method

.method public saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
    .locals 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v1, 0x0

    .line 710
    iget v2, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v2, :cond_0

    .line 711
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not currently in the FragmentManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 714
    :cond_0
    iget v2, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v2, :cond_1

    .line 715
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 716
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    new-instance v1, Landroid/support/v4/app/Fragment$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    .line 718
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_1
    return-object v1
.end method

.method saveFragmentViewState(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 1847
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1860
    :cond_0
    :goto_0
    return-void

    .line 1850
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 1851
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 1855
    :goto_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1856
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1857
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1858
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_0

    .line 1853
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method public setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "bse"    # Landroid/support/v4/app/BackStackRecord;

    .prologue
    .line 1594
    monitor-enter p0

    .line 1595
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1596
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1598
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1599
    .local v0, "N":I
    if-ge p1, v0, :cond_2

    .line 1600
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1615
    :goto_0
    monitor-exit p0

    .line 1616
    return-void

    .line 1603
    :cond_2
    :goto_1
    if-ge v0, p1, :cond_5

    .line 1604
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1605
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1606
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1608
    :cond_3
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1610
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1612
    :cond_5
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    :cond_6
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1615
    .end local v0    # "N":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1418
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :cond_0
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v1, :cond_4

    .line 1420
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1421
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1422
    invoke-virtual {p0, p1, p2, v5, p3}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1424
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 1425
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1426
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1428
    :cond_1
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1430
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_2
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_3

    .line 1431
    iput-boolean v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1433
    :cond_3
    invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1435
    :cond_4
    return-void
.end method

.method startPendingDeferredFragments()V
    .locals 3

    .prologue
    .line 1314
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1322
    :cond_0
    return-void

    .line 1316
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1317
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1318
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    .line 1319
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V

    .line 1316
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 729
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 733
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 737
    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 735
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method
