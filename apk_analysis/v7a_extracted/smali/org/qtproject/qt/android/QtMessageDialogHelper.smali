.class public Lorg/qtproject/qt/android/QtMessageDialogHelper;
.super Ljava/lang/Object;
.source "QtMessageDialogHelper.java"


# static fields
.field private static final QtTAG:Ljava/lang/String; = "QtMessageDialogHelper"


# instance fields
.field private final m_activity:Landroid/app/Activity;

.field private m_buttonsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/qtproject/qt/android/ButtonStruct;",
            ">;"
        }
    .end annotation
.end field

.field private m_detailedText:Landroid/text/Spanned;

.field private m_dialog:Landroid/app/AlertDialog;

.field private m_handler:J

.field private m_informativeText:Landroid/text/Spanned;

.field private m_standardIcon:I

.field private m_text:Landroid/text/Spanned;

.field private m_theme:Landroid/content/res/Resources$Theme;

.field private m_title:Landroid/text/Spanned;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    const/4 v0, 0x0

    iput v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_standardIcon:I

    .line 334
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_handler:J

    .line 57
    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    .line 58
    return-void
.end method

.method private getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 69
    iget v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_standardIcon:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 70
    return-object v1

    .line 73
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 88
    return-object v1

    .line 85
    :pswitch_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    .line 86
    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 85
    const v2, 0x1080040

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 82
    :pswitch_1
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    .line 83
    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 82
    const v2, 0x1080027

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 79
    :pswitch_2
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    .line 80
    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 79
    const v2, 0x108008a

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 76
    :pswitch_3
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    .line 77
    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 76
    const v2, 0x108009b

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getStyledDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 126
    iget-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 127
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 128
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    return-object v0
.end method


