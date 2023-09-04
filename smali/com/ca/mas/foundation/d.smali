.class Lcom/ca/mas/foundation/d;
.super Ljava/lang/Object;
.source "JWTSign.java"


# direct methods
.method static a(Lcom/ca/mas/foundation/MASClaims;Ljava/security/PrivateKey;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/foundation/MASException;
        }
    .end annotation

    .line 1
    sget-object v0, Lnet/minidev/json/JSONValue;->defaultWriter:Lnet/minidev/json/reader/JsonWriter;

    const-class v1, Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lnet/minidev/json/reader/JsonWriter;->getWriterByInterface(Ljava/lang/Class;)Lnet/minidev/json/reader/JsonWriterI;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/ca/mas/foundation/d$a;

    invoke-direct {v1}, Lcom/ca/mas/foundation/d$a;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lorg/json/JSONObject;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 3
    :cond_0
    new-instance v0, Lcom/nimbusds/jose/crypto/RSASSASigner;

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/crypto/RSASSASigner;-><init>(Ljava/security/PrivateKey;)V

    .line 4
    new-instance p1, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;

    invoke-direct {p1}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;-><init>()V

    .line 5
    invoke-interface {p0}, Lcom/ca/mas/foundation/MASClaims;->getJwtId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->jwtID(Ljava/lang/String;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;

    move-result-object v1

    .line 6
    invoke-interface {p0}, Lcom/ca/mas/foundation/MASClaims;->getIssuer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->issuer(Ljava/lang/String;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;

    move-result-object v1

    .line 7
    invoke-interface {p0}, Lcom/ca/mas/foundation/MASClaims;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->notBeforeTime(Ljava/util/Date;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;

    move-result-object v1

    .line 8
    invoke-interface {p0}, Lcom/ca/mas/foundation/MASClaims;->getExpirationTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->expirationTime(Ljava/util/Date;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;

    move-result-object v1

    .line 9
    invoke-interface {p0}, Lcom/ca/mas/foundation/MASClaims;->getIssuedAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->issueTime(Ljava/util/Date;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;

    move-result-object v1

    .line 10
    invoke-interface {p0}, Lcom/ca/mas/foundation/MASClaims;->getAudience()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->audience(Ljava/util/List;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;

    move-result-object v1

    .line 11
    invoke-interface {p0}, Lcom/ca/mas/foundation/MASClaims;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->subject(Ljava/lang/String;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;

    .line 12
    invoke-interface {p0}, Lcom/ca/mas/foundation/MASClaims;->getClaims()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->claim(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;

    goto :goto_0

    .line 14
    :cond_1
    new-instance p0, Lcom/nimbusds/jose/JWSHeader;

    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm;->RS256:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-direct {p0, v1}, Lcom/nimbusds/jose/JWSHeader;-><init>(Lcom/nimbusds/jose/JWSAlgorithm;)V

    .line 15
    new-instance v1, Lcom/nimbusds/jwt/SignedJWT;

    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->build()Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/nimbusds/jwt/SignedJWT;-><init>(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jwt/JWTClaimsSet;)V

    .line 16
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/nimbusds/jose/JWSObject;->sign(Lcom/nimbusds/jose/JWSSigner;)V

    .line 17
    invoke-virtual {v1}, Lcom/nimbusds/jose/JWSObject;->serialize()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 18
    new-instance p1, Lcom/ca/mas/foundation/MASException;

    invoke-direct {p1, p0}, Lcom/ca/mas/foundation/MASException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
