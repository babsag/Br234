.class public final Lcom/nimbusds/jose/Payload;
.super Ljava/lang/Object;
.source "Payload.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/Payload$Origin;
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/nimbusds/jose/Payload$Origin;

.field private final b:Lnet/minidev/json/JSONObject;

.field private final c:Ljava/lang/String;

.field private final d:[B

.field private final e:Lcom/nimbusds/jose/util/Base64URL;

.field private final f:Lcom/nimbusds/jose/JWSObject;

.field private final g:Lcom/nimbusds/jwt/SignedJWT;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/JWSObject;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSObject;->getState()Lcom/nimbusds/jose/JWSObject$State;

    move-result-object v0

    sget-object v1, Lcom/nimbusds/jose/JWSObject$State;->UNSIGNED:Lcom/nimbusds/jose/JWSObject$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->b:Lnet/minidev/json/JSONObject;

    .line 40
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->c:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->d:[B

    .line 42
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->e:Lcom/nimbusds/jose/util/Base64URL;

    .line 43
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->f:Lcom/nimbusds/jose/JWSObject;

    .line 44
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->g:Lcom/nimbusds/jwt/SignedJWT;

    .line 45
    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->JWS_OBJECT:Lcom/nimbusds/jose/Payload$Origin;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->a:Lcom/nimbusds/jose/Payload$Origin;

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The JWS object must be signed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The JWS object must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->b:Lnet/minidev/json/JSONObject;

    .line 30
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->c:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->d:[B

    .line 32
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->e:Lcom/nimbusds/jose/util/Base64URL;

    .line 33
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->f:Lcom/nimbusds/jose/JWSObject;

    .line 34
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->g:Lcom/nimbusds/jwt/SignedJWT;

    .line 35
    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->BASE64URL:Lcom/nimbusds/jose/Payload$Origin;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->a:Lcom/nimbusds/jose/Payload$Origin;

    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Base64URL-encoded object must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/nimbusds/jwt/SignedJWT;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSObject;->getState()Lcom/nimbusds/jose/JWSObject$State;

    move-result-object v0

    sget-object v1, Lcom/nimbusds/jose/JWSObject$State;->UNSIGNED:Lcom/nimbusds/jose/JWSObject$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->b:Lnet/minidev/json/JSONObject;

    .line 51
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->c:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->d:[B

    .line 53
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->e:Lcom/nimbusds/jose/util/Base64URL;

    .line 54
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->g:Lcom/nimbusds/jwt/SignedJWT;

    .line 55
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->f:Lcom/nimbusds/jose/JWSObject;

    .line 56
    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->SIGNED_JWT:Lcom/nimbusds/jose/Payload$Origin;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->a:Lcom/nimbusds/jose/Payload$Origin;

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The JWT must be signed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The signed JWT must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->b:Lnet/minidev/json/JSONObject;

    .line 12
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->c:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->d:[B

    .line 14
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->e:Lcom/nimbusds/jose/util/Base64URL;

    .line 15
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->f:Lcom/nimbusds/jose/JWSObject;

    .line 16
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->g:Lcom/nimbusds/jwt/SignedJWT;

    .line 17
    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->STRING:Lcom/nimbusds/jose/Payload$Origin;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->a:Lcom/nimbusds/jose/Payload$Origin;

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The string must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lnet/minidev/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->b:Lnet/minidev/json/JSONObject;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->c:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->d:[B

    .line 5
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->e:Lcom/nimbusds/jose/util/Base64URL;

    .line 6
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->f:Lcom/nimbusds/jose/JWSObject;

    .line 7
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->g:Lcom/nimbusds/jwt/SignedJWT;

    .line 8
    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->JSON:Lcom/nimbusds/jose/Payload$Origin;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->a:Lcom/nimbusds/jose/Payload$Origin;

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The JSON object must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->b:Lnet/minidev/json/JSONObject;

    .line 21
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->c:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->d:[B

    .line 23
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->e:Lcom/nimbusds/jose/util/Base64URL;

    .line 24
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->f:Lcom/nimbusds/jose/JWSObject;

    .line 25
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->g:Lcom/nimbusds/jwt/SignedJWT;

    .line 26
    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->BYTE_ARRAY:Lcom/nimbusds/jose/Payload$Origin;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->a:Lcom/nimbusds/jose/Payload$Origin;

    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The byte array must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a([B)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getOrigin()Lcom/nimbusds/jose/Payload$Origin;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->a:Lcom/nimbusds/jose/Payload$Origin;

    return-object v0
.end method

.method public toBase64URL()Lcom/nimbusds/jose/util/Base64URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->e:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/Payload;->toBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    return-object v0
.end method

.method public toBytes()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->d:[B

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->e:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/Payload;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/Payload;->b(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public toJSONObject()Lnet/minidev/json/JSONObject;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->b:Lnet/minidev/json/JSONObject;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/Payload;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->parse(Ljava/lang/String;)Lnet/minidev/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public toJWSObject()Lcom/nimbusds/jose/JWSObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->f:Lcom/nimbusds/jose/JWSObject;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/Payload;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/JWSObject;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/JWSObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toSignedJWT()Lcom/nimbusds/jwt/SignedJWT;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->g:Lcom/nimbusds/jwt/SignedJWT;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/Payload;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jwt/SignedJWT;->parse(Ljava/lang/String;)Lcom/nimbusds/jwt/SignedJWT;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->f:Lcom/nimbusds/jose/JWSObject;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/nimbusds/jose/JOSEObject;->getParsedString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->f:Lcom/nimbusds/jose/JWSObject;

    invoke-virtual {v0}, Lcom/nimbusds/jose/JOSEObject;->getParsedString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->f:Lcom/nimbusds/jose/JWSObject;

    invoke-virtual {v0}, Lcom/nimbusds/jose/JWSObject;->serialize()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->b:Lnet/minidev/json/JSONObject;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Lnet/minidev/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->d:[B

    if-eqz v0, :cond_4

    .line 9
    invoke-static {v0}, Lcom/nimbusds/jose/Payload;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->e:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->decodeToString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public toType(Lcom/nimbusds/jose/PayloadTransformer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nimbusds/jose/PayloadTransformer<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lcom/nimbusds/jose/PayloadTransformer;->transform(Lcom/nimbusds/jose/Payload;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
