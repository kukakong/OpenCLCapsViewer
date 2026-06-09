.class Lorg/qtproject/qt/android/ButtonStruct;
.super Ljava/lang/Object;
.source "QtMessageDialogHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field m_dialog:Lorg/qtproject/qt/android/QtMessageDialogHelper;

.field private final m_id:I

.field m_text:Landroid/text/Spanned;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;ILjava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/qtproject/qt/android/ButtonStruct;->m_dialog:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    .line 39
    iput p2, p0, Lorg/qtproject/qt/android/ButtonStruct;->m_id:I

    .line 40
    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/ButtonStruct;->m_text:Landroid/text/Spanned;

    .line 41
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 48
    iget-object p1, p0, Lorg/qtproject/qt/android/ButtonStruct;->m_dialog:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->handler()J

    move-result-wide v0

    iget p1, p0, Lorg/qtproject/qt/android/ButtonStruct;->m_id:I

    invoke-static {v0, v1, p1}, Lorg/qtproject/qt/android/QtNativeDialogHelper;->dialogResult(JI)V

    .line 49
    return-void
.end method
