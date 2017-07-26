.class public Landroid/support/v7/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenu;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;,
        Landroid/support/v7/view/menu/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final TAG:Ljava/lang/String; = "MenuBuilder"

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

.field private mFrozenViewStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mOverrideVisibleItems:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/view/menu/MenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 164
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 166
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 168
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 170
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 222
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 227
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 231
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 233
    invoke-direct {p0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 234
    return-void
.end method

.method private createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 8
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "ordering"    # I
    .param p5, "title"    # Ljava/lang/CharSequence;
    .param p6, "defaultShowAsAction"    # I

    .prologue
    .line 458
    new-instance v0, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/support/v7/view/menu/MenuItemImpl;-><init>(Landroid/support/v7/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    return-object v0
.end method

.method private dispatchPresenterUpdate(Z)V
    .locals 4
    .param p1, "cleared"    # Z

    .prologue
    .line 282
    iget-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 285
    iget-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 286
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuPresenter;

    .line 287
    .local v0, "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    if-nez v0, :cond_1

    .line 288
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 290
    :cond_1
    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/MenuPresenter;->updateMenuView(Z)V

    goto :goto_1

    .line 293
    .end local v0    # "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 342
    const-string v5, "android:menu:presenters"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .line 344
    .local v3, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v3, :cond_0

    iget-object v5, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 360
    :cond_0
    return-void

    .line 346
    :cond_1
    iget-object v5, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 347
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/MenuPresenter;

    .line 348
    .local v2, "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    if-nez v2, :cond_3

    .line 349
    iget-object v6, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 351
    :cond_3
    invoke-interface {v2}, Landroid/support/v7/view/menu/MenuPresenter;->getId()I

    move-result v0

    .line 352
    .local v0, "id":I
    if-lez v0, :cond_2

    .line 353
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 354
    .local v1, "parcel":Landroid/os/Parcelable;
    if-eqz v1, :cond_2

    .line 355
    invoke-interface {v2, v1}, Landroid/support/v7/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 319
    iget-object v5, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 339
    :goto_0
    return-void

    .line 321
    :cond_0
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 323
    .local v2, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 324
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuPresenter;

    .line 325
    .local v1, "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    if-nez v1, :cond_2

    .line 326
    iget-object v6, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 328
    :cond_2
    invoke-interface {v1}, Landroid/support/v7/view/menu/MenuPresenter;->getId()I

    move-result v0

    .line 329
    .local v0, "id":I
    if-lez v0, :cond_1

    .line 330
    invoke-interface {v1}, Landroid/support/v7/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    .line 331
    .local v4, "state":Landroid/os/Parcelable;
    if-eqz v4, :cond_1

    .line 332
    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 338
    .end local v0    # "id":I
    .end local v1    # "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    .end local v4    # "state":Landroid/os/Parcelable;
    :cond_3
    const-string v5, "android:menu:presenters"

    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method private dispatchSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;Landroid/support/v7/view/menu/MenuPresenter;)Z
    .locals 5
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/SubMenuBuilder;
    .param p2, "preferredPresenter"    # Landroid/support/v7/view/menu/MenuPresenter;

    .prologue
    .line 298
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 315
    :cond_0
    return v2

    .line 300
    :cond_1
    const/4 v2, 0x0

    .line 303
    .local v2, "result":Z
    if-eqz p2, :cond_2

    .line 304
    invoke-interface {p2, p1}, Landroid/support/v7/view/menu/MenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z

    move-result v2

    .line 307
    :cond_2
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 308
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuPresenter;

    .line 309
    .local v0, "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    if-nez v0, :cond_4

    .line 310
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_4
    if-nez v2, :cond_3

    .line 312
    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/MenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z

    move-result v2

    goto :goto_0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 3
    .param p1, "ordering"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 830
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 831
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 832
    .local v1, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getOrdering()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 833
    add-int/lit8 v2, v0, 0x1

    .line 837
    .end local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :goto_1
    return v2

    .line 830
    .restart local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 837
    .end local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getOrdering(I)I
    .locals 3
    .param p0, "categoryOrder"    # I

    .prologue
    .line 763
    const/high16 v1, -0x10000

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x10

    .line 765
    .local v0, "index":I
    if-ltz v0, :cond_0

    sget-object v1, Landroid/support/v7/view/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 766
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "order does not contain a valid category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 769
    :cond_1
    sget-object v1, Landroid/support/v7/view/menu/MenuBuilder;->sCategoryToOrder:[I

    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1
.end method

.method private removeItemAtInt(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "updateChildrenOnMenuViews"    # Z

    .prologue
    .line 568
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 572
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 3
    .param p1, "titleRes"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "iconRes"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1197
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1199
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz p5, :cond_0

    .line 1200
    iput-object p5, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1203
    iput-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1204
    iput-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1223
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1224
    return-void

    .line 1206
    :cond_0
    if-lez p1, :cond_3

    .line 1207
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1212
    :cond_1
    :goto_1
    if-lez p3, :cond_4

    .line 1213
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1219
    :cond_2
    :goto_2
    iput-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    goto :goto_0

    .line 1208
    :cond_3
    if-eqz p2, :cond_1

    .line 1209
    iput-object p2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1214
    :cond_4
    if-eqz p4, :cond_2

    .line 1215
    iput-object p4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method private setShortcutsVisibleInner(Z)V
    .locals 3
    .param p1, "shortcutsVisible"    # Z

    .prologue
    const/4 v0, 0x1

    .line 796
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 797
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    sget v2, Landroid/support/v7/appcompat/R$bool;->abc_config_showMenuShortcutsWhenKeyboardPresent:I

    .line 798
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 799
    return-void

    .line 798
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 468
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .prologue
    .line 478
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 473
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 463
    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 13
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "caller"    # Landroid/content/ComponentName;
    .param p5, "specifics"    # [Landroid/content/Intent;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "flags"    # I
    .param p8, "outSpecificItems"    # [Landroid/view/MenuItem;

    .prologue
    .line 508
    iget-object v10, p0, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 509
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .line 510
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 511
    .local v6, "lri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 513
    .local v3, "N":I
    :goto_0
    and-int/lit8 v10, p7, 0x1

    if-nez v10, :cond_0

    .line 514
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->removeGroup(I)V

    .line 517
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 518
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 519
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v10, :cond_3

    move-object/from16 v10, p6

    :goto_2
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 521
    .local v9, "rintent":Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 524
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v10}, Landroid/support/v7/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    .line 525
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v10

    .line 526
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    .line 527
    .local v5, "item":Landroid/view/MenuItem;
    if-eqz p8, :cond_1

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v10, :cond_1

    .line 528
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v5, p8, v10

    .line 517
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 511
    .end local v3    # "N":I
    .end local v4    # "i":I
    .end local v5    # "item":Landroid/view/MenuItem;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "rintent":Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 519
    .restart local v3    # "N":I
    .restart local v4    # "i":I
    .restart local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v10, p5, v10

    goto :goto_2

    .line 532
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    return v3
.end method

.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 439
    invoke-static {p3}, Landroid/support/v7/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v4

    .line 441
    .local v4, "ordering":I
    iget v6, p0, Landroid/support/v7/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/MenuBuilder;->createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v7

    .line 444
    .local v7, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v7, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 449
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v1, v4}, Landroid/support/v7/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v1

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 450
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 452
    return-object v7
.end method

.method public addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Landroid/support/v7/view/menu/MenuPresenter;

    .prologue
    .line 248
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 249
    return-void
.end method

.method public addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V
    .locals 2
    .param p1, "presenter"    # Landroid/support/v7/view/menu/MenuPresenter;
    .param p2, "menuContext"    # Landroid/content/Context;

    .prologue
    .line 261
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-interface {p1, p2, p0}, Landroid/support/v7/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 264
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 488
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .prologue
    .line 502
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 493
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 494
    .local v0, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    new-instance v1, Landroid/support/v7/view/menu/SubMenuBuilder;

    iget-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Landroid/support/v7/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 495
    .local v1, "subMenu":Landroid/support/v7/view/menu/SubMenuBuilder;
    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuItemImpl;->setSubMenu(Landroid/support/v7/view/menu/SubMenuBuilder;)V

    .line 497
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 483
    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public changeMenuMode()V
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder$Callback;->onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 827
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    .line 593
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 595
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 596
    return-void
.end method

.method public clearAll()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 580
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 581
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->clear()V

    .line 582
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->clearHeader()V

    .line 583
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 584
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 585
    invoke-virtual {p0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 586
    return-void
.end method

.method public clearHeader()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1188
    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1189
    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1190
    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1192
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1193
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 1025
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 1026
    return-void
.end method

.method public final close(Z)V
    .locals 4
    .param p1, "closeAllMenus"    # Z

    .prologue
    .line 1009
    iget-boolean v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    if-eqz v2, :cond_0

    .line 1021
    :goto_0
    return-void

    .line 1011
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    .line 1012
    iget-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1013
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuPresenter;

    .line 1014
    .local v0, "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    if-nez v0, :cond_1

    .line 1015
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1017
    :cond_1
    invoke-interface {v0, p0, p1}, Landroid/support/v7/view/menu/MenuPresenter;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    goto :goto_1

    .line 1020
    .end local v0    # "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    goto :goto_0
.end method

.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 5
    .param p1, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    .line 1348
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eq v3, p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1366
    :cond_1
    :goto_0
    return v0

    .line 1350
    :cond_2
    const/4 v0, 0x0

    .line 1352
    .local v0, "collapsed":Z
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1353
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1354
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuPresenter;

    .line 1355
    .local v1, "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    if-nez v1, :cond_4

    .line 1356
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1357
    :cond_4
    invoke-interface {v1, p0, p1}, Landroid/support/v7/view/menu/MenuPresenter;->collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1361
    .end local v1    # "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1363
    if-eqz v0, :cond_1

    .line 1364
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method dispatchMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 817
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 5
    .param p1, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    .line 1326
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 1344
    :cond_0
    :goto_0
    return v0

    .line 1328
    :cond_1
    const/4 v0, 0x0

    .line 1330
    .local v0, "expanded":Z
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1331
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1332
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuPresenter;

    .line 1333
    .local v1, "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    if-nez v1, :cond_3

    .line 1334
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1335
    :cond_3
    invoke-interface {v1, p0, p1}, Landroid/support/v7/view/menu/MenuPresenter;->expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1339
    .end local v1    # "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1341
    if-eqz v0, :cond_0

    .line 1342
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public findGroupIndex(I)I
    .locals 1
    .param p1, "group"    # I

    .prologue
    .line 708
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public findGroupIndex(II)I
    .locals 4
    .param p1, "group"    # I
    .param p2, "start"    # I

    .prologue
    .line 712
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 714
    .local v2, "size":I
    if-gez p2, :cond_0

    .line 715
    const/4 p2, 0x0

    .line 718
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 719
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 721
    .local v1, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 726
    .end local v0    # "i":I
    .end local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :goto_1
    return v0

    .line 718
    .restart local v0    # "i":I
    .restart local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    .end local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 677
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 678
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 679
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 680
    .local v1, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 691
    .end local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :goto_1
    return-object v1

    .line 682
    .restart local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_0
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 683
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 685
    .local v2, "possibleItem":Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    move-object v1, v2

    .line 686
    goto :goto_1

    .line 678
    .end local v2    # "possibleItem":Landroid/view/MenuItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 691
    .end local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public findItemIndex(I)I
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 695
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 697
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 698
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 699
    .local v1, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 704
    .end local v0    # "i":I
    .end local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :goto_1
    return v0

    .line 697
    .restart local v0    # "i":I
    .restart local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 704
    .end local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 909
    iget-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 910
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 911
    invoke-virtual {p0, v2, p1, p2}, Landroid/support/v7/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 913
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 944
    :cond_0
    :goto_0
    return-object v8

    .line 917
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 918
    .local v3, "metaState":I
    new-instance v4, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v4}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 920
    .local v4, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 923
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 924
    .local v7, "size":I
    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    .line 925
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/MenuItemImpl;

    goto :goto_0

    .line 928
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v5

    .line 931
    .local v5, "qwerty":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v7, :cond_0

    .line 932
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 933
    .local v1, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    if-eqz v5, :cond_6

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v6

    .line 935
    .local v6, "shortcutChar":C
    :goto_2
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v11

    if-ne v6, v9, :cond_3

    and-int/lit8 v9, v3, 0x2

    if-eqz v9, :cond_5

    :cond_3
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v6, v9, :cond_4

    and-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_5

    :cond_4
    if-eqz v5, :cond_7

    const/16 v9, 0x8

    if-ne v6, v9, :cond_7

    const/16 v9, 0x43

    if-ne p1, v9, :cond_7

    :cond_5
    move-object v8, v1

    .line 941
    goto :goto_0

    .line 934
    .end local v6    # "shortcutChar":C
    :cond_6
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v6

    goto :goto_2

    .line 931
    .restart local v6    # "shortcutChar":C
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 11
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    const/16 v10, 0x43

    .line 865
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v6

    .line 866
    .local v6, "qwerty":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    .line 867
    .local v4, "metaState":I
    new-instance v5, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v5}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 869
    .local v5, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p3, v5}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v2

    .line 871
    .local v2, "isKeyCodeMapped":Z
    if-nez v2, :cond_1

    if-eq p2, v10, :cond_1

    .line 893
    :cond_0
    return-void

    .line 876
    :cond_1
    iget-object v8, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 877
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 878
    iget-object v8, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 879
    .local v3, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 880
    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v8, p1, p2, p3}, Landroid/support/v7/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 882
    :cond_2
    if-eqz v6, :cond_5

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v7

    .line 883
    .local v7, "shortcutChar":C
    :goto_1
    and-int/lit8 v8, v4, 0x5

    if-nez v8, :cond_4

    if-eqz v7, :cond_4

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x0

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x2

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    if-eqz v6, :cond_4

    const/16 v8, 0x8

    if-ne v7, v8, :cond_4

    if-ne p2, v10, :cond_4

    .line 889
    :cond_3
    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 890
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 882
    .end local v7    # "shortcutChar":C
    :cond_5
    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v7

    goto :goto_1
