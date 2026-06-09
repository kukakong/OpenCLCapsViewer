.class public Lorg/qtproject/qt/android/QtEditText;
.super Landroid/view/View;
.source "QtEditText.java"


# instance fields
.field private final ImhDate:I

.field private final ImhDialableCharactersOnly:I

.field private final ImhDigitsOnly:I

.field private final ImhEmailCharactersOnly:I

.field private final ImhFormattedNumbersOnly:I

.field private final ImhHiddenText:I

.field private final ImhLatinOnly:I

.field private final ImhLowercaseOnly:I

.field private final ImhMultiLine:I

.field private final ImhNoAutoUppercase:I

.field private final ImhNoPredictiveText:I

.field private final ImhPreferLatin:I

.field private final ImhPreferLowercase:I

.field private final ImhPreferNumbers:I

.field private final ImhPreferUppercase:I

.field private final ImhSensitiveData:I

.field private final ImhTime:I

.field private final ImhUppercaseOnly:I

.field private final ImhUrlCharactersOnly:I

.field m_imeOptions:I

.field m_initialCapsMode:I

.field m_inputConnection:Lorg/qtproject/qt/android/QtInputConnection;

.field m_inputType:I

.field m_optionsChanged:Z

.field private final m_qtInputConnectionListener:Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 p1, 0x0

    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_initialCapsMode:I

    .line 20
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_imeOptions:I

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_inputType:I

    .line 22
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    .line 23
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_inputConnection:Lorg/qtproject/qt/android/QtInputConnection;

    .line 26
    iput v0, p0, Lorg/qtproject/qt/android/QtEditText;->ImhHiddenText:I

    .line 27
    const/4 p1, 0x2

    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhSensitiveData:I

    .line 28
    const/4 p1, 0x4

    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhNoAutoUppercase:I

    .line 29
    const/16 p1, 0x8

    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhPreferNumbers:I

    .line 30
    const/16 p1, 0x10

    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhPreferUppercase:I

    .line 31
    const/16 p1, 0x20

    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhPreferLowercase:I

    .line 32
    const/16 p1, 0x40

    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhNoPredictiveText:I

    .line 34
    const/16 p1, 0x80

    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhDate:I

    .line 35
    const/16 p1, 0x100

    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhTime:I

    .line 37
    const/16 p1, 0x200

    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhPreferLatin:I

    .line 39
    const/16 p1, 0x400

    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhMultiLine:I

    .line 41
    const/high16 p1, 0x10000

    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhDigitsOnly:I

    .line 42
    const/high16 p1, 0x20000

    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhFormattedNumbersOnly:I

    .line 43
    const/high16 p1, 0x40000

    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhUppercaseOnly:I

    .line 44
    const/high16 p1, 0x80000

    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhLowercaseOnly:I

    .line 45
    const/high16 p1, 0x100000

    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhDialableCharactersOnly:I

    .line 46
    const/high16 p1, 0x200000

    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhEmailCharactersOnly:I

    .line 47
    const/high16 p1, 0x400000

    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhUrlCharactersOnly:I

    .line 48
    const/high16 p1, 0x800000

    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhLatinOnly:I

    .line 55
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtEditText;->setFocusable(Z)V

    .line 56
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtEditText;->setFocusableInTouchMode(Z)V

    .line 57
    iput-object p2, p0, Lorg/qtproject/qt/android/QtEditText;->m_qtInputConnectionListener:Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

    .line 58
    return-void
.end method

.method private imeOptionsFromEnterKeyType(I)I
    .locals 0

    .line 186
    nop

    .line 189
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 210
    :pswitch_0
    const/4 p1, 0x7

    goto :goto_1

    .line 207
    :pswitch_1
    nop

    .line 208
    const/4 p1, 0x5

    goto :goto_1

    .line 204
    :pswitch_2
    nop

    .line 205
    const/4 p1, 0x3

    goto :goto_1

    .line 201
    :pswitch_3
    nop

    .line 202
    const/4 p1, 0x4

    goto :goto_1

    .line 198
    :pswitch_4
    nop

    .line 199
    const/4 p1, 0x2

    goto :goto_1

    .line 196
    :pswitch_5
    goto :goto_0

    .line 193
    :pswitch_6
    nop

    .line 194
    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_1

    .line 191
    :pswitch_7
    nop

    .line 213
    :goto_0
    const/4 p1, 0x6

    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isDisablePredictiveTextWorkaround(I)Z
    .locals 0

    .line 218
    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_0

    .line 219
    const-string p1, "QT_ANDROID_ENABLE_WORKAROUND_TO_DISABLE_PREDICTIVE_TEXT"

    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 218
    :goto_0
    return p1
.end method

.method private setImeOptions(I)V
    .locals 1

    .line 62
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_imeOptions:I

    if-ne v0, p1, :cond_0

    .line 63
    return-void

    .line 64
    :cond_0
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_imeOptions:I

    .line 65
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    .line 66
    return-void
.end method

.method private setInitialCapsMode(I)V
    .locals 1

    .line 70
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_initialCapsMode:I

    if-ne v0, p1, :cond_0

    .line 71
    return-void

    .line 72
    :cond_0
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_initialCapsMode:I

    .line 73
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    .line 74
    return-void
