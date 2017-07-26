.class Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventJellyBeanImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventIcsImpl;
.source "AccessibilityEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityEventJellyBeanImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventIcsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 122
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatJellyBean;->getAction(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method

.method public getMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 112
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatJellyBean;->getMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method

.method public setAction(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "action"    # I

    .prologue
    .line 117
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatJellyBean;->setAction(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 118
    return-void
.end method

.method public setMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "granularity"    # I

    .prologue
    .line 107
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatJellyBean;->setMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 108
    return-void
.end method
