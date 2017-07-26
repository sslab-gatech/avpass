.class public final Landroid/support/v4/view/accessibility/AccessibilityEventCompat;
.super Ljava/lang/Object;
.source "AccessibilityEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventKitKatImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventJellyBeanImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventIcsImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventStubImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;
    }
.end annotation


# static fields
.field public static final CONTENT_CHANGE_TYPE_CONTENT_DESCRIPTION:I = 0x4

.field public static final CONTENT_CHANGE_TYPE_SUBTREE:I = 0x1

.field public static final CONTENT_CHANGE_TYPE_TEXT:I = 0x2

.field public static final CONTENT_CHANGE_TYPE_UNDEFINED:I = 0x0

.field private static final IMPL:Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

.field public static final TYPES_ALL_MASK:I = -0x1

.field public static final TYPE_ANNOUNCEMENT:I = 0x4000

.field public static final TYPE_ASSIST_READING_CONTEXT:I = 0x1000000

.field public static final TYPE_GESTURE_DETECTION_END:I = 0x80000

.field public static final TYPE_GESTURE_DETECTION_START:I = 0x40000

.field public static final TYPE_TOUCH_EXPLORATION_GESTURE_END:I = 0x400

.field public static final TYPE_TOUCH_EXPLORATION_GESTURE_START:I = 0x200

.field public static final TYPE_TOUCH_INTERACTION_END:I = 0x200000

.field public static final TYPE_TOUCH_INTERACTION_START:I = 0x100000

.field public static final TYPE_VIEW_ACCESSIBILITY_FOCUSED:I = 0x8000

.field public static final TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED:I = 0x10000

.field public static final TYPE_VIEW_CONTEXT_CLICKED:I = 0x800000

.field public static final TYPE_VIEW_HOVER_ENTER:I = 0x80

.field public static final TYPE_VIEW_HOVER_EXIT:I = 0x100

.field public static final TYPE_VIEW_SCROLLED:I = 0x1000

.field public static final TYPE_VIEW_TEXT_SELECTION_CHANGED:I = 0x2000

.field public static final TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY:I = 0x20000

.field public static final TYPE_WINDOWS_CHANGED:I = 0x400000

.field public static final TYPE_WINDOW_CONTENT_CHANGED:I = 0x800


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 143
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventKitKatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventKitKatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    .line 151
    :goto_0
    return-void

    .line 144
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 145
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventJellyBeanImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventJellyBeanImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    goto :goto_0

    .line 146
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 147
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventIcsImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventIcsImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    goto :goto_0

    .line 149
    :cond_2
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventStubImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventStubImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    return-void
.end method

.method public static appendRecord(Landroid/view/accessibility/AccessibilityEvent;Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)V
    .locals 2
    .param p0, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p1, "record"    # Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    .prologue
    .line 318
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getImpl()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->appendRecord(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method public static asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    .locals 1
    .param p0, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 345
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-direct {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1
    .param p0, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 374
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method

.method public static getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    .locals 2
    .param p0, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p1, "index"    # I

    .prologue
    .line 328
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    invoke-interface {v1, p0, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1
    .param p0, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 306
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method

.method public static setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 1
    .param p0, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p1, "changeTypes"    # I

    .prologue
    .line 357
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 358
    return-void
.end method


# virtual methods
.method public getAction(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 424
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->getAction(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method

.method public getMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 394
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->getMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method

.method public setAction(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "action"    # I

    .prologue
    .line 415
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->setAction(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 416
    return-void
.end method

.method public setMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "granularity"    # I

    .prologue
    .line 385
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->setMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 386
    return-void
.end method
