.class public Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompatKitKat.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchExplorationStateChangeListenerWrapper"
.end annotation


# instance fields
.field final mListener:Ljava/lang/Object;

.field final mListenerBridge:Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge;)V
    .locals 0
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "listenerBridge"    # Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper;->mListener:Ljava/lang/Object;

    .line 35
    iput-object p2, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper;->mListenerBridge:Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge;

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    if-ne p0, p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v1

    .line 48
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 49
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 51
    check-cast v0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper;

    .line 53
    .local v0, "other":Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper;
    iget-object v3, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper;->mListener:Ljava/lang/Object;

    if-nez v3, :cond_4

    iget-object v3, v0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper;->mListener:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper;->mListener:Ljava/lang/Object;

    iget-object v2, v0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper;->mListener:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper;->mListener:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper;->mListener:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public onTouchExplorationStateChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper;->mListenerBridge:Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge;

    invoke-interface {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge;->onTouchExplorationStateChanged(Z)V

    .line 59
    return-void
.end method
