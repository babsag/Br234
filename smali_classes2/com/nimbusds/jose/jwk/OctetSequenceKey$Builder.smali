.class public Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
.super Ljava/lang/Object;
.source "OctetSequenceKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/jwk/OctetSequenceKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lcom/nimbusds/jose/util/Base64URL;

.field private b:Lcom/nimbusds/jose/jwk/KeyUse;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/nimbusds/jose/Algorithm;

.field private e:Ljava/lang/String;

.field private f:Ljava/net/URI;

.field private g:Lcom/nimbusds/jose/util/Base64URL;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private h:Lcom/nimbusds/jose/util/Base64URL;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->a:Lcom/nimbusds/jose/util/Base64URL;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The key value must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 0

    .line 7
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 4
    invoke-static {p1}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;-><init>(Lcom/nimbusds/jose/util/Base64URL;)V

    .line 5
    array-length p1, p1

    if-eqz p1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The key must have a positive length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public algorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->d:Lcom/nimbusds/jose/Algorithm;

    return-object p0
.end method

.method public build()Lcom/nimbusds/jose/jwk/OctetSequenceKey;
    .locals 12

    .line 1
    :try_start_0
    new-instance v11, Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    iget-object v1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->a:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v2, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->b:Lcom/nimbusds/jose/jwk/KeyUse;

    iget-object v3, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->c:Ljava/util/Set;

    iget-object v4, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->d:Lcom/nimbusds/jose/Algorithm;

    iget-object v5, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->f:Ljava/net/URI;

    iget-object v7, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->g:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v8, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->h:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v9, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->i:Ljava/util/List;

    iget-object v10, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->j:Ljava/security/KeyStore;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public keyIDFromThumbprint()Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    const-string v0, "SHA-256"

    .line 1
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->keyIDFromThumbprint(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public keyIDFromThumbprint(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
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
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->a:Lcom/nimbusds/jose/util/Base64URL;

    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "k"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->OCT:Lcom/nimbusds/jose/jwk/KeyType;

    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/KeyType;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kty"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p1, v0}, Lcom/nimbusds/jose/jwk/ThumbprintUtils;->compute(Ljava/lang/String;Ljava/util/LinkedHashMap;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public keyOperations(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->c:Ljava/util/Set;

    return-object p0
.end method

.method public keyStore(Ljava/security/KeyStore;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->j:Ljava/security/KeyStore;

    return-object p0
.end method

.method public keyUse(Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->b:Lcom/nimbusds/jose/jwk/KeyUse;

    return-object p0
.end method

.method public x509CertChain(Ljava/util/List;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->i:Ljava/util/List;

    return-object p0
.end method

.method public x509CertSHA256Thumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->h:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public x509CertThumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->g:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public x509CertURL(Ljava/net/URI;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->f:Ljava/net/URI;

    return-object p0
.end method
