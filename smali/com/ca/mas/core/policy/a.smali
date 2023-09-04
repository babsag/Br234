.class Lcom/ca/mas/core/policy/a;
.super Ljava/lang/Object;
.source "AccessTokenAssertion.java"

# interfaces
.implements Lcom/ca/mas/core/policy/MssoAssertion;


# instance fields
.field private a:Lcom/ca/mas/core/oauth/OAuthTokenClient;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/request/MAGInternalRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/policy/exceptions/CredentialRequiredException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->getGrantProvider()Lcom/ca/mas/foundation/MASGrantProvider;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ca/mas/foundation/MASGrantProvider;->getCredentials(Lcom/ca/mas/core/context/MssoContext;)Lcom/ca/mas/foundation/MASAuthCredentials;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/ca/mas/foundation/MASAuthCredentials;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p0, Lcom/ca/mas/core/policy/exceptions/CredentialRequiredException;

    invoke-direct {p0}, Lcom/ca/mas/core/policy/exceptions/CredentialRequiredException;-><init>()V

    throw p0
.end method

.method private b(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/request/MAGInternalRequest;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/policy/exceptions/CredentialRequiredException;,
            Lcom/ca/mas/core/oauth/OAuthException;,
            Lcom/ca/mas/core/oauth/OAuthServerException;,
            Lcom/ca/mas/core/auth/AuthenticationException;,
            Lcom/ca/mas/core/token/JWTValidationException;,
            Lcom/ca/mas/core/policy/exceptions/RetryRequestException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    invoke-direct {p0, p1}, Lcom/ca/mas/core/policy/a;->c(Lcom/ca/mas/core/context/MssoContext;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    const-string v2, "MAS"

    if-eqz v1, :cond_0

    const-string v1, "Access Token is still valid."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ca/mas/core/policy/a;->d(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/foundation/MASRequest;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p2}, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->getGrantProvider()Lcom/ca/mas/foundation/MASGrantProvider;

    move-result-object v1

    sget-object v2, Lcom/ca/mas/foundation/MASGrantProvider;->PASSWORD:Lcom/ca/mas/foundation/MASGrantProvider;

    if-ne v1, v2, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->clearAccessToken()V

    goto :goto_0

    :cond_1
    return-object v0

    .line 8
    :cond_2
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "Access Token does not have sufficient scope."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->clearAccessToken()V

    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 11
    invoke-direct {p0, p1, v1}, Lcom/ca/mas/core/policy/a;->g(Lcom/ca/mas/core/context/MssoContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_6

    return-object v0

    .line 12
    :cond_6
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    const-string v1, "msso.sso.enabled"

    invoke-interface {v0, v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 13
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getIdToken()Lcom/ca/mas/core/token/IdToken;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 14
    invoke-direct {p0, p1, v1, p2}, Lcom/ca/mas/core/policy/a;->f(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/token/IdToken;Lcom/ca/mas/core/request/MAGInternalRequest;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 15
    :cond_7
    invoke-direct {p0, p1, p2, v0}, Lcom/ca/mas/core/policy/a;->e(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/request/MAGInternalRequest;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/ca/mas/core/context/MssoContext;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MAS"

    const-string v1, "Validating access token expiration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getAccessTokenExpiry()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private d(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/foundation/MASRequest;)Z
    .locals 2

    .line 1
    invoke-interface {p2}, Lcom/ca/mas/foundation/MASRequest;->getScope()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getGrantedScope()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_3

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\\s+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-static {v1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string p2, "openid"

    .line 8
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string p2, "msso"

    .line 9
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string p2, "msso_register"

    .line 10
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string p2, "msso_client_register"

    .line 11
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method private e(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/request/MAGInternalRequest;Z)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/policy/exceptions/CredentialRequiredException;,
            Lcom/ca/mas/core/oauth/OAuthServerException;,
            Lcom/ca/mas/core/oauth/OAuthException;,
            Lcom/ca/mas/core/token/JWTValidationException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MAS"

    const-string v1, "Obtain access token using Credential"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->clearUserProfile()V

    .line 3
    invoke-static {p1, p2}, Lcom/ca/mas/core/policy/a;->a(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/request/MAGInternalRequest;)V

    .line 4
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getClientId()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getClientSecret()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/ca/mas/core/policy/a;->a:Lcom/ca/mas/core/oauth/OAuthTokenClient;

    invoke-virtual {v2, p2, v0, v1, p3}, Lcom/ca/mas/core/oauth/OAuthTokenClient;->obtainTokensUsingCredentials(Lcom/ca/mas/core/request/MAGInternalRequest;Ljava/lang/String;Ljava/lang/String;Z)Lcom/ca/mas/core/oauth/OAuthTokenResponse;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lcom/ca/mas/core/oauth/OAuthTokenResponse;->getIdToken()Lcom/ca/mas/core/token/IdToken;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 8
    invoke-virtual {p1, p3}, Lcom/ca/mas/core/context/MssoContext;->onIdTokenAvailable(Lcom/ca/mas/core/token/IdToken;)V

    .line 9
    :cond_1
    invoke-virtual {p2}, Lcom/ca/mas/core/oauth/OAuthTokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object p3

    .line 10
    invoke-virtual {p2}, Lcom/ca/mas/core/oauth/OAuthTokenResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ca/mas/core/oauth/OAuthTokenResponse;->getExpiresIn()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/ca/mas/core/oauth/OAuthTokenResponse;->getGrantedScope()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ca/mas/core/context/MssoContext;->onAccessTokenAvailable(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object p3
.end method

.method private f(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/token/IdToken;Lcom/ca/mas/core/request/MAGInternalRequest;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/policy/exceptions/CredentialRequiredException;,
            Lcom/ca/mas/core/oauth/OAuthException;,
            Lcom/ca/mas/core/token/JWTValidationException;,
            Lcom/ca/mas/core/oauth/OAuthServerException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MAS"

    const-string v1, "Try to use id token to get new Access Token"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getClientId()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getClientSecret()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p3}, Lcom/ca/mas/core/request/MAGInternalRequest;->getScope()Ljava/lang/String;

    move-result-object v2

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/ca/mas/core/policy/a;->a:Lcom/ca/mas/core/oauth/OAuthTokenClient;

    invoke-virtual {v3, p2, v0, v1, v2}, Lcom/ca/mas/core/oauth/OAuthTokenClient;->obtainAccessTokenUsingIdToken(Lcom/ca/mas/core/token/IdToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/core/oauth/OAuthTokenResponse;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/ca/mas/core/oauth/OAuthTokenResponse;->getIdToken()Lcom/ca/mas/core/token/IdToken;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1, v0}, Lcom/ca/mas/core/context/MssoContext;->onIdTokenAvailable(Lcom/ca/mas/core/token/IdToken;)V

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/ca/mas/core/oauth/OAuthTokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual {p2}, Lcom/ca/mas/core/oauth/OAuthTokenResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ca/mas/core/oauth/OAuthTokenResponse;->getExpiresIn()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/ca/mas/core/oauth/OAuthTokenResponse;->getGrantedScope()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/ca/mas/core/context/MssoContext;->onAccessTokenAvailable(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Lcom/ca/mas/core/oauth/OAuthServerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p2

    .line 10
    invoke-direct {p0, p2}, Lcom/ca/mas/core/policy/a;->h(Lcom/ca/mas/core/oauth/OAuthServerException;)V

    .line 11
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->clearIdToken()V

    .line 12
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->clearUserProfile()V

    const/4 p2, 0x1

    .line 13
    invoke-direct {p0, p1, p3, p2}, Lcom/ca/mas/core/policy/a;->e(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/request/MAGInternalRequest;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private g(Lcom/ca/mas/core/context/MssoContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/oauth/OAuthException;,
            Lcom/ca/mas/core/oauth/OAuthServerException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    const-string v1, "MAS"

    if-eqz v0, :cond_0

    const-string v0, "Obtain Access Token using Refresh Token"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getClientId()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getClientSecret()Ljava/lang/String;

    move-result-object v2

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/ca/mas/core/policy/a;->a:Lcom/ca/mas/core/oauth/OAuthTokenClient;

    invoke-virtual {v3, p2, v0, v2}, Lcom/ca/mas/core/oauth/OAuthTokenClient;->obtainTokenUsingRefreshToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/core/oauth/OAuthTokenResponse;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/ca/mas/core/oauth/OAuthTokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Lcom/ca/mas/core/oauth/OAuthTokenResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/ca/mas/core/oauth/OAuthTokenResponse;->getExpiresIn()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/ca/mas/core/oauth/OAuthTokenResponse;->getGrantedScope()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Lcom/ca/mas/core/context/MssoContext;->onAccessTokenAvailable(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Lcom/ca/mas/core/oauth/OAuthServerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 7
    invoke-direct {p0, p2}, Lcom/ca/mas/core/policy/a;->h(Lcom/ca/mas/core/oauth/OAuthServerException;)V

    .line 8
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->clearAccessToken()V

    const/4 v0, 0x0

    .line 9
    sget-boolean p1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh token failed, will fall back to ID token or password: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {v1, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method private h(Lcom/ca/mas/core/oauth/OAuthServerException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/oauth/OAuthServerException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ca/mas/core/error/MAGServerException;->getErrorCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    return-void

    .line 2
    :sswitch_0
    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2dd2e3 -> :sswitch_0
        0x2dd2eb -> :sswitch_0
        0x2dd341 -> :sswitch_0
        0x2dd346 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public init(Lcom/ca/mas/core/context/MssoContext;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lcom/ca/mas/core/context/MssoContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p2, Lcom/ca/mas/core/oauth/OAuthTokenClient;

    invoke-direct {p2, p1}, Lcom/ca/mas/core/oauth/OAuthTokenClient;-><init>(Lcom/ca/mas/core/context/MssoContext;)V

    iput-object p2, p0, Lcom/ca/mas/core/policy/a;->a:Lcom/ca/mas/core/oauth/OAuthTokenClient;

    return-void
.end method

.method public declared-synchronized processRequest(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/policy/RequestInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/error/MAGException;,
            Lcom/ca/mas/core/error/MAGServerException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/ca/mas/core/policy/RequestInfo;->getRequest()Lcom/ca/mas/core/request/MAGInternalRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->getURL()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/ca/mas/core/policy/RequestInfo;->getRequest()Lcom/ca/mas/core/request/MAGInternalRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Host is not provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/ca/mas/core/policy/RequestInfo;->getRequest()Lcom/ca/mas/core/request/MAGInternalRequest;

    move-result-object v0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/ca/mas/core/policy/a;->b(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/request/MAGInternalRequest;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p2}, Lcom/ca/mas/core/policy/RequestInfo;->getRequest()Lcom/ca/mas/core/request/MAGInternalRequest;

    move-result-object p2

    const-string v0, "Authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/ca/mas/core/request/MAGInternalRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public processResponse(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/policy/RequestInfo;Lcom/ca/mas/foundation/MASResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/error/MAGException;
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lcom/ca/mas/core/client/ServerClient;->findErrorCode(Lcom/ca/mas/foundation/MASResponse;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "990"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance p1, Lcom/ca/mas/core/policy/a$a;

    const-string p2, "Access token rejected by server"

    invoke-direct {p1, p0, p2}, Lcom/ca/mas/core/policy/a$a;-><init>(Lcom/ca/mas/core/policy/a;Ljava/lang/String;)V

    throw p1
.end method
