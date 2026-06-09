.class Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;
.super Ljava/lang/Object;
.source "ExtractStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/ExtractStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleJsonWriter"
.end annotation


# instance fields
.field private m_addComma:Z

.field private m_indentLevel:I

.field private final m_writer:Ljava/io/OutputStreamWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1805
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_addComma:Z

    .line 1806
    iput v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_indentLevel:I

    .line 1809
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    .line 1810
    return-void
.end method

.method private writeIndent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1817
    iget-object v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    const/4 v1, 0x0

    iget v2, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_indentLevel:I

    const-string v3, " "

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    .line 1818
    return-void
.end method


# virtual methods
.method beginObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1821
    invoke-direct {p0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->writeIndent()V

    .line 1822
    iget-object v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1823
    iget v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_indentLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_indentLevel:I

    .line 1824
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_addComma:Z

    .line 1825
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1813
    iget-object v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 1814
    return-void
.end method

.method endObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1828
    iget-object v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1829
    invoke-direct {p0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->writeIndent()V

    .line 1830
    iget-object v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1831
    iget v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_indentLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_indentLevel:I

    .line 1832
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_addComma:Z

    .line 1833
    return-void
.end method

.method name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1836
    iget-boolean v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_addComma:Z

    if-eqz v0, :cond_0

    .line 1837
    iget-object v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1839
    :cond_0
    invoke-direct {p0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->writeIndent()V

    .line 1840
    iget-object v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1841
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_addComma:Z

    .line 1842
    return-object p0
.end method

.method value(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1846
    iget-object v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1847
    return-void
.end method
