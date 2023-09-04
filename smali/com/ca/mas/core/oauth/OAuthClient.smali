.class public Lcom/ca/mas/core/oauth/OAuthClient;
.super Lcom/ca/mas/core/client/ServerClient;
.source "OAuthClient.java"


# static fields
.field public static final AUTHORIZATION:Ljava/lang/String; = "authorization"

.field public static final AUTH_URL:Ljava/lang/String; = "auth_url"

.field public static final CODE:Ljava/lang/String; = "code"

.field public static final CODE_CHALLENGE:Ljava/lang/String; = "code_challenge"

.field public static final CODE_CHALLENGE_METHOD:Ljava/lang/String; = "code_challenge_method"

.field public static final DISPLAY:Ljava/lang/String; = "display"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final IDP:Ljava/lang/String; = "idp"

.field public static final ID_TOKEN:Ljava/lang/String; = "id_token"

.field public static final ID_TOKEN_TYPE:Ljava/lang/String; = "id_token_type"

.field public static final LOGOUT_APPS:Ljava/lang/String; = "logout_apps"

.field public static final MSSO_REGISTER:Ljava/lang/String; = "msso_register"

.field public static final POLL_URL:Ljava/lang/String; = "poll_url"

.field public static final PROVIDER:Ljava/lang/String; = "provider"

.field public static final PROVIDERS:Ljava/lang/String; = "providers"

.field public static final REDIRECT_URI:Ljava/lang/String; = "redirect_uri"

.field public static final RESPONSE_TYPE:Ljava/lang/String; = "response_type"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TOKEN:Ljava/lang/String; = "token"

.field public static final TOKEN_TYPE:Ljava/lang/String; = "token_type_hint"


