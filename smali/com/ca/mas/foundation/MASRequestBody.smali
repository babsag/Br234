.class public abstract Lcom/ca/mas/foundation/MASRequestBody;
.super Ljava/lang/Object;
.source "MASRequestBody.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/ca/mas/foundation/MASClaims;Ljava/security/PrivateKey;Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequestBody;
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASRequestBody$f;

    invoke-direct {v0, p0, p2, p1}, Lcom/ca/mas/foundation/MASRequestBody$f;-><init>(Lcom/ca/mas/foundation/MASClaims;Lcom/ca/mas/foundation/MASRequestBody;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public static byteArrayBody([B)Lcom/ca/mas/foundation/MASRequestBody;
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASRequestBody$a;

    invoke-direct {v0, p0}, Lcom/ca/mas/foundation/MASRequestBody$a;-><init>([B)V

    return-object v0
.end method

.method public static jsonArrayBody(Lorg/json/JSONArray;)Lcom/ca/mas/foundation/MASRequestBody;
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASRequestBody$d;

    invoke-direct {v0, p0}, Lcom/ca/mas/foundation/MASRequestBody$d;-><init>(Lorg/json/JSONArray;)V

    return-object v0
.end method

.method public static jsonBody(Lorg/json/JSONObject;)Lcom/ca/mas/foundation/MASRequestBody;
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASRequestBody$c;

    invoke-direct {v0, p0}, Lcom/ca/mas/foundation/MASRequestBody$c;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static multipartBody(Lcom/ca/mas/foundation/MultiPart;Lcom/ca/mas/foundation/MASProgressListener;)Lcom/ca/mas/foundation/MASRequestBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/foundation/MASException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    new-instance v0, Lcom/ca/mas/foundation/MASRequestBody$g;

    invoke-direct {v0, p0, p1}, Lcom/ca/mas/foundation/MASRequestBody$g;-><init>(Lcom/ca/mas/foundation/MultiPart;Lcom/ca/mas/foundation/MASProgressListener;)V
    :try_end_0
    .catch Lcom/ca/mas/foundation/MASException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/ca/mas/core/error/MAGError;

    invoke-direct {v0, p0}, Lcom/ca/mas/core/error/MAGError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lcom/ca/mas/foundation/MASProgressListener;->onError(Lcom/ca/mas/core/error/MAGError;)V

    .line 3
    :cond_0
    new-instance p1, Lcom/ca/mas/foundation/MASException;

    invoke-direct {p1, p0}, Lcom/ca/mas/foundation/MASException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 4
    :cond_1
    new-instance p0, Lcom/ca/mas/foundation/MASException;

    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "Multipart is null"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ca/mas/foundation/MASException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static stringBody(Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequestBody;
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASRequestBody$b;

    invoke-direct {v0, p0}, Lcom/ca/mas/foundation/MASRequestBody$b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static urlEncodedFormBody(Ljava/util/List;)Lcom/ca/mas/foundation/MASRequestBody;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/ca/mas/foundation/MASRequestBody;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASRequestBody$e;

    invoke-direct {v0, p0}, Lcom/ca/mas/foundation/MASRequestBody$e;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getContentAsJsonValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getContentLength()J
.end method

.method public abstract getContentType()Lcom/ca/mas/core/http/ContentType;
.end method

.method public abstract write(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
