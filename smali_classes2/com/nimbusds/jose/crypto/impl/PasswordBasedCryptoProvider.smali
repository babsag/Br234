.class public abstract Lcom/nimbusds/jose/crypto/impl/PasswordBasedCryptoProvider;
.super Lcom/nimbusds/jose/crypto/impl/a;
.source "PasswordBasedCryptoProvider.java"


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
.field private final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    sput-object v0, Lcom/nimbusds/jose/crypto/impl/PasswordBasedCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->PBES2_HS256_A128KW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->PBES2_HS384_A192KW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->PBES2_HS512_A256KW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/nimbusds/jose/crypto/impl/PasswordBasedCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>([B)V
    .locals 2

    .line 1
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/PasswordBasedCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    sget-object v1, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/nimbusds/jose/crypto/impl/a;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    if-eqz p1, :cond_0

    .line 2
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/impl/PasswordBasedCryptoProvider;->d:[B

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The password must not be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/crypto/impl/a;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/impl/PasswordBasedCryptoProvider;->d:[B

    return-object v0
.end method

.method public getPasswordString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nimbusds/jose/crypto/impl/PasswordBasedCryptoProvider;->d:[B

    sget-object v2, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public bridge synthetic supportedEncryptionMethods()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/crypto/impl/a;->supportedEncryptionMethods()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic supportedJWEAlgorithms()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/crypto/impl/a;->supportedJWEAlgorithms()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