# direct methods
.method public constructor <init>(Lcom/ca/mas/core/context/MssoContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/client/ServerClient;-><init>(Lcom/ca/mas/core/context/MssoContext;)V

    return-void
.end method


# virtual methods
.method public getSocialPlatformProvider(Landroid/content/Context;)Lcom/ca/mas/core/service/AuthenticationProvider;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/oauth/OAuthException;,
            Lcom/ca/mas/core/oauth/OAuthServerException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/client/ServerClient;->mssoContext:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v0}, Lcom/ca/mas/core/context/MssoContext;->getConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    const-string v1, "msso.authorize.redirect.uri"

    .line 2
    invoke-interface {v0, v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_9

    const-string v3, "msso.url.authorize"

    .line 4
    invoke-interface {v0, v3}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getTokenUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/ca/mas/core/client/ServerClient;->mssoContext:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v4}, Lcom/ca/mas/core/context/MssoContext;->getClientId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "client_id"

    invoke-virtual {v3, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "response_type"

    const-string v5, "code"

    .line 6
    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "display"

    const-string v5, "social_login"

    .line 7
    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "msso.sso.enabled"

    .line 8
    invoke-interface {v0, v4}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-nez v4, :cond_0

    .line 9
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    :cond_0
    invoke-interface {v0}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getClientScope()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    if-nez v0, :cond_1

    move-object v0, v5

    .line 11
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v6, " "

    if-eqz v4, :cond_2

    const-string v4, "openid"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    :cond_2
    iget-object v4, p0, Lcom/ca/mas/core/client/ServerClient;->mssoContext:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v4}, Lcom/ca/mas/core/context/MssoContext;->isDeviceRegistered()Z

    move-result v4

    const-string v7, "msso_register"

    if-nez v4, :cond_3

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    :cond_3
    iget-object v4, p0, Lcom/ca/mas/core/client/ServerClient;->mssoContext:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v4}, Lcom/ca/mas/core/context/MssoContext;->isDeviceRegistered()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 16
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 17
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, "scope"

    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_5
    const-string v0, "redirect_uri"

    .line 19
    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 20
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->isPKCEEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    invoke-static {}, Lcom/ca/mas/core/oauth/OAuthClientUtil;->generateCodeChallenge()Lcom/ca/mas/core/oauth/PKCE;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 22
    iget-object v1, v0, Lcom/ca/mas/core/oauth/PKCE;->codeChallenge:Ljava/lang/String;

    const-string v4, "code_challenge"

    invoke-virtual {v3, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 23
    iget-object v1, v0, Lcom/ca/mas/core/oauth/PKCE;->codeChallengeMethod:Ljava/lang/String;

    const-string v4, "code_challenge_method"

    invoke-virtual {v3, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 24
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 25
    invoke-virtual {v1, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v1, 0xb

    .line 26
    invoke-static {v4, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {}, Lcom/ca/mas/core/oauth/CodeVerifierCache;->getInstance()Lcom/ca/mas/core/oauth/CodeVerifierCache;

    move-result-object v4

    iget-object v0, v0, Lcom/ca/mas/core/oauth/PKCE;->codeVerifier:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Lcom/ca/mas/core/oauth/CodeVerifierCache;->store(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "state"

    .line 28
    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 29
    :cond_6
    iget-object v0, p0, Lcom/ca/mas/core/client/ServerClient;->mssoContext:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v0}, Lcom/ca/mas/core/context/MssoContext;->getMAGHttpClient()Lcom/ca/mas/core/http/MAGHttpClient;

    move-result-object v0

    const/4 v1, -0x1

    .line 30
    :try_start_0
    new-instance v4, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    new-instance v5, Ljava/net/URI;

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URI;)V

    .line 31
    invoke-static {}, Lcom/ca/mas/foundation/MASResponseBody;->jsonBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->responseBody(Lcom/ca/mas/foundation/MASResponseBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v4

    .line 32
    invoke-virtual {v4}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v4

    .line 33
    invoke-virtual {v0, v4}, Lcom/ca/mas/core/http/MAGHttpClient;->execute(Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/foundation/MASResponse;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Lcom/ca/mas/foundation/MASResponse;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_7

    .line 35
    invoke-interface {v0}, Lcom/ca/mas/foundation/MASResponse;->getBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASResponseBody;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v4, "idp"

    .line 36
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "providers"

    .line 37
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v5, 0x0

    .line 38
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_a

    .line 39
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "provider"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "id"

    .line 40
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "auth_url"

    .line 41
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "poll_url"

    .line 42
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 43
    new-instance v9, Lcom/ca/mas/core/service/Provider;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "drawable/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v7, v8, v6, v10}, Lcom/ca/mas/core/service/Provider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 46
    :cond_7
    invoke-static {v0}, Lcom/ca/mas/core/client/ServerClient;->findErrorCode(Lcom/ca/mas/foundation/MASResponse;)I

    move-result p1

    const v2, 0x2dc789

    if-ne p1, v2, :cond_8

    .line 47
    iget-object p1, p0, Lcom/ca/mas/core/client/ServerClient;->mssoContext:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->clearClientCredentials()V

    .line 48
    :cond_8
    const-class p1, Lcom/ca/mas/core/oauth/OAuthServerException;

    invoke-static {v0, p1}, Lcom/ca/mas/core/client/ServerClient;->createServerException(Lcom/ca/mas/foundation/MASResponse;Ljava/lang/Class;)Lcom/ca/mas/core/error/MAGServerException;

    move-result-object p1

    check-cast p1, Lcom/ca/mas/core/oauth/OAuthServerException;

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 49
    new-instance v0, Lcom/ca/mas/core/oauth/OAuthException;

    invoke-direct {v0, v1, p1}, Lcom/ca/mas/core/oauth/OAuthException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 50
    new-instance v0, Lcom/ca/mas/core/oauth/OAuthException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was not valid response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/ca/mas/core/oauth/OAuthException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 51
    new-instance v0, Lcom/ca/mas/core/oauth/OAuthException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve Social Login Providers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/ca/mas/core/oauth/OAuthException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_9
    const-string v4, "enterprise"

    .line 52
    :cond_a
    new-instance p1, Lcom/ca/mas/core/service/AuthenticationProvider;

    invoke-direct {p1, v4, v2}, Lcom/ca/mas/core/service/AuthenticationProvider;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p1
.end method

.method public logout(Lcom/ca/mas/core/token/IdToken;Ljava/lang/String;Ljava/lang/String;Z)V
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
            Lcom/ca/mas/core/oauth/OAuthServerException;,
            Lcom/ca/mas/core/oauth/OAuthException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/ca/mas/core/token/IdToken;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id_token"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/ca/mas/core/token/IdToken;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v2, "id_token_type"

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p1, Landroid/util/Pair;

    invoke-static {p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p4

    const-string v1, "logout_apps"

    invoke-direct {p1, v1, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/ca/mas/core/client/ServerClient;->conf:Lcom/ca/mas/core/conf/ConfigurationProvider;

    const-string p4, "msso.url.resource_owner_logout"

    invoke-interface {p1, p4}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getTokenUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 6
    new-instance p4, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-direct {p4, p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URI;)V

    .line 7
    invoke-static {v0}, Lcom/ca/mas/foundation/MASRequestBody;->urlEncodedFormBody(Ljava/util/List;)Lcom/ca/mas/foundation/MASRequestBody;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->post(Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/ca/mas/foundation/MASResponseBody;->stringBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->responseBody(Lcom/ca/mas/foundation/MASResponseBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Basic "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/ca/mas/core/io/Charsets;->ASCII:Ljava/nio/charset/Charset;

    .line 9
    invoke-static {p2, p3}, Lcom/ca/mas/core/io/IoUtils;->base64(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "authorization"

    invoke-virtual {p1, p3, p2}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object p1

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/client/ServerClient;->obtainServerResponseToPostedForm(Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/core/client/ServerResponse;
    :try_end_0
    .catch Lcom/ca/mas/core/error/MAGException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/ca/mas/core/oauth/OAuthServerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Lcom/ca/mas/core/error/MAGServerException;->getErrorCode()I

    move-result p2

    const p3, 0x2dc789

    if-ne p2, p3, :cond_0

    .line 13
    iget-object p2, p0, Lcom/ca/mas/core/client/ServerClient;->mssoContext:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {p2}, Lcom/ca/mas/core/context/MssoContext;->clearClientCredentials()V

    .line 14
    :cond_0
    throw p1

    :catch_1
    move-exception p1

    .line 15
    new-instance p2, Lcom/ca/mas/core/oauth/OAuthException;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p1}, Lcom/ca/mas/core/oauth/OAuthException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method