.end method

.method public flagActionItems()V
    .locals 9

    .prologue
    .line 1138
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 1140
    .local v6, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    iget-boolean v7, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v7, :cond_0

    .line 1175
    :goto_0
    return-void

    .line 1145
    :cond_0
    const/4 v0, 0x0

    .line 1146
    .local v0, "flagged":Z
    iget-object v7, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 1147
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/MenuPresenter;

    .line 1148
    .local v4, "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    if-nez v4, :cond_1

    .line 1149
    iget-object v8, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1151
    :cond_1
    invoke-interface {v4}, Landroid/support/v7/view/menu/MenuPresenter;->flagActionItems()Z

    move-result v8

    or-int/2addr v0, v8

    goto :goto_1

    .line 1155
    .end local v4    # "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    .end local v5    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    :cond_2
    if-eqz v0, :cond_4

    .line 1156
    iget-object v7, p0, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1157
    iget-object v7, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1158
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1159
    .local v3, "itemsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_5

    .line 1160
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 1161
    .local v2, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1162
    iget-object v7, p0, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1164
    :cond_3
    iget-object v7, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1170
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    .end local v3    # "itemsSize":I
    :cond_4
    iget-object v7, p0, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1171
    iget-object v7, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1172
    iget-object v7, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1174
    :cond_5
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    goto :goto_0
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1178
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->flagActionItems()V

    .line 1179
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 1370
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 736
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1183
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->flagActionItems()V

    .line 1184
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .locals 1

    .prologue
    .line 1322
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;
    .locals 0

    .prologue
    .line 1303
    return-object p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1093
    iget-boolean v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 1108
    :goto_0
    return-object v3

    .line 1096
    :cond_0
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1098
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1100
    .local v2, "itemsSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 1101
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 1102
    .local v1, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1105
    .end local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1106
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1108
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public hasVisibleItems()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 659
    iget-boolean v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    if-eqz v4, :cond_1

    .line 672
    :cond_0
    :goto_0
    return v3

    .line 663
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 665
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 666
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 667
    .local v1, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 665
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 672
    .end local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isQwertyMode()Z
    .locals 1

    .prologue
    .line 776
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 741
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 805
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemActionRequestChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    const/4 v0, 0x1

    .line 1087
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1088
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1089
    return-void
