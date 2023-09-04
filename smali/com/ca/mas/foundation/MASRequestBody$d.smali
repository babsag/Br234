.class final Lcom/ca/mas/foundation/MASRequestBody$d;
.super Lcom/ca/mas/foundation/MASRequestBody;
.source "MASRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MASRequestBody;->jsonArrayBody(Lorg/json/JSONArray;)Lcom/ca/mas/foundation/MASRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private a:[B

.field final synthetic b:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lorg/json/JSONArray;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequestBody$d;->b:Lorg/json/JSONArray;

    invoke-direct {p0}, Lcom/ca/mas/foundation/MASRequestBody;-><init>()V

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASRequestBody$d;->getContentType()Lcom/ca/mas/core/http/ContentType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/http/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequestBody$d;->a:[B

    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequestBody$d;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getContentType()Lcom/ca/mas/core/http/ContentType;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/http/ContentType;->APPLICATION_JSON:Lcom/ca/mas/core/http/ContentType;

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequestBody$d;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
