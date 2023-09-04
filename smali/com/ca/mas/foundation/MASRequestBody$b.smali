.class final Lcom/ca/mas/foundation/MASRequestBody$b;
.super Lcom/ca/mas/foundation/MASRequestBody;
.source "MASRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MASRequestBody;->stringBody(Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final a:[B

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequestBody$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ca/mas/foundation/MASRequestBody;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASRequestBody$b;->getContentType()Lcom/ca/mas/core/http/ContentType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/http/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequestBody$b;->a:[B

    return-void
.end method


# virtual methods
.method public getContentAsJsonValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequestBody$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequestBody$b;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getContentType()Lcom/ca/mas/core/http/ContentType;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/http/ContentType;->TEXT_PLAIN:Lcom/ca/mas/core/http/ContentType;

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ca/mas/foundation/MASRequestBody$b;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Content: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequestBody$b;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
