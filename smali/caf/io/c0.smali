.class public Lcaf/io/c0;
.super Ljava/lang/Object;
.source "SignedResponseInterceptor.java"

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
    .locals 7
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    const-wide v1, -0x228b3da67cb6L

    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-interface {p1, v2}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    const-wide v3, -0x229e3da67cb6L

    .line 7
    invoke-static {v3, v4}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-wide v3, -0x22ab3da67cb6L

    invoke-static {v3, v4}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 9
    :cond_3
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    const-wide v4, -0x22bc3da67cb6L

    .line 10
    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 11
    array-length v5, v4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    .line 12
    sget-object v0, Lcaf/io/t;->x:Lcaf/io/t;

    new-instance v1, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/InterceptorFailure;

    invoke-direct {v1, v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/InterceptorFailure;-><init>(Ljava/lang/String;)V

    .line 13
    sget-object v2, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v2, v0, v1}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    return-object p1

    .line 14
    :cond_4
    aget-object v1, v4, v1

    .line 15
    new-instance v4, Ljava/lang/String;

    const/16 v5, 0x8

    invoke-static {v1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 16
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide v4, -0x22bf3da67cb6L

    .line 17
    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-static {v1, v3}, Lokhttp3/ResponseBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 19
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 20
    :catch_0
    sget-object v0, Lcaf/io/t;->x:Lcaf/io/t;

    new-instance v1, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/InterceptorFailure;

    invoke-direct {v1, v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/InterceptorFailure;-><init>(Ljava/lang/String;)V

    .line 21
    sget-object v2, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v2, v0, v1}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    :cond_5
    :goto_1
    return-object p1
.end method
