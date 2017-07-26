.class Landroid/support/v4/print/PrintHelperKitkat$3$1$1;
.super Ljava/lang/Object;
.source "PrintHelperKitkat.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelperKitkat$3$1;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/support/v4/print/PrintHelperKitkat$3$1;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelperKitkat$3$1;)V
    .locals 0
    .param p1, "this$2"    # Landroid/support/v4/print/PrintHelperKitkat$3$1;

    .prologue
    .line 486
    iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat$3$1$1;->this$2:Landroid/support/v4/print/PrintHelperKitkat$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$3$1$1;->this$2:Landroid/support/v4/print/PrintHelperKitkat$3$1;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroid/support/v4/print/PrintHelperKitkat$3;

    # invokes: Landroid/support/v4/print/PrintHelperKitkat$3;->cancelLoad()V
    invoke-static {v0}, Landroid/support/v4/print/PrintHelperKitkat$3;->access$300(Landroid/support/v4/print/PrintHelperKitkat$3;)V

    .line 490
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$3$1$1;->this$2:Landroid/support/v4/print/PrintHelperKitkat$3$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/print/PrintHelperKitkat$3$1;->cancel(Z)Z

    .line 491
    return-void
.end method
