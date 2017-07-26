.class Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl$1;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompat.java"

# interfaces
.implements Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;->newTouchExplorationStateChangeListener(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;

.field final synthetic val$listener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;


# direct methods
.method constructor <init>(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;

    .prologue
    .line 162
    iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl$1;->this$0:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;

    iput-object p2, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl$1;->val$listener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 165
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl$1;->val$listener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V

    .line 166
    return-void
.end method
