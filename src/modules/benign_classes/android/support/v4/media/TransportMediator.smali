.class public Landroid/support/v4/media/TransportMediator;
.super Landroid/support/v4/media/TransportController;
.source "TransportMediator.java"


# static fields
.field public static final FLAG_KEY_MEDIA_FAST_FORWARD:I = 0x40

.field public static final FLAG_KEY_MEDIA_NEXT:I = 0x80

.field public static final FLAG_KEY_MEDIA_PAUSE:I = 0x10

.field public static final FLAG_KEY_MEDIA_PLAY:I = 0x4

.field public static final FLAG_KEY_MEDIA_PLAY_PAUSE:I = 0x8

.field public static final FLAG_KEY_MEDIA_PREVIOUS:I = 0x1

.field public static final FLAG_KEY_MEDIA_REWIND:I = 0x2

.field public static final FLAG_KEY_MEDIA_STOP:I = 0x20

.field public static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field public static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field public static final KEYCODE_MEDIA_RECORD:I = 0x82


# instance fields
.field final mAudioManager:Landroid/media/AudioManager;

.field final mCallbacks:Landroid/support/v4/media/TransportPerformer;

.field final mContext:Landroid/content/Context;

.field final mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

.field final mDispatcherState:Ljava/lang/Object;

.field final mKeyEventCallback:Landroid/view/KeyEvent$Callback;

.field final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/media/TransportStateListener;",
            ">;"
        }
    .end annotation
.end field

.field final mTransportKeyCallback:Landroid/support/v4/media/TransportMediatorCallback;

.field final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/media/TransportPerformer;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callbacks"    # Landroid/support/v4/media/TransportPerformer;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v4/media/TransportMediator;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/support/v4/media/TransportPerformer;)V

    .line 153
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/support/v4/media/TransportPerformer;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "callbacks"    # Landroid/support/v4/media/TransportPerformer;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/support/v4/media/TransportController;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Landroid/support/v4/media/TransportMediator$1;

    invoke-direct {v0, p0}, Landroid/support/v4/media/TransportMediator$1;-><init>(Landroid/support/v4/media/TransportMediator;)V

    iput-object v0, p0, Landroid/support/v4/media/TransportMediator;->mTransportKeyCallback:Landroid/support/v4/media/TransportMediatorCallback;

    .line 129
    new-instance v0, Landroid/support/v4/media/TransportMediator$2;

    invoke-direct {v0, p0}, Landroid/support/v4/media/TransportMediator$2;-><init>(Landroid/support/v4/media/TransportMediator;)V

    iput-object v0, p0, Landroid/support/v4/media/TransportMediator;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    .line 160
    if-eqz p1, :cond_1

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/support/v4/media/TransportMediator;->mContext:Landroid/content/Context;

    .line 161
    iput-object p3, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    .line 162
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/support/v4/media/TransportMediator;->mAudioManager:Landroid/media/AudioManager;

    .line 163
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    .end local p2    # "view":Landroid/view/View;
    :cond_0
    iput-object p2, p0, Landroid/support/v4/media/TransportMediator;->mView:Landroid/view/View;

    .line 164
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/TransportMediator;->mDispatcherState:Ljava/lang/Object;

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 166
    new-instance v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    iget-object v1, p0, Landroid/support/v4/media/TransportMediator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/TransportMediator;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Landroid/support/v4/media/TransportMediator;->mView:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v4/media/TransportMediator;->mTransportKeyCallback:Landroid/support/v4/media/TransportMediatorCallback;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/view/View;Landroid/support/v4/media/TransportMediatorCallback;)V

    iput-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    .line 171
    :goto_1
    return-void

    .line 160
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 169
    .end local p2    # "view":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/View;Landroid/support/v4/media/TransportPerformer;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callbacks"    # Landroid/support/v4/media/TransportPerformer;

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/media/TransportMediator;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/support/v4/media/TransportPerformer;)V

    .line 157
    return-void
.end method

