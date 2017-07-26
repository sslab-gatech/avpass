.class public final Landroid/support/v4/view/KeyEventCompat;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;,
        Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;,
        Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 130
    new-instance v0, Landroid/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v0, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatch(Landroid/view/KeyEvent;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "receiver"    # Landroid/view/KeyEvent$Callback;
    .param p2, "state"    # Ljava/lang/Object;
    .param p3, "target"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    check-cast p2, Landroid/view/KeyEvent$DispatcherState;

    .end local p2    # "state":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getKeyDispatcherState(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    return-object v0
.end method

.method public static hasModifiers(Landroid/view/KeyEvent;I)Z
    .locals 2
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "modifiers"    # I

    .prologue
    .line 151
    sget-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public static hasNoModifiers(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 155
    sget-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public static isCtrlPressed(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 197
    sget-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->isCtrlPressed(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static isTracking(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    return v0
.end method

.method public static metaStateHasModifiers(II)Z
    .locals 1
    .param p0, "metaState"    # I
    .param p1, "modifiers"    # I

    .prologue
    .line 143
    sget-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public static metaStateHasNoModifiers(I)Z
    .locals 1
    .param p0, "metaState"    # I

    .prologue
    .line 147
    sget-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public static normalizeMetaState(I)I
    .locals 1
    .param p0, "metaState"    # I

    .prologue
    .line 139
    sget-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->normalizeMetaState(I)I

    move-result v0

    return v0
.end method

.method public static startTracking(Landroid/view/KeyEvent;)V
    .locals 0
    .param p0, "event"    # Landroid/view/KeyEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/view/KeyEvent;->startTracking()V

    .line 165
    return-void
.end method
