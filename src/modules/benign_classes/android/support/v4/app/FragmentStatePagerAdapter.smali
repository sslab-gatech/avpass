.class public abstract Landroid/support/v4/app/FragmentStatePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "FragmentStatePagerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentStatePagerAdapter"


# instance fields
.field private mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

.field private final mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 69
    iput-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    .line 73
    iput-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    .line 76
    iput-object p1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 77
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 130
    move-object v0, p3

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 132
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 133
    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 137
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_1

    .line 138
    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_1
    iget-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 141
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;

    move-result-object v1

    .line 140
    :goto_1
    invoke-virtual {v3, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 145
    return-void

    :cond_2
    move-object v1, v2

    .line 141
    goto :goto_1
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 165
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 169
    :cond_0
    return-void
.end method

.method public abstract getItem(I)Landroid/support/v4/app/Fragment;
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 98
    iget-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p2, :cond_0

    .line 99
    iget-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 100
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 125
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    .line 105
    :cond_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v3, :cond_1

    .line 106
    iget-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 109
    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 111
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p2, :cond_2

    .line 112
    iget-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment$SavedState;

    .line 113
    .local v2, "fss":Landroid/support/v4/app/Fragment$SavedState;
    if-eqz v2, :cond_2

    .line 114
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V

    .line 117
    .end local v2    # "fss":Landroid/support/v4/app/Fragment$SavedState;
    :cond_2
    :goto_1
    iget-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p2, :cond_3

    .line 118
    iget-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {v1, v5}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 121
    invoke-virtual {v1, v5}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 122
    iget-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-object v0, v1

    .line 125
    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 173
    check-cast p2, Landroid/support/v4/app/Fragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 11
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 200
    if-eqz p1, :cond_4

    move-object v0, p1

    .line 201
    check-cast v0, Landroid/os/Bundle;

    .line 202
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 203
    const-string v7, "states"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 204
    .local v2, "fss":[Landroid/os/Parcelable;
    iget-object v7, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 205
    iget-object v7, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 206
    if-eqz v2, :cond_0

    .line 207
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_0

    .line 208
    iget-object v8, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    aget-object v7, v2, v3

    check-cast v7, Landroid/support/v4/app/Fragment$SavedState;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 212
    .local v6, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 213
    .local v5, "key":Ljava/lang/String;
    const-string v8, "f"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 214
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 215
    .local v4, "index":I
    iget-object v8, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v8, v0, v5}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 216
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_3

    .line 217
    :goto_2
    iget-object v8, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v8, v4, :cond_2

    .line 218
    iget-object v8, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 220
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 221
    iget-object v8, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v8, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 223
    :cond_3
    const-string v8, "FragmentStatePagerAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad fragment at key "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 228
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    .end local v2    # "fss":[Landroid/os/Parcelable;
    .end local v4    # "index":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 178
    const/4 v4, 0x0

    .line 179
    .local v4, "state":Landroid/os/Bundle;
    iget-object v5, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 180
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "state":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 181
    .restart local v4    # "state":Landroid/os/Bundle;
    iget-object v5, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v1, v5, [Landroid/support/v4/app/Fragment$SavedState;

    .line 182
    .local v1, "fss":[Landroid/support/v4/app/Fragment$SavedState;
    iget-object v5, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 183
    const-string v5, "states"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 185
    .end local v1    # "fss":[Landroid/support/v4/app/Fragment$SavedState;
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 186
    iget-object v5, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 187
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 188
    if-nez v4, :cond_1

    .line 189
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "state":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 191
    .restart local v4    # "state":Landroid/os/Bundle;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v5, v4, v3, v0}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 185
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_3
    return-object v4
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 149
    move-object v0, p3

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 150
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eq v0, v1, :cond_2

    .line 151
    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 153
    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 155
    :cond_0
    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 157
    invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 159
    :cond_1
    iput-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    .line 161
    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewPager with adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires a view id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    return-void
.end method
