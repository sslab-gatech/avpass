.class Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompat.java"

# interfaces
.implements Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;->newAccessibilityStateChangeListener(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;

.field final synthetic val$listener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;


# direct methods
.method constructor <init>(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;

    .prologue
    .line 116
    iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1;->this$0:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;

    iput-object p2, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1;->val$listener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1;->val$listener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;->onAccessibilityStateChanged(Z)V

    .line 120
    return-void
.end method
