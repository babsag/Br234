.class final Lcom/ca/mas/foundation/MASRequestBody$c;
.super Lcom/ca/mas/foundation/MASRequestBody;
.source "MASRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MASRequestBody;->jsonBody(Lorg/json/JSONObject;)Lcom/ca/mas/foundation/MASRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final a:[B

.field final synthetic b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequestBody$c;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/ca/mas/foundation/MASRequestBody;-><init>()V

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASRequestBody$c;->getContentType()Lcom/ca/mas/core/http/ContentType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/http/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequestBody$c;->a:[B

    return-void
.end method


# virtual methods
.method public getContentAsJsonValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequestBody$c;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequestBody$c;->a:[B

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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "MAS"

    const-string v1, "Content: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2
    iget-object v4, p0, Lcom/ca/mas/foundation/MASRequestBody$c;->b:Lorg/json/JSONObject;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequestBody$c;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
