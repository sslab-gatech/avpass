.class public Landroid/support/v7/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/support/v7/view/menu/ShowableListMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;,
        Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;,
        Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;,
        Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;,
        Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2

.field private static sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

.field private static sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

.field private static sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field mDropDownList:Landroid/support/v7/widget/DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mDropDownWindowLayoutType:I

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mForceIgnoreOutsideTouch:Z

.field final mHandler:Landroid/os/Handler;

.field private final mHideSelector:Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;

.field private mIsAnimatedFromAnchor:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field final mResizePopupRunnable:Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 85
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "setClipToScreenEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v7/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    :try_start_1
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "getMaxAvailableHeight"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v7/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    :goto_1
    :try_start_2
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "setEpicenterBounds"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v7/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 103
    :goto_2
    return-void

    .line 87
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 88
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    .line 94
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 100
    :catch_2
    move-exception v0

    .line 101
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 217
    const/4 v0, 0x0

    sget v1, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 228
    sget v0, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p4, "defStyleRes"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    const/4 v1, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    .line 110
    iput v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    .line 113
    const/16 v1, 0x3ea

    iput v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 115
    iput-boolean v4, p0, Landroid/support/v7/widget/ListPopupWindow;->mIsAnimatedFromAnchor:Z

    .line 117
    iput v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownGravity:I

    .line 119
    iput-boolean v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 120
    iput-boolean v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 121
    const v1, 0x7fffffff

    iput v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 124
    iput v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    .line 135
    new-instance v1, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    iput-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    .line 136
    new-instance v1, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    iput-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mTouchInterceptor:Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 137
    new-instance v1, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    iput-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mScrollListener:Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;

    .line 138
    new-instance v1, Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    iput-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mHideSelector:Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;

    .line 143
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 255
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 256
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 258
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 260
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 262
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 264
    iget v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-eqz v1, :cond_0

    .line 265
    iput-boolean v4, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 267
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 269
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 270
    new-instance v1, Landroid/support/v7/widget/AppCompatPopupWindow;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 274
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 275
    return-void

    .line 272
    :cond_1
    new-instance v1, Landroid/support/v7/widget/AppCompatPopupWindow;

    invoke-direct {v1, p1, p2, p3}, Landroid/support/v7/widget/AppCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    goto :goto_0
.end method

