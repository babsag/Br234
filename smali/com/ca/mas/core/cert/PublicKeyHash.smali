.class public Lcom/ca/mas/core/cert/PublicKeyHash;
.super Ljava/lang/Object;
.source "PublicKeyHash.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-f0-9]{64}"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ca/mas/core/cert/PublicKeyHash;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ca/mas/core/cert/PublicKeyHash;->b:[B

    return-void
.end method

.method private static a(Ljava/security/PublicKey;)[B
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    .line 3
    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object p0

    const-string v1, "X.509"

    .line 4
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "x509"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "public key encoding format is not X.509"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    :try_start_0
    const-string p0, "SHA-256"

    .line 6
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 7
    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 8
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "public key cannot be encoded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromCertificate(Ljava/security/cert/Certificate;)Lcom/ca/mas/core/cert/PublicKeyHash;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-static {p0}, Lcom/ca/mas/core/cert/PublicKeyHash;->fromPublicKey(Ljava/security/PublicKey;)Lcom/ca/mas/core/cert/PublicKeyHash;

    move-result-object p0

    return-object p0
.end method

.method public static fromHashString(Ljava/lang/String;I)Lcom/ca/mas/core/cert/PublicKeyHash;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/cert/PublicKeyHash;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lcom/ca/mas/core/cert/PublicKeyHash;

    invoke-static {p0}, Lcom/ca/mas/core/io/IoUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/ca/mas/core/cert/PublicKeyHash;-><init>([B)V

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/ca/mas/core/cert/PublicKeyHash;

    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/ca/mas/core/cert/PublicKeyHash;-><init>([B)V

    return-object v0
.end method

.method public static fromPublicKey(Ljava/security/PublicKey;)Lcom/ca/mas/core/cert/PublicKeyHash;
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/core/cert/PublicKeyHash;

    invoke-static {p0}, Lcom/ca/mas/core/cert/PublicKeyHash;->a(Ljava/security/PublicKey;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/ca/mas/core/cert/PublicKeyHash;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/ca/mas/core/cert/PublicKeyHash;

    .line 3
    iget-object v0, p0, Lcom/ca/mas/core/cert/PublicKeyHash;->b:[B

    iget-object p1, p1, Lcom/ca/mas/core/cert/PublicKeyHash;->b:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getHashString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/cert/PublicKeyHash;->b:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/cert/PublicKeyHash;->b:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public matches(Ljava/security/PublicKey;)Z
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/ca/mas/core/cert/PublicKeyHash;->a(Ljava/security/PublicKey;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ca/mas/core/cert/PublicKeyHash;->matches([B)Z

    move-result p1

    return p1
.end method

.method public matches(Ljava/security/cert/X509Certificate;)Z
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ca/mas/core/cert/PublicKeyHash;->matches(Ljava/security/PublicKey;)Z

    move-result p1

    return p1
.end method

.method public matches([B)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/cert/PublicKeyHash;->b:[B

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