.end method

.method onItemVisibleChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    const/4 v0, 0x1

    .line 1076
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1077
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1078
    return-void
.end method

.method public onItemsChanged(Z)V
    .locals 2
    .param p1, "structureChanged"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1036
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_1

    .line 1037
    if-eqz p1, :cond_0

    .line 1038
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1039
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1042
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    .line 1046
    :goto_0
    return-void

    .line 1044
    :cond_1
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 950
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "flags"    # I

    .prologue
    .line 954
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "preferredPresenter"    # Landroid/support/v7/view/menu/MenuPresenter;
    .param p3, "flags"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 958
    move-object v1, p1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 960
    .local v1, "itemImpl":Landroid/support/v7/view/menu/MenuItemImpl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move v0, v6

    .line 997
    :cond_1
    :goto_0
    return v0

    .line 964
    :cond_2
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->invoke()Z

    move-result v0

    .line 966
    .local v0, "invoked":Z
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;

    move-result-object v2

    .line 967
    .local v2, "provider":Landroid/support/v4/view/ActionProvider;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/support/v4/view/ActionProvider;->hasSubMenu()Z

    move-result v7

    if-eqz v7, :cond_3

    move v3, v5

    .line 968
    .local v3, "providerHasSubMenu":Z
    :goto_1
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 969
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->expandActionView()Z

    move-result v6

    or-int/2addr v0, v6

    .line 970
    if-eqz v0, :cond_1

    .line 971
    invoke-virtual {p0, v5}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0

    .end local v3    # "providerHasSubMenu":Z
    :cond_3
    move v3, v6

    .line 967
    goto :goto_1

    .line 973
    .restart local v3    # "providerHasSubMenu":Z
    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v3, :cond_9

    .line 974
    :cond_5
    and-int/lit8 v7, p3, 0x4

    if-nez v7, :cond_6

    .line 976
    invoke-virtual {p0, v6}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 979
    :cond_6
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v6

    if-nez v6, :cond_7

    .line 980
    new-instance v6, Landroid/support/v7/view/menu/SubMenuBuilder;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, p0, v1}, Landroid/support/v7/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)V

    invoke-virtual {v1, v6}, Landroid/support/v7/view/menu/MenuItemImpl;->setSubMenu(Landroid/support/v7/view/menu/SubMenuBuilder;)V

    .line 983
    :cond_7
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/SubMenuBuilder;

    .line 984
    .local v4, "subMenu":Landroid/support/v7/view/menu/SubMenuBuilder;
    if-eqz v3, :cond_8

    .line 985
    invoke-virtual {v2, v4}, Landroid/support/v4/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 987
    :cond_8
    invoke-direct {p0, v4, p2}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;Landroid/support/v7/view/menu/MenuPresenter;)Z

    move-result v6

    or-int/2addr v0, v6

    .line 988
    if-nez v0, :cond_1

    .line 989
    invoke-virtual {p0, v5}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0

    .line 992
    .end local v4    # "subMenu":Landroid/support/v7/view/menu/SubMenuBuilder;
    :cond_9
    and-int/lit8 v6, p3, 0x1

    if-nez v6, :cond_1

    .line 993
    invoke-virtual {p0, v5}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "flags"    # I

    .prologue
    .line 842
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v1

    .line 844
    .local v1, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    const/4 v0, 0x0

    .line 846
    .local v0, "handled":Z
    if-eqz v1, :cond_0

    .line 847
    invoke-virtual {p0, v1, p3}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 850
    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    .line 851
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 854
    :cond_1
    return v0
