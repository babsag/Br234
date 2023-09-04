.class public Lcom/nimbusds/jose/proc/JWEDecryptionKeySelector;
.super Lcom/nimbusds/jose/proc/a;
.source "JWEDecryptionKeySelector.java"

# interfaces
.implements Lcom/nimbusds/jose/proc/JWEKeySelector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Lcom/nimbusds/jose/proc/a<",
        "TC;>;",
        "Lcom/nimbusds/jose/proc/JWEKeySelector<",
        "TC;>;"
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# instance fields
.field private final b:Lcom/nimbusds/jose/JWEAlgorithm;

.field private final c:Lcom/nimbusds/jose/EncryptionMethod;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/JWEAlgorithm;Lcom/nimbusds/jose/EncryptionMethod;Lcom/nimbusds/jose/jwk/source/JWKSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWEAlgorithm;",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/nimbusds/jose/proc/a;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSource;)V

    if-eqz p1, :cond_1

    .line 2
    iput-object p1, p0, Lcom/nimbusds/jose/proc/JWEDecryptionKeySelector;->b:Lcom/nimbusds/jose/JWEAlgorithm;

    if-eqz p2, :cond_0

    .line 3
    iput-object p2, p0, Lcom/nimbusds/jose/proc/JWEDecryptionKeySelector;->c:Lcom/nimbusds/jose/EncryptionMethod;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The JWE encryption method must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The JWE algorithm must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected createJWKMatcher(Lcom/nimbusds/jose/JWEHeader;)Lcom/nimbusds/jose/jwk/JWKMatcher;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/proc/JWEDecryptionKeySelector;->getExpectedJWEAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/proc/JWEDecryptionKeySelector;->getExpectedJWEEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->forJWEHeader(Lcom/nimbusds/jose/JWEHeader;)Lcom/nimbusds/jose/jwk/JWKMatcher;

    move-result-object p1

    return-object p1
.end method

.method public getExpectedJWEAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JWEDecryptionKeySelector;->b:Lcom/nimbusds/jose/JWEAlgorithm;

    return-object v0
.end method

.method public getExpectedJWEEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JWEDecryptionKeySelector;->c:Lcom/nimbusds/jose/EncryptionMethod;

    return-object v0
.end method

.method public bridge synthetic getJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/proc/a;->getJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;

    move-result-object v0

    return-object v0
.end method

.method public selectJWEKeys(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWEHeader;",
            "TC;)",
            "Ljava/util/List<",
            "Ljava/security/Key;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeySourceException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JWEDecryptionKeySelector;->b:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nimbusds/jose/proc/JWEDecryptionKeySelector;->c:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/proc/JWEDecryptionKeySelector;->createJWKMatcher(Lcom/nimbusds/jose/JWEHeader;)Lcom/nimbusds/jose/jwk/JWKMatcher;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/nimbusds/jose/proc/JWEDecryptionKeySelector;->getJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;

    move-result-object v0

    new-instance v1, Lcom/nimbusds/jose/jwk/JWKSelector;

    invoke-direct {v1, p1}, Lcom/nimbusds/jose/jwk/JWKSelector;-><init>(Lcom/nimbusds/jose/jwk/JWKMatcher;)V

    invoke-interface {v0, v1, p2}, Lcom/nimbusds/jose/jwk/source/JWKSource;->get(Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    move-result-object p1

    .line 4
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/KeyConverter;->toJavaKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    .line 6
    instance-of v1, v0, Ljava/security/PrivateKey;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_1

    .line 7
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object p2

    .line 8
    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