.method private getListeners()[Landroid/support/v4/media/TransportStateListener;
    .locals 2

    .prologue
    .line 214
    iget-object v1, p0, Landroid/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 215
    const/4 v0, 0x0

    .line 219
    :goto_0
    return-object v0

    .line 217
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Landroid/support/v4/media/TransportStateListener;

    .line 218
    .local v0, "listeners":[Landroid/support/v4/media/TransportStateListener;
    iget-object v1, p0, Landroid/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method static isMediaKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 111
    sparse-switch p0, :sswitch_data_0

    .line 126
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 123
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private pushControllerState()V
    .locals 5

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    iget-object v1, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v1}, Landroid/support/v4/media/TransportPerformer;->onIsPlaying()Z

    move-result v1

    iget-object v2, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    .line 243
    invoke-virtual {v2}, Landroid/support/v4/media/TransportPerformer;->onGetCurrentPosition()J

    move-result-wide v2

    iget-object v4, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    .line 244
    invoke-virtual {v4}, Landroid/support/v4/media/TransportPerformer;->onGetTransportControlFlags()I

    move-result v4

    .line 242
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->refreshState(ZJI)V

    .line 246
    :cond_0
    return-void
.end method

.method private reportPlayingChanged()V
    .locals 4

    .prologue
    .line 223
    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->getListeners()[Landroid/support/v4/media/TransportStateListener;

    move-result-object v1

    .line 224
    .local v1, "listeners":[Landroid/support/v4/media/TransportStateListener;
    if-eqz v1, :cond_0

    .line 225
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 226
    .local v0, "listener":Landroid/support/v4/media/TransportStateListener;
    invoke-virtual {v0, p0}, Landroid/support/v4/media/TransportStateListener;->onPlayingChanged(Landroid/support/v4/media/TransportController;)V

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "listener":Landroid/support/v4/media/TransportStateListener;
    :cond_0
    return-void
.end method

.method private reportTransportControlsChanged()V
    .locals 4

    .prologue
    .line 232
    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->getListeners()[Landroid/support/v4/media/TransportStateListener;

    move-result-object v1

    .line 233
    .local v1, "listeners":[Landroid/support/v4/media/TransportStateListener;
    if-eqz v1, :cond_0

    .line 234
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 235
    .local v0, "listener":Landroid/support/v4/media/TransportStateListener;
    invoke-virtual {v0, p0}, Landroid/support/v4/media/TransportStateListener;->onTransportControlsChanged(Landroid/support/v4/media/TransportController;)V

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "listener":Landroid/support/v4/media/TransportStateListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->destroy()V

    .line 345
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 200
    iget-object v1, p0, Landroid/support/v4/media/TransportMediator;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mDispatcherState:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {p1, v1, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportPerformer;->onGetBufferPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportPerformer;->onGetCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportPerformer;->onGetDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemoteControlClient()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTransportControlFlags()I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportPerformer;->onGetTransportControlFlags()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportPerformer;->onIsPlaying()Z

    move-result v0

    return v0
.end method

.method public pausePlaying()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->pausePlaying()V

    .line 277
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportPerformer;->onPause()V

    .line 278
    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->pushControllerState()V

    .line 279
    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->reportPlayingChanged()V

    .line 280
    return-void
.end method

.method public refreshState()V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->pushControllerState()V

    .line 250
    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->reportPlayingChanged()V

    .line 251
    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->reportTransportControlsChanged()V

    .line 252
    return-void
.end method

.method public registerStateListener(Landroid/support/v4/media/TransportStateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/media/TransportStateListener;

    .prologue
    .line 205
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "pos"    # J

    .prologue
    .line 308
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/TransportPerformer;->onSeekTo(J)V

    .line 309
    return-void
.end method

.method public startPlaying()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->startPlaying()V

    .line 263
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportPerformer;->onStart()V

    .line 264
    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->pushControllerState()V

    .line 265
    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->reportPlayingChanged()V

    .line 266
    return-void
.end method

.method public stopPlaying()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->stopPlaying()V

    .line 291
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportPerformer;->onStop()V

    .line 292
    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->pushControllerState()V

    .line 293
    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->reportPlayingChanged()V

    .line 294
    return-void
.end method

.method public unregisterStateListener(Landroid/support/v4/media/TransportStateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/media/TransportStateListener;

    .prologue
    .line 210
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method
