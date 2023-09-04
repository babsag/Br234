.class public Lcom/ca/mas/core/token/JWTRS256Validator;
.super Ljava/lang/Object;
.source "JWTRS256Validator.java"

# interfaces
.implements Lcom/ca/mas/core/token/JWTValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/core/token/JWTRS256Validator$a;
    }
.end annotation


# static fields
.field public static final JWT_KEY_SET_FILE:Ljava/lang/String; = "jwks_store"

.field public static final TAG:Ljava/lang/String; = "JWTRS256Validator"

.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/ca/mas/core/token/JWTRS256Validator;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "jwks_store"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGateway()Lcom/ca/mas/core/conf/Server;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/core/conf/Server;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    sput-object v0, Lcom/ca/mas/core/token/JWTRS256Validator;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/token/JWTRS256Validator;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lcom/ca/mas/core/token/JWTRS256Validator;->a:Ljava/lang/String;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWK;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/core/MASCallbackFuture;

    invoke-direct {v0}, Lcom/ca/mas/core/MASCallbackFuture;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/ca/mas/core/token/JWTRS256Validator;->loadJWKS(Lcom/ca/mas/core/MASCallbackFuture;)V

    .line 3
    invoke-virtual {v0}, Lcom/ca/mas/core/MASCallbackFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKSet;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/jwk/JWKSet;->getKeyByKeyId(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWK;

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/token/JWTValidationException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "kid"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/ca/mas/core/token/JWTRS256Validator;->TAG:Ljava/lang/String;

    const-string v1, "JWT header is not JSON Object"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Lcom/ca/mas/core/token/JWTValidationException;

    const/16 v1, 0x332d

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/ca/mas/core/token/JWTValidationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static e()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jwks_store"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static getJwks()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/token/JWTRS256Validator;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static setJwks(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ca/mas/core/token/JWTRS256Validator;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public loadJWKS(Lcom/ca/mas/core/MASCallbackFuture;)V
    .locals 3
    .param p1    # Lcom/ca/mas/core/MASCallbackFuture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/core/MASCallbackFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ca/mas/core/token/JWTRS256Validator;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, v0}, Lcom/ca/mas/foundation/notify/Callback;->onSuccess(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/ca/mas/core/token/JWTRS256Validator$a;

    invoke-direct {v0}, Lcom/ca/mas/core/token/JWTRS256Validator$a;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/ca/mas/foundation/MASCallback;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public validate(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/token/IdToken;)Z
    .locals 3
    .param p2    # Lcom/ca/mas/core/token/IdToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/token/JWTValidationException;
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/ca/mas/core/token/IdTokenDef;

    invoke-direct {p1, p2}, Lcom/ca/mas/core/token/IdTokenDef;-><init>(Lcom/ca/mas/core/token/IdToken;)V

    const/16 v0, 0x332d

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ca/mas/core/token/IdTokenDef;->getHeader()[B

    move-result-object p1

    const/16 v2, 0x8

    invoke-static {p1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v1}, Lcom/ca/mas/core/token/JWTRS256Validator;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/ca/mas/core/token/JWTValidationException; {:try_start_0 .. :try_end_0} :catch_4

    .line 3
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/token/JWTRS256Validator;->c(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWK;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    sput-object v1, Lcom/ca/mas/core/token/JWTRS256Validator;->a:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/ca/mas/core/token/JWTRS256Validator;->e()V

    .line 6
    invoke-direct {p0, p1}, Lcom/ca/mas/core/token/JWTRS256Validator;->c(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWK;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 7
    new-instance p1, Lcom/nimbusds/jose/crypto/RSASSAVerifier;

    check-cast v1, Lcom/nimbusds/jose/jwk/RSAKey;

    invoke-direct {p1, v1}, Lcom/nimbusds/jose/crypto/RSASSAVerifier;-><init>(Lcom/nimbusds/jose/jwk/RSAKey;)V

    .line 8
    invoke-virtual {p2}, Lcom/ca/mas/core/token/IdToken;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/nimbusds/jwt/SignedJWT;->parse(Ljava/lang/String;)Lcom/nimbusds/jwt/SignedJWT;

    move-result-object p2

    .line 9
    invoke-virtual {p2, p1}, Lcom/nimbusds/jose/JWSObject;->verify(Lcom/nimbusds/jose/JWSVerifier;)Z

    move-result p1

    return p1

    .line 10
    :cond_1
    new-instance p1, Lcom/ca/mas/core/token/JWTValidationException;

    invoke-direct {p1, v0}, Lcom/ca/mas/core/token/JWTValidationException;-><init>(I)V

    throw p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 11
    :goto_0
    new-instance p2, Lcom/ca/mas/core/token/JWTValidationException;

    invoke-direct {p2, v0, p1}, Lcom/ca/mas/core/token/JWTValidationException;-><init>(ILjava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p1

    .line 12
    new-instance p2, Lcom/ca/mas/core/token/JWTValidationException;

    invoke-direct {p2, v0, p1}, Lcom/ca/mas/core/token/JWTValidationException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method
