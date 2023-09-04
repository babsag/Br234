.class final Lcom/ca/mas/foundation/MASRequestBody$g;
.super Lcom/ca/mas/foundation/MASRequestBody;
.source "MASRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MASRequestBody;->multipartBody(Lcom/ca/mas/foundation/MultiPart;Lcom/ca/mas/foundation/MASProgressListener;)Lcom/ca/mas/foundation/MASRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field private final d:[B

.field final synthetic e:Lcom/ca/mas/foundation/MultiPart;

.field final synthetic f:Lcom/ca/mas/foundation/MASProgressListener;


# direct methods
.method constructor <init>(Lcom/ca/mas/foundation/MultiPart;Lcom/ca/mas/foundation/MASProgressListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/ca/mas/foundation/MASException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequestBody$g;->e:Lcom/ca/mas/foundation/MultiPart;

    iput-object p2, p0, Lcom/ca/mas/foundation/MASRequestBody$g;->f:Lcom/ca/mas/foundation/MASProgressListener;

    invoke-direct {p0}, Lcom/ca/mas/foundation/MASRequestBody;-><init>()V

    const-string p1, "--"

    .line 2
    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequestBody$g;->a:Ljava/lang/String;

    const-string p2, "\r\n"

    .line 3
    iput-object p2, p0, Lcom/ca/mas/foundation/MASRequestBody$g;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/ca/mas/foundation/MASConstants;->MAS_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequestBody$g;->c:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lcom/ca/mas/foundation/MASRequestBody$g;->b()[B

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequestBody$g;->d:[B

    return-void
.end method

.method private b()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/foundation/MASException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/ca/mas/foundation/MASRequestBody$g;->e:Lcom/ca/mas/foundation/MultiPart;

    invoke-virtual {v2}, Lcom/ca/mas/foundation/MultiPart;->getFormFields()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const-string v3, "\""

    const-string v4, "Content-Disposition: form-data; name=\""

    const-string v5, "\r\n"

    if-nez v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/ca/mas/foundation/MASRequestBody$g;->e:Lcom/ca/mas/foundation/MultiPart;

    invoke-virtual {v2}, Lcom/ca/mas/foundation/MultiPart;->getFormFields()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 5
    iget-object v7, p0, Lcom/ca/mas/foundation/MASRequestBody$g;->c:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequestBody$g;->e:Lcom/ca/mas/foundation/MultiPart;

    invoke-virtual {v0}, Lcom/ca/mas/foundation/MultiPart;->getFilePart()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ca/mas/foundation/MASFileObject;

    .line 12
    invoke-virtual {v2}, Lcom/ca/mas/foundation/MASFileObject;->getFileBytes()[B

    move-result-object v6

    .line 13
    invoke-virtual {v2}, Lcom/ca/mas/foundation/MASFileObject;->getFileUri()Landroid/net/Uri;

    move-result-object v7

    if-nez v6, :cond_3

    if-eqz v7, :cond_2

    .line 14
    :try_start_0
    invoke-static {v7}, Lcom/ca/mas/core/util/FileUtils;->getBytesFromUri(Landroid/net/Uri;)[B

    move-result-object v6

    goto :goto_2

    :cond_2
    if-nez v6, :cond_3

    .line 15
    invoke-virtual {v2}, Lcom/ca/mas/foundation/MASFileObject;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ca/mas/core/util/FileUtils;->getBytesFromPath(Ljava/lang/String;)[B

    move-result-object v6

    .line 16
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/ca/mas/foundation/MASRequestBody$g;->c:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ca/mas/foundation/MASFileObject;->getFieldName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\"; filename=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ca/mas/foundation/MASFileObject;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content-Type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ca/mas/foundation/MASFileObject;->getFileType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v2, "Content-Transfer-Encoding: binary\r\n"

    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 20
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 21
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 22
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 23
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 24
    iget-object v1, p0, Lcom/ca/mas/foundation/MASRequestBody$g;->f:Lcom/ca/mas/foundation/MASProgressListener;

    new-instance v2, Lcom/ca/mas/core/error/MAGError;

    invoke-direct {v2, v0}, Lcom/ca/mas/core/error/MAGError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/ca/mas/foundation/MASProgressListener;->onError(Lcom/ca/mas/core/error/MAGError;)V

    .line 25
    new-instance v1, Lcom/ca/mas/foundation/MASException;

    invoke-direct {v1, v0}, Lcom/ca/mas/foundation/MASException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 26
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ca/mas/foundation/MASConstants;->MAS_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 27
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequestBody$g;->d:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/ca/mas/foundation/MASRequestBody$g;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getContentType()Lcom/ca/mas/core/http/ContentType;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/http/ContentType;->MULTIPART_FORM_DATA:Lcom/ca/mas/core/http/ContentType;

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/ca/mas/foundation/MASRequestBody$g;->d:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 2
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 4
    invoke-virtual {p1, v1, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 5
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    add-int/2addr v3, v4

    .line 6
    iget-object v4, p0, Lcom/ca/mas/foundation/MASRequestBody$g;->f:Lcom/ca/mas/foundation/MASProgressListener;

    if-eqz v4, :cond_0

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v3, 0x64

    iget-object v7, p0, Lcom/ca/mas/foundation/MASRequestBody$g;->d:[B

    array-length v7, v7

    div-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/ca/mas/foundation/MASProgressListener;->onProgress(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequestBody$g;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 9
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 10
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequestBody$g;->f:Lcom/ca/mas/foundation/MASProgressListener;

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v0}, Lcom/ca/mas/foundation/MASProgressListener;->onComplete()V

    .line 12
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method