.end method

.method private setInputType(I)V
    .locals 1

    .line 79
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_inputType:I

    if-ne v0, p1, :cond_0

    .line 80
    return-void

    .line 81
    :cond_0
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_inputType:I

    .line 82
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    .line 83
    return-void
.end method


# virtual methods
.method public onCheckIsTextEditor()Z
    .locals 1

    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 88
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_inputType:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 89
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_imeOptions:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 90
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_initialCapsMode:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 91
    new-instance p1, Lorg/qtproject/qt/android/QtInputConnection;

    iget-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_qtInputConnectionListener:Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

    invoke-direct {p1, p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;-><init>(Lorg/qtproject/qt/android/QtEditText;Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;)V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_inputConnection:Lorg/qtproject/qt/android/QtInputConnection;

    .line 92
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 114
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 115
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_inputConnection:Lorg/qtproject/qt/android/QtInputConnection;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtInputConnection;->restartImmInput()V

    .line 107
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setEditTextOptions(II)V
    .locals 5

    .line 120
    nop

    .line 121
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtEditText;->imeOptionsFromEnterKeyType(I)I

    move-result v0

    .line 122
    nop

    .line 124
    const v1, 0x30008

    and-int/2addr v1, p2

    const/high16 v2, 0x20000

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 125
    nop

    .line 126
    and-int v1, p2, v2

    if-eqz v1, :cond_0

    .line 127
    const/16 v3, 0x3002

    .line 131
    :cond_0
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_10

    .line 132
    or-int/lit8 v3, v3, 0x10

    goto/16 :goto_2

    .line 133
    :cond_1
    const/high16 v1, 0x100000

    and-int/2addr v1, p2

    if-eqz v1, :cond_2

    .line 134
    const/4 v3, 0x3

    goto/16 :goto_2

    .line 135
    :cond_2
    and-int/lit16 v1, p2, 0x180

    if-eqz v1, :cond_5

    .line 136
    nop

    .line 137
    const/16 v2, 0x180

    if-eq v1, v2, :cond_4

    .line 138
    and-int/lit16 v1, p2, 0x80

    if-eqz v1, :cond_3

    .line 139
    const/16 v3, 0x14

    goto :goto_2

    .line 141
    :cond_3
    const/16 v3, 0x24

    goto :goto_2

    .line 137
    :cond_4
    const/4 v3, 0x4

    goto :goto_2

    .line 144
    :cond_5
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_6

    .line 145
    const/16 v1, 0x81

    goto :goto_1

    .line 146
    :cond_6
    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_a

    .line 147
    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/QtEditText;->isDisablePredictiveTextWorkaround(I)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    .line 149
    :cond_7
    const/high16 v1, 0x400000

    and-int/2addr v1, p2

    if-eqz v1, :cond_8

    .line 150
    nop

    .line 151
    const/16 v1, 0x11

    if-nez p1, :cond_b

    .line 152
    const/4 v0, 0x2

    goto :goto_1

    .line 153
    :cond_8
    const/high16 v1, 0x200000

    and-int/2addr v1, p2

    if-eqz v1, :cond_9

    .line 154
    const/16 v1, 0x21

    goto :goto_1

    .line 153
    :cond_9
    const/4 v1, 0x1

    goto :goto_1

    .line 148
    :cond_a
    :goto_0
    const/16 v1, 0x91

    .line 157
    :cond_b
    :goto_1
    and-int/lit16 v3, p2, 0x400

    if-eqz v3, :cond_c

    .line 158
    or-int/2addr v1, v2

    .line 161
    const/4 v0, 0x6

    .line 163
    :cond_c
    and-int/lit8 v2, p2, 0x43

    const/high16 v3, 0x80000

    if-eqz v2, :cond_d

    .line 164
    or-int/2addr v1, v3

    .line 166
    :cond_d
    const/high16 v2, 0x40000

    and-int/2addr v2, p2

    if-eqz v2, :cond_e

    .line 167
    nop

    .line 168
    or-int/lit16 v3, v1, 0x1000

    const/16 v4, 0x1000

    goto :goto_2

    .line 169
    :cond_e
    and-int v2, p2, v3

    if-nez v2, :cond_f

    and-int/lit8 v2, p2, 0x4

    if-nez v2, :cond_f

    .line 171
    nop

    .line 172
    or-int/lit16 v3, v1, 0x4000

    const/16 v4, 0x4000

    goto :goto_2

    .line 176
    :cond_f
    move v3, v1

    :cond_10
    :goto_2
    if-nez p1, :cond_11

    and-int/lit16 p1, p2, 0x400

    if-eqz p1, :cond_11

    .line 177
    const/high16 v0, 0x40000000    # 2.0f

    .line 179
    :cond_11
    invoke-direct {p0, v4}, Lorg/qtproject/qt/android/QtEditText;->setInitialCapsMode(I)V

    .line 180
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtEditText;->setImeOptions(I)V

    .line 181
    invoke-direct {p0, v3}, Lorg/qtproject/qt/android/QtEditText;->setInputType(I)V

    .line 182
    return-void
.end method
