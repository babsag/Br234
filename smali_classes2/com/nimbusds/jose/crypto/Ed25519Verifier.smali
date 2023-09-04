.class public Lcom/nimbusds/jose/crypto/Ed25519Verifier;
.super Lcom/nimbusds/jose/crypto/impl/EdDSAProvider;
.source "Ed25519Verifier.java"

# interfaces
.implements Lcom/nimbusds/jose/JWSVerifier;
.implements Lcom/nimbusds/jose/CriticalHeaderParamsAware;


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# instance fields
.field private final c:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

.field private final d:Lcom/nimbusds/jose/jwk/OctetKeyPair;

.field private final e:Lcom/google/crypto/tink/subtle/Ed25519Verify;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/crypto/Ed25519Verifier;-><init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/OctetKeyPair;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/nimbusds/jose/crypto/impl/EdDSAProvider;-><init>()V

    .line 3
    new-instance v0, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    invoke-direct {v0}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/crypto/Ed25519Verifier;->c:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 4
    sget-object v1, Lcom/nimbusds/jose/jwk/Curve;->Ed25519:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nimbusds/jose/jwk/Curve;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/Ed25519Verifier;->d:Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 7
    new-instance v1, Lcom/google/crypto/tink/subtle/Ed25519Verify;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->getDecodedX()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/crypto/tink/subtle/Ed25519Verify;-><init>([B)V

    iput-object v1, p0, Lcom/nimbusds/jose/crypto/Ed25519Verifier;->e:Lcom/google/crypto/tink/subtle/Ed25519Verify;

    .line 8
    invoke-virtual {v0, p2}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->setDeferredCriticalHeaderParams(Ljava/util/Set;)V

    return-void

    .line 9
    :cond_0
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string p2, "Ed25519Verifier requires a public key, use OctetKeyPair.toPublicJWK()"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string p2, "Ed25519Verifier only supports OctetKeyPairs with crv=Ed25519"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDeferredCriticalHeaderParams()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/Ed25519Verifier;->c:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->getProcessedCriticalHeaderParams()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProcessedCriticalHeaderParams()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/Ed25519Verifier;->c:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->getProcessedCriticalHeaderParams()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lcom/nimbusds/jose/jwk/OctetKeyPair;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/Ed25519Verifier;->d:Lcom/nimbusds/jose/jwk/OctetKeyPair;

    return-object v0
.end method

.method public verify(Lcom/nimbusds/jose/JWSHeader;[BLcom/nimbusds/jose/util/Base64URL;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm;->EdDSA:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {v1, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/Ed25519Verifier;->c:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->headerPasses(Lcom/nimbusds/jose/Header;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p3}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    move-result-object p1

    .line 5
    :try_start_0
    iget-object p3, p0, Lcom/nimbusds/jose/crypto/Ed25519Verifier;->e:Lcom/google/crypto/tink/subtle/Ed25519Verify;

    invoke-virtual {p3, p1, p2}, Lcom/google/crypto/tink/subtle/Ed25519Verify;->verify([B[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0

    .line 6
    :cond_1
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string p2, "Ed25519Verifier requires alg=EdDSA in JWSHeader"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
