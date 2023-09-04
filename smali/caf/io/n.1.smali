.class public Lcaf/io/n;
.super Ljava/lang/Object;
.source "ContentSignatureInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 6
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, -0x22ce3da67cb6L

    .line 1
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    :try_start_0
    sget-object v2, Lcaf/io/Z;->b:Lcaf/io/e0;

    sget-object v3, Lcaf/io/e;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const-wide v2, -0x261a3da67cb6L

    .line 5
    invoke-static {v2, v3}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-wide v2, -0x25d13da67cb6L

    .line 6
    invoke-static {v2, v3}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-wide v2, -0x25883da67cb6L

    .line 7
    invoke-static {v2, v3}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 8
    :goto_0
    sget v3, Lcaf/io/z;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 10
    invoke-virtual {v1, v3}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 11
    invoke-virtual {v3}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 12
    :try_start_2
    sget-object v3, Lcaf/io/t;->E:Lcaf/io/t;

    new-instance v4, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/GenericEventOtherInfo;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/GenericEventOtherInfo;-><init>(Ljava/lang/String;)V

    .line 13
    sget-object v5, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v5, v3, v4}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 14
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-wide v3, -0x22cf3da67cb6L

    .line 15
    invoke-static {v3, v4}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    .line 17
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v5, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 18
    invoke-virtual {v4, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/common/util/Hex;->bytesToStringLowercase([B)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    :goto_2
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    const-wide v2, -0x22da3da67cb6L

    invoke-static {v2, v3}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 23
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    .line 24
    :cond_2
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
