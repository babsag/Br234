.class public Lcom/nimbusds/jose/crypto/AESEncrypter;
.super Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;
.source "AESEncrypter.java"

# interfaces
.implements Lcom/nimbusds/jose/JWEEncrypter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/crypto/AESEncrypter$a;
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/OctetSequenceKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    const-string v0, "AES"

    .line 3
    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->toSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/crypto/AESEncrypter;-><init>(Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;-><init>(Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/crypto/AESEncrypter;-><init>(Ljavax/crypto/SecretKey;)V

    return-void
.end method


# virtual methods
.method public encrypt(Lcom/nimbusds/jose/JWEHeader;[B)Lcom/nimbusds/jose/JWECryptoParts;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->A128KW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x80

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 4
    sget-object v1, Lcom/nimbusds/jose/crypto/AESEncrypter$a;->AESKW:Lcom/nimbusds/jose/crypto/AESEncrypter$a;

    goto/16 :goto_0

    .line 5
    :cond_0
    new-instance p1, Lcom/nimbusds/jose/KeyLengthException;

    const-string p2, "The Key Encryption Key (KEK) length must be 128 bits for A128KW encryption"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->A192KW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0xc0

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 8
    sget-object v1, Lcom/nimbusds/jose/crypto/AESEncrypter$a;->AESKW:Lcom/nimbusds/jose/crypto/AESEncrypter$a;

    goto/16 :goto_0

    .line 9
    :cond_2
    new-instance p1, Lcom/nimbusds/jose/KeyLengthException;

    const-string p2, "The Key Encryption Key (KEK) length must be 192 bits for A192KW encryption"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->A256KW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0x100

    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 12
    sget-object v1, Lcom/nimbusds/jose/crypto/AESEncrypter$a;->AESKW:Lcom/nimbusds/jose/crypto/AESEncrypter$a;

    goto :goto_0

    .line 13
    :cond_4
    new-instance p1, Lcom/nimbusds/jose/KeyLengthException;

    const-string p2, "The Key Encryption Key (KEK) length must be 256 bits for A256KW encryption"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_5
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->A128GCMKW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 15
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    move-result v1

    if-ne v1, v2, :cond_6

    .line 16
    sget-object v1, Lcom/nimbusds/jose/crypto/AESEncrypter$a;->AESGCMKW:Lcom/nimbusds/jose/crypto/AESEncrypter$a;

    goto :goto_0

    .line 17
    :cond_6
    new-instance p1, Lcom/nimbusds/jose/KeyLengthException;

    const-string p2, "The Key Encryption Key (KEK) length must be 128 bits for A128GCMKW encryption"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_7
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->A192GCMKW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 19
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    move-result v1

    if-ne v1, v3, :cond_8

    .line 20
    sget-object v1, Lcom/nimbusds/jose/crypto/AESEncrypter$a;->AESGCMKW:Lcom/nimbusds/jose/crypto/AESEncrypter$a;

    goto :goto_0

    .line 21
    :cond_8
    new-instance p1, Lcom/nimbusds/jose/KeyLengthException;

    const-string p2, "The Key Encryption Key (KEK) length must be 192 bits for A192GCMKW encryption"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_9
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->A256GCMKW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 23
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    move-result v1

    if-ne v1, v4, :cond_c

    .line 24
    sget-object v1, Lcom/nimbusds/jose/crypto/AESEncrypter$a;->AESGCMKW:Lcom/nimbusds/jose/crypto/AESEncrypter$a;

    .line 25
    :goto_0
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v2

    .line 26
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nimbusds/jose/jca/JCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->generateCEK(Lcom/nimbusds/jose/EncryptionMethod;Ljava/security/SecureRandom;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 27
    sget-object v3, Lcom/nimbusds/jose/crypto/AESEncrypter$a;->AESKW:Lcom/nimbusds/jose/crypto/AESEncrypter$a;

    invoke-virtual {v3, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 28
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getKeyEncryptionProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/nimbusds/jose/crypto/impl/AESKW;->wrapCEK(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljava/security/Provider;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    goto :goto_1

    .line 29
    :cond_a
    sget-object v3, Lcom/nimbusds/jose/crypto/AESEncrypter$a;->AESGCMKW:Lcom/nimbusds/jose/crypto/AESEncrypter$a;

    invoke-virtual {v3, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 30
    new-instance v0, Lcom/nimbusds/jose/util/Container;

    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nimbusds/jose/jca/JCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/crypto/impl/AESGCM;->generateIV(Ljava/security/SecureRandom;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/util/Container;-><init>(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getKeyEncryptionProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/nimbusds/jose/crypto/impl/AESGCMKW;->encryptCEK(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Container;Ljavax/crypto/SecretKey;Ljava/security/Provider;)Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;->getCipherText()[B

    move-result-object v3

    invoke-static {v3}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v3

    .line 33
    new-instance v4, Lcom/nimbusds/jose/JWEHeader$Builder;

    invoke-direct {v4, p1}, Lcom/nimbusds/jose/JWEHeader$Builder;-><init>(Lcom/nimbusds/jose/JWEHeader;)V

    .line 34
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Container;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/nimbusds/jose/JWEHeader$Builder;->iv(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    .line 35
    invoke-virtual {v1}, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;->getAuthenticationTag()[B

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/JWEHeader$Builder;->authTag(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader$Builder;->build()Lcom/nimbusds/jose/JWEHeader;

    move-result-object p1

    move-object v0, v3

    .line 37
    :goto_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v1

    invoke-static {p1, p2, v2, v0, v1}, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->encrypt(Lcom/nimbusds/jose/JWEHeader;[BLjavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jca/JWEJCAContext;)Lcom/nimbusds/jose/JWECryptoParts;

    move-result-object p1

    return-object p1

    .line 38
    :cond_b
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected JWE algorithm: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_c
    new-instance p1, Lcom/nimbusds/jose/KeyLengthException;

    const-string p2, "The Key Encryption Key (KEK) length must be 256 bits for A256GCMKW encryption"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_d
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    sget-object p2, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-static {v0, p2}, Lcom/nimbusds/jose/crypto/impl/AlgorithmSupportMessage;->unsupportedJWEAlgorithm(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
