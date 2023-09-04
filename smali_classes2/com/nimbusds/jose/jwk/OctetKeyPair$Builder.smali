.class public Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
.super Ljava/lang/Object;
.source "OctetKeyPair.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/jwk/OctetKeyPair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lcom/nimbusds/jose/jwk/Curve;

.field private final b:Lcom/nimbusds/jose/util/Base64URL;

.field private c:Lcom/nimbusds/jose/util/Base64URL;

.field private d:Lcom/nimbusds/jose/jwk/KeyUse;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/nimbusds/jose/Algorithm;

.field private g:Ljava/lang/String;

.field private h:Ljava/net/URI;

.field private i:Lcom/nimbusds/jose/util/Base64URL;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private j:Lcom/nimbusds/jose/util/Base64URL;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->a:Lcom/nimbusds/jose/jwk/Curve;

    if-eqz p2, :cond_0

    .line 3
    iput-object p2, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->b:Lcom/nimbusds/jose/util/Base64URL;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The \'x\' coordinate must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The curve must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->d(Lcom/nimbusds/jose/jwk/OctetKeyPair;)Lcom/nimbusds/jose/jwk/Curve;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->a:Lcom/nimbusds/jose/jwk/Curve;

    .line 8
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->e(Lcom/nimbusds/jose/jwk/OctetKeyPair;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->b:Lcom/nimbusds/jose/util/Base64URL;

    .line 9
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->f(Lcom/nimbusds/jose/jwk/OctetKeyPair;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->c:Lcom/nimbusds/jose/util/Base64URL;

    .line 10
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->d:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 11
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyOperations()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->e:Ljava/util/Set;

    .line 12
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getAlgorithm()Lcom/nimbusds/jose/Algorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->f:Lcom/nimbusds/jose/Algorithm;

    .line 13
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->g:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertURL()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->h:Ljava/net/URI;

    .line 15
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->i:Lcom/nimbusds/jose/util/Base64URL;

    .line 16
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->j:Lcom/nimbusds/jose/util/Base64URL;

    .line 17
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertChain()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->k:Ljava/util/List;

    .line 18
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyStore()Ljava/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->l:Ljava/security/KeyStore;

    return-void
.end method


# virtual methods
.method public algorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->f:Lcom/nimbusds/jose/Algorithm;

    return-object p0
.end method

.method public build()Lcom/nimbusds/jose/jwk/OctetKeyPair;
    .locals 14

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->c:Lcom/nimbusds/jose/util/Base64URL;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    iget-object v2, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->a:Lcom/nimbusds/jose/jwk/Curve;

    iget-object v3, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->b:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v4, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->d:Lcom/nimbusds/jose/jwk/KeyUse;

    iget-object v5, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->e:Ljava/util/Set;

    iget-object v6, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->f:Lcom/nimbusds/jose/Algorithm;

    iget-object v7, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->h:Ljava/net/URI;

    iget-object v9, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->i:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v10, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->j:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v11, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->k:Ljava/util/List;

    iget-object v12, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->l:Ljava/security/KeyStore;

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/nimbusds/jose/jwk/OctetKeyPair;-><init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/KeyStore;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    iget-object v2, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->a:Lcom/nimbusds/jose/jwk/Curve;

    iget-object v3, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->b:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v4, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->c:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v5, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->d:Lcom/nimbusds/jose/jwk/KeyUse;

    iget-object v6, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->e:Ljava/util/Set;

    iget-object v7, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->f:Lcom/nimbusds/jose/Algorithm;

    iget-object v8, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->g:Ljava/lang/String;

    iget-object v9, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->h:Ljava/net/URI;

    iget-object v10, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->i:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v11, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->j:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v12, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->k:Ljava/util/List;

    iget-object v13, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->l:Ljava/security/KeyStore;

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/nimbusds/jose/jwk/OctetKeyPair;-><init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public d(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->c:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method public keyIDFromThumbprint()Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    const-string v0, "SHA-256"

    .line 1
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->keyIDFromThumbprint(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public keyIDFromThumbprint(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->a:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/Curve;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "crv"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->OKP:Lcom/nimbusds/jose/jwk/KeyType;

    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/KeyType;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kty"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->b:Lcom/nimbusds/jose/util/Base64URL;

    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p1, v0}, Lcom/nimbusds/jose/jwk/ThumbprintUtils;->compute(Ljava/lang/String;Ljava/util/LinkedHashMap;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method public keyOperations(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->e:Ljava/util/Set;

    return-object p0
.end method

.method public keyStore(Ljava/security/KeyStore;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->l:Ljava/security/KeyStore;

    return-object p0
.end method

.method public keyUse(Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->d:Lcom/nimbusds/jose/jwk/KeyUse;

    return-object p0
.end method

.method public x509CertChain(Ljava/util/List;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->k:Ljava/util/List;

    return-object p0
.end method

.method public x509CertSHA256Thumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->j:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public x509CertThumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->i:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public x509CertURL(Ljava/net/URI;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->h:Ljava/net/URI;

    return-object p0
.end method