.method private buildDropDown()I
    .locals 25

    .prologue
    .line 1124
    const/16 v19, 0x0

    .line 1126
    .local v19, "otherHeights":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    if-nez v2, :cond_8

    .line 1127
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1135
    .local v9, "context":Landroid/content/Context;
    new-instance v2, Landroid/support/v7/widget/ListPopupWindow$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/support/v7/widget/ListPopupWindow$2;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1146
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Landroid/support/v7/widget/ListPopupWindow;->createDropDownListView(Landroid/content/Context;Z)Landroid/support/v7/widget/DropDownListView;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 1147
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1148
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1150
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1151
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/DropDownListView;->setFocusable(Z)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    new-instance v4, Landroid/support/v7/widget/ListPopupWindow$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/support/v7/widget/ListPopupWindow$3;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/ListPopupWindow;->mScrollListener:Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1174
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v2, :cond_1

    .line 1175
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1178
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 1180
    .local v10, "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 1181
    .local v14, "hintView":Landroid/view/View;
    if-eqz v14, :cond_2

    .line 1184
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1185
    .local v12, "hintContainer":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1187
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v13, v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1191
    .local v13, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    packed-switch v2, :pswitch_data_0

    .line 1203
    const-string v2, "ListPopupWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid hint position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    if-ltz v2, :cond_7

    .line 1212
    const/high16 v22, -0x80000000

    .line 1213
    .local v22, "widthMode":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    move/from16 v23, v0

    .line 1218
    .local v23, "widthSize":I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 1219
    .local v24, "widthSpec":I
    const/4 v11, 0x0

    .line 1220
    .local v11, "heightSpec":I
    const/4 v2, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v0, v2}, Landroid/view/View;->measure(II)V

    .line 1222
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 1223
    .restart local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v19, v2, v4

    .line 1226
    move-object v10, v12

    .line 1229
    .end local v11    # "heightSpec":I
    .end local v12    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v22    # "widthMode":I
    .end local v23    # "widthSize":I
    .end local v24    # "widthSpec":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1244
    .end local v9    # "context":Landroid/content/Context;
    .end local v14    # "hintView":Landroid/view/View;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1245
    .local v8, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_9

    .line 1246
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1247
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int v20, v2, v4

    .line 1251
    .local v20, "padding":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v2, :cond_4

    .line 1252
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 1260
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1261
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_a

    const/4 v15, 0x1

    .line 1262
    .local v15, "ignoreBottomDecorations":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v15}, Landroid/support/v7/widget/ListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v18

    .line 1264
    .local v18, "maxHeight":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_b

    .line 1265
    :cond_5
    add-int v2, v18, v20

    .line 1297
    :goto_6
    return v2

    .line 1146
    .end local v8    # "background":Landroid/graphics/drawable/Drawable;
    .end local v10    # "dropDownView":Landroid/view/ViewGroup;
    .end local v15    # "ignoreBottomDecorations":Z
    .end local v18    # "maxHeight":I
    .end local v20    # "padding":I
    .restart local v9    # "context":Landroid/content/Context;
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1193
    .restart local v10    # "dropDownView":Landroid/view/ViewGroup;
    .restart local v12    # "hintContainer":Landroid/widget/LinearLayout;
    .restart local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v14    # "hintView":Landroid/view/View;
    :pswitch_0
    invoke-virtual {v12, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1194
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1198
    :pswitch_1
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1199
    invoke-virtual {v12, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1215
    :cond_7
    const/16 v22, 0x0

    .line 1216
    .restart local v22    # "widthMode":I
    const/16 v23, 0x0

    .restart local v23    # "widthSize":I
    goto/16 :goto_2

    .line 1231
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "dropDownView":Landroid/view/ViewGroup;
    .end local v12    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v14    # "hintView":Landroid/view/View;
    .end local v22    # "widthMode":I
    .end local v23    # "widthSize":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 1232
    .restart local v10    # "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v21, v0

    .line 1233
    .local v21, "view":Landroid/view/View;
    if-eqz v21, :cond_3

    .line 1235
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 1236
    .restart local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v19, v2, v4

    goto/16 :goto_3

    .line 1255
    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v21    # "view":Landroid/view/View;
    .restart local v8    # "background":Landroid/graphics/drawable/Drawable;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1256
    const/16 v20, 0x0

    .restart local v20    # "padding":I
    goto :goto_4

    .line 1261
    :cond_a
    const/4 v15, 0x0

    goto :goto_5

    .line 1269
    .restart local v15    # "ignoreBottomDecorations":Z
    .restart local v18    # "maxHeight":I
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    packed-switch v2, :pswitch_data_1

    .line 1283
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1289
    .local v3, "childWidthSpec":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    const/4 v4, 0x0

    const/4 v5, -0x1

    sub-int v6, v18, v19

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/DropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    move-result v16

    .line 1291
    .local v16, "listContent":I
    if-lez v16, :cond_c

    .line 1292
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v2}, Landroid/support/v7/widget/DropDownListView;->getPaddingTop()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 1293
    invoke-virtual {v4}, Landroid/support/v7/widget/DropDownListView;->getPaddingBottom()I

    move-result v4

    add-int v17, v2, v4

    .line 1294
    .local v17, "listPadding":I
    add-int v2, v20, v17

    add-int v19, v19, v2

    .line 1297
    .end local v17    # "listPadding":I
    :cond_c
    add-int v2, v16, v19

    goto/16 :goto_6

    .line 1271
    .end local v3    # "childWidthSpec":I
    .end local v16    # "listContent":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1272
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    const/high16 v4, -0x80000000

    .line 1271
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1275
    .restart local v3    # "childWidthSpec":I
    goto :goto_7

    .line 1277
    .end local v3    # "childWidthSpec":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1278
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    .line 1277
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1281
    .restart local v3    # "childWidthSpec":I
    goto :goto_7

    .line 1191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1269
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .prologue
    .line 1399
    sget-object v1, Landroid/support/v7/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 1401
    :try_start_0
    sget-object v1, Landroid/support/v7/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 1402
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1401
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1408
    :goto_0
    return v1

    .line 1403
    :catch_0
    move-exception v0

    .line 1404
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1, p2}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v1

    goto :goto_0
