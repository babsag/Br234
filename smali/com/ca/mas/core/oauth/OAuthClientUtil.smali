.class public Lcom/ca/mas/core/oauth/OAuthClientUtil;
.super Ljava/lang/Object;
.source "OAuthClientUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/oauth/OAuthClientUtil;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/oauth/OAuthClientUtil;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/store/StorageProvider;->getClientCredentialContainer()Lcom/ca/mas/core/store/ClientCredentialContainer;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Lcom/ca/mas/core/store/ClientCredentialContainer;->getClientId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/ca/mas/core/store/ClientCredentialContainer;->getClientId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getClientId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/store/StorageProvider;->getClientCredentialContainer()Lcom/ca/mas/core/store/ClientCredentialContainer;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Lcom/ca/mas/core/store/ClientCredentialContainer;->getClientSecret()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/ca/mas/core/store/ClientCredentialContainer;->getClientSecret()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getClientSecret()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static generateCodeChallenge()Lcom/ca/mas/core/oauth/PKCE;
    .locals 5

    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 1
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v1, 0xb

    .line 2
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v2, "SHA-256"

    .line 3
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    const-string v3, "ISO_8859_1"

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 5
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 6
    new-instance v3, Lcom/ca/mas/core/oauth/PKCE;

    const-string v4, "S256"

    invoke-static {v2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1, v0}, Lcom/ca/mas/core/oauth/PKCE;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    .line 7
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PKCE not supported"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_1
    move-exception v1

    .line 8
    sget-boolean v2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SHA-256 not supported"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    :cond_1
    new-instance v1, Lcom/ca/mas/core/oauth/PKCE;

    const-string v2, "plain"

    invoke-direct {v1, v2, v0, v0}, Lcom/ca/mas/core/oauth/PKCE;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getLogoutRequest()Lcom/ca/mas/foundation/MASRequest;
    .locals 6

    .line 1
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/store/StorageProvider;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenProvider;->getIdToken()Lcom/ca/mas/core/token/IdToken;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v1

    const-string v2, "msso.url.resource_owner_logout"

    invoke-interface {v1, v2}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getTokenUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v3, Landroid/util/Pair;

    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenProvider;->getIdToken()Lcom/ca/mas/core/token/IdToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ca/mas/core/token/IdToken;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id_token"

    invoke-direct {v3, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v3, Landroid/util/Pair;

    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenProvider;->getIdToken()Lcom/ca/mas/core/token/IdToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/token/IdToken;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v4, "id_token_type"

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v0, Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "logout_apps"

    invoke-direct {v0, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-direct {v0, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URI;)V

    .line 9
    invoke-static {v2}, Lcom/ca/mas/foundation/MASRequestBody;->urlEncodedFormBody(Ljava/util/List;)Lcom/ca/mas/foundation/MASRequestBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->post(Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/ca/mas/foundation/MASResponseBody;->stringBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->responseBody(Lcom/ca/mas/foundation/MASResponseBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/ca/mas/core/oauth/OAuthClientUtil$a;

    invoke-direct {v1}, Lcom/ca/mas/core/oauth/OAuthClientUtil$a;-><init>()V

    .line 11
    invoke-virtual {v0, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->connectionListener(Lcom/ca/mas/foundation/MASConnectionListener;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRevokeRequest()Lcom/ca/mas/foundation/MASRequest;
    .locals 5

    .line 1
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/store/StorageProvider;->getOAuthTokenContainer()Lcom/ca/mas/core/store/OAuthTokenContainer;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/ca/mas/core/store/OAuthTokenContainer;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/ca/mas/foundation/MASConfiguration;->getCurrentConfiguration()Lcom/ca/mas/foundation/MASConfiguration;

    move-result-object v1

    const-string v3, "msso.url.usersession_logout_endpoint_path"

    invoke-virtual {v1, v3}, Lcom/ca/mas/foundation/MASConfiguration;->getEndpointPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 5
    invoke-interface {v0}, Lcom/ca/mas/core/store/OAuthTokenContainer;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    const-string v3, "token"

    invoke-virtual {v1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "token_type_hint"

    const-string v4, "refresh_token"

    .line 6
    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 7
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-direct {v1, v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Landroid/net/Uri;)V

    .line 9
    invoke-virtual {v1, v2}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->delete(Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/ca/mas/foundation/MASResponseBody;->stringBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->responseBody(Lcom/ca/mas/foundation/MASResponseBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    invoke-static {}, Lcom/ca/mas/core/oauth/OAuthClientUtil;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ca/mas/core/oauth/OAuthClientUtil;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ca/mas/core/io/Charsets;->ASCII:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lcom/ca/mas/core/io/IoUtils;->base64(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "authorization"

    invoke-virtual {v0, v2, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v2
.end method
