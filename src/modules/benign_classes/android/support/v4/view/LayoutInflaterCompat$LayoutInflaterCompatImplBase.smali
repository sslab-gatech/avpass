.class Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplBase;
.super Ljava/lang/Object;
.source "LayoutInflaterCompat.java"

# interfaces
.implements Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/LayoutInflaterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutInflaterCompatImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFactory(Landroid/view/LayoutInflater;)Landroid/support/v4/view/LayoutInflaterFactory;
    .locals 1
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 41
    invoke-static {p1}, Landroid/support/v4/view/LayoutInflaterCompatBase;->getFactory(Landroid/view/LayoutInflater;)Landroid/support/v4/view/LayoutInflaterFactory;

    move-result-object v0

    return-object v0
.end method

.method public setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V
    .locals 0
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "factory"    # Landroid/support/v4/view/LayoutInflaterFactory;

    .prologue
    .line 36
    invoke-static {p1, p2}, Landroid/support/v4/view/LayoutInflaterCompatBase;->setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 37
    return-void
.end method
