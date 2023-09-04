.class public abstract Lcom/ca/mas/core/client/ServerClient;
.super Ljava/lang/Object;
.source "ServerClient.java"


# static fields
.field public static final ACTIVATED:Ljava/lang/String; = "activated"

.field public static final APPLICATION_X_WWW_FORM_URLENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final ASSERTION:Ljava/lang/String; = "assertion"

.field public static final CERT_FORMAT:Ljava/lang/String; = "cert-format"

.field public static final CLIENT_AUTHORIZATION:Ljava/lang/String; = "client-authorization"

.field public static final CLIENT_EXPIRATION:Ljava/lang/String; = "client_expiration"

.field public static final CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final CLIENT_SECRET:Ljava/lang/String; = "client_secret"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final CREATE_SESSION:Ljava/lang/String; = "create-session"

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = " text/plain"

.field public static final DEVICE_ID:Ljava/lang/String; = "device-id"

.field public static final DEVICE_NAME:Ljava/lang/String; = "device-name"

.field public static final DEVICE_STATUS:Ljava/lang/String; = "device-status"

.field public static final GRANT_TYPE:Ljava/lang/String; = "grant_type"

.field public static final ID_TOKEN:Ljava/lang/String; = "id-token"

.field public static final ID_TOKEN_TYPE:Ljava/lang/String; = "id-token-type"

.field public static final MAG_IDENTIFIER:Ljava/lang/String; = "mag-identifier"

.field public static final MSSO:Ljava/lang/String; = "msso"

.field public static final MSSO_CLIENT_REGISTER:Ljava/lang/String; = "msso_client_register"

.field public static final MSSO_REGISTER:Ljava/lang/String; = "msso_register"

.field public static final NONCE:Ljava/lang/String; = "nonce"

.field public static final OPENID:Ljava/lang/String; = "openid"

.field public static final OPENID_PHONE_EMAIL:Ljava/lang/String; = "openid phone email"

.field public static final PEM:Ljava/lang/String; = "pem"

.field public static final REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field public static final REGISTERED:Ljava/lang/String; = "registered"

.field public static final SCOPE:Ljava/lang/String; = "scope"

.field public static final TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field public static final UTF_8:Ljava/lang/String; = "utf-8"

.field public static final X_CA_ERR:Ljava/lang/String; = "x-ca-err"


# instance fields
.field protected final conf:Lcom/ca/mas/core/conf/ConfigurationProvider;

.field protected final mssoContext:Lcom/ca/mas/core/context/MssoContext;


# direct methods
.method public constructor <init>(Lcom/ca/mas/core/context/MssoContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mssoContext"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/ca/mas/core/client/ServerClient;->mssoContext:Lcom/ca/mas/core/context/MssoContext;

    .line 4
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/client/ServerClient;->conf:Lcom/ca/mas/core/conf/ConfigurationProvider;

    return-void
.end method

.method private a(Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/core/client/ServerResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/oauth/OAuthException;,
            Lcom/ca/mas/core/oauth/OAuthServerException;
        }
    .end annotation

    const-string v0, "response from "

    .line 1
    iget-object v1, p0, Lcom/ca/mas/core/client/ServerClient;->mssoContext:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v1}, Lcom/ca/mas/core/context/MssoContext;->getMAGHttpClient()Lcom/ca/mas/core/http/MAGHttpClient;

    move-result-object v1

    const/4 v2, -0x1

    .line 2
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/ca/mas/core/http/MAGHttpClient;->execute(Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/foundation/MASResponse;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    sget-boolean v3, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 4
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getURL()Ljava/net/URL;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 5
    invoke-interface {v1}, Lcom/ca/mas/foundation/MASResponse;->getResponseCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%s response with status: %d"

    .line 6
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MAS"

    .line 7
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/ca/mas/foundation/MASResponse;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    .line 9
    invoke-interface {v1}, Lcom/ca/mas/foundation/MASResponse;->getBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Lcom/ca/mas/foundation/MASResponseBody;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 11
    new-instance v4, Lcom/ca/mas/core/client/ServerResponse;

    invoke-direct {v4, v3, v1}, Lcom/ca/mas/core/client/ServerResponse;-><init>(ILjava/lang/String;)V

    return-object v4

    .line 12
    :cond_1
    new-instance v1, Lcom/ca/mas/core/oauth/OAuthException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was empty, with status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ca/mas/core/oauth/OAuthException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 13
    :cond_2
    new-instance v1, Lcom/ca/mas/core/oauth/OAuthException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " did not contain an entity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ca/mas/core/oauth/OAuthException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 14
    :cond_3
    const-class v3, Lcom/ca/mas/core/oauth/OAuthServerException;

    invoke-static {v1, v3}, Lcom/ca/mas/core/client/ServerClient;->createServerException(Lcom/ca/mas/foundation/MASResponse;Ljava/lang/Class;)Lcom/ca/mas/core/error/MAGServerException;

    move-result-object v1

    check-cast v1, Lcom/ca/mas/core/oauth/OAuthServerException;

    throw v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    .line 15
    new-instance v3, Lcom/ca/mas/core/oauth/OAuthException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was not valid JSON: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v2, p1, v1}, Lcom/ca/mas/core/oauth/OAuthException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    .line 16
    new-instance v1, Lcom/ca/mas/core/oauth/OAuthException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to post to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Lcom/ca/mas/core/oauth/OAuthException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createServerException(Lcom/ca/mas/foundation/MASResponse;Ljava/lang/Class;)Lcom/ca/mas/core/error/MAGServerException;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/ca/mas/core/error/MAGServerException;",
            ">(",
            "Lcom/ca/mas/foundation/MASResponse;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    :try_start_0
    invoke-static {p0}, Lcom/ca/mas/core/client/ServerClient;->findErrorCode(Lcom/ca/mas/foundation/MASResponse;)I

    move-result v1

    .line 2
    invoke-interface {p0}, Lcom/ca/mas/foundation/MASResponse;->getBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v2

    const-string v3, " text/plain"

    const-string v4, ""

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Lcom/ca/mas/foundation/MASResponseBody;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v2}, Lcom/ca/mas/foundation/MASResponseBody;->getRawContent()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 6
    :cond_0
    invoke-interface {p0}, Lcom/ca/mas/foundation/MASResponse;->getResponseCode()I

    move-result v2

    const/4 v5, 0x5

    new-array v6, v5, [Ljava/lang/Class;

    .line 7
    const-class v7, Lcom/ca/mas/foundation/MASResponse;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const/4 v10, 0x2

    aput-object v7, v6, v10

    const/4 v7, 0x3

    aput-object v0, v6, v7

    const/4 v11, 0x4

    aput-object v0, v6, v11

    invoke-virtual {p1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p0, v0, v8

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v10

    aput-object v3, v0, v7

    aput-object v4, v0, v11

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ca/mas/core/error/MAGServerException;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static findErrorCode(Lcom/ca/mas/foundation/MASResponse;)I
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/ca/mas/foundation/MASResponse;->getResponseCode()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x195

    if-eq v0, v2, :cond_1

    .line 2
    invoke-interface {p0}, Lcom/ca/mas/foundation/MASResponse;->getHeaders()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "x-ca-err"

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method protected obtainServerResponseToPostedForm(Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/core/client/ServerResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/oauth/OAuthException;,
            Lcom/ca/mas/core/oauth/OAuthServerException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/client/ServerClient;->a(Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/core/client/ServerResponse;

    move-result-object p1

    return-object p1
.end method
