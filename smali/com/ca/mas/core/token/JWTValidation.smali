.class public Lcom/ca/mas/core/token/JWTValidation;
.super Ljava/lang/Object;
.source "JWTValidation.java"


# static fields
.field public static final ALG:Ljava/lang/String; = "alg"

.field public static final AUD:Ljava/lang/String; = "aud"

.field public static final AZP:Ljava/lang/String; = "azp"

.field public static final EXP:Ljava/lang/String; = "exp"

.field private static final a:Ljava/lang/String; = "com.ca.mas.core.token.JWTValidation"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/token/JWTValidationException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "alg"

    .line 2
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    sget-object v0, Lcom/ca/mas/core/token/JWTValidation;->a:Ljava/lang/String;

    const-string v1, "JWT header is not JSON Object"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Lcom/ca/mas/core/token/JWTValidationException;

    const/16 v1, 0x332d

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/ca/mas/core/token/JWTValidationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static b(Lcom/ca/mas/core/token/IdTokenDef;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/token/JWTValidationException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/ca/mas/core/token/IdTokenDef;->getPayloadAsJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "exp"

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "aud"

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "azp"

    .line 4
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 7
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    cmp-long p2, p0, v0

    if-ltz p2, :cond_0

    const/4 p0, 0x1

    return p0

    .line 8
    :cond_0
    sget-object p0, Lcom/ca/mas/core/token/JWTValidation;->a:Ljava/lang/String;

    const-string p1, "JWT expired"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance p0, Lcom/ca/mas/core/token/JWTExpiredException;

    const-string p1, "Failed to validate JWT Token: token expired!"

    invoke-direct {p0, p1}, Lcom/ca/mas/core/token/JWTExpiredException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    sget-object p0, Lcom/ca/mas/core/token/JWTValidation;->a:Ljava/lang/String;

    const-string p1, "JWT azp is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance p0, Lcom/ca/mas/core/token/JWTInvalidAZPException;

    const-string p1, "Failed to validate JWT Token: \"azp\" doesn\'t match device identifier!"

    invoke-direct {p0, p1}, Lcom/ca/mas/core/token/JWTInvalidAZPException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_2
    sget-object p0, Lcom/ca/mas/core/token/JWTValidation;->a:Ljava/lang/String;

    const-string p1, "JWT aud is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance p0, Lcom/ca/mas/core/token/JWTInvalidAUDException;

    const-string p1, "Failed to validate JWT Token: \"aud\" doesn\'t match client_id!"

    invoke-direct {p0, p1}, Lcom/ca/mas/core/token/JWTInvalidAUDException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 14
    sget-object p1, Lcom/ca/mas/core/token/JWTValidation;->a:Ljava/lang/String;

    const-string p2, "JWT payload is not valid JSON object"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    new-instance p1, Lcom/ca/mas/core/token/JWTValidationException;

    const/16 p2, 0x332d

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0, p0}, Lcom/ca/mas/core/token/JWTValidationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static isIdTokenExpired(Lcom/ca/mas/core/token/IdToken;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/core/token/IdToken;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "urn:ietf:params:oauth:grant-type:jwt-bearer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/ca/mas/core/token/IdTokenDef;

    invoke-direct {v0, p0}, Lcom/ca/mas/core/token/IdTokenDef;-><init>(Lcom/ca/mas/core/token/IdToken;)V

    const/4 p0, 0x1

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/ca/mas/core/token/IdTokenDef;->getPayloadAsJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "exp"

    .line 4
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    return p0

    :cond_0
    return v1

    :catch_0
    return p0

    :cond_1
    return v1
.end method

.method public static validateIdToken(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/token/IdToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/token/JWTValidationException;
        }
    .end annotation

    .line 1
    new-instance p4, Lcom/ca/mas/core/token/IdTokenDef;

    invoke-direct {p4, p1}, Lcom/ca/mas/core/token/IdTokenDef;-><init>(Lcom/ca/mas/core/token/IdToken;)V

    .line 2
    invoke-static {p4, p2, p3}, Lcom/ca/mas/core/token/JWTValidation;->b(Lcom/ca/mas/core/token/IdTokenDef;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    .line 3
    new-instance p3, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/ca/mas/core/token/IdTokenDef;->getHeader()[B

    move-result-object p4

    const/16 v0, 0x8

    invoke-static {p4, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/lang/String;-><init>([B)V

    invoke-static {p3}, Lcom/ca/mas/core/token/JWTValidation;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->isIdTokenValidationEnabled()Z

    move-result p4

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 5
    invoke-static {p3}, Lcom/ca/mas/core/token/JWTValidatorFactory;->getValidator(Ljava/lang/String;)Lcom/ca/mas/core/token/JWTValidator;

    move-result-object p3

    invoke-interface {p3, p0, p1}, Lcom/ca/mas/core/token/JWTValidator;->validate(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/token/IdToken;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p4, :cond_1

    const/4 p0, 0x1

    :cond_1
    and-int/2addr p0, p2

    return p0
.end method
