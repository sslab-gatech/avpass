.class Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ScrollingTabContainerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ScrollingTabContainerView;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 551
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    iget-object v0, v0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 560
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    iget-object v0, v0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 565
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 570
    if-nez p2, :cond_0

    .line 571
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBar$Tab;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/ScrollingTabContainerView;->createTabView(Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/widget/ScrollingTabContainerView$TabView;

    move-result-object p2

    .line 575
    :goto_0
    return-object p2

    :cond_0
    move-object v0, p2

    .line 573
    check-cast v0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->bindTab(Landroid/support/v7/app/ActionBar$Tab;)V

    goto :goto_0
.end method
