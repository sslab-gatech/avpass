.class public abstract Landroid/support/v13/app/FragmentPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "FragmentPagerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentPagerAdapter"


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/app/FragmentManager;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 70
    iput-object v0, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 71
    iput-object v0, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 74
    iput-object p1, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 75
    return-void
.end method

.method private static makeFragmentName(IJ)Ljava/lang/String;
    .locals 3
    .param p0, "viewId"    # I
    .param p1, "id"    # J

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 125
    :cond_0
    iget-object v0, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 126
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 149
    iget-object v0, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 151
    :cond_0
    return-void
.end method

.method public abstract getItem(I)Landroid/app/Fragment;
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 177
    int-to-long v0, p1

    return-wide v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x0

    .line 92
    iget-object v4, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v4, :cond_0

    .line 93
    iget-object v4, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 96
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;->getItemId(I)J

    move-result-wide v2

    .line 99
    .local v2, "itemId":J
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-static {v4, v2, v3}, Landroid/support/v13/app/FragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 101
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_2

    .line 103
    iget-object v4, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v4, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 110
    :goto_0
    iget-object v4, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v4, :cond_1

    .line 111
    invoke-static {v0, v7}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 112
    invoke-static {v0, v7}, Landroid/support/v13/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 115
    :cond_1
    return-object v0

    .line 105
    :cond_2
    invoke-virtual {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    .line 107
    iget-object v4, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    .line 108
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    invoke-static {v6, v2, v3}, Landroid/support/v13/app/FragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v6

    .line 107
    invoke-virtual {v4, v5, v0, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 155
    check-cast p2, Landroid/app/Fragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

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
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 165
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    .line 131
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v1, :cond_2

    .line 132
    iget-object v1, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-static {v1, v2}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 134
    iget-object v1, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-static {v1, v2}, Landroid/support/v13/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 136
    :cond_0
    if-eqz v0, :cond_1

    .line 137
    invoke-static {v0, v3}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 138
    invoke-static {v0, v3}, Landroid/support/v13/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 140
    :cond_1
    iput-object v0, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 142
    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 85
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

    .line 88
    :cond_0
    return-void
.end method