# virtual methods
.method public addButton(ILjava/lang/String;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    new-instance v1, Lorg/qtproject/qt/android/ButtonStruct;

    invoke-direct {v1, p0, p1, p2}, Lorg/qtproject/qt/android/ButtonStruct;-><init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public handler()J
    .locals 2

    .line 313
    iget-wide v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_handler:J

    return-wide v0
.end method

.method public hide()V
    .locals 2

    .line 304
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    new-instance v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 309
    return-void
.end method

.method synthetic lambda$hide$3$org-qtproject-qt-android-QtMessageDialogHelper()V
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 307
    :cond_0
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->reset()V

    .line 308
    return-void
.end method

.method synthetic lambda$show$0$org-qtproject-qt-android-QtMessageDialogHelper(Landroid/content/DialogInterface;)V
    .locals 2

    .line 149
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->handler()J

    move-result-wide v0

    const/4 p1, -0x1

    invoke-static {v0, v1, p1}, Lorg/qtproject/qt/android/QtNativeDialogHelper;->dialogResult(JI)V

    return-void
.end method

.method synthetic lambda$show$1$org-qtproject-qt-android-QtMessageDialogHelper(Landroid/view/View;)Z
    .locals 2

    .line 158
    check-cast p1, Landroid/widget/TextView;

    .line 159
    if-eqz p1, :cond_0

    .line 160
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 162
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 164
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$show$2$org-qtproject-qt-android-QtMessageDialogHelper()V
    .locals 16

    .line 137
    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 140
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    .line 141
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_theme:Landroid/content/res/Resources$Theme;

    goto :goto_0

    .line 145
    :cond_1
    const-string v0, "QtMessageDialogHelper"

    const-string v2, "show(): cannot set theme from null window!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_title:Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 148
    iget-object v2, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    :cond_2
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    new-instance v2, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda1;-><init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 150
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    iget-object v2, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 151
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    iget-object v2, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 152
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 153
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 155
    nop

    .line 156
    nop

    .line 157
    new-instance v0, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1}, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda2;-><init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;)V

    .line 166
    iget-object v6, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_text:Landroid/text/Spanned;

    const v7, 0x1030044

    const/4 v10, -0x2

    const/16 v11, 0xa

    const/16 v12, 0x8

    const/16 v13, 0x10

    const/4 v14, -0x1

    if-eqz v6, :cond_5

    .line 168
    new-instance v6, Landroid/widget/TextView;

    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-direct {v6, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setId(I)V

    .line 170
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 171
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 173
    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_text:Landroid/text/Spanned;

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 176
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v15, v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 179
    invoke-virtual {v15, v13, v12, v13, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 180
    invoke-virtual {v15, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 181
    invoke-virtual {v5, v6, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    const/4 v15, 0x2

    goto :goto_3

    .line 166
    :cond_5
    const/4 v6, 0x0

    const/4 v15, 0x1

    .line 185
    :goto_3
    iget-object v9, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_informativeText:Landroid/text/Spanned;

    const/4 v8, 0x3

    if-eqz v9, :cond_7

    .line 187
    new-instance v9, Landroid/widget/TextView;

    iget-object v3, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-direct {v9, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 188
    add-int/lit8 v3, v15, 0x1

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setId(I)V

    .line 189
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 190
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 192
    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_informativeText:Landroid/text/Spanned;

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 195
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 198
    invoke-virtual {v7, v13, v12, v13, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 199
    if-eqz v6, :cond_6

    .line 200
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v7, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_4

    .line 202
    :cond_6
    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 203
    :goto_4
    invoke-virtual {v5, v9, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    move v15, v3

    move-object v6, v9

    .line 207
    :cond_7
    iget-object v3, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_detailedText:Landroid/text/Spanned;

    if-eqz v3, :cond_9

    .line 209
    new-instance v3, Landroid/widget/TextView;

    iget-object v7, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-direct {v3, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 210
    add-int/lit8 v7, v15, 0x1

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setId(I)V

    .line 211
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 212
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 214
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_detailedText:Landroid/text/Spanned;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    const v0, 0x1030046

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 217
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 220
    invoke-virtual {v0, v13, v12, v13, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 221
    if-eqz v6, :cond_8

    .line 222
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v0, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_5

    .line 224
    :cond_8
    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 225
    :goto_5
    invoke-virtual {v5, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    move-object v6, v3

    move v15, v7

    .line 229
    :cond_9
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    .line 231
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 232
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 233
    add-int/lit8 v7, v15, 0x1

    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->setId(I)V

    .line 234
    nop

    .line 235
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v12, 0x1

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lorg/qtproject/qt/android/ButtonStruct;

    .line 239
    :try_start_0
    new-instance v0, Landroid/widget/Button;

    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const v8, 0x101032b

    const/4 v11, 0x0

    :try_start_1
    invoke-direct {v0, v15, v11, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 243
    move-object v8, v0

    goto :goto_8

    .line 240
    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    const/4 v11, 0x0

    .line 241
    :goto_7
    new-instance v8, Landroid/widget/Button;

    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-direct {v8, v15}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 242
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    :goto_8
    iget-object v0, v13, Lorg/qtproject/qt/android/ButtonStruct;->m_text:Landroid/text/Spanned;

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {v8, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    if-nez v12, :cond_a

    .line 249
    new-instance v0, Landroid/view/View;

    iget-object v12, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 251
    :try_start_2
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v4, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 253
    const v13, 0x101030a

    invoke-direct {v1, v13}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->getStyledDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 254
    invoke-virtual {v3, v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 257
    goto :goto_9

    .line 255
    :catch_2
    move-exception v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    :cond_a
    :goto_9
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v0, v14, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 262
    invoke-virtual {v3, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    nop

    .line 264
    const/4 v8, 0x3

    const/16 v11, 0xa

    const/4 v12, 0x0

    goto :goto_6

    .line 267
    :cond_b
    :try_start_3
    new-instance v0, Landroid/view/View;

    iget-object v8, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 268
    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    .line 269
    const v7, 0x101032c

    invoke-direct {v1, v7}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->getStyledDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 271
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 273
    const/16 v4, 0xa

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v4, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 274
    if-eqz v6, :cond_c

    .line 275
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_a

    .line 278
    :cond_c
    const/16 v4, 0xa

    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 279
    :goto_a
    invoke-virtual {v5, v0, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 280
    nop

    .line 283
    move-object v6, v0

    goto :goto_b

    .line 281
    :catch_3
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    :goto_b
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 287
    if-eqz v6, :cond_d

    .line 288
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_c

    .line 291
    :cond_d
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 292
    :goto_c
    const/4 v4, 0x2

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 293
    invoke-virtual {v5, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    :cond_e
    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 296
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 297
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 298
    return-void
.end method

.method public reset()V
    .locals 2

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_standardIcon:I

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_title:Landroid/text/Spanned;

    .line 320
    iput-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_text:Landroid/text/Spanned;

    .line 321
    iput-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_informativeText:Landroid/text/Spanned;

    .line 322
    iput-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_detailedText:Landroid/text/Spanned;

    .line 323
    iput-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    .line 324
    iput-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    .line 325
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_handler:J

    .line 326
    return-void
.end method

.method public setDetailedText(Ljava/lang/String;)V
    .locals 0

    .line 112
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_detailedText:Landroid/text/Spanned;

    .line 113
    return-void
.end method

.method public setInformativeText(Ljava/lang/String;)V
    .locals 0

    .line 106
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_informativeText:Landroid/text/Spanned;

    .line 107
    return-void
.end method

.method public setStandardIcon(I)V
    .locals 0

    .line 63
    iput p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_standardIcon:I

    .line 65
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_text:Landroid/text/Spanned;

    .line 101
    return-void
.end method

.method public setTile(Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_title:Landroid/text/Spanned;

    .line 95
    return-void
.end method

.method public show(J)V
    .locals 0

    .line 135
    iput-wide p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_handler:J

    .line 136
    iget-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    new-instance p2, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda3;-><init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 299
    return-void
.end method