.end method

.method private static isConfirmKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 1385
    const/16 v0, 0x42

    if-eq p0, v0, :cond_0

    const/16 v0, 0x17

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removePromptView()V
    .locals 3

    .prologue
    .line 757
    iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 758
    iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 759
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 760
    check-cast v0, Landroid/view/ViewGroup;

    .line 761
    .local v0, "group":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 764
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method private setPopupClipToScreenEnabled(Z)V
    .locals 6
    .param p1, "clip"    # Z

    .prologue
    .line 1389
    sget-object v1, Landroid/support/v7/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 1391
    :try_start_0
    sget-object v1, Landroid/support/v7/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    :cond_0
    :goto_0
    return-void

    .line 1392
    :catch_0
    move-exception v0

    .line 1393
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 817
    .local v0, "list":Landroid/support/v7/widget/DropDownListView;
    if-eqz v0, :cond_0

    .line 819
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 821
    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->requestLayout()V

    .line 823
    :cond_0
    return-void
.end method

.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 1108
    new-instance v0, Landroid/support/v7/widget/ListPopupWindow$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/ListPopupWindow$1;-><init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/view/View;)V

    return-object v0
.end method

.method createDropDownListView(Landroid/content/Context;Z)Landroid/support/v7/widget/DropDownListView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 920
    new-instance v0, Landroid/support/v7/widget/DropDownListView;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 740
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 741
    invoke-direct {p0}, Landroid/support/v7/widget/ListPopupWindow;->removePromptView()V

    .line 742
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 743
    iput-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 744
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 745
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 916
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 865
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 866
    const/4 v0, 0x0

    .line 868
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 891
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 892
    const-wide/high16 v0, -0x8000000000000000L

    .line 894
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 879
    const/4 v0, -0x1

    .line 881
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 904
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 905
    const/4 v0, 0x0

    .line 907
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    .line 491
    const/4 v0, 0x0

    .line 493
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 380
    iget-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v12, 0x14

    const/16 v11, 0x13

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 945
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 951
    const/16 v9, 0x3e

    if-eq p1, v9, :cond_8

    iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 952
    invoke-virtual {v9}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v9

    if-gez v9, :cond_0

    .line 953
    invoke-static {p1}, Landroid/support/v7/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v9

    if-nez v9, :cond_8

    .line 954
    :cond_0
    iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v9}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v4

    .line 957
    .local v4, "curIndex":I
    iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v9

    if-nez v9, :cond_4

    move v2, v7

    .line 959
    .local v2, "below":Z
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 962
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 963
    .local v5, "firstItem":I
    const/high16 v6, -0x80000000

    .line 965
    .local v6, "lastItem":I
    if-eqz v0, :cond_1

    .line 966
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    .line 967
    .local v1, "allEnabled":Z
    if-eqz v1, :cond_5

    move v5, v8

    .line 969
    :goto_1
    if-eqz v1, :cond_6

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .line 973
    .end local v1    # "allEnabled":Z
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    if-ne p1, v11, :cond_2

    if-le v4, v5, :cond_3

    :cond_2
    if-nez v2, :cond_7

    if-ne p1, v12, :cond_7

    if-lt v4, v6, :cond_7

    .line 977
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->clearListSelection()V

    .line 978
    iget-object v8, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v7}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 979
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 1025
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "below":Z
    .end local v4    # "curIndex":I
    .end local v5    # "firstItem":I
    .end local v6    # "lastItem":I
    :goto_3
    :sswitch_0
    return v7

    .restart local v4    # "curIndex":I
    :cond_4
    move v2, v8

    .line 957
    goto :goto_0

    .line 967
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v1    # "allEnabled":Z
    .restart local v2    # "below":Z
    .restart local v5    # "firstItem":I
    .restart local v6    # "lastItem":I
    :cond_5
    iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 968
    invoke-virtual {v9, v8, v7}, Landroid/support/v7/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v5

    goto :goto_1

    .line 969
    :cond_6
    iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 970
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10, v8}, Landroid/support/v7/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v6

    goto :goto_2

    .line 984
    .end local v1    # "allEnabled":Z
    :cond_7
    iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v9, v8}, Landroid/support/v7/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 987
    iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v9, p1, p2}, Landroid/support/v7/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 990
    .local v3, "consumed":Z
    if-eqz v3, :cond_9

    .line 993
    iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 998
    iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v9}, Landroid/support/v7/widget/DropDownListView;->requestFocusFromTouch()Z

    .line 999
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 1001
    sparse-switch p1, :sswitch_data_0

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "below":Z
    .end local v3    # "consumed":Z
    .end local v4    # "curIndex":I
    .end local v5    # "firstItem":I
    .end local v6    # "lastItem":I
    :cond_8
    move v7, v8

    .line 1025
    goto :goto_3

    .line 1011
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v2    # "below":Z
    .restart local v3    # "consumed":Z
    .restart local v4    # "curIndex":I
    .restart local v5    # "firstItem":I
    .restart local v6    # "lastItem":I
    :cond_9
    if-eqz v2, :cond_a

    if-ne p1, v12, :cond_a

    .line 1014
    if-ne v4, v6, :cond_8

    goto :goto_3

    .line 1017
    :cond_a
    if-nez v2, :cond_8

    if-ne p1, v11, :cond_8

    if-ne v4, v5, :cond_8

    goto :goto_3

    .line 1001
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 1063
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1066
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 1067
    .local v0, "anchorView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 1068
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1069
    .local v1, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    .line 1070
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1084
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v2

    .line 1073
    .restart local v0    # "anchorView":Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 1074
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1075
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 1076
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1078
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1079
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 1084
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1039
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v1}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_1

    .line 1040
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1041
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/support/v7/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1044
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 1048
    .end local v0    # "consumed":Z
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performItemClick(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 849
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 851
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 852
    .local v1, "list":Landroid/support/v7/widget/DropDownListView;
    invoke-virtual {v1}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 853
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/support/v7/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 854
    .local v6, "adapter":Landroid/widget/ListAdapter;
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 856
    .end local v1    # "list":Landroid/support/v7/widget/DropDownListView;
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    const/4 v0, 0x1

    .line 858
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postShow()V
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 634
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 284
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 285
    new-instance v0, Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    iput-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 289
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 290
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 294
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 297
    :cond_2
    return-void

    .line 286
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 467
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 468
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 438
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 439
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 429
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .prologue
    .line 552
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 553
    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 554
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 555
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    .line 559
    :goto_0
    return-void

    .line 557
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ListPopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0
    .param p1, "dropDownAlwaysVisible"    # Z
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 370
    iput-boolean p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 371
    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 525
    iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownGravity:I

    .line 526
    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 515
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 516
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .param p1, "forceIgnoreOutsideTouch"    # Z
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 354
    iput-boolean p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 355
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 574
    iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    .line 575
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 483
    iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 484
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 779
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 780
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 930
    iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 931
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 413
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 414
    return-void
.end method

.method public setModal(Z)V
    .locals 1
    .param p1, "modal"    # Z

    .prologue
    .line 332
    iput-boolean p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    .line 333
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 334
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 753
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 754
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/widget/AdapterView$OnItemClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 598
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 599
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "selectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 609
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 610
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 309
    iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    .line 310
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1
    .param p1, "prompt"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 619
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    .line 620
    .local v0, "showing":Z
    if-eqz v0, :cond_0

    .line 621
    invoke-direct {p0}, Landroid/support/v7/widget/ListPopupWindow;->removePromptView()V

    .line 623
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 624
    if-eqz v0, :cond_1

    .line 625
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 627
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 798
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 799
    .local v0, "list":Landroid/support/v7/widget/DropDownListView;
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 800
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 801
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/DropDownListView;->setSelection(I)V

    .line 803
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 804
    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/DropDownListView;->setItemChecked(IZ)V

    .line 809
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 394
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 395
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 502
    iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 504
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 542
    iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    .line 543
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    .prologue
    .line 587
    iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 588
    return-void
.end method

.method public show()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x2

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 642
    invoke-direct {p0}, Landroid/support/v7/widget/ListPopupWindow;->buildDropDown()I

    move-result v7

    .line 644
    .local v7, "height":I
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v9

    .line 645
    .local v9, "noInputMethod":Z
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    invoke-static {v0, v3}, Landroid/support/v4/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 647
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 649
    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_2

    .line 652
    const/4 v10, -0x1

    .line 660
    .local v10, "widthSpec":I
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v5, :cond_8

    .line 663
    if-eqz v9, :cond_4

    move v8, v7

    .line 664
    .local v8, "heightSpec":I
    :goto_1
    if-eqz v9, :cond_6

    .line 665
    iget-object v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_5

    move v0, v5

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 667
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 679
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 681
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-gez v10, :cond_a

    move v4, v5

    :goto_4
    if-gez v8, :cond_b

    :goto_5
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 733
    :cond_1
    :goto_6
    return-void

    .line 653
    .end local v8    # "heightSpec":I
    .end local v10    # "widthSpec":I
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v4, :cond_3

    .line 654
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v10

    .restart local v10    # "widthSpec":I
    goto :goto_0

    .line 656
    .end local v10    # "widthSpec":I
    :cond_3
    iget v10, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    .restart local v10    # "widthSpec":I
    goto :goto_0

    :cond_4
    move v8, v5

    .line 663
    goto :goto_1

    .restart local v8    # "heightSpec":I
    :cond_5
    move v0, v1

    .line 665
    goto :goto_2

    .line 669
    :cond_6
    iget-object v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_7

    move v0, v5

    :goto_7
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 671
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_3

    :cond_7
    move v0, v1

    .line 669
    goto :goto_7

    .line 673
    .end local v8    # "heightSpec":I
    :cond_8
    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v4, :cond_9

    .line 674
    move v8, v7

    .restart local v8    # "heightSpec":I
    goto :goto_3

    .line 676
    .end local v8    # "heightSpec":I
    :cond_9
    iget v8, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    .restart local v8    # "heightSpec":I
    goto :goto_3

    :cond_a
    move v4, v10

    .line 681
    goto :goto_4

    :cond_b
    move v5, v8

    goto :goto_5

    .line 686
    .end local v8    # "heightSpec":I
    .end local v10    # "widthSpec":I
    :cond_c
    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_10

    .line 687
    const/4 v10, -0x1

    .line 697
    .restart local v10    # "widthSpec":I
    :goto_8
    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v5, :cond_12

    .line 698
    const/4 v8, -0x1

    .line 707
    .restart local v8    # "heightSpec":I
    :goto_9
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v10}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 708
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 709
    invoke-direct {p0, v2}, Landroid/support/v7/widget/ListPopupWindow;->setPopupClipToScreenEnabled(Z)V

    .line 713
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_14

    iget-boolean v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_14

    :goto_a
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 714
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mTouchInterceptor:Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 715
    sget-object v0, Landroid/support/v7/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_d

    .line 717
    :try_start_0
    sget-object v0, Landroid/support/v7/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v7/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :cond_d
    :goto_b
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    iget v4, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownGravity:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/widget/PopupWindowCompat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 724
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/DropDownListView;->setSelection(I)V

    .line 726
    iget-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 727
    :cond_e
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->clearListSelection()V

    .line 729
    :cond_f
    iget-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    if-nez v0, :cond_1

    .line 730
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mHideSelector:Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 689
    .end local v8    # "heightSpec":I
    .end local v10    # "widthSpec":I
    :cond_10
    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v4, :cond_11

    .line 690
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v10

    .restart local v10    # "widthSpec":I
    goto :goto_8

    .line 692
    .end local v10    # "widthSpec":I
    :cond_11
    iget v10, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    .restart local v10    # "widthSpec":I
    goto :goto_8

    .line 700
    :cond_12
    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v4, :cond_13

    .line 701
    move v8, v7

    .restart local v8    # "heightSpec":I
    goto :goto_9

    .line 703
    .end local v8    # "heightSpec":I
    :cond_13
    iget v8, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    .restart local v8    # "heightSpec":I
    goto :goto_9

    :cond_14
    move v2, v1

    .line 713
    goto :goto_a

    .line 718
    :catch_0
    move-exception v6

    .line 719
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "ListPopupWindow"

    const-string v1, "Could not invoke setEpicenterBounds on PopupWindow"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method
