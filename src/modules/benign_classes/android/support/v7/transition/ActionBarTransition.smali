.class public Landroid/support/v7/transition/ActionBarTransition;
.super Ljava/lang/Object;
.source "ActionBarTransition.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TRANSITIONS_ENABLED:Z = false

.field private static final TRANSITION_DURATION:I = 0x78


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 58
    return-void
.end method
