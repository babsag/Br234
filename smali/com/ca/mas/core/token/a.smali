.class Lcom/ca/mas/core/token/a;
.super Ljava/lang/Object;
.source "JWTHmacValidator.java"

# interfaces
.implements Lcom/ca/mas/core/token/JWTValidator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([B[B)[B
    .locals 5

    const-string v0, "."

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2
    array-length v1, p1

    array-length v2, v0

    add-int/2addr v1, v2

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 3
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    array-length v2, p1

    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    array-length p1, p1

    array-length v0, v0

    add-int/2addr p1, v0

    array-length v0, p2

    invoke-static {p2, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private b([B[B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/token/JWTValidationException;
        }
    .end annotation

    const-string v0, "HMACSHA256"

    if-eqz p3, :cond_1

    .line 1
    :try_start_0
    array-length v1, p3

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 3
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/ca/mas/core/token/a;->a([B[B)[B

    move-result-object p1

    .line 5
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Lcom/ca/mas/core/token/JWTInvalidSignatureException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sign Data failed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/ca/mas/core/token/JWTInvalidSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public validate(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/token/IdToken;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/token/JWTValidationException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/core/token/IdTokenDef;

    invoke-direct {v0, p2}, Lcom/ca/mas/core/token/IdTokenDef;-><init>(Lcom/ca/mas/core/token/IdToken;)V

    .line 2
    invoke-virtual {v0}, Lcom/ca/mas/core/token/IdTokenDef;->getHeader()[B

    move-result-object p2

    .line 3
    invoke-virtual {v0}, Lcom/ca/mas/core/token/IdTokenDef;->getPayload()[B

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/ca/mas/core/token/IdTokenDef;->getSignature()[B

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getClientSecret()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p2, v1, p1}, Lcom/ca/mas/core/token/a;->b([B[B[B)[B

    move-result-object p1

    const/16 p2, 0x8

    .line 7
    invoke-static {v0, p2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p2

    .line 8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 9
    :cond_0
    new-instance p1, Lcom/ca/mas/core/token/JWTInvalidSignatureException;

    const-string p2, "Token Validation Failed: The signatures do not match"

    invoke-direct {p1, p2}, Lcom/ca/mas/core/token/JWTInvalidSignatureException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
