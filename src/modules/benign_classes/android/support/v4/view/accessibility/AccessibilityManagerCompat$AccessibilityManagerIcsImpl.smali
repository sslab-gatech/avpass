.class Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerStubImpl;
.source "AccessibilityManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityManagerIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Z
    .locals 1
    .param p1, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p2, "listener"    # Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;

    .prologue
    .line 127
    .line 128
    invoke-virtual {p0, p2}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;->newAccessibilityStateChangeListener(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper;

    move-result-object v0

    .line 127
    invoke-static {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper;)Z

    move-result v0

    return v0
.end method

.method public getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;
    .locals 1
    .param p1, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p2, "feedbackTypeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs;->getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;
    .locals 1
    .param p1, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs;->getInstalledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
    .locals 1
    .param p1, "manager"    # Landroid/view/accessibility/AccessibilityManager;

    .prologue
    .line 153
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    return v0
.end method

.method public newAccessibilityStateChangeListener(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper;
    .locals 2
    .param p1, "listener"    # Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;

    .prologue
    .line 115
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper;

    new-instance v1, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1;-><init>(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)V

    invoke-direct {v0, p1, v1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper;-><init>(Ljava/lang/Object;Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge;)V

    return-object v0
.end method

.method public removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Z
    .locals 1
    .param p1, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p2, "listener"    # Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;

    .prologue
    .line 134
    .line 135
    invoke-virtual {p0, p2}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;->newAccessibilityStateChangeListener(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper;

    move-result-object v0

    .line 134
    invoke-static {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper;)Z

    move-result v0

    return v0
.end method
