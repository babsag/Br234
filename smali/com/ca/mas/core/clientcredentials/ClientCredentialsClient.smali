.class public Lcom/ca/mas/core/clientcredentials/ClientCredentialsClient;
.super Lcom/ca/mas/core/client/ServerClient;
.source "ClientCredentialsClient.java"


# direct methods
.method public constructor <init>(Lcom/ca/mas/core/context/MssoContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/client/ServerClient;-><init>(Lcom/ca/mas/core/context/MssoContext;)V

    return-void
.end method


# virtual methods
.method public getClientCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/core/token/ClientCredentials;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/clientcredentials/ClientCredentialsException;,
            Lcom/ca/mas/core/clientcredentials/ClientCredentialsServerException;
        }
    .end annotation

    const-string v0, "client_id"

    .line 1
    iget-object v1, p0, Lcom/ca/mas/core/client/ServerClient;->conf:Lcom/ca/mas/core/conf/ConfigurationProvider;

    const-string v2, "msso.url.client_credentials"

    invoke-interface {v1, v2}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getTokenUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    const v2, 0x1adb2

    .line 2
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v4, Landroid/util/Pair;

    const-string v5, "nonce"

    invoke-direct {v4, v5, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p2, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URL;)V

    const-string v1, "device-id"

    sget-object v4, Lcom/ca/mas/core/io/Charsets;->ASCII:Ljava/nio/charset/Charset;

    .line 6
    invoke-static {p3, v4}, Lcom/ca/mas/core/io/IoUtils;->base64(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p2

    .line 7
    invoke-static {v3}, Lcom/ca/mas/foundation/MASRequestBody;->urlEncodedFormBody(Ljava/util/List;)Lcom/ca/mas/foundation/MASRequestBody;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->post(Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p2

    .line 8
    invoke-static {}, Lcom/ca/mas/foundation/MASResponseBody;->jsonBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->responseBody(Lcom/ca/mas/foundation/MASResponseBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object p2
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 10
    iget-object p3, p0, Lcom/ca/mas/core/client/ServerClient;->mssoContext:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {p3}, Lcom/ca/mas/core/context/MssoContext;->getMAGHttpClient()Lcom/ca/mas/core/http/MAGHttpClient;

    move-result-object p3

    .line 11
    :try_start_1
    invoke-virtual {p3, p2}, Lcom/ca/mas/core/http/MAGHttpClient;->execute(Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/foundation/MASResponse;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    :try_start_2
    invoke-interface {p2}, Lcom/ca/mas/foundation/MASResponse;->getResponseCode()I

    move-result p3

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_0

    .line 13
    invoke-interface {p2}, Lcom/ca/mas/foundation/MASResponse;->getBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ca/mas/foundation/MASResponseBody;->getContent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    .line 14
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "client_secret"

    .line 15
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_expiration"

    .line 16
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 17
    new-instance v1, Lcom/ca/mas/core/token/ClientCredentials;

    invoke-direct {v1, p1, p3, v0, p2}, Lcom/ca/mas/core/token/ClientCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v1

    .line 18
    :cond_0
    const-class p1, Lcom/ca/mas/core/clientcredentials/ClientCredentialsServerException;

    invoke-static {p2, p1}, Lcom/ca/mas/core/client/ServerClient;->createServerException(Lcom/ca/mas/foundation/MASResponse;Ljava/lang/Class;)Lcom/ca/mas/core/error/MAGServerException;

    move-result-object p1

    check-cast p1, Lcom/ca/mas/core/clientcredentials/ClientCredentialsServerException;

    throw p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 19
    new-instance p2, Lcom/ca/mas/core/clientcredentials/ClientCredentialsException;

    invoke-direct {p2, v2, p1}, Lcom/ca/mas/core/clientcredentials/ClientCredentialsException;-><init>(ILjava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 20
    new-instance p2, Lcom/ca/mas/core/clientcredentials/ClientCredentialsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to post to register_device: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v2, p3, p1}, Lcom/ca/mas/core/clientcredentials/ClientCredentialsException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 21
    new-instance p2, Lcom/ca/mas/core/clientcredentials/ClientCredentialsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to set post for client credentials: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v2, p3, p1}, Lcom/ca/mas/core/clientcredentials/ClientCredentialsException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
