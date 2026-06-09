.class public Lorg/qtproject/qt/android/ExtractStyle;
.super Ljava/lang/Object;
.source "ExtractStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;,
        Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final QtTAG:Ljava/lang/String; = "QtExtractStyle"

.field private static m_extractMinimal:Z

.field private static m_missingDarkStyle:Z

.field private static m_missingNormalStyle:Z

.field private static m_stylePath:Ljava/lang/String;


# instance fields
.field final DisableDrawableStatesLabels:[Ljava/lang/String;

.field final DrawableStates:[I

.field final DrawableStatesLabels:[Ljava/lang/String;

.field final EMPTY_STATE_SET:[I

.field final ENABLED_FOCUSED_SELECTED_STATE_SET:[I

.field final ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final ENABLED_FOCUSED_STATE_SET:[I

.field final ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field final ENABLED_SELECTED_STATE_SET:[I

.field final ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final ENABLED_STATE_SET:[I

.field final ENABLED_WINDOW_FOCUSED_STATE_SET:[I

.field final FOCUSED_SELECTED_STATE_SET:[I

.field final FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final FOCUSED_STATE_SET:[I

.field final FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

.field final PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_ENABLED_FOCUSED_STATE_SET:[I

.field final PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_ENABLED_SELECTED_STATE_SET:[I

.field final PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_ENABLED_STATE_SET:[I

.field final PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_FOCUSED_SELECTED_STATE_SET:[I

.field final PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_FOCUSED_STATE_SET:[I

.field final PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_SELECTED_STATE_SET:[I

.field final PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_STATE_SET:[I

.field final PRESSED_WINDOW_FOCUSED_STATE_SET:[I

.field final SELECTED_STATE_SET:[I

.field final SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final WINDOW_FOCUSED_STATE_SET:[I

.field final defaultBackgroundColor:I

.field final defaultTextColor:I

.field m_context:Landroid/content/Context;

.field private final m_drawableCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;",
            ">;"
        }
    .end annotation
.end field

.field final m_extractPath:Ljava/lang/String;

.field final m_minimal:Z

.field final m_theme:Landroid/content/res/Resources$Theme;

.field final sScaleTypeArray:[Ljava/lang/String;

.field final viewDrawableStatesState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    nop

    .line 140
    const/4 v0, 0x0

    sput-boolean v0, Lorg/qtproject/qt/android/ExtractStyle;->m_missingNormalStyle:Z

    .line 141
    sput-boolean v0, Lorg/qtproject/qt/android/ExtractStyle;->m_missingDarkStyle:Z

    .line 142
    const/4 v1, 0x0

    sput-object v1, Lorg/qtproject/qt/android/ExtractStyle;->m_stylePath:Ljava/lang/String;

    .line 143
    sput-boolean v0, Lorg/qtproject/qt/android/ExtractStyle;->m_extractMinimal:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 15

    .line 206
    move-object v1, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, v1, Lorg/qtproject/qt/android/ExtractStyle;->viewDrawableStatesState:[I

    .line 80
    const/4 v0, 0x0

    new-array v2, v0, [I

    iput-object v2, v1, Lorg/qtproject/qt/android/ExtractStyle;->EMPTY_STATE_SET:[I

    .line 81
    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x101009e

    aput v4, v3, v0

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_STATE_SET:[I

    .line 82
    new-array v4, v2, [I

    const v5, 0x101009c

    aput v5, v4, v0

    iput-object v4, v1, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_STATE_SET:[I

    .line 83
    new-array v5, v2, [I

    const v6, 0x10100a1

    aput v6, v5, v0

    iput-object v5, v1, Lorg/qtproject/qt/android/ExtractStyle;->SELECTED_STATE_SET:[I

    .line 84
    new-array v6, v2, [I

    const v7, 0x10100a7

    aput v7, v6, v0

    iput-object v6, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_STATE_SET:[I

    .line 85
    new-array v7, v2, [I

    const v8, 0x101009d

    aput v8, v7, v0

    iput-object v7, v1, Lorg/qtproject/qt/android/ExtractStyle;->WINDOW_FOCUSED_STATE_SET:[I

    .line 86
    invoke-direct {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_STATE_SET:[I

    .line 87
    invoke-direct {p0, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v9

    iput-object v9, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_SELECTED_STATE_SET:[I

    .line 88
    invoke-direct {p0, v3, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v10

    iput-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 89
    invoke-direct {p0, v4, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v10

    iput-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_SELECTED_STATE_SET:[I

    .line 90
    invoke-direct {p0, v4, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v11

    iput-object v11, v1, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 91
    invoke-direct {p0, v5, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v11

    iput-object v11, v1, Lorg/qtproject/qt/android/ExtractStyle;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 92
    invoke-direct {p0, v8, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v11

    iput-object v11, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 93
    invoke-direct {p0, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 94
    invoke-direct {p0, v9, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 95
    invoke-direct {p0, v10, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 96
    invoke-direct {p0, v11, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 97
    invoke-direct {p0, v6, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 98
    invoke-direct {p0, v6, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_SELECTED_STATE_SET:[I

    .line 99
    invoke-direct {p0, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 100
    invoke-direct {p0, v6, v4}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_STATE_SET:[I

    .line 101
    invoke-direct {p0, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v9

    iput-object v9, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 102
    invoke-direct {p0, v8, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    .line 103
    invoke-direct {p0, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 104
    invoke-direct {p0, v6, v3}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_STATE_SET:[I

    .line 105
    invoke-direct {p0, v3, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v6

    iput-object v6, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 106
    invoke-direct {p0, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v6

    iput-object v6, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    .line 107
    invoke-direct {p0, v6, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v6

    iput-object v6, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 108
    invoke-direct {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    .line 109
    invoke-direct {p0, v3, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v4

    iput-object v4, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 110
    invoke-direct {p0, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 111
    invoke-direct {p0, v3, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 117
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStates:[I

    .line 122
    const-string v4, "active"

    const-string v5, "checked"

    const-string v6, "enabled"

    const-string v7, "focused"

    const-string v8, "pressed"

    const-string v9, "selected"

    const-string v10, "window_focused"

    const-string v11, "background"

    const-string v12, "multiline"

    const-string v13, "activated"

    const-string v14, "accelerated"

    filled-new-array/range {v4 .. v14}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStatesLabels:[Ljava/lang/String;

    .line 124
    const-string v4, "inactive"

    const-string v5, "unchecked"

    const-string v6, "disabled"

    const-string v7, "not_focused"

    const-string v8, "no_pressed"

    const-string v9, "unselected"

    const-string v10, "window_not_focused"

    const-string v11, "background"

    const-string v12, "multiline"

    const-string v13, "activated"

    const-string v14, "accelerated"

    filled-new-array/range {v4 .. v14}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->DisableDrawableStatesLabels:[Ljava/lang/String;

    .line 127
    const-string v4, "MATRIX"

    const-string v5, "FIT_XY"

    const-string v6, "FIT_START"

    const-string v7, "FIT_CENTER"

    const-string v8, "FIT_END"

    const-string v9, "CENTER"

    const-string v10, "CENTER_CROP"

    const-string v11, "CENTER_INSIDE"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->sScaleTypeArray:[Ljava/lang/String;

    .line 138
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_drawableCache:Ljava/util/HashMap;

    .line 207
    move/from16 v3, p3

    iput-boolean v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_minimal:Z

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_extractPath:Ljava/lang/String;

    .line 209
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    .line 210
    if-nez v4, :cond_0

    .line 211
    const-string v4, "Qt JAVA"

    const-string v5, "Cannot create Android style directory."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    move-object/from16 v4, p1

    iput-object v4, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    iput-object v4, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    .line 214
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 219
    invoke-virtual {v4, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, v1, Lorg/qtproject/qt/android/ExtractStyle;->defaultBackgroundColor:I

    .line 220
    const v0, 0xffffff

    invoke-virtual {v4, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 221
    if-ne v2, v0, :cond_1

    .line 222
    const/4 v2, 0x2

    invoke-virtual {v4, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 223
    :cond_1
    iput v2, v1, Lorg/qtproject/qt/android/ExtractStyle;->defaultTextColor:I

    .line 224
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 227
    :try_start_0
    new-instance v2, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "style.json"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->beginObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 230
    :try_start_1
    const-string v0, "defaultStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    invoke-direct {p0}, Lorg/qtproject/qt/android/ExtractStyle;->extractDefaultPalette()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 231
    invoke-direct {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractWindow(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    .line 232
    const-string v0, "buttonStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const-string v3, "QPushButton"

    const v4, 0x1010048

    invoke-virtual {p0, v4, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 233
    const-string v0, "spinnerStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const-string v3, "QComboBox"

    const v4, 0x1010081

    invoke-virtual {p0, v4, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 234
    const-string v0, "progressBarStyleHorizontal"

    const-string v3, "QProgressBar"

    const v4, 0x1010078

    invoke-virtual {p0, v2, v4, v0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v0, "progressBarStyleLarge"

    const/4 v3, 0x0

    const v4, 0x101007a

    invoke-virtual {p0, v2, v4, v0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v0, "progressBarStyleSmall"

    const v4, 0x1010079

    invoke-virtual {p0, v2, v4, v0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "progressBarStyle"

    const v4, 0x1010077

    invoke-virtual {p0, v2, v4, v0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractAbsSeekBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    .line 239
    invoke-virtual {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractSwitch(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    .line 240
    const-string v0, "checkboxStyle"

    const-string v4, "QCheckBox"

    const v5, 0x101006c

    invoke-virtual {p0, v2, v5, v0, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractCompoundButton(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, "editTextStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const-string v4, "QLineEdit"

    const v5, 0x101006e

    invoke-virtual {p0, v5, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 242
    const-string v0, "radioButtonStyle"

    const-string v4, "QRadioButton"

    const v5, 0x101007e

    invoke-virtual {p0, v2, v5, v0, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractCompoundButton(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v0, "textViewStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const-string v4, "QWidget"

    const v5, 0x1010084

    invoke-virtual {p0, v5, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 244
    const-string v0, "scrollViewStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const-string v4, "QAbstractScrollArea"

    const v5, 0x1010080

    invoke-virtual {p0, v5, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 245
    invoke-virtual {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractListView(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    .line 246
    const-string v0, "listSeparatorTextViewStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v4, 0x1010208

    invoke-virtual {p0, v4, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 247
    invoke-direct {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemsStyle(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    .line 248
    const-string v0, "buttonStyleToggle"

    const v4, 0x101004b

    invoke-virtual {p0, v2, v4, v0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractCompoundButton(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractCalendar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    .line 250
    invoke-virtual {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractToolBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    .line 251
    const-string v0, "actionButtonStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const-string v4, "QToolButton"

    const v5, 0x10102d8

    invoke-virtual {p0, v5, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 252
    const-string v0, "actionBarTabTextStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v4, 0x10102f5

    invoke-virtual {p0, v4, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 253
    const-string v0, "actionBarTabStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v4, 0x10102f3

    invoke-virtual {p0, v4, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 254
    const-string v0, "actionOverflowButtonStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v4, 0x10102f6

    invoke-virtual {p0, v4, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractImageViewInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 255
    invoke-virtual {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractTabBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    :goto_0
    invoke-virtual {v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->endObject()V

    .line 260
    invoke-virtual {v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 263
    goto :goto_1

    .line 261
    :catch_1
    move-exception v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 264
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x101009c
        0x101009d
        0x101009e
        0x10100a1
        0x10100a7
        0x10102fe
        0x101031b
        0x1010367
        0x1010368
        0x1010369
    .end array-data

    :array_1
    .array-data 4
        0x10100a2
        0x10100a0
        0x101009e
        0x101009c
        0x10100a7
        0x10100a1
        0x101009d
        0x1020000
        0x101034d
        0x10102fe
        0x101031b
    .end array-data

    :array_2
    .array-data 4
        0x1010031
        0x1010036
        0x1010098
    .end array-data
.end method

.method private extractDefaultPalette()Lorg/json/JSONObject;
    .locals 3

    .line 1793
    const v0, 0x1010034

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearance(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1795
    :try_start_0
    const-string v1, "defaultBackgroundColor"

    iget v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->defaultBackgroundColor:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1796
    const-string v1, "defaultTextColorPrimary"

    iget v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->defaultTextColor:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1799
    goto :goto_0

    .line 1797
    :catch_0
    move-exception v1

    .line 1798
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1800
    :goto_0
    return-object v0
.end method

.method private extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 1583
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 1584
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .line 1585
    :goto_0
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 1586
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    goto :goto_0

    .line 1588
    :cond_0
    if-eq v1, v2, :cond_1

    .line 1589
    return-object v0

    .line 1591
    :cond_1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 1592
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1593
    const-string v2, "TextView"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1594
    const p1, 0x1010084

    const v2, 0x101039e

    invoke-virtual {p0, p1, p2, v2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;ILandroid/util/AttributeSet;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 1595
    :cond_2
    const-string v1, "CheckedTextView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1596
    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->extractCheckedTextView(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1599
    :cond_3
    goto :goto_1

    .line 1597
    :catch_0
    move-exception p1

    .line 1598
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1600
    :goto_1
    return-object v0
.end method

.method private extractItemsStyle(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 9

    .line 1605
    const-string v0, "simple_selectable_list_item"

    const-string v1, "simple_dropdown_item_1line"

    const-string v2, "simple_spinner_dropdown_item"

    const-string v3, "simple_spinner_item"

    const-string v4, "simple_list_item_single_choice"

    const-string v5, "simple_list_item_multiple_choice"

    const-string v6, "simple_list_item_checked"

    const-string v7, "simple_list_item"

    const v8, 0x1090003

    :try_start_0
    invoke-direct {p0, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 1606
    if-eqz v8, :cond_0

    .line 1607
    invoke-virtual {p1, v7}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v7

    invoke-virtual {v7, v8}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 1608
    :cond_0
    const v7, 0x1090005

    invoke-direct {p0, v7, v6}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 1609
    if-eqz v7, :cond_1

    .line 1610
    invoke-virtual {p1, v6}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v6

    invoke-virtual {v6, v7}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 1611
    :cond_1
    const v6, 0x1090010

    invoke-direct {p0, v6, v5}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1612
    if-eqz v6, :cond_2

    .line 1613
    invoke-virtual {p1, v5}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 1614
    :cond_2
    const v5, 0x109000f

    invoke-direct {p0, v5, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1615
    if-eqz v5, :cond_3

    .line 1616
    invoke-virtual {p1, v4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 1617
    :cond_3
    const v4, 0x1090008

    invoke-direct {p0, v4, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1618
    if-eqz v4, :cond_4

    .line 1619
    invoke-virtual {p1, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 1620
    :cond_4
    const v3, 0x1090009

    invoke-direct {p0, v3, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1621
    if-eqz v3, :cond_5

    .line 1622
    invoke-virtual {p1, v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 1623
    :cond_5
    const v2, 0x109000a

    invoke-direct {p0, v2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1624
    if-eqz v2, :cond_6

    .line 1625
    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 1626
    :cond_6
    const v1, 0x1090015

    invoke-direct {p0, v1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1627
    if-eqz v1, :cond_7

    .line 1628
    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1631
    :cond_7
    goto :goto_0

    .line 1629
    :catch_0
    move-exception p1

    .line 1630
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1632
    :goto_0
    return-void
.end method

.method static native extractNativeChunkInfo20(J)[I
.end method

.method private extractWindow(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 8

    .line 1768
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1770
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x1010054

    aput v3, v1, v2

    const/4 v2, 0x1

    const v4, 0x1010055

    aput v4, v1, v2

    .line 1774
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 1775
    const v2, 0x1010076

    invoke-direct {p0, v2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1776
    invoke-direct {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1778
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1779
    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 1780
    const-string v6, "Window_windowBackground"

    const-string v7, "16842870_Window_windowBackground"

    invoke-virtual {p0, v3, v7, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1782
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1783
    if-eqz v1, :cond_1

    .line 1784
    const-string v3, "Window_windowFrame"

    const-string v4, "16842870_Window_windowFrame"

    invoke-virtual {p0, v1, v4, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1785
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1786
    const-string v1, "windowStyle"

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1789
    goto :goto_0

    .line 1787
    :catch_0
    move-exception p1

    .line 1788
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1790
    :goto_0
    return-void
.end method

.method private findPatchesMarings(Landroid/graphics/drawable/Drawable;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 589
    const-class v0, Landroid/graphics/drawable/NinePatchDrawable;

    const-string v1, "mNinePatch"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 590
    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/NinePatch;

    goto :goto_0

    .line 593
    :cond_0
    const-class v0, Landroid/graphics/drawable/NinePatchDrawable;

    const-string v2, "mNinePatchState"

    invoke-virtual {p0, v0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 594
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/NinePatch;

    .line 596
    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mNativeChunk"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractNativeChunkInfo20(J)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonChunkInfo([I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private findStateIndex(ILjava/util/HashMap;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 644
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 645
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 646
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 647
    :cond_0
    goto :goto_0

    .line 648
    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getAnimatedStateListDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 9

    .line 652
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getStateListDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 654
    :try_start_0
    const-string v0, "android.graphics.drawable.AnimatedStateListDrawable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 655
    const-string v1, "mState"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 657
    if-eqz p1, :cond_1

    .line 658
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 659
    const-string v1, "mStateIds"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getStateIds(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v1

    .line 660
    const-string v2, "mTransitions"

    invoke-virtual {p0, v0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getStateTransitions(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    .line 662
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 663
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->findStateIndex(ILjava/util/HashMap;)I

    move-result v2

    .line 664
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v4, v3

    invoke-direct {p0, v4, v1}, Lorg/qtproject/qt/android/ExtractStyle;->findStateIndex(ILjava/util/HashMap;)I

    move-result v3

    .line 666
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 667
    const-string v6, "from"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 668
    const-string v3, "to"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 669
    const-string v2, "reverse"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    shr-long v5, v6, v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 671
    const-string v2, "stateslist"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 672
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 673
    const-string v2, "transition"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    goto :goto_0

    .line 678
    :cond_1
    goto :goto_2

    .line 676
    :catch_0
    move-exception p1

    .line 677
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 679
    :goto_2
    return-object p2
.end method

.method private getAnimationDrawable(Landroid/graphics/drawable/AnimationDrawable;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 9

    .line 531
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 533
    :try_start_0
    const-string v1, "type"

    const-string v2, "animation"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 534
    const-string v1, "oneshot"

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 535
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    .line 536
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 537
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 538
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 539
    const-string v5, "duration"

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 540
    const-string v5, "drawable"

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "__"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 541
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 537
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 543
    :cond_0
    const-string p1, "frames"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    goto :goto_1

    .line 544
    :catch_0
    move-exception p1

    .line 545
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 547
    :goto_1
    return-object v0
.end method

.method private getArrayListFromIntArray([I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 948
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 949
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 950
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 949
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 951
    :cond_0
    return-object v0
.end method

.method private getGradientDrawable(Landroid/graphics/drawable/GradientDrawable;)Lorg/json/JSONObject;
    .locals 6

    .line 475
    const-string v0, "gradient"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 477
    :try_start_0
    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 478
    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    .line 479
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 480
    const-string v3, "shape"

    const-string v4, "mShape"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 481
    const-string v3, "mGradient"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 482
    const-string v0, "mOrientation"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 483
    if-eqz v0, :cond_0

    .line 484
    const-string v3, "orientation"

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable$Orientation;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 485
    :cond_0
    const-string v0, "mGradientColors"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 486
    if-eqz v0, :cond_1

    .line 487
    const-string v3, "colors"

    array-length v4, v0

    const/4 v5, 0x0

    invoke-direct {p0, v0, v5, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([III)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 488
    :cond_1
    const-string v0, "positions"

    const-string v3, "mPositions"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    invoke-direct {p0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([F)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 489
    const-string v0, "strokeWidth"

    const-string v3, "mStrokeWidth"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 490
    const-string v0, "strokeDashWidth"

    const-string v3, "mStrokeDashWidth"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 491
    const-string v0, "strokeDashGap"

    const-string v3, "mStrokeDashGap"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 492
    const-string v0, "radius"

    const-string v3, "mRadius"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 493
    const-string v0, "mRadiusArray"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 494
    if-eqz v0, :cond_2

    .line 495
    const-string v3, "radiusArray"

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([F)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    :cond_2
    const-string v0, "mPadding"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 497
    if-eqz v0, :cond_3

    .line 498
    const-string v3, "padding"

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 499
    :cond_3
    const-string v0, "width"

    const-string v3, "mWidth"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 500
    const-string v0, "height"

    const-string v3, "mHeight"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 501
    const-string v0, "innerRadiusRatio"

    const-string v3, "mInnerRadiusRatio"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 502
    const-string v0, "thicknessRatio"

    const-string v3, "mThicknessRatio"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 503
    const-string v0, "innerRadius"

    const-string v3, "mInnerRadius"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 504
    const-string v0, "thickness"

    const-string v3, "mThickness"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    goto :goto_0

    .line 505
    :catch_0
    move-exception p1

    .line 506
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 508
    :goto_0
    return-object v1
.end method

.method private getJsonArray([F)Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 569
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 570
    if-eqz p1, :cond_0

    .line 571
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 572
    float-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 571
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 573
    :cond_0
    return-object v0
.end method

.method private getJsonArray([III)Lorg/json/JSONArray;
    .locals 2

    .line 561
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 562
    add-int/2addr p3, p2

    .line 563
    nop

    :goto_0
    if-ge p2, p3, :cond_0

    .line 564
    aget v1, p1, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 563
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 565
    :cond_0
    return-object v0
.end method

.method private getJsonChunkInfo([I)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 577
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 578
    if-nez p1, :cond_0

    .line 579
    return-object v0

    .line 581
    :cond_0
    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x3

    invoke-direct {p0, p1, v3, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([III)Lorg/json/JSONArray;

    move-result-object v2

    const-string v4, "xdivs"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 582
    aget v2, p1, v1

    add-int/2addr v2, v3

    const/4 v4, 0x1

    aget v5, p1, v4

    invoke-direct {p0, p1, v2, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([III)Lorg/json/JSONArray;

    move-result-object v2

    const-string v5, "ydivs"

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 583
    aget v1, p1, v1

    add-int/2addr v1, v3

    aget v2, p1, v4

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-direct {p0, p1, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([III)Lorg/json/JSONArray;

    move-result-object p1

    const-string v1, "colors"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 584
    return-object v0
.end method

.method private getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 551
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 552
    const-string v1, "left"

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 553
    const-string v1, "top"

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 554
    const-string v1, "right"

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 555
    const-string v1, "bottom"

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 556
    return-object v0
.end method

.method private getLayerDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    .line 420
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 421
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 422
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    .line 424
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 425
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 426
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v4

    .line 427
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 428
    move v4, v3

    .line 429
    :cond_0
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "__"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    .line 430
    const-string v6, "id"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 431
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 425
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 433
    :cond_1
    const-string p2, "type"

    const-string v1, "layer"

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 434
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 435
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/LayerDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 436
    const-string p1, "padding"

    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 437
    :cond_2
    const-string p1, "layers"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    goto :goto_1

    .line 438
    :catch_0
    move-exception p1

    .line 439
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 441
    :goto_1
    return-object v0
.end method

.method private getRippleDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;
    .locals 6

    .line 600
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getLayerDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 601
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 603
    :try_start_0
    const-string v2, "android.graphics.drawable.RippleDrawable"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 604
    const-string v3, "mState"

    invoke-virtual {p0, v2, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 605
    const-string v4, "mask"

    const-string v5, "mMask"

    invoke-virtual {p0, v2, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 606
    if-eqz v3, :cond_0

    .line 607
    const-string p1, "maxRadius"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "mMaxRadius"

    invoke-virtual {p0, p2, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 608
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "mColor"

    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/ColorStateList;

    .line 609
    if-eqz p1, :cond_0

    .line 610
    const-string p2, "color"

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 612
    :cond_0
    const-string p1, "ripple"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    goto :goto_0

    .line 613
    :catch_0
    move-exception p1

    .line 614
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 616
    :goto_0
    return-object v0
.end method

.method private getRotateDrawable(Landroid/graphics/drawable/RotateDrawable;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    .line 512
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 514
    :try_start_0
    const-string v1, "type"

    const-string v2, "rotate"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    invoke-virtual {p1}, Landroid/graphics/drawable/RotateDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 516
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 517
    const-string v3, "drawable"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getDrawable"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {p0, p1, p2, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    const-string p1, "pivotX"

    const-string p2, "mPivotX"

    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p2

    float-to-double v3, p2

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 519
    const-string p1, "pivotXRel"

    const-string p2, "mPivotXRel"

    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 520
    const-string p1, "pivotY"

    const-string p2, "mPivotY"

    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p2

    float-to-double v3, p2

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 521
    const-string p1, "pivotYRel"

    const-string p2, "mPivotYRel"

    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 522
    const-string p1, "fromDegrees"

    const-string p2, "mFromDegrees"

    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p2

    float-to-double v3, p2

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 523
    const-string p1, "toDegrees"

    const-string p2, "mToDegrees"

    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p2

    float-to-double v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    goto :goto_0

    .line 524
    :catch_0
    move-exception p1

    .line 525
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 527
    :goto_0
    return-object v0
.end method

.method private getStateIds(Ljava/lang/Object;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 632
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 633
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mSize"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 634
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mKeys"

    invoke-virtual {p0, v2, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 635
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mValues"

    invoke-virtual {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 636
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 637
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 638
    aget v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, p1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 640
    :cond_1
    return-object v0
.end method

.method private getStateListDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 13

    .line 445
    const-string v0, "stateslist"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 447
    :try_start_0
    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    .line 448
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 450
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 451
    const-class v3, Landroid/graphics/drawable/StateListDrawable;

    const-string v4, "getStateCount"

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v3

    .line 454
    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    .line 455
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 456
    const-class v7, Landroid/graphics/drawable/StateListDrawable;

    const-string v8, "getStateDrawable"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v5

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v5

    invoke-virtual {v7, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable;

    .line 457
    const-class v8, Landroid/graphics/drawable/StateListDrawable;

    const-string v10, "getStateSet"

    new-array v11, v9, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v5

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-virtual {v8, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 458
    if-eqz v8, :cond_1

    .line 459
    const-string v9, "states"

    invoke-virtual {p0, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getStatesList([I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    :cond_1
    const-string v9, "drawable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "__"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v8, :cond_2

    invoke-virtual {p0, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getStatesName([I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "state_pos_"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v8, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 454
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 463
    :cond_3
    const-string p2, "type"

    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 464
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 465
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/StateListDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 466
    const-string p1, "padding"

    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 467
    :cond_4
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    goto :goto_3

    .line 468
    :catch_0
    move-exception p1

    .line 469
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 471
    :goto_3
    return-object v1
.end method

.method private getStateTransitions(Ljava/lang/Object;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 620
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 621
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mSize"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 622
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mKeys"

    invoke-virtual {p0, v2, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 623
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mValues"

    invoke-virtual {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    .line 624
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 625
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 626
    aget-wide v4, v2, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aget-wide v5, p1, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 628
    :cond_1
    return-object v0
.end method

.method private getVGroup(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 720
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 721
    const-string v1, "type"

    const-string v2, "group"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 722
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 723
    const-string v2, "mGroupName"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 724
    const-string v2, "mRotate"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "rotate"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 725
    const-string v2, "mPivotX"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "pivotX"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 726
    const-string v2, "mPivotY"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "pivotY"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 727
    const-string v2, "mScaleX"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "scaleX"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 728
    const-string v2, "mScaleY"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "scaleY"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 729
    const-string v2, "mTranslateX"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "translateX"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 730
    const-string v2, "mTranslateY"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "translateY"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 732
    const-string v2, "mChildren"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 733
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 734
    if-eqz p1, :cond_2

    .line 735
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 736
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 737
    invoke-direct {p0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getVGroup(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 739
    :cond_0
    invoke-direct {p0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getVPath(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 740
    :goto_1
    goto :goto_0

    .line 741
    :cond_1
    const-string p1, "children"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 743
    :cond_2
    return-object v0
.end method

.method private getVPath(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 683
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 684
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 685
    const-string v2, "path"

    const-string v3, "type"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 686
    const-string v2, "mPathName"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "name"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 687
    const-string v2, "mNodes"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 688
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 689
    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 690
    array-length v6, v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    aget-object v8, v2, v7

    .line 691
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 692
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "mType"

    invoke-virtual {p0, v10, v11}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 693
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "mParams"

    invoke-virtual {p0, v10, v11}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    invoke-direct {p0, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([F)Lorg/json/JSONArray;

    move-result-object v8

    const-string v10, "params"

    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 694
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 690
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 696
    :cond_0
    const-string v2, "nodes"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 698
    :cond_1
    const-string v2, "isClipPath"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    const-string v3, "isClip"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 700
    const-string v2, "mStrokeColor"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-nez v3, :cond_2

    .line 701
    return-object v0

    .line 703
    :cond_2
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "strokeColor"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 704
    const-string v2, "mStrokeWidth"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "strokeWidth"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 705
    const-string v2, "mFillColor"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "fillColor"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 706
    const-string v2, "mStrokeAlpha"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "strokeAlpha"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 707
    const-string v2, "mFillRule"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "fillRule"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 708
    const-string v2, "mFillAlpha"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "fillAlpha"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 709
    const-string v2, "mTrimPathStart"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "trimPathStart"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 710
    const-string v2, "mTrimPathEnd"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "trimPathEnd"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 711
    const-string v2, "mTrimPathOffset"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "trimPathOffset"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 712
    const-string v2, "mStrokeLineCap"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Paint$Cap;

    const-string v3, "strokeLineCap"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 713
    const-string v2, "mStrokeLineJoin"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Paint$Join;

    const-string v3, "strokeLineJoin"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 714
    const-string v2, "mStrokeMiterlimit"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p1

    float-to-double v1, p1

    const-string p1, "strokeMiterlimit"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 715
    return-object v0
.end method

.method private getVectorDrawable(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 5

    .line 747
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 749
    :try_start_0
    const-string v1, "type"

    const-string v2, "vector"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 750
    const-string v1, "android.graphics.drawable.VectorDrawable"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 751
    const-string v2, "mVectorState"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 752
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 753
    const-string v2, "mTint"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ColorStateList;

    .line 754
    if-eqz v2, :cond_0

    .line 755
    const-string v3, "tintList"

    invoke-virtual {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 756
    const-string v2, "tintMode"

    const-string v3, "mTintMode"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 758
    :cond_0
    const-string v2, "mVPathRenderer"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 759
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 760
    const-string v2, "baseWidth"

    const-string v3, "mBaseWidth"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 761
    const-string v2, "baseHeight"

    const-string v3, "mBaseHeight"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 762
    const-string v2, "viewportWidth"

    const-string v3, "mViewportWidth"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 763
    const-string v2, "viewportHeight"

    const-string v3, "mViewportHeight"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 764
    const-string v2, "rootAlpha"

    const-string v3, "mRootAlpha"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 765
    const-string v2, "rootName"

    const-string v3, "mRootName"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 766
    const-string v2, "rootGroup"

    const-string v3, "mRootGroup"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getVGroup(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    goto :goto_0

    .line 767
    :catch_0
    move-exception p1

    .line 768
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 770
    :goto_0
    return-object v0
.end method

.method private static isUiModeDark(Landroid/content/res/Configuration;)Z
    .locals 1

    .line 149
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .locals 4

    .line 941
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 942
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    iget-object v3, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 943
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 944
    iget p1, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    return-object p1
.end method

.method public static runIfNeeded(Landroid/content/Context;Z)V
    .locals 3

    .line 193
    sget-object v0, Lorg/qtproject/qt/android/ExtractStyle;->m_stylePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 194
    return-void

    .line 195
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 196
    sget-boolean p1, Lorg/qtproject/qt/android/ExtractStyle;->m_missingDarkStyle:Z

    if-eqz p1, :cond_2

    .line 197
    new-instance p1, Lorg/qtproject/qt/android/ExtractStyle;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/qtproject/qt/android/ExtractStyle;->m_stylePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "darkUiMode/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lorg/qtproject/qt/android/ExtractStyle;->m_extractMinimal:Z

    invoke-direct {p1, p0, v0, v2}, Lorg/qtproject/qt/android/ExtractStyle;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 198
    sput-boolean v1, Lorg/qtproject/qt/android/ExtractStyle;->m_missingDarkStyle:Z

    goto :goto_0

    .line 200
    :cond_1
    sget-boolean p1, Lorg/qtproject/qt/android/ExtractStyle;->m_missingNormalStyle:Z

    if-eqz p1, :cond_2

    .line 201
    new-instance p1, Lorg/qtproject/qt/android/ExtractStyle;

    sget-boolean v2, Lorg/qtproject/qt/android/ExtractStyle;->m_extractMinimal:Z

    invoke-direct {p1, p0, v0, v2}, Lorg/qtproject/qt/android/ExtractStyle;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 202
    sput-boolean v1, Lorg/qtproject/qt/android/ExtractStyle;->m_missingNormalStyle:Z

    .line 204
    :cond_2
    :goto_0
    return-void
.end method

.method public static setup(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/qt-reserved-files/android-style/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lorg/qtproject/qt/android/ExtractStyle;->m_stylePath:Ljava/lang/String;

    .line 157
    const-string p2, "none"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    sget-object p0, Lorg/qtproject/qt/android/ExtractStyle;->m_stylePath:Ljava/lang/String;

    return-object p0

    .line 160
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "minimal"

    if-eqz v0, :cond_1

    .line 161
    move-object p1, v1

    .line 163
    :cond_1
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "QtExtractStyle"

    if-nez v2, :cond_2

    const-string v2, "full"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 164
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid extract_android_style option \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\", defaulting to \"minimal\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    move-object p1, v1

    .line 173
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x1c

    if-eqz v0, :cond_3

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 175
    if-ge v0, v2, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_3

    .line 176
    const-string p1, "extract_android_style option set to \"none\" when targetSdkVersion is less then 28"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    goto :goto_0

    .line 182
    :cond_3
    move-object p2, p1

    :goto_0
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/qtproject/qt/android/ExtractStyle;->m_stylePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "darkUiMode/style.json"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    .line 183
    const/4 v0, 0x1

    xor-int/2addr p1, v0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v3, v2, :cond_4

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    sput-boolean p1, Lorg/qtproject/qt/android/ExtractStyle;->m_missingDarkStyle:Z

    .line 184
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/qtproject/qt/android/ExtractStyle;->m_stylePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "style.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    xor-int/2addr p1, v0

    sput-boolean p1, Lorg/qtproject/qt/android/ExtractStyle;->m_missingNormalStyle:Z

    .line 185
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lorg/qtproject/qt/android/ExtractStyle;->m_extractMinimal:Z

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lorg/qtproject/qt/android/ExtractStyle;->isUiModeDark(Landroid/content/res/Configuration;)Z

    move-result p1

    invoke-static {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->runIfNeeded(Landroid/content/Context;Z)V

    .line 189
    sget-object p0, Lorg/qtproject/qt/android/ExtractStyle;->m_stylePath:Ljava/lang/String;

    return-object p0
.end method

.method private stateSetUnion([I[I)[I
    .locals 11

    .line 270
    :try_start_0
    array-length v0, p1

    .line 271
    array-length v1, p2

    .line 272
    add-int v2, v0, v1

    new-array v2, v2, [I

    .line 273
    nop

    .line 274
    nop

    .line 275
    nop

    .line 278
    iget-object v3, p0, Lorg/qtproject/qt/android/ExtractStyle;->viewDrawableStatesState:[I

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget v9, v3, v5

    .line 279
    if-ge v6, v0, :cond_0

    aget v10, p1, v6

    if-ne v10, v9, :cond_0

    .line 280
    add-int/lit8 v10, v8, 0x1

    aput v9, v2, v8

    .line 281
    add-int/lit8 v6, v6, 0x1

    move v8, v10

    goto :goto_1

    .line 282
    :cond_0
    if-ge v7, v1, :cond_1

    aget v10, p2, v7

    if-ne v10, v9, :cond_1

    .line 283
    add-int/lit8 v10, v8, 0x1

    aput v9, v2, v8

    .line 284
    add-int/lit8 v7, v7, 0x1

    move v8, v10

    .line 286
    :cond_1
    :goto_1
    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    add-int/lit8 v9, v8, -0x1

    aget v9, v2, v9

    add-int/lit8 v10, v8, -0x2

    aget v10, v2, v10

    if-le v9, v10, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 288
    :cond_4
    return-object v2

    .line 289
    :catch_0
    move-exception p1

    .line 290
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method extractAbsSeekBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 8

    .line 1491
    const-string v0, "QSlider"

    const v1, 0x101007b

    invoke-virtual {p0, v1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1492
    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBarInfo(Lorg/json/JSONObject;I)V

    .line 1494
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x1010142

    aput v4, v2, v3

    const/4 v3, 0x1

    const v5, 0x1010143

    aput v5, v2, v3

    .line 1498
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 1499
    invoke-direct {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1500
    invoke-direct {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1502
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1503
    if-eqz v3, :cond_0

    .line 1504
    const-string v4, "SeekBar_thumb"

    const-string v6, "16842875_SeekBar_thumb"

    const/4 v7, 0x0

    invoke-virtual {p0, v3, v6, v7}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1505
    :cond_0
    const-string v3, "SeekBar_thumbOffset"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1506
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1507
    const-string v1, "seekBarStyle"

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    goto :goto_0

    .line 1508
    :catch_0
    move-exception p1

    .line 1509
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1511
    :goto_0
    return-void
.end method

.method extractCalendar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 19

    .line 1659
    move-object/from16 v1, p0

    const-string v0, "QCalendarWidget"

    const v2, 0x101035d

    invoke-virtual {v1, v2, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1661
    const/16 v3, 0xb

    :try_start_0
    new-array v3, v3, [I

    const v4, 0x101033d

    const/4 v5, 0x0

    aput v4, v3, v5

    const v6, 0x1010343

    const/4 v7, 0x1

    aput v6, v3, v7

    const/4 v8, 0x2

    const v9, 0x1010342

    aput v9, v3, v8

    const/4 v8, 0x3

    const v10, 0x101033e

    aput v10, v3, v8

    const/4 v8, 0x4

    const v11, 0x1010341

    aput v11, v3, v8

    const/4 v8, 0x5

    const v12, 0x1010344

    aput v12, v3, v8

    const v8, 0x1010345

    const/4 v13, 0x6

    aput v8, v3, v13

    const/4 v14, 0x7

    const v15, 0x1010346

    aput v15, v3, v14

    const/16 v14, 0x8

    const v16, 0x1010347

    aput v16, v3, v14

    const/16 v14, 0x9

    const v17, 0x1010349

    aput v17, v3, v14

    const/16 v14, 0xa

    const v18, 0x1010348

    aput v18, v3, v14

    .line 1674
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 1675
    invoke-direct {v1, v2, v3}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1676
    invoke-direct {v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1678
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 1679
    if-eqz v14, :cond_0

    .line 1680
    const-string v15, "CalendarView_selectedDateVerticalBar"

    const-string v8, "16843613_CalendarView_selectedDateVerticalBar"

    const/4 v12, 0x0

    invoke-virtual {v1, v14, v8, v12}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v0, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1682
    :cond_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v12, -0x1

    invoke-virtual {v2, v8, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 1683
    const-string v14, "CalendarView_dateTextAppearance"

    invoke-virtual {v1, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearance(IZ)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v0, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1684
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v2, v8, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 1685
    const-string v12, "CalendarView_weekDayTextAppearance"

    invoke-virtual {v1, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearance(IZ)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v0, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1688
    const-string v8, "CalendarView_firstDayOfWeek"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v0, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1689
    const-string v4, "CalendarView_focusedMonthDateColor"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1690
    const-string v4, "CalendarView_selectedWeekBackgroundColor"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1691
    const-string v4, "CalendarView_showWeekNumber"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1692
    const-string v4, "CalendarView_shownWeekCount"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v6, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1693
    const-string v4, "CalendarView_unfocusedMonthDateColor"

    const v6, 0x1010344

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1694
    const-string v4, "CalendarView_weekNumberColor"

    const v6, 0x1010345

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1695
    const-string v4, "CalendarView_weekSeparatorLineColor"

    const v6, 0x1010346

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1696
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1697
    const-string v2, "calendarViewStyle"

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1700
    goto :goto_0

    .line 1698
    :catch_0
    move-exception v0

    .line 1699
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1701
    :goto_0
    return-void
.end method

.method extractCheckedTextView(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .line 1560
    const v0, 0x10103c8

    invoke-virtual {p0, v0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1562
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x1010108

    aput v3, v1, v2

    .line 1566
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 1567
    const v2, 0x101043f

    invoke-direct {p0, v2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1568
    invoke-direct {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1570
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1571
    if-eqz v1, :cond_0

    .line 1572
    const-string v3, "CheckedTextView_checkMark"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "_CheckedTextView_checkMark"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, p1, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1573
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1576
    goto :goto_0

    .line 1574
    :catch_0
    move-exception p1

    .line 1575
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1577
    :goto_0
    return-object v0
.end method

.method extractCompoundButton(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1419
    invoke-virtual {p0, p2, p4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    .line 1421
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1422
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    iget-object v3, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 1423
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1424
    new-array v2, v3, [I

    const v3, 0x1010107

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 1425
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1426
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1427
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1430
    if-eqz v1, :cond_0

    .line 1431
    :try_start_0
    const-string v0, "CompoundButton_button"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "_CompoundButton_button"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1432
    :cond_0
    invoke-virtual {p1, p3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1435
    goto :goto_0

    .line 1433
    :catch_0
    move-exception p1

    .line 1434
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1436
    :goto_0
    return-void
.end method

.method public extractImageViewInformation(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 12

    .line 1375
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1377
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->extractViewInformation(ILorg/json/JSONObject;Ljava/lang/String;)V

    .line 1379
    const/16 p2, 0x8

    new-array p2, p2, [I

    const v1, 0x1010119

    const/4 v2, 0x0

    aput v1, p2, v2

    const/4 v3, 0x1

    const v4, 0x1010122

    aput v4, p2, v3

    const/4 v3, 0x2

    const v5, 0x101011e

    aput v5, p2, v3

    const/4 v3, 0x3

    const v5, 0x101011f

    aput v5, p2, v3

    const/4 v3, 0x4

    const v6, 0x1010120

    aput v6, p2, v3

    const/4 v3, 0x5

    const v7, 0x101011d

    aput v7, p2, v3

    const/4 v3, 0x6

    const v8, 0x1010123

    aput v8, p2, v3

    const/4 v3, 0x7

    const v9, 0x1010121

    aput v9, p2, v3

    .line 1390
    invoke-static {p2}, Ljava/util/Arrays;->sort([I)V

    .line 1391
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 1392
    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object p2

    .line 1394
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1395
    if-eqz v1, :cond_0

    .line 1396
    const-string v10, "ImageView_src"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v11, "_ImageView_src"

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v11, 0x0

    invoke-virtual {p0, v1, p1, v11}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v10, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1398
    :cond_0
    const-string p1, "ImageView_baselineAlignBottom"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1399
    const-string p1, "ImageView_adjustViewBounds"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1400
    const-string p1, "ImageView_maxWidth"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const v4, 0x7fffffff

    invoke-virtual {v3, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1401
    const-string p1, "ImageView_maxHeight"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v3, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1402
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    invoke-virtual {v3, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 1403
    if-ltz p1, :cond_1

    .line 1404
    const-string v1, "ImageView_scaleType"

    iget-object v4, p0, Lorg/qtproject/qt/android/ExtractStyle;->sScaleTypeArray:[Ljava/lang/String;

    aget-object p1, v4, p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1406
    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v3, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 1407
    if-eqz p1, :cond_2

    .line 1408
    const-string v1, "ImageView_tint"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1410
    :cond_2
    const-string p1, "ImageView_cropToPadding"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1411
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    goto :goto_0

    .line 1412
    :catch_0
    move-exception p1

    .line 1413
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1415
    :goto_0
    return-object v0
.end method

.method extractListView(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 9

    .line 1635
    const-string v0, "QListView"

    const v1, 0x1010074

    invoke-virtual {p0, v1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1637
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [I

    const v3, 0x1010129

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v5, 0x1

    const v6, 0x101012a

    aput v6, v2, v5

    .line 1641
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 1642
    invoke-direct {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1643
    invoke-direct {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1645
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1646
    if-eqz v3, :cond_0

    .line 1647
    const-string v5, "ListView_divider"

    const-string v7, "16842868_ListView_divider"

    const/4 v8, 0x0

    invoke-virtual {p0, v3, v7, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1649
    :cond_0
    const-string v3, "ListView_dividerHeight"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1651
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1652
    const-string v1, "listViewStyle"

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1655
    goto :goto_0

    .line 1653
    :catch_0
    move-exception p1

    .line 1654
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1656
    :goto_0
    return-void
.end method

.method extractProgressBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1481
    const v0, 0x1010077

    invoke-virtual {p0, v0, p4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    .line 1483
    :try_start_0
    invoke-virtual {p0, p4, p2}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBarInfo(Lorg/json/JSONObject;I)V

    .line 1484
    invoke-virtual {p1, p3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1487
    goto :goto_0

    .line 1485
    :catch_0
    move-exception p1

    .line 1486
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1488
    :goto_0
    return-void
.end method

.method extractProgressBarInfo(Lorg/json/JSONObject;I)V
    .locals 11

    .line 1440
    const/4 v0, 0x7

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101013f

    aput v2, v0, v1

    const/4 v1, 0x1

    const v3, 0x101011f

    aput v3, v0, v1

    const/4 v1, 0x2

    const v4, 0x1010140

    aput v4, v0, v1

    const/4 v1, 0x3

    const v5, 0x1010120

    aput v5, v0, v1

    const/4 v1, 0x4

    const v6, 0x101013d

    aput v6, v0, v1

    const/4 v1, 0x5

    const v7, 0x101013c

    aput v7, v0, v1

    const/4 v1, 0x6

    const v8, 0x101013b

    aput v8, v0, v1

    .line 1452
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 1453
    invoke-direct {p0, p2, v0}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1454
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1456
    const-string v9, "ProgressBar_indeterminateDuration"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/16 v10, 0xfa0

    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p1, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1457
    const-string v6, "ProgressBar_minWidth"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/16 v9, 0x18

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1458
    const-string v2, "ProgressBar_maxWidth"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/16 v6, 0x30

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1459
    const-string v2, "ProgressBar_minHeight"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1460
    const-string v2, "ProgressBar_maxHeight"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x1c

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1461
    const-string v2, "ProgressBar_progress_id"

    const v3, 0x102000d

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1462
    const-string v2, "ProgressBar_secondaryProgress_id"

    const v3, 0x102000f

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1464
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1465
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1466
    const-string v4, "ProgressBar_progressDrawable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_ProgressBar_progressDrawable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v5, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1469
    :cond_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1470
    if-eqz v0, :cond_1

    .line 1471
    const-string v2, "ProgressBar_indeterminateDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v4, "_ProgressBar_indeterminateDrawable"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1474
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1477
    goto :goto_0

    .line 1475
    :catch_0
    move-exception p1

    .line 1476
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1478
    :goto_0
    return-void
.end method

.method extractSwitch(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 16

    .line 1514
    move-object/from16 v1, p0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1516
    const/16 v2, 0xa

    :try_start_0
    new-array v2, v2, [I

    const v3, 0x1010142

    const/4 v4, 0x0

    aput v3, v2, v4

    const v5, 0x101036f

    const/4 v6, 0x1

    aput v5, v2, v6

    const/4 v7, 0x2

    const v8, 0x101036e

    aput v8, v2, v7

    const/4 v7, 0x3

    const v9, 0x1010124

    aput v9, v2, v7

    const/4 v7, 0x4

    const v10, 0x1010125

    aput v10, v2, v7

    const/4 v7, 0x5

    const v11, 0x1010370

    aput v11, v2, v7

    const/4 v7, 0x6

    const v12, 0x1010371

    aput v12, v2, v7

    const/4 v7, 0x7

    const v13, 0x1010372

    aput v13, v2, v7

    const/16 v7, 0x8

    const v14, 0x10104ad

    aput v14, v2, v7

    const/16 v7, 0x9

    const v15, 0x101044c

    aput v15, v2, v7

    .line 1528
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 1529
    const v7, 0x101043f

    invoke-direct {v1, v7, v2}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1530
    invoke-direct {v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1532
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1533
    const/4 v8, 0x0

    if-eqz v3, :cond_0

    .line 1534
    const-string v15, "Switch_thumb"

    const-string v6, "16843839_Switch_thumb"

    invoke-virtual {v1, v3, v6, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1536
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1537
    if-eqz v3, :cond_1

    .line 1538
    const-string v5, "Switch_track"

    const-string v6, "16843839_Switch_track"

    invoke-virtual {v1, v3, v6, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1540
    :cond_1
    const-string v3, "Switch_textOn"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1541
    const-string v3, "Switch_textOff"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1542
    const-string v3, "Switch_switchMinWidth"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1543
    const-string v3, "Switch_switchPadding"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1544
    const-string v3, "Switch_thumbTextPadding"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1545
    const-string v3, "Switch_showText"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v7, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1546
    const-string v3, "Switch_splitTrack"

    const v5, 0x101044c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1549
    const v3, 0x101036e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 1550
    const-string v3, "Switch_switchTextAppearance"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearance(IZ)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1552
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 1553
    const-string v2, "switchStyle"

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1556
    goto :goto_0

    .line 1554
    :catch_0
    move-exception v0

    .line 1555
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1557
    :goto_0
    return-void
.end method

.method extractTabBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 10

    .line 1743
    const v0, 0x10102f4

    const-string v1, "QTabBar"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1745
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [I

    const v2, 0x1010329

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v4, 0x1

    const v5, 0x101032a

    aput v5, v1, v4

    const/4 v4, 0x2

    const v6, 0x1010129

    aput v6, v1, v4

    .line 1750
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 1751
    const v4, 0x10102f3

    invoke-direct {p0, v4, v1}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1752
    invoke-direct {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1754
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1755
    if-eqz v6, :cond_0

    .line 1756
    const-string v7, "LinearLayout_divider"

    const-string v8, "16843507_LinearLayout_divider"

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1757
    :cond_0
    const-string v6, "LinearLayout_showDividers"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v4, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1758
    const-string v2, "LinearLayout_dividerPadding"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v4, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1760
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1761
    const-string v1, "actionBarTabBarStyle"

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1764
    goto :goto_0

    .line 1762
    :catch_0
    move-exception p1

    .line 1763
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1765
    :goto_0
    return-void
.end method

.method public extractTextAppearance(I)Lorg/json/JSONObject;
    .locals 1

    .line 1082
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearance(IZ)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public extractTextAppearance(IZ)Lorg/json/JSONObject;
    .locals 4

    .line 1088
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1098
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 1100
    if-eqz p2, :cond_0

    .line 1101
    iget-object p2, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p2, p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 1103
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1104
    :goto_0
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object p2

    .line 1105
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1107
    const v1, 0x1010095

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1108
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1109
    const-string v2, "TextAppearance_textSize"

    const/16 v3, 0xf

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1110
    :cond_1
    const v1, 0x1010097

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1111
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    .line 1112
    const-string v2, "TextAppearance_textStyle"

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1113
    :cond_2
    const v1, 0x1010098

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1114
    if-eqz v1, :cond_3

    .line 1115
    const-string v2, "TextAppearance_textColor"

    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1116
    :cond_3
    const v1, 0x1010096

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1117
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1118
    const-string v2, "TextAppearance_typeface"

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1119
    :cond_4
    const v1, 0x101038c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1120
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 1121
    const-string v2, "TextAppearance_textAllCaps"

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1122
    :cond_5
    const v1, 0x101009a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1123
    if-eqz v1, :cond_6

    .line 1124
    const-string v2, "TextAppearance_textColorHint"

    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1125
    :cond_6
    const v1, 0x101009b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1126
    if-eqz v1, :cond_7

    .line 1127
    const-string v2, "TextAppearance_textColorLink"

    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1128
    :cond_7
    const v1, 0x1010099

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 1129
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1130
    const-string v1, "TextAppearance_textColorHighlight"

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1131
    :cond_8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    goto :goto_1

    .line 1132
    :catch_0
    move-exception p1

    .line 1133
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1135
    :goto_1
    return-object v0

    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010097
        0x1010098
        0x1010096
        0x101038c
        0x101009a
        0x101009b
        0x1010099
    .end array-data
.end method

.method public extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 1139
    const v0, 0x1010034

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;ILandroid/util/AttributeSet;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public extractTextAppearanceInformation(ILjava/lang/String;ILandroid/util/AttributeSet;)Lorg/json/JSONObject;
    .locals 30

    .line 1143
    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1144
    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/qtproject/qt/android/ExtractStyle;->extractViewInformation(ILorg/json/JSONObject;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 1146
    const/4 v4, -0x1

    move/from16 v5, p3

    if-ne v5, v4, :cond_0

    .line 1147
    const v5, 0x1010034

    .line 1150
    :cond_0
    :try_start_0
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 1151
    new-instance v7, Landroid/view/ContextThemeWrapper;

    iget-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    iget-object v9, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-direct {v7, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 1152
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v2, v6, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1155
    new-array v8, v9, [I

    const/4 v10, 0x0

    aput v5, v8, v10

    .line 1156
    iget v5, v6, Landroid/util/TypedValue;->data:I

    invoke-virtual {v7, v5, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1157
    invoke-virtual {v5, v10, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 1158
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1160
    nop

    .line 1161
    nop

    .line 1162
    nop

    .line 1163
    nop

    .line 1164
    nop

    .line 1166
    const/4 v5, 0x2

    const/4 v11, 0x5

    const/4 v12, 0x3

    const/16 v13, 0xf

    const v14, 0x1010099

    const v15, 0x101038c

    const v16, 0x1010096

    const v17, 0x1010097

    const v18, 0x1010095

    if-eq v8, v4, :cond_1

    .line 1167
    new-array v4, v11, [I

    aput v18, v4, v10

    aput v17, v4, v9

    aput v16, v4, v5

    aput v15, v4, v12

    const/16 v19, 0x4

    aput v14, v4, v19

    .line 1174
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 1175
    iget-object v11, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v11, v8, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1176
    invoke-direct {v1, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1178
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v8, v11, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 1179
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    const/4 v12, -0x1

    invoke-virtual {v8, v13, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 1180
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v8, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 1181
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v8, v12, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    .line 1182
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v8, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 1183
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 1166
    :cond_1
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v11, 0xf

    const/4 v12, 0x0

    const/4 v13, -0x1

    .line 1186
    :goto_0
    const/16 v8, 0x44

    new-array v8, v8, [I

    const v14, 0x101016b

    aput v14, v8, v10

    const v22, 0x1010168

    aput v22, v8, v9

    const v23, 0x1010165

    const/16 v20, 0x2

    aput v23, v8, v20

    const v20, 0x1010166

    const/16 v19, 0x3

    aput v20, v8, v19

    const/16 v20, 0x4

    const v23, 0x1010167

    aput v23, v8, v20

    const v20, 0x101016a

    const/16 v23, 0x5

    aput v20, v8, v23

    const/16 v20, 0x6

    const v23, 0x1010169

    aput v23, v8, v20

    const/16 v20, 0x7

    const v23, 0x101014e

    aput v23, v8, v20

    const/16 v20, 0x8

    const v23, 0x101015e

    aput v23, v8, v20

    const/16 v20, 0x9

    const v23, 0x10100b0

    aput v23, v8, v20

    const/16 v20, 0xa

    const v23, 0x10100b1

    aput v23, v8, v20

    const/16 v20, 0xb

    const v23, 0x101016f

    aput v23, v8, v20

    const/16 v20, 0xc

    const v23, 0x101016d

    aput v23, v8, v20

    const/16 v20, 0xd

    const v23, 0x1010170

    aput v23, v8, v20

    const/16 v20, 0xe

    const v23, 0x101016e

    aput v23, v8, v20

    const v20, 0x1010392

    const/16 v23, 0xf

    aput v20, v8, v23

    const/16 v20, 0x10

    const v23, 0x1010393

    aput v23, v8, v20

    const/16 v20, 0x11

    const v23, 0x1010153

    aput v23, v8, v20

    const/16 v20, 0x12

    const v24, 0x1010171

    aput v24, v8, v20

    const/16 v20, 0x13

    const v24, 0x1010362

    aput v24, v8, v20

    const/16 v20, 0x14

    const v25, 0x1010120

    aput v25, v8, v20

    const/16 v20, 0x15

    const v25, 0x1010154

    aput v25, v8, v20

    const/16 v20, 0x16

    const v25, 0x1010155

    aput v25, v8, v20

    const/16 v20, 0x17

    const v25, 0x1010156

    aput v25, v8, v20

    const/16 v20, 0x18

    const v25, 0x1010140

    aput v25, v8, v20

    const/16 v20, 0x19

    const v25, 0x1010157

    aput v25, v8, v20

    const/16 v20, 0x1a

    const v25, 0x101011f

    aput v25, v8, v20

    const/16 v20, 0x1b

    const v25, 0x1010158

    aput v25, v8, v20

    const/16 v20, 0x1c

    const v25, 0x1010159

    aput v25, v8, v20

    const/16 v20, 0x1d

    const v25, 0x101015a

    aput v25, v8, v20

    const/16 v20, 0x1e

    const v25, 0x101013f

    aput v25, v8, v20

    const/16 v20, 0x1f

    const v25, 0x10100af

    aput v25, v8, v20

    const/16 v20, 0x20

    const v25, 0x1010150

    aput v25, v8, v20

    const/16 v20, 0x21

    const v25, 0x101014f

    aput v25, v8, v20

    const/16 v20, 0x22

    const v25, 0x101015b

    aput v25, v8, v20

    const/16 v20, 0x23

    const v25, 0x101015d

    aput v25, v8, v20

    const/16 v20, 0x24

    const v25, 0x10100ab

    aput v25, v8, v20

    const/16 v20, 0x25

    const v25, 0x101021d

    aput v25, v8, v20

    const/16 v20, 0x26

    const v25, 0x101015f

    aput v25, v8, v20

    const/16 v20, 0x27

    const v25, 0x1010152

    aput v25, v8, v20

    const/16 v20, 0x28

    const v25, 0x1010160

    aput v25, v8, v20

    const/16 v20, 0x29

    const v26, 0x1010151

    aput v26, v8, v20

    const/16 v20, 0x2a

    const v26, 0x101016c

    aput v26, v8, v20

    const/16 v20, 0x2b

    const v26, 0x1010161

    aput v26, v8, v20

    const/16 v20, 0x2c

    const v26, 0x1010162

    aput v26, v8, v20

    const/16 v20, 0x2d

    const v26, 0x1010163

    aput v26, v8, v20

    const/16 v20, 0x2e

    const v26, 0x1010164

    aput v26, v8, v20

    const/16 v20, 0x2f

    const v26, 0x101000e

    aput v26, v8, v20

    const/16 v20, 0x30

    const v21, 0x1010099

    aput v21, v8, v20

    const/16 v20, 0x31

    const v26, 0x1010098

    aput v26, v8, v20

    const/16 v20, 0x32

    const v26, 0x101009a

    aput v26, v8, v20

    const/16 v20, 0x33

    const v26, 0x101009b

    aput v26, v8, v20

    const/16 v20, 0x34

    aput v18, v8, v20

    const/16 v20, 0x35

    aput v16, v8, v20

    const/16 v20, 0x36

    aput v17, v8, v20

    const/16 v20, 0x37

    const v26, 0x101015c

    aput v26, v8, v20

    const/16 v20, 0x38

    const v26, 0x1010217

    aput v26, v8, v20

    const/16 v20, 0x39

    const v26, 0x1010218

    aput v26, v8, v20

    const/16 v20, 0x3a

    const v26, 0x1010220

    aput v26, v8, v20

    const/16 v20, 0x3b

    const v26, 0x1010264

    aput v26, v8, v20

    const/16 v20, 0x3c

    const v26, 0x1010265

    aput v26, v8, v20

    const/16 v20, 0x3d

    const v26, 0x1010266

    aput v26, v8, v20

    const/16 v20, 0x3e

    const v26, 0x1010223

    aput v26, v8, v20

    const/16 v20, 0x3f

    const v26, 0x10102c5

    aput v26, v8, v20

    const/16 v20, 0x40

    const v27, 0x10102c6

    aput v27, v8, v20

    const/16 v20, 0x41

    const v28, 0x10102c7

    aput v28, v8, v20

    const/16 v20, 0x42

    const v29, 0x1010316

    aput v29, v8, v20

    const/16 v20, 0x43

    aput v15, v8, v20

    .line 1259
    invoke-static {v8}, Ljava/util/Arrays;->sort([I)V

    .line 1260
    iget v6, v6, Landroid/util/TypedValue;->data:I

    invoke-virtual {v7, v6, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1261
    invoke-direct {v1, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v7

    .line 1263
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v6, v8, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 1264
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v6, v11, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 1265
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v6, v13, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 1266
    const v13, 0x1010099

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v6, v13, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    .line 1267
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v6, v13, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 1269
    const v13, 0x1010098

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 1270
    const v15, 0x101009a

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v6, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    .line 1271
    const v16, 0x101009b

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 1273
    const-string v10, "TextAppearance_textSize"

    invoke-virtual {v3, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1274
    const-string v8, "TextAppearance_textStyle"

    invoke-virtual {v3, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1275
    const-string v8, "TextAppearance_typeface"

    invoke-virtual {v3, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1276
    const-string v5, "TextAppearance_textColorHighlight"

    invoke-virtual {v3, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1277
    const-string v5, "TextAppearance_textAllCaps"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1278
    if-eqz v13, :cond_2

    .line 1279
    const-string v4, "TextAppearance_textColor"

    invoke-virtual {v1, v13}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1280
    :cond_2
    if-eqz v15, :cond_3

    .line 1281
    const-string v4, "TextAppearance_textColorHint"

    invoke-virtual {v1, v15}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1282
    :cond_3
    if-eqz v9, :cond_4

    .line 1283
    const-string v4, "TextAppearance_textColorLink"

    invoke-virtual {v1, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1285
    :cond_4
    const-string v4, "TextView_editable"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1286
    const-string v4, "TextView_inputMethod"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1287
    const-string v4, "TextView_numeric"

    const v5, 0x1010165

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1288
    const-string v4, "TextView_digits"

    const v5, 0x1010166

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1289
    const-string v4, "TextView_phoneNumber"

    const v5, 0x1010167

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1290
    const-string v4, "TextView_autoText"

    const v5, 0x101016a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1291
    const-string v4, "TextView_capitalize"

    const v5, 0x1010169

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1292
    const-string v4, "TextView_bufferType"

    const v5, 0x101014e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1293
    const-string v4, "TextView_selectAllOnFocus"

    const v5, 0x101015e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1294
    const-string v4, "TextView_autoLink"

    const v5, 0x10100b0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1295
    const-string v4, "TextView_linksClickable"

    const v5, 0x10100b1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1296
    const-string v4, "TextView_drawableLeft"

    const v5, 0x101016f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_TextView_drawableLeft"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1297
    const-string v4, "TextView_drawableTop"

    const v5, 0x101016d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "_TextView_drawableTop"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1298
    const-string v4, "TextView_drawableRight"

    const v5, 0x1010170

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "_TextView_drawableRight"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1299
    const-string v4, "TextView_drawableBottom"

    const v5, 0x101016e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "_TextView_drawableBottom"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1300
    const-string v4, "TextView_drawableStart"

    const v5, 0x1010392

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "_TextView_drawableStart"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1301
    const-string v4, "TextView_drawableEnd"

    const v5, 0x1010393

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "_TextView_drawableEnd"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1302
    const-string v4, "TextView_maxLines"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1303
    const-string v4, "TextView_drawablePadding"

    const v5, 0x1010171

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 1306
    :try_start_1
    const-string v4, "TextView_textCursorDrawable"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "_TextView_textCursorDrawable"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1309
    goto :goto_1

    .line 1307
    :catch_0
    move-exception v0

    .line 1308
    :try_start_2
    const-string v4, "TextView_textCursorDrawable"

    iget-object v5, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iget-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v5, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "_TextView_textCursorDrawable"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1311
    :goto_1
    const-string v4, "TextView_maxLines"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1312
    const-string v4, "TextView_maxHeight"

    const v5, 0x1010120

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1313
    const-string v4, "TextView_lines"

    const v5, 0x1010154

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1314
    const-string v4, "TextView_height"

    const v5, 0x1010155

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1315
    const-string v4, "TextView_minLines"

    const v5, 0x1010156

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1316
    const-string v4, "TextView_minHeight"

    const v5, 0x1010140

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1317
    const-string v4, "TextView_maxEms"

    const v5, 0x1010157

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1318
    const-string v4, "TextView_maxWidth"

    const v5, 0x101011f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1319
    const-string v4, "TextView_ems"

    const v5, 0x1010158

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1320
    const-string v4, "TextView_width"

    const v5, 0x1010159

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1321
    const-string v4, "TextView_minEms"

    const v5, 0x101015a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1322
    const-string v4, "TextView_minWidth"

    const v5, 0x101013f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1323
    const-string v4, "TextView_gravity"

    const v5, 0x10100af

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1324
    const-string v4, "TextView_hint"

    const v5, 0x1010150

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1325
    const-string v4, "TextView_text"

    const v5, 0x101014f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1326
    const-string v4, "TextView_scrollHorizontally"

    const v5, 0x101015b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1327
    const-string v4, "TextView_singleLine"

    const v5, 0x101015d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1328
    const-string v4, "TextView_ellipsize"

    const v5, 0x10100ab

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1329
    const-string v4, "TextView_marqueeRepeatLimit"

    const v5, 0x101021d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x3

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1330
    const-string v4, "TextView_includeFontPadding"

    const v5, 0x101015f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1331
    const-string v4, "TextView_cursorVisible"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1332
    const-string v4, "TextView_maxLength"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1333
    const-string v4, "TextView_textScaleX"

    const v5, 0x1010151

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    float-to-double v10, v5

    invoke-virtual {v3, v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1334
    const-string v4, "TextView_freezesText"

    const v5, 0x101016c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1335
    const-string v4, "TextView_shadowColor"

    const v5, 0x1010161

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1336
    const-string v4, "TextView_shadowDx"

    const v5, 0x1010162

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    float-to-double v10, v5

    invoke-virtual {v3, v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1337
    const-string v4, "TextView_shadowDy"

    const v5, 0x1010163

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    float-to-double v10, v5

    invoke-virtual {v3, v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1338
    const-string v4, "TextView_shadowRadius"

    const v5, 0x1010164

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    float-to-double v10, v5

    invoke-virtual {v3, v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1339
    const-string v4, "TextView_enabled"

    const v5, 0x101000e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1340
    const-string v4, "TextView_password"

    const v5, 0x101015c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1341
    const-string v4, "TextView_lineSpacingExtra"

    const v5, 0x1010217

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1342
    const-string v4, "TextView_lineSpacingMultiplier"

    const v5, 0x1010218

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    float-to-double v10, v5

    invoke-virtual {v3, v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1343
    const-string v4, "TextView_inputType"

    const v5, 0x1010220

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1344
    const-string v4, "TextView_imeOptions"

    const v5, 0x1010264

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1345
    const-string v4, "TextView_imeActionLabel"

    const v5, 0x1010265

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1346
    const-string v4, "TextView_imeActionId"

    const v5, 0x1010266

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1347
    const-string v4, "TextView_privateImeOptions"

    const v5, 0x1010223

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1350
    :try_start_3
    const-string v4, "TextView_textSelectHandleLeft"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "_TextView_textSelectHandleLeft"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1353
    goto :goto_2

    .line 1351
    :catch_1
    move-exception v0

    .line 1352
    :try_start_4
    const-string v4, "TextView_textSelectHandleLeft"

    iget-object v5, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iget-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v5, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "_TextView_textSelectHandleLeft"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1356
    :goto_2
    :try_start_5
    const-string v4, "TextView_textSelectHandleRight"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "_TextView_textSelectHandleRight"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1359
    goto :goto_3

    .line 1357
    :catch_2
    move-exception v0

    .line 1358
    :try_start_6
    const-string v4, "TextView_textSelectHandleRight"

    iget-object v5, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iget-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v5, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "_TextView_textSelectHandleRight"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1362
    :goto_3
    :try_start_7
    const-string v4, "TextView_textSelectHandle"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "_TextView_textSelectHandle"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1365
    goto :goto_4

    .line 1363
    :catch_3
    move-exception v0

    .line 1364
    :try_start_8
    const-string v4, "TextView_textSelectHandle"

    iget-object v5, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iget-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v5, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "_TextView_textSelectHandle"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1366
    :goto_4
    const-string v2, "TextView_textIsSelectable"

    const v4, 0x1010316

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v6, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1367
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 1370
    goto :goto_5

    .line 1368
    :catch_4
    move-exception v0

    move-object v2, v0

    .line 1369
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1371
    :goto_5
    return-object v3
.end method

.method extractToolBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 12

    .line 1704
    const-string v0, "QToolBar"

    const v1, 0x10104aa

    invoke-virtual {p0, v1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1706
    const/4 v2, 0x5

    :try_start_0
    new-array v2, v2, [I

    const v3, 0x10100d4

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v5, 0x1

    const v6, 0x101038a

    aput v6, v2, v5

    const/4 v5, 0x2

    const v7, 0x101038b

    aput v7, v2, v5

    const/4 v5, 0x3

    const v8, 0x1010129

    aput v8, v2, v5

    const/4 v5, 0x4

    const v9, 0x101032d

    aput v9, v2, v5

    .line 1713
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 1714
    invoke-direct {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1715
    invoke-direct {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1717
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1718
    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 1719
    const-string v10, "ActionBar_background"

    const-string v11, "16843946_ActionBar_background"

    invoke-virtual {p0, v3, v11, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1721
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1722
    if-eqz v3, :cond_1

    .line 1723
    const-string v6, "ActionBar_backgroundStacked"

    const-string v10, "16843946_ActionBar_backgroundStacked"

    invoke-virtual {p0, v3, v10, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1725
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1726
    if-eqz v3, :cond_2

    .line 1727
    const-string v6, "ActionBar_backgroundSplit"

    const-string v7, "16843946_ActionBar_backgroundSplit"

    invoke-virtual {p0, v3, v7, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1729
    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1730
    if-eqz v3, :cond_3

    .line 1731
    const-string v6, "ActionBar_divider"

    const-string v7, "16843946_ActionBar_divider"

    invoke-virtual {p0, v3, v7, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1733
    :cond_3
    const-string v3, "ActionBar_itemPadding"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1735
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1736
    const-string v1, "actionBarStyle"

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1739
    goto :goto_0

    .line 1737
    :catch_0
    move-exception p1

    .line 1738
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1740
    :goto_0
    return-void
.end method

.method public extractViewInformation(ILorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 955
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractViewInformation(ILorg/json/JSONObject;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 956
    return-void
.end method

.method public extractViewInformation(ILorg/json/JSONObject;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 28

    .line 960
    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    :try_start_0
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 961
    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v7, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    iget-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 962
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v5, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 964
    const/16 v5, 0x2e

    new-array v5, v5, [I

    const v6, 0x1010166

    const/4 v8, 0x0

    aput v6, v5, v8

    const v9, 0x10100d4

    aput v9, v5, v7

    const/4 v10, 0x2

    const v11, 0x10100d5

    aput v11, v5, v10

    const/4 v10, 0x3

    const v12, 0x10100d6

    aput v12, v5, v10

    const/4 v10, 0x4

    const v13, 0x10100d7

    aput v13, v5, v10

    const/4 v10, 0x5

    const v14, 0x10100d8

    aput v14, v5, v10

    const/4 v10, 0x6

    const v15, 0x10100d9

    aput v15, v5, v10

    const/4 v10, 0x7

    const v16, 0x10100d2

    aput v16, v5, v10

    const/16 v10, 0x8

    const v17, 0x10100d3

    aput v17, v5, v10

    const/16 v10, 0x9

    const v18, 0x10100d0

    aput v18, v5, v10

    const/16 v10, 0xa

    const v19, 0x10100d1

    aput v19, v5, v10

    const/16 v10, 0xb

    const v20, 0x10100dd

    aput v20, v5, v10

    const/16 v10, 0xc

    const v21, 0x10100da

    aput v21, v5, v10

    const/16 v10, 0xd

    const v22, 0x10100db

    aput v22, v5, v10

    const/16 v10, 0xe

    const v23, 0x10100e5

    aput v23, v5, v10

    const/16 v10, 0xf

    const v24, 0x10100e6

    aput v24, v5, v10

    const/16 v10, 0x10

    const v25, 0x10100e7

    aput v25, v5, v10

    const/16 v10, 0x11

    const v26, 0x10100e9

    aput v26, v5, v10

    const/16 v10, 0x12

    const v27, 0x10100dc

    aput v27, v5, v10

    const/16 v10, 0x13

    const v27, 0x10100e8

    aput v27, v5, v10

    const/16 v10, 0x14

    const v27, 0x1010273

    aput v27, v5, v10

    const/16 v10, 0x15

    const v27, 0x1010215

    aput v27, v5, v10

    const/16 v10, 0x16

    const v27, 0x101025e

    aput v27, v5, v10

    const/16 v10, 0x17

    const v27, 0x10100de

    aput v27, v5, v10

    const/16 v10, 0x18

    const v27, 0x10100df

    aput v27, v5, v10

    const/16 v10, 0x19

    const v27, 0x101007f

    aput v27, v5, v10

    const/16 v10, 0x1a

    const v27, 0x10102a8

    aput v27, v5, v10

    const/16 v10, 0x1b

    const v27, 0x10102a9

    aput v27, v5, v10

    const/16 v10, 0x1c

    const v27, 0x1010063

    aput v27, v5, v10

    const/16 v10, 0x1d

    const v27, 0x1010064

    aput v27, v5, v10

    const/16 v10, 0x1e

    const v27, 0x1010065

    aput v27, v5, v10

    const/16 v10, 0x1f

    const v27, 0x1010066

    aput v27, v5, v10

    const/16 v10, 0x20

    const v27, 0x1010067

    aput v27, v5, v10

    const/16 v10, 0x21

    const v27, 0x101024e

    aput v27, v5, v10

    const/16 v10, 0x22

    const v27, 0x1010216

    aput v27, v5, v10

    const/16 v10, 0x23

    const v27, 0x10102c4

    aput v27, v5, v10

    const/16 v10, 0x24

    const v27, 0x10100e1

    aput v27, v5, v10

    const/16 v10, 0x25

    const v27, 0x10100e2

    aput v27, v5, v10

    const/16 v10, 0x26

    const v27, 0x10100e3

    aput v27, v5, v10

    const/16 v10, 0x27

    const v27, 0x10100e4

    aput v27, v5, v10

    const/16 v10, 0x28

    const v27, 0x101013f

    aput v27, v5, v10

    const/16 v10, 0x29

    const v27, 0x1010140

    aput v27, v5, v10

    const/16 v10, 0x2a

    const v27, 0x101026f

    aput v27, v5, v10

    const/16 v10, 0x2b

    const v27, 0x10102c1

    aput v27, v5, v10

    const/16 v10, 0x2c

    const v27, 0x10103b3

    aput v27, v5, v10

    const/16 v10, 0x2d

    const v27, 0x10103b4

    aput v27, v5, v10

    .line 1015
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    .line 1017
    if-eqz v4, :cond_0

    .line 1018
    iget-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v10, v4, v5, v0, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    goto :goto_0

    .line 1020
    :cond_0
    invoke-direct {v1, v0, v5}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1021
    :goto_0
    invoke-direct {v1, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v5

    .line 1023
    if-eqz v3, :cond_1

    .line 1024
    const-string v10, "qtClass"

    invoke-virtual {v2, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1026
    :cond_1
    const-string v3, "defaultBackgroundColor"

    iget v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->defaultBackgroundColor:I

    invoke-virtual {v2, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1027
    const-string v3, "defaultTextColorPrimary"

    iget v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->defaultTextColor:I

    invoke-virtual {v2, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1028
    const-string v3, "TextView_digits"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1029
    const-string v3, "View_background"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_View_background"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v6, v9, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1030
    const-string v3, "View_padding"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v9, -0x1

    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1031
    const-string v3, "View_paddingLeft"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1032
    const-string v3, "View_paddingTop"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1033
    const-string v3, "View_paddingRight"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1034
    const-string v3, "View_paddingBottom"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1035
    const-string v3, "View_paddingBottom"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1036
    const-string v3, "View_scrollY"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1037
    const-string v3, "View_id"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1038
    const-string v3, "View_tag"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1039
    const-string v3, "View_fitsSystemWindows"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1040
    const-string v3, "View_focusable"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1041
    const-string v3, "View_focusableInTouchMode"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1042
    const-string v3, "View_clickable"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1043
    const-string v3, "View_longClickable"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1044
    const-string v3, "View_saveEnabled"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1045
    const-string v3, "View_duplicateParentState"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1046
    const-string v3, "View_visibility"

    const v6, 0x10100dc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1047
    const-string v3, "View_drawingCacheQuality"

    const v6, 0x10100e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1048
    const-string v3, "View_contentDescription"

    const v6, 0x1010273

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1049
    const-string v3, "View_soundEffectsEnabled"

    const v6, 0x1010215

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1050
    const-string v3, "View_hapticFeedbackEnabled"

    const v6, 0x101025e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1051
    const-string v3, "View_scrollbars"

    const v6, 0x10100de

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1052
    const-string v3, "View_fadingEdge"

    const v6, 0x10100df

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1053
    const-string v3, "View_scrollbarStyle"

    const v6, 0x101007f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1054
    const-string v3, "View_scrollbarFadeDuration"

    const v6, 0x10102a8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1055
    const-string v3, "View_scrollbarDefaultDelayBeforeFade"

    const v6, 0x10102a9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1056
    const-string v3, "View_scrollbarSize"

    const v6, 0x1010063

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1057
    const-string v3, "View_scrollbarThumbHorizontal"

    const v6, 0x1010064

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_View_scrollbarThumbHorizontal"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v6, v11, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1058
    const-string v3, "View_scrollbarThumbVertical"

    const v6, 0x1010065

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_View_scrollbarThumbVertical"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v6, v11, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1059
    const-string v3, "View_scrollbarTrackHorizontal"

    const v6, 0x1010066

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_View_scrollbarTrackHorizontal"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v6, v11, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1060
    const-string v3, "View_scrollbarTrackVertical"

    const v6, 0x1010067

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "_View_scrollbarTrackVertical"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1061
    const-string v0, "View_isScrollContainer"

    const v3, 0x101024e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1062
    const-string v0, "View_keepScreenOn"

    const v3, 0x1010216

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1063
    const-string v0, "View_filterTouchesWhenObscured"

    const v3, 0x10102c4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1064
    const-string v0, "View_nextFocusLeft"

    const v3, 0x10100e1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1065
    const-string v0, "View_nextFocusRight"

    const v3, 0x10100e2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1066
    const-string v0, "View_nextFocusUp"

    const v3, 0x10100e3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1067
    const-string v0, "View_nextFocusDown"

    const v3, 0x10100e4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1068
    const-string v0, "View_minWidth"

    const v3, 0x101013f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1069
    const-string v0, "View_minHeight"

    const v3, 0x1010140

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1070
    const-string v0, "View_onClick"

    const v3, 0x101026f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1071
    const-string v0, "View_overScrollMode"

    const v3, 0x10102c1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1072
    const-string v0, "View_paddingStart"

    const v3, 0x10103b3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1073
    const-string v0, "View_paddingEnd"

    const v3, 0x10103b4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1074
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    goto :goto_1

    .line 1075
    :catch_0
    move-exception v0

    .line 1076
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1078
    :goto_1
    return-void
.end method

.method getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 297
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 298
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    return-object p1

    .line 300
    :catch_0
    move-exception p1

    .line 301
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    const/4 p1, 0x0

    return-object p1
.end method

.method getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;
    .locals 4

    .line 325
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 327
    :try_start_0
    const-string v1, "EMPTY_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->EMPTY_STATE_SET:[I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 328
    const-string v1, "WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 329
    const-string v1, "SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 330
    const-string v1, "SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 331
    const-string v1, "FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 332
    const-string v1, "FOCUSED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 333
    const-string v1, "FOCUSED_SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 334
    const-string v1, "FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 335
    const-string v1, "ENABLED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 336
    const-string v1, "ENABLED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 337
    const-string v1, "ENABLED_SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 338
    const-string v1, "ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 339
    const-string v1, "ENABLED_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 340
    const-string v1, "ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 341
    const-string v1, "ENABLED_FOCUSED_SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 342
    const-string v1, "ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 343
    const-string v1, "PRESSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 344
    const-string v1, "PRESSED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 345
    const-string v1, "PRESSED_SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 346
    const-string v1, "PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 347
    const-string v1, "PRESSED_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 348
    const-string v1, "PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 349
    const-string v1, "PRESSED_FOCUSED_SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 350
    const-string v1, "PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 351
    const-string v1, "PRESSED_ENABLED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 352
    const-string v1, "PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 353
    const-string v1, "PRESSED_ENABLED_SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 354
    const-string v1, "PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 355
    const-string v1, "PRESSED_ENABLED_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 356
    const-string v1, "PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 357
    const-string v1, "PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 358
    const-string v1, "PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    goto :goto_0

    .line 359
    :catch_0
    move-exception p1

    .line 360
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 363
    :goto_0
    return-object v0
.end method

.method public getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;
    .locals 12

    .line 774
    const-string v0, "color"

    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    iget-boolean v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_minimal:Z

    if-eqz v2, :cond_0

    goto/16 :goto_a

    .line 777
    :cond_0
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_drawableCache:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;

    .line 778
    if-eqz v2, :cond_2

    .line 779
    iget-object v3, v2, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;->drawable:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 780
    iget-object p1, v2, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;->object:Lorg/json/JSONObject;

    return-object p1

    .line 782
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Different drawable objects points to the same file name \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Qt JAVA"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 785
    nop

    .line 786
    instance-of v3, p1, Landroid/graphics/Bitmap;

    const/16 v4, 0x64

    const-string v5, "type"

    if-eqz v3, :cond_3

    .line 787
    move-object v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    goto/16 :goto_7

    .line 789
    :cond_3
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v6, 0x0

    if-eqz v3, :cond_5

    .line 790
    move-object p3, p1

    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    .line 791
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 793
    :try_start_0
    const-string v0, "gravity"

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getGravity()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 794
    const-string v0, "tileModeX"

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getTileModeX()Landroid/graphics/Shader$TileMode;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 795
    const-string v0, "tileModeY"

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getTileModeY()Landroid/graphics/Shader$TileMode;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 796
    const-string v0, "antialias"

    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    const-string v7, "hasAntiAlias"

    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 797
    const-string v0, "mipMap"

    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    const-string v7, "hasMipMap"

    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 798
    const-string v0, "tintMode"

    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    const-string v7, "getTintMode"

    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 799
    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    const-string v3, "getTint"

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, p3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/res/ColorStateList;

    .line 800
    if-eqz p3, :cond_4

    .line 801
    const-string v0, "tintList"

    invoke-virtual {p0, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    :cond_4
    goto :goto_0

    .line 802
    :catch_0
    move-exception p3

    .line 803
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 805
    :goto_0
    goto/16 :goto_7

    .line 807
    :cond_5
    instance-of v3, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_6

    .line 808
    invoke-direct {p0, p1, p2, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getRippleDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 810
    :cond_6
    instance-of v3, p1, Landroid/graphics/drawable/AnimatedStateListDrawable;

    if-eqz v3, :cond_7

    .line 811
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAnimatedStateListDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 813
    :cond_7
    instance-of v3, p1, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v3, :cond_8

    .line 814
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getVectorDrawable(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 816
    :cond_8
    instance-of v3, p1, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v3, :cond_9

    .line 817
    check-cast p1, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 819
    :cond_9
    instance-of v3, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_a

    .line 820
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getLayerDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 822
    :cond_a
    instance-of v3, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_b

    .line 823
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getStateListDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 825
    :cond_b
    instance-of v3, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_c

    .line 826
    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getGradientDrawable(Landroid/graphics/drawable/GradientDrawable;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 828
    :cond_c
    instance-of v3, p1, Landroid/graphics/drawable/RotateDrawable;

    if-eqz v3, :cond_d

    .line 829
    check-cast p1, Landroid/graphics/drawable/RotateDrawable;

    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getRotateDrawable(Landroid/graphics/drawable/RotateDrawable;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 831
    :cond_d
    instance-of v3, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_e

    .line 832
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAnimationDrawable(Landroid/graphics/drawable/AnimationDrawable;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 834
    :cond_e
    instance-of v3, p1, Landroid/graphics/drawable/ClipDrawable;

    const-string v7, "mDrawable"

    const-string v8, "drawable"

    const-string v9, "padding"

    if-eqz v3, :cond_11

    .line 836
    :try_start_1
    const-string v0, "clipDrawable"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 837
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ClipDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 838
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v2, v8, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 839
    if-eqz p3, :cond_f

    .line 840
    invoke-direct {p0, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 842
    :cond_f
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 843
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 844
    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 848
    :cond_10
    :goto_1
    goto :goto_2

    .line 846
    :catch_1
    move-exception p1

    .line 847
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 849
    :goto_2
    return-object v2

    .line 851
    :cond_11
    instance-of v3, p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v10, 0x1

    if-eqz v3, :cond_14

    .line 852
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v10, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 853
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 854
    invoke-virtual {p1, v6, v6, v10, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 855
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 857
    :try_start_2
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 858
    invoke-virtual {p2, v6, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p2

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 859
    if-eqz p3, :cond_12

    .line 860
    invoke-direct {p0, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 862
    :cond_12
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 863
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 864
    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 868
    :cond_13
    :goto_3
    goto :goto_4

    .line 866
    :catch_2
    move-exception p1

    .line 867
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 869
    :goto_4
    return-object v2

    .line 871
    :cond_14
    instance-of v0, p1, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_16

    .line 873
    :try_start_3
    move-object p3, p1

    check-cast p3, Landroid/graphics/drawable/InsetDrawable;

    .line 874
    const-class v0, Landroid/graphics/drawable/InsetDrawable;

    const-string v3, "mState"

    invoke-virtual {p0, v0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 875
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 876
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p3

    .line 877
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v6, v7}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p3, :cond_15

    goto :goto_5

    :cond_15
    move-object v3, v1

    :goto_5
    invoke-virtual {p0, v0, p2, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-object p1

    .line 878
    :catch_3
    move-exception p3

    .line 879
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 880
    goto :goto_7

    .line 882
    :cond_16
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 883
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 884
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 885
    const/16 v11, 0x2710

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 886
    if-lt v3, v10, :cond_17

    if-ge v7, v10, :cond_18

    .line 887
    :cond_17
    nop

    .line 888
    const/16 v3, 0x64

    const/16 v7, 0x64

    .line 890
    :cond_18
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 891
    invoke-virtual {v0, v6, v6, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 892
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 893
    instance-of v3, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v3, :cond_1b

    .line 894
    move-object v3, p1

    check-cast v3, Landroid/graphics/drawable/NinePatchDrawable;

    .line 896
    :try_start_4
    const-string v6, "9patch"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 897
    invoke-virtual {p0, v10, p2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 898
    if-eqz p3, :cond_19

    .line 899
    invoke-direct {p0, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v2, v9, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    .line 901
    :cond_19
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 902
    invoke-virtual {v3, p3}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 903
    invoke-direct {p0, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v2, v9, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 906
    :cond_1a
    :goto_6
    const-string p3, "chunkInfo"

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->findPatchesMarings(Landroid/graphics/drawable/Drawable;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 907
    return-object v2

    .line 908
    :catch_4
    move-exception p3

    .line 909
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 917
    :cond_1b
    move-object v1, v10

    :goto_7
    :try_start_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_extractPath:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ".png"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 918
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 919
    if-eqz v1, :cond_1c

    .line 920
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v0, v4, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 921
    :cond_1c
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 924
    goto :goto_8

    .line 922
    :catch_5
    move-exception p3

    .line 923
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    .line 926
    :goto_8
    :try_start_6
    const-string p3, "image"

    invoke-virtual {v2, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 927
    const-string p3, "path"

    invoke-virtual {v2, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 928
    if-eqz v1, :cond_1d

    .line 929
    const-string p3, "width"

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 930
    const-string p3, "height"

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 932
    :cond_1d
    iget-object p3, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_drawableCache:Ljava/util/HashMap;

    new-instance v0, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;

    invoke-direct {v0, v2, p1}, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;-><init>(Lorg/json/JSONObject;Ljava/lang/Object;)V

    invoke-virtual {p3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 935
    goto :goto_9

    .line 933
    :catch_6
    move-exception p1

    .line 934
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 936
    :goto_9
    return-object v2

    .line 775
    :cond_1e
    :goto_a
    return-object v1
.end method

.method getStatesList([I)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 367
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 368
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    aget v4, p1, v3

    .line 369
    nop

    .line 370
    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStates:[I

    array-length v7, v6

    const/4 v8, 0x1

    if-ge v5, v7, :cond_2

    .line 371
    aget v6, v6, v5

    if-ne v4, v6, :cond_0

    .line 372
    iget-object v6, p0, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStatesLabels:[Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 373
    nop

    .line 374
    const/4 v5, 0x1

    goto :goto_2

    .line 375
    :cond_0
    neg-int v6, v6

    if-ne v4, v6, :cond_1

    .line 376
    iget-object v6, p0, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStatesLabels:[Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 378
    nop

    .line 379
    const/4 v5, 0x1

    goto :goto_2

    .line 370
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 382
    :goto_2
    if-nez v5, :cond_4

    .line 383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unhandled_state_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-lez v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 368
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 386
    :cond_5
    return-object v0
.end method

.method getStatesName([I)Ljava/lang/String;
    .locals 9

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_7

    aget v4, p1, v3

    .line 392
    nop

    .line 393
    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStates:[I

    array-length v7, v6

    if-ge v5, v7, :cond_4

    .line 394
    aget v6, v6, v5

    const-string v7, "__"

    const/4 v8, 0x1

    if-ne v4, v6, :cond_1

    .line 395
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 396
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_0
    iget-object v6, p0, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStatesLabels:[Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    nop

    .line 399
    goto :goto_2

    .line 400
    :cond_1
    neg-int v6, v6

    if-ne v4, v6, :cond_3

    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 402
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_2
    iget-object v6, p0, Lorg/qtproject/qt/android/ExtractStyle;->DisableDrawableStatesLabels:[Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    nop

    .line 405
    goto :goto_2

    .line 393
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    .line 408
    :goto_2
    if-nez v8, :cond_6

    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 410
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 391
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 414
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_8

    .line 415
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 416
    :cond_8
    const-string p1, "empty"

    return-object p1
.end method

.method tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 307
    if-nez p1, :cond_0

    .line 308
    const/4 p1, 0x0

    return-object p1

    .line 311
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 312
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    return-object v0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 316
    invoke-virtual {p0, v3, p2}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 317
    if-eqz v3, :cond_1

    .line 318
    return-object v3

    .line 315
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    return-object p1
.end method
