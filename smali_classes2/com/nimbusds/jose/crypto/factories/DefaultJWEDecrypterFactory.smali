.class public Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;
.super Ljava/lang/Object;
.source "DefaultJWEDecrypterFactory.java"

# interfaces
.implements Lcom/nimbusds/jose/proc/JWEDecrypterFactory;


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field public static final SUPPORTED_ALGORITHMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWEAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/nimbusds/jose/jca/JWEJCAContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/RSACryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/DirectCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/PasswordBasedCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 8
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 9
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/RSACryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 10
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 11
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/DirectCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 12
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 13
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/PasswordBasedCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 14
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/nimbusds/jose/jca/JWEJCAContext;

    invoke-direct {v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->a:Lcom/nimbusds/jose/jca/JWEJCAContext;

    return-void
.end method


# virtual methods
.method public createJWEDecrypter(Lcom/nimbusds/jose/JWEHeader;Ljava/security/Key;)Lcom/nimbusds/jose/JWEDecrypter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/RSACryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nimbusds/jose/crypto/impl/RSACryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 2
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    instance-of p1, p2, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz p1, :cond_0

    .line 4
    check-cast p2, Ljava/security/interfaces/RSAPrivateKey;

    .line 5
    new-instance p1, Lcom/nimbusds/jose/crypto/RSADecrypter;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/crypto/RSADecrypter;-><init>(Ljava/security/PrivateKey;)V

    goto/16 :goto_1

    .line 6
    :cond_0
    new-instance p1, Lcom/nimbusds/jose/KeyTypeException;

    const-class p2, Ljava/security/interfaces/RSAPrivateKey;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 7
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 8
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    instance-of p1, p2, Ljava/security/interfaces/ECPrivateKey;

    if-eqz p1, :cond_2

    .line 10
    check-cast p2, Ljava/security/interfaces/ECPrivateKey;

    .line 11
    new-instance p1, Lcom/nimbusds/jose/crypto/ECDHDecrypter;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/crypto/ECDHDecrypter;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    goto/16 :goto_1

    .line 12
    :cond_2
    new-instance p1, Lcom/nimbusds/jose/KeyTypeException;

    const-class p2, Ljava/security/interfaces/ECPrivateKey;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 13
    :cond_3
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/DirectCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/nimbusds/jose/crypto/impl/DirectCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 14
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_5

    .line 16
    check-cast p2, Ljavax/crypto/SecretKey;

    .line 17
    new-instance v0, Lcom/nimbusds/jose/crypto/DirectDecrypter;

    invoke-direct {v0, p2}, Lcom/nimbusds/jose/crypto/DirectDecrypter;-><init>(Ljavax/crypto/SecretKey;)V

    .line 18
    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/impl/DirectCryptoProvider;->supportedEncryptionMethods()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :goto_0
    move-object p1, v0

    goto/16 :goto_1

    .line 19
    :cond_4
    new-instance p2, Lcom/nimbusds/jose/KeyLengthException;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/EncryptionMethod;->cekBitLength()I

    move-result v0

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/nimbusds/jose/KeyLengthException;-><init>(ILcom/nimbusds/jose/Algorithm;)V

    throw p2

    .line 20
    :cond_5
    new-instance p1, Lcom/nimbusds/jose/KeyTypeException;

    const-class p2, Ljavax/crypto/SecretKey;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 21
    :cond_6
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 22
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 23
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_8

    .line 24
    check-cast p2, Ljavax/crypto/SecretKey;

    .line 25
    new-instance v0, Lcom/nimbusds/jose/crypto/AESDecrypter;

    invoke-direct {v0, p2}, Lcom/nimbusds/jose/crypto/AESDecrypter;-><init>(Ljavax/crypto/SecretKey;)V

    .line 26
    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->supportedJWEAlgorithms()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_0

    .line 27
    :cond_7
    new-instance p2, Lcom/nimbusds/jose/KeyLengthException;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Lcom/nimbusds/jose/Algorithm;)V

    throw p2

    .line 28
    :cond_8
    new-instance p1, Lcom/nimbusds/jose/KeyTypeException;

    const-class p2, Ljavax/crypto/SecretKey;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 29
    :cond_9
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/PasswordBasedCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/nimbusds/jose/crypto/impl/PasswordBasedCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 30
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 31
    instance-of p1, p2, Ljavax/crypto/SecretKey;

    if-eqz p1, :cond_a

    .line 32
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    .line 33
    new-instance p2, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;

    invoke-direct {p2, p1}, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;-><init>([B)V

    move-object p1, p2

    .line 34
    :goto_1
    invoke-interface {p1}, Lcom/nimbusds/jose/jca/JCAAware;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p2

    check-cast p2, Lcom/nimbusds/jose/jca/JWEJCAContext;

    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->a:Lcom/nimbusds/jose/jca/JWEJCAContext;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nimbusds/jose/jca/JCAContext;->setSecureRandom(Ljava/security/SecureRandom;)V

    .line 35
    invoke-interface {p1}, Lcom/nimbusds/jose/jca/JCAAware;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p2

    check-cast p2, Lcom/nimbusds/jose/jca/JWEJCAContext;

    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->a:Lcom/nimbusds/jose/jca/JWEJCAContext;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JCAContext;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nimbusds/jose/jca/JCAContext;->setProvider(Ljava/security/Provider;)V

    .line 36
    invoke-interface {p1}, Lcom/nimbusds/jose/jca/JCAAware;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p2

    check-cast p2, Lcom/nimbusds/jose/jca/JWEJCAContext;

    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->a:Lcom/nimbusds/jose/jca/JWEJCAContext;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getKeyEncryptionProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->setKeyEncryptionProvider(Ljava/security/Provider;)V

    .line 37
    invoke-interface {p1}, Lcom/nimbusds/jose/jca/JCAAware;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p2

    check-cast p2, Lcom/nimbusds/jose/jca/JWEJCAContext;

    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->a:Lcom/nimbusds/jose/jca/JWEJCAContext;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getMACProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->setMACProvider(Ljava/security/Provider;)V

    .line 38
    invoke-interface {p1}, Lcom/nimbusds/jose/jca/JCAAware;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p2

    check-cast p2, Lcom/nimbusds/jose/jca/JWEJCAContext;

    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->a:Lcom/nimbusds/jose/jca/JWEJCAContext;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getContentEncryptionProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->setContentEncryptionProvider(Ljava/security/Provider;)V

    return-object p1

    .line 39
    :cond_a
    new-instance p1, Lcom/nimbusds/jose/KeyTypeException;

    const-class p2, Ljavax/crypto/SecretKey;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 40
    :cond_b
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string p2, "Unsupported JWE algorithm or encryption method"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v0

    return-object v0
.end method

.method public getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->a:Lcom/nimbusds/jose/jca/JWEJCAContext;

    return-object v0
.end method

.method public supportedEncryptionMethods()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    return-object v0
.end method

.method public supportedJWEAlgorithms()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWEAlgorithm;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    return-object v0
.end method
