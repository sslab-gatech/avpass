.class Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;
.source "AccessibilityManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityManagerKitKatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z
    .locals 1
    .param p1, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p2, "listener"    # Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    .prologue
    .line 173
    .line 174
    invoke-virtual {p0, p2}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;->newTouchExplorationStateChangeListener(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper;

    move-result-object v0

    .line 173
    invoke-static {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newTouchExplorationStateChangeListener(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper;
    .locals 2
    .param p1, "listener"    # Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    .prologue
    .line 161
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper;

    new-instance v1, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl$1;-><init>(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)V

    invoke-direct {v0, p1, v1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper;-><init>(Ljava/lang/Object;Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge;)V

    return-object v0
.end method

.method public removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z
    .locals 1
    .param p1, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p2, "listener"    # Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    .prologue
    .line 180
    .line 181
    invoke-virtual {p0, p2}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;->newTouchExplorationStateChangeListener(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper;

    move-result-object v0

    .line 180
    invoke-static {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
