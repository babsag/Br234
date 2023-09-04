.class public abstract Lcom/ca/mas/core/context/UniqueIdentifier;
.super Ljava/lang/Object;
.source "UniqueIdentifier.java"


# instance fields
.field protected identifier:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/ca/mas/core/context/UniqueIdentifier;->identifier:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/ca/mas/core/context/UniqueIdentifier;->getIdentifierKey()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->getRsaPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.ca"

    aput-object v3, v1, v2

    const-string v2, "CN=%s, OU=%s"

    .line 5
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const/4 v6, 0x0

    move-object v1, v0

    .line 6
    invoke-static/range {v1 .. v6}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->generateRsaPrivateKey(Ljava/lang/String;Ljava/lang/String;ZZIZ)Ljava/security/PrivateKey;

    .line 7
    invoke-static {v0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->getRsaPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    .line 8
    :cond_0
    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    const-string v1, "SHA-256"

    .line 9
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 11
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/ca/mas/core/io/IoUtils;->hexDump([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/context/UniqueIdentifier;->identifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract getIdentifierKey()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/UniqueIdentifier;->identifier:Ljava/lang/String;

    return-object v0
.end method
