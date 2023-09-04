.class public Lcom/ca/mas/core/oauth/OAuthTokenClient;
.super Lcom/ca/mas/core/client/ServerClient;
.source "OAuthTokenClient.java"


# direct methods
.method public constructor <init>(Lcom/ca/mas/core/context/MssoContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/client/ServerClient;-><init>(Lcom/ca/mas/core/context/MssoContext;)V

    return-void
.end method

.method private b(Lcom/ca/mas/core/oauth/OAuthTokenResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/oauth/OAuthException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ca/mas/core/oauth/OAuthTokenResponse;->isBearer()Z

    move-result v0

    const v1, 0x1fc99

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/ca/mas/core/oauth/OAuthTokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Lcom/ca/mas/core/oauth/OAuthException;

    const-string v0, "request_token response did not include an access_token"

    invoke-direct {p1, v1, v0}, Lcom/ca/mas/core/oauth/OAuthException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Lcom/ca/mas/core/oauth/OAuthException;

    const-string v0, "request_token response was token_type other than bearer"

    invoke-direct {p1, v1, v0}, Lcom/ca/mas/core/oauth/OAuthException;-><init>(ILjava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public obtainAccessTokenUsingIdToken(Lcom/ca/mas/core/token/IdToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/core/oauth/OAuthTokenResponse;
    .locals 4
    .param p1    # Lcom/ca/mas/core/token/IdToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/oauth/OAuthException;,
            Lcom/ca/mas/core/oauth/OAuthServerException;
        }
    .end annotation

    if-nez p4, :cond_0

    const-string p4, "openid phone email"

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/ca/mas/core/token/IdToken;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "assertion"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Landroid/util/Pair;

    const-string v2, "client_id"

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p2, Landroid/util/Pair;

    const-string v1, "client_secret"

    invoke-direct {p2, v1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p2, Landroid/util/Pair;

    const-string p3, "scope"

    invoke-direct {p2, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance p2, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/ca/mas/core/token/IdToken;->getType()Ljava/lang/String;

    move-result-object p1

    const-string p3, "grant_type"

    invoke-direct {p2, p3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/ca/mas/core/client/ServerClient;->conf:Lcom/ca/mas/core/conf/ConfigurationProvider;

    const-string p2, "msso.url.request_token_sso"

    invoke-interface {p1, p2}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getTokenUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 8
    new-instance p2, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-direct {p2, p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URI;)V

    .line 9
    invoke-static {v0}, Lcom/ca/mas/foundation/MASRequestBody;->urlEncodedFormBody(Ljava/util/List;)Lcom/ca/mas/foundation/MASRequestBody;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->post(Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/ca/mas/foundation/MASResponseBody;->stringBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->responseBody(Lcom/ca/mas/foundation/MASResponseBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object p1

    .line 12
    :try_start_0
    new-instance p2, Lcom/ca/mas/core/oauth/OAuthTokenResponse;

    invoke-virtual {p0, p1}, Lcom/ca/mas/core/client/ServerClient;->obtainServerResponseToPostedForm(Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/core/client/ServerResponse;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/ca/mas/core/oauth/OAuthTokenResponse;-><init>(Lcom/ca/mas/core/client/ServerResponse;)V

    .line 13
    invoke-direct {p0, p2}, Lcom/ca/mas/core/oauth/OAuthTokenClient;->b(Lcom/ca/mas/core/oauth/OAuthTokenResponse;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/ca/mas/core/error/MAGException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 14
    :goto_0
    new-instance p2, Lcom/ca/mas/core/oauth/OAuthException;

    const p3, 0x1fc99

    invoke-direct {p2, p3, p1}, Lcom/ca/mas/core/oauth/OAuthException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method

.method public obtainTokenUsingRefreshToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/core/oauth/OAuthTokenResponse;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/oauth/OAuthException;,
            Lcom/ca/mas/core/oauth/OAuthServerException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Landroid/util/Pair;

    const-string v2, "refresh_token"

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance p1, Landroid/util/Pair;

    const-string v1, "client_id"

    invoke-direct {p1, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p1, Landroid/util/Pair;

    const-string p2, "client_secret"

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p1, Landroid/util/Pair;

    const-string p2, "grant_type"

    invoke-direct {p1, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/ca/mas/core/client/ServerClient;->conf:Lcom/ca/mas/core/conf/ConfigurationProvider;

    const-string p2, "msso.url.request_token"

    invoke-interface {p1, p2}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getTokenUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-direct {p2, p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URI;)V

    .line 8
    invoke-static {v0}, Lcom/ca/mas/foundation/MASRequestBody;->urlEncodedFormBody(Ljava/util/List;)Lcom/ca/mas/foundation/MASRequestBody;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->post(Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/ca/mas/foundation/MASResponseBody;->stringBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->responseBody(Lcom/ca/mas/foundation/MASResponseBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/ca/mas/core/client/ServerClient;->mssoContext:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {p2}, Lcom/ca/mas/core/context/MssoContext;->takeRefreshToken()Ljava/lang/String;

    .line 12
    :try_start_0
    new-instance p2, Lcom/ca/mas/core/oauth/OAuthTokenResponse;

    invoke-virtual {p0, p1}, Lcom/ca/mas/core/client/ServerClient;->obtainServerResponseToPostedForm(Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/core/client/ServerResponse;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/ca/mas/core/oauth/OAuthTokenResponse;-><init>(Lcom/ca/mas/core/client/ServerResponse;)V

    .line 13
    invoke-direct {p0, p2}, Lcom/ca/mas/core/oauth/OAuthTokenClient;->b(Lcom/ca/mas/core/oauth/OAuthTokenResponse;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/ca/mas/core/error/MAGException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/ca/mas/core/error/MAGServerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 14
    new-instance p2, Lcom/ca/mas/core/oauth/OAuthServerException;

    invoke-direct {p2, p1}, Lcom/ca/mas/core/oauth/OAuthServerException;-><init>(Lcom/ca/mas/core/error/MAGServerException;)V

    throw p2

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 15
    :goto_0
    new-instance p2, Lcom/ca/mas/core/oauth/OAuthException;

    const p3, 0x1fc99

    invoke-direct {p2, p3, p1}, Lcom/ca/mas/core/oauth/OAuthException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method

.method public obtainTokensUsingCredentials(Lcom/ca/mas/core/request/MAGInternalRequest;Ljava/lang/String;Ljava/lang/String;Z)Lcom/ca/mas/core/oauth/OAuthTokenResponse;
    .locals 5
    .param p1    # Lcom/ca/mas/core/request/MAGInternalRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/oauth/OAuthException;,
            Lcom/ca/mas/core/oauth/OAuthServerException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->getGrantProvider()Lcom/ca/mas/foundation/MASGrantProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/mas/core/client/ServerClient;->mssoContext:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v0, v1}, Lcom/ca/mas/foundation/MASGrantProvider;->getCredentials(Lcom/ca/mas/core/context/MssoContext;)Lcom/ca/mas/foundation/MASAuthCredentials;

    move-result-object v0

    const-string v1, "credentials"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/ca/mas/core/request/MAGInternalRequest;->getScope()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "openid"

    :cond_0
    if-eqz p4, :cond_1

    const-string p4, "msso"

    .line 4
    invoke-virtual {p1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_1
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Lcom/ca/mas/foundation/MASAuthCredentials;->getParams()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 9
    new-instance v3, Landroid/util/Pair;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    new-instance v1, Landroid/util/Pair;

    const-string v2, "client_id"

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance p2, Landroid/util/Pair;

    const-string v1, "client_secret"

    invoke-direct {p2, v1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance p2, Landroid/util/Pair;

    const-string p3, "scope"

    invoke-direct {p2, p3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance p1, Landroid/util/Pair;

    invoke-interface {v0}, Lcom/ca/mas/foundation/MASAuthCredentials;->getGrantType()Ljava/lang/String;

    move-result-object p2

    const-string p3, "grant_type"

    invoke-direct {p1, p3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lcom/ca/mas/core/client/ServerClient;->conf:Lcom/ca/mas/core/conf/ConfigurationProvider;

    const-string p2, "msso.url.request_token"

    invoke-interface {p1, p2}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getTokenUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 15
    new-instance p2, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-direct {p2, p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URI;)V

    .line 16
    invoke-static {p4}, Lcom/ca/mas/foundation/MASRequestBody;->urlEncodedFormBody(Ljava/util/List;)Lcom/ca/mas/foundation/MASRequestBody;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->post(Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    .line 17
    invoke-static {}, Lcom/ca/mas/foundation/MASResponseBody;->stringBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->responseBody(Lcom/ca/mas/foundation/MASResponseBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object p1

    .line 19
    :try_start_0
    new-instance p2, Lcom/ca/mas/core/oauth/OAuthTokenResponse;

    invoke-virtual {p0, p1}, Lcom/ca/mas/core/client/ServerClient;->obtainServerResponseToPostedForm(Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/core/client/ServerResponse;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/ca/mas/core/oauth/OAuthTokenResponse;-><init>(Lcom/ca/mas/core/client/ServerResponse;)V

    .line 20
    invoke-direct {p0, p2}, Lcom/ca/mas/core/oauth/OAuthTokenClient;->b(Lcom/ca/mas/core/oauth/OAuthTokenResponse;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/ca/mas/core/error/MAGException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 21
    :goto_1
    new-instance p2, Lcom/ca/mas/core/oauth/OAuthException;

    const p3, 0x1fc99

    invoke-direct {p2, p3, p1}, Lcom/ca/mas/core/oauth/OAuthException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method