.end method

.method public removeGroup(I)V
    .locals 5
    .param p1, "group"    # I

    .prologue
    .line 542
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    .line 544
    .local v0, "i":I
    if-ltz v0, :cond_1

    .line 545
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v1, v4, v0

    .line 546
    .local v1, "maxRemovable":I
    const/4 v2, 0x0

    .local v2, "numRemoved":I
    move v3, v2

    .line 547
    .end local v2    # "numRemoved":I
    .local v3, "numRemoved":I
    :goto_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 549
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Landroid/support/v7/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    move v3, v2

    .end local v2    # "numRemoved":I
    .restart local v3    # "numRemoved":I
    goto :goto_0

    .line 553
    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 555
    .end local v1    # "maxRemovable":I
    .end local v2    # "numRemoved":I
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 537
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 538
    return-void
.end method

.method public removeItemAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 576
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 577
    return-void
.end method

.method public removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V
    .locals 4
    .param p1, "presenter"    # Landroid/support/v7/view/menu/MenuPresenter;

    .prologue
    .line 273
    iget-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 274
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuPresenter;

    .line 275
    .local v0, "item":Landroid/support/v7/view/menu/MenuPresenter;
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    .line 276
    :cond_1
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    .end local v0    # "item":Landroid/support/v7/view/menu/MenuPresenter;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    :cond_2
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "states"    # Landroid/os/Bundle;

    .prologue
    .line 398
    if-nez p1, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v8

    .line 402
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v7

    .line 405
    .local v7, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 406
    .local v3, "itemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 407
    invoke-virtual {p0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 408
    .local v2, "item":Landroid/view/MenuItem;
    invoke-static {v2}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v6

    .line 409
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 410
    invoke-virtual {v6, v7}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 412
    :cond_2
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 413
    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/SubMenuBuilder;

    .line 414
    .local v5, "subMenu":Landroid/support/v7/view/menu/SubMenuBuilder;
    invoke-virtual {v5, p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 406
    .end local v5    # "subMenu":Landroid/support/v7/view/menu/SubMenuBuilder;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 418
    .end local v2    # "item":Landroid/view/MenuItem;
    .end local v6    # "v":Landroid/view/View;
    :cond_4
    const-string v8, "android:menu:expandedactionview"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 419
    .local v0, "expandedId":I
    if-lez v0, :cond_0

    .line 420
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 421
    .local v4, "itemToExpand":Landroid/view/MenuItem;
    if-eqz v4, :cond_0

    .line 422
    invoke-static {v4}, Landroid/support/v4/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z

    goto :goto_0
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 367
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 368
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "outStates"    # Landroid/os/Bundle;

    .prologue
    .line 371
    const/4 v5, 0x0

    .line 373
    .local v5, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 374
    .local v2, "itemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 375
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 376
    .local v1, "item":Landroid/view/MenuItem;
    invoke-static {v1}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v4

    .line 377
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 378
    if-nez v5, :cond_0

    .line 379
    new-instance v5, Landroid/util/SparseArray;

    .end local v5    # "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 381
    .restart local v5    # "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_0
    invoke-virtual {v4, v5}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 382
    invoke-static {v1}, Landroid/support/v4/view/MenuItemCompat;->isActionViewExpanded(Landroid/view/MenuItem;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 383
    const-string v6, "android:menu:expandedactionview"

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 386
    :cond_1
    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 387
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/SubMenuBuilder;

    .line 388
    .local v3, "subMenu":Landroid/support/v7/view/menu/SubMenuBuilder;
    invoke-virtual {v3, p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 374
    .end local v3    # "subMenu":Landroid/support/v7/view/menu/SubMenuBuilder;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    .end local v1    # "item":Landroid/view/MenuItem;
    .end local v4    # "v":Landroid/view/View;
    :cond_3
    if-eqz v5, :cond_4

    .line 393
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 395
    :cond_4
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 363
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 364
    return-void
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .prologue
    .line 432
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .line 433
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1314
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1315
    return-void
.end method

.method public setDefaultShowAsAction(I)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 0
    .param p1, "defaultShowAsAction"    # I

    .prologue
    .line 237
    iput p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 238
    return-object p0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 599
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    .line 601
    .local v2, "group":I
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 602
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 603
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 604
    .local v1, "curItem":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 605
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 602
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 606
    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 609
    if-ne v1, p1, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v1, v4}, Landroid/support/v7/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 612
    .end local v1    # "curItem":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_3
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "checkable"    # Z
    .param p3, "exclusive"    # Z

    .prologue
    .line 616
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 618
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 619
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 620
    .local v2, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 621
    invoke-virtual {v2, p3}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 622
    invoke-virtual {v2, p2}, Landroid/support/v7/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 618
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    .end local v2    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 647
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 649
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 650
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 651
    .local v2, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 652
    invoke-virtual {v2, p2}, Landroid/support/v7/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 649
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 655
    .end local v2    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 5
    .param p1, "group"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 629
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 634
    .local v0, "N":I
    const/4 v1, 0x0

    .line 635
    .local v1, "changedAtLeastOneItem":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 636
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 637
    .local v3, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 638
    invoke-virtual {v3, p2}, Landroid/support/v7/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 635
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 642
    .end local v3    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_1
    if-eqz v1, :cond_2

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 643
    :cond_2
    return-void
.end method

.method protected setHeaderIconInt(I)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 6
    .param p1, "iconRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 1270
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1271
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1258
    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1259
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 6
    .param p1, "titleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 1246
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1247
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1234
    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1235
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1282
    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1283
    return-object p0
.end method

.method public setOptionalIconsVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1318
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 1319
    return-void
.end method

.method public setOverrideVisibleItems(Z)V
    .locals 0
    .param p1, "override"    # Z

    .prologue
    .line 1379
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    .line 1380
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .param p1, "isQwerty"    # Z

    .prologue
    .line 746
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 748
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 749
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .param p1, "shortcutsVisible"    # Z

    .prologue
    .line 787
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_0

    .line 793
    :goto_0
    return-void

    .line 791
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 792
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1061
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1063
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v0, :cond_0

    .line 1064
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1065
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1067
    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 1

    .prologue
    .line 1054
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_0

    .line 1055
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1056
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1058
    :cond_0
    return-void
.end method
