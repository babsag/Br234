.class public Lcom/ca/mas/foundation/MASResponseBody;
.super Ljava/lang/Object;
.source "MASResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field protected buffer:[B

.field protected file:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/ca/mas/foundation/MASResponseBody;->buffer:[B

    return-void
.end method

.method public static byteArrayBody()Lcom/ca/mas/foundation/MASResponseBody;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ca/mas/foundation/MASResponseBody<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASResponseBody$a;

    invoke-direct {v0}, Lcom/ca/mas/foundation/MASResponseBody$a;-><init>()V

    return-object v0
.end method

.method public static jsonArrayBody()Lcom/ca/mas/foundation/MASResponseBody;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ca/mas/foundation/MASResponseBody<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASResponseBody$c;

    invoke-direct {v0}, Lcom/ca/mas/foundation/MASResponseBody$c;-><init>()V

    return-object v0
.end method

.method public static jsonBody()Lcom/ca/mas/foundation/MASResponseBody;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ca/mas/foundation/MASResponseBody<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASResponseBody$b;

    invoke-direct {v0}, Lcom/ca/mas/foundation/MASResponseBody$b;-><init>()V

    return-object v0
.end method

.method public static stringBody()Lcom/ca/mas/foundation/MASResponseBody;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ca/mas/foundation/MASResponseBody<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASResponseBody$d;

    invoke-direct {v0}, Lcom/ca/mas/foundation/MASResponseBody$d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASResponseBody;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v1, "application/json"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/foundation/MASResponseBody;->buffer:[B

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/ca/mas/foundation/MASResponseBody;->buffer:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 6
    :catch_1
    :goto_1
    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/ca/mas/foundation/MASResponseBody;->a:Ljava/lang/String;

    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/ca/mas/foundation/MASResponseBody;->buffer:[B

    if-eqz v0, :cond_4

    array-length v0, v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ca/mas/foundation/MASResponseBody;->buffer:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_4
    :goto_2
    return-object v1

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/ca/mas/foundation/MASResponseBody;->buffer:[B

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ca/mas/foundation/MASResponseBody;->b:I

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASResponseBody;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRawContent()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASResponseBody;->buffer:[B

    return-object v0
.end method

.method public read(Ljava/net/HttpURLConnection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Response content: %s"

    const-string v1, "MAS"

    .line 1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ca/mas/foundation/MASResponseBody;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    iput v2, p0, Lcom/ca/mas/foundation/MASResponseBody;->b:I

    .line 3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    :cond_0
    const/high16 p1, 0xa00000

    .line 5
    invoke-static {v2, p1}, Lcom/ca/mas/core/io/IoUtils;->slurpStream(Ljava/io/InputStream;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/foundation/MASResponseBody;->buffer:[B

    .line 6
    sget-boolean p1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 7
    :try_start_0
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/ca/mas/foundation/MASResponseBody;->buffer:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x4

    .line 9
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v4

    :catch_1
    move-object v4, p1

    :goto_0
    new-array p1, v3, [Ljava/lang/Object;

    aput-object v4, p1, v2

    .line 10
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
