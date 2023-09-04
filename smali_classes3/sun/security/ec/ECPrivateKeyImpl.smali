.class public final Lsun/security/ec/ECPrivateKeyImpl;
.super Lsun/security/pkcs/PKCS8Key;
.source "ECPrivateKeyImpl.java"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;


# instance fields
.field private a:Ljava/math/BigInteger;

.field private b:Ljava/security/spec/ECParameterSpec;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lsun/security/pkcs/PKCS8Key;-><init>()V

    .line 4
    iput-object p1, p0, Lsun/security/ec/ECPrivateKeyImpl;->a:Ljava/math/BigInteger;

    .line 5
    iput-object p2, p0, Lsun/security/ec/ECPrivateKeyImpl;->b:Ljava/security/spec/ECParameterSpec;

    .line 6
    new-instance v0, Lsun/security/x509/AlgorithmId;

    sget-object v1, Lsun/security/x509/AlgorithmId;->EC_oid:Lsun/security/util/ObjectIdentifier;

    .line 7
    invoke-static {p2}, Lsun/security/ec/ECParameters;->a(Ljava/security/spec/ECParameterSpec;)Ljava/security/AlgorithmParameters;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V

    iput-object v0, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 8
    :try_start_0
    new-instance p2, Lsun/security/util/DerOutputStream;

    invoke-direct {p2}, Lsun/security/util/DerOutputStream;-><init>()V

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p2, v0}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    .line 10
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lsun/security/ec/ECParameters;->b([B)[B

    move-result-object p1

    .line 11
    invoke-virtual {p2, p1}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 12
    new-instance p1, Lsun/security/util/DerValue;

    const/16 v0, 0x30

    .line 13
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lsun/security/util/DerValue;-><init>(B[B)V

    .line 14
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lsun/security/pkcs/PKCS8Key;->key:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Ljava/security/InvalidKeyException;

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lsun/security/pkcs/PKCS8Key;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lsun/security/pkcs/PKCS8Key;->decode([B)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "EC"

    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/ec/ECPrivateKeyImpl;->b:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/ec/ECPrivateKeyImpl;->a:Ljava/math/BigInteger;

    return-object v0
.end method

.method protected parseKeyBits()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const-string v0, "Invalid EC private key"

    .line 1
    :try_start_0
    new-instance v1, Lsun/security/util/DerInputStream;

    iget-object v2, p0, Lsun/security/pkcs/PKCS8Key;->key:[B

    invoke-direct {v1, v2}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 2
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 3
    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    const/16 v3, 0x30

    if-ne v2, v3, :cond_5

    .line 4
    iget-object v1, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 5
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getInteger()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 6
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v2

    .line 7
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v4, p0, Lsun/security/ec/ECPrivateKeyImpl;->a:Ljava/math/BigInteger;

    .line 8
    :goto_0
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    const/4 v4, 0x0

    .line 10
    invoke-virtual {v2, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v2, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_2
    iget-object v1, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 14
    const-class v2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Ljava/security/spec/ECParameterSpec;

    iput-object v1, p0, Lsun/security/ec/ECPrivateKeyImpl;->b:Ljava/security/spec/ECParameterSpec;

    return-void

    .line 15
    :cond_3
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "EC domain parameters must be encoded in the algorithm identifier"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Version must be 1"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not a SEQUENCE"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 18
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 19
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sun EC private key, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/security/ec/ECPrivateKeyImpl;->b:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bits\n  private value:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/security/ec/ECPrivateKeyImpl;->a:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/security/ec/ECPrivateKeyImpl;->b:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
