.class public Lorg/qtproject/qt/android/QtInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "QtInputConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;,
        Lorg/qtproject/qt/android/QtInputConnection$HideKeyboardRunnable;
    }
.end annotation


# static fields
.field private static final ID_ADD_TO_DICTIONARY:I = 0x102002a

.field private static final ID_COPY:I = 0x1020021

.field private static final ID_COPY_URL:I = 0x1020023

.field private static final ID_CUT:I = 0x1020020

.field private static final ID_PASTE:I = 0x1020022

.field private static final ID_SELECT_ALL:I = 0x102001f

.field private static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field private static final QtTAG:Ljava/lang/String; = "QtInputConnection"


# instance fields
.field private final m_imm:Landroid/view/inputmethod/InputMethodManager;

.field private final m_qtInputConnectionListener:Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

.field private final m_view:Lorg/qtproject/qt/android/QtEditText;


# direct methods
.method public constructor <init>(Lorg/qtproject/qt/android/QtEditText;Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;)V
    .locals 1

    .line 118
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 119
    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_view:Lorg/qtproject/qt/android/QtEditText;

    .line 120
    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtEditText;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    .line 122
    iput-object p2, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_qtInputConnectionListener:Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt/android/QtInputConnection;)Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_qtInputConnectionListener:Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

    return-object p0
.end method

.method private setClosing(Z)V
    .locals 3

    .line 110
    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_view:Lorg/qtproject/qt/android/QtEditText;

    new-instance v0, Lorg/qtproject/qt/android/QtInputConnection$HideKeyboardRunnable;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtInputConnection$HideKeyboardRunnable;-><init>(Lorg/qtproject/qt/android/QtInputConnection;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Lorg/qtproject/qt/android/QtEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_qtInputConnectionListener:Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;->onSetClosing(Z)V

    .line 114
    :goto_0
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 138
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 164
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result p1

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/QtNativeInputConnection;->commitCompletion(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 171
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtInputConnection;->restartImmInput()V

    .line 172
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->commitText(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public deleteSurroundingText(II)Z
    .locals 1

    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 179
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->deleteSurroundingText(II)Z

    move-result p1

    return p1
.end method

.method public endBatchEdit()Z
    .locals 1

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 157
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->endBatchEdit()Z

    move-result v0

    return v0
.end method

.method public finishComposingText()Z
    .locals 1

    .line 186
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 187
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->finishComposingText()Z

    move-result v0

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 0

    .line 193
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeInputConnection;->getCursorCapsMode(I)I

    move-result p1

    return p1
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1

    .line 199
    iget v0, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    iget p1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    invoke-static {v0, p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->getExtractedText(III)Lorg/qtproject/qt/android/QtExtractedText;

    move-result-object p1

    .line 202
    if-nez p1, :cond_0

    .line 203
    const/4 p1, 0x0

    return-object p1

    .line 205
    :cond_0
    new-instance p2, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {p2}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 206
    iget v0, p1, Lorg/qtproject/qt/android/QtExtractedText;->partialEndOffset:I

    iput v0, p2, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 207
    iget v0, p1, Lorg/qtproject/qt/android/QtExtractedText;->partialStartOffset:I

    iput v0, p2, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 208
    iget v0, p1, Lorg/qtproject/qt/android/QtExtractedText;->selectionEnd:I

    iput v0, p2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 209
    iget v0, p1, Lorg/qtproject/qt/android/QtExtractedText;->selectionStart:I

    iput v0, p2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 210
    iget v0, p1, Lorg/qtproject/qt/android/QtExtractedText;->startOffset:I

    iput v0, p2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 211
    iget-object p1, p1, Lorg/qtproject/qt/android/QtExtractedText;->text:Ljava/lang/String;

    iput-object p1, p2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 212
    return-object p2
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 0

    .line 217
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeInputConnection;->getSelectedText(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 0

    .line 223
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->getTextAfterCursor(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 0

    .line 229
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->getTextBeforeCursor(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public performContextMenuAction(I)Z
    .locals 1

    .line 235
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 267
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->performContextMenuAction(I)Z

    move-result p1

    return p1

    .line 265
    :pswitch_1
    return v0

    .line 252
    :pswitch_2
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 255
    :cond_0
    return v0

    .line 243
    :pswitch_3
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtInputConnection;->restartImmInput()V

    .line 244
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->copyURL()Z

    move-result p1

    return p1

    .line 249
    :pswitch_4
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtInputConnection;->restartImmInput()V

    .line 250
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->paste()Z

    move-result p1

    return p1

    .line 240
    :pswitch_5
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtInputConnection;->restartImmInput()V

    .line 241
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->copy()Z

    move-result p1

    return p1

    .line 246
    :pswitch_6
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtInputConnection;->restartImmInput()V

    .line 247
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->cut()Z

    move-result p1

    return p1

    .line 237
    :pswitch_7
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtInputConnection;->restartImmInput()V

    .line 238
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->selectAll()Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1

    .line 144
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeInputConnection;->reportFullscreenMode(Z)V

    .line 147
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 148
    const/4 p1, 0x0

    return p1

    .line 150
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public restartImmInput()V
    .locals 2

    .line 127
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->fullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_view:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 132
    :cond_0
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10

    .line 276
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtInputConnection;->finishComposingText()Z

    .line 277
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_view:Lorg/qtproject/qt/android/QtEditText;

    if-eqz v0, :cond_0

    .line 279
    iget v0, v0, Lorg/qtproject/qt/android/QtEditText;->m_imeOptions:I

    sparse-switch v0, :sswitch_data_0

    .line 300
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_qtInputConnectionListener:Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

    invoke-interface {v0}, Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;->onSendKeyEventDefaultCase()V

    goto :goto_0

    .line 297
    :sswitch_0
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtInputConnection;->restartImmInput()V

    .line 298
    goto :goto_0

    .line 289
    :sswitch_1
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    .line 290
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    .line 291
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    const/16 v7, 0x3d

    .line 293
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    const/4 v9, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 295
    invoke-super {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 281
    :sswitch_2
    new-instance v9, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    .line 282
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    .line 283
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/16 v6, 0x3d

    .line 285
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    .line 286
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 287
    invoke-super {p0, v9}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 304
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_2
        0x7 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setComposingRegion(II)Z
    .locals 1

    .line 317
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 318
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->setComposingRegion(II)Z

    move-result p1

    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1

    .line 310
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 311
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->setComposingText(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public setSelection(II)Z
    .locals 1

    .line 324
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 325
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->setSelection(II)Z

    move-result p1

    return p1
.end method
