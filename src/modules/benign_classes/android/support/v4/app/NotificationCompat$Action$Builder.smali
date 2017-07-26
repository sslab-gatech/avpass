.class public final Landroid/support/v4/app/NotificationCompat$Action$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAllowGeneratedReplies:Z

.field private final mExtras:Landroid/os/Bundle;

.field private final mIcon:I

.field private final mIntent:Landroid/app/PendingIntent;

.field private mRemoteInputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/RemoteInput;",
            ">;"
        }
    .end annotation
.end field

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2508
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 2509
    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2521
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mIcon:I

    .line 2522
    invoke-static {p2}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 2523
    iput-object p3, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    .line 2524
    iput-object p4, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    .line 2525
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/NotificationCompat$Action;)V
    .locals 5
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompat$Action;

    .prologue
    .line 2517
    iget v0, p1, Landroid/support/v4/app/NotificationCompat$Action;->icon:I

    iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    new-instance v3, Landroid/os/Bundle;

    iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 2518
    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2535
    if-eqz p1, :cond_0

    .line 2536
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2538
    :cond_0
    return-object p0
.end method

.method public addRemoteInput(Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .locals 1
    .param p1, "remoteInput"    # Landroid/support/v4/app/RemoteInput;

    .prologue
    .line 2558
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    .line 2561
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2562
    return-object p0
.end method

.method public build()Landroid/support/v4/app/NotificationCompat$Action;
    .locals 7

    .prologue
    .line 2594
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    .line 2595
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/support/v4/app/RemoteInput;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/app/RemoteInput;

    move-object v5, v0

    .line 2596
    .local v5, "remoteInputs":[Landroid/support/v4/app/RemoteInput;
    :goto_0
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action;

    iget v1, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mIcon:I

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    iget-boolean v6, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;Z)V

    return-object v0

    .line 2595
    .end local v5    # "remoteInputs":[Landroid/support/v4/app/RemoteInput;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public extend(Landroid/support/v4/app/NotificationCompat$Action$Extender;)Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .locals 0
    .param p1, "extender"    # Landroid/support/v4/app/NotificationCompat$Action$Extender;

    .prologue
    .line 2584
    invoke-interface {p1, p0}, Landroid/support/v4/app/NotificationCompat$Action$Extender;->extend(Landroid/support/v4/app/NotificationCompat$Action$Builder;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    .line 2585
    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2547
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public setAllowGeneratedReplies(Z)Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .locals 0
    .param p1, "allowGeneratedReplies"    # Z

    .prologue
    .line 2575
    iput-boolean p1, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    .line 2576
    return-object p0
.end method
