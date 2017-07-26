.class Landroid/support/v7/widget/ActivityChooserView$1;
.super Landroid/database/DataSetObserver;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActivityChooserView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/ActivityChooserView;

    .prologue
    .line 129
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$1;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 134
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$1;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 135
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 139
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$1;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetInvalidated()V

    .line 140
    return-void
.end method
