.class public Lsun/security/provider/certpath/X509CertificatePair;
.super Ljava/lang/Object;
.source "X509CertificatePair.java"


# static fields
.field private static final a:Lsun/security/util/Cache;


# instance fields
.field private b:Ljava/security/cert/X509Certificate;

.field private c:Ljava/security/cert/X509Certificate;

.field private d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2ee

    .line 1
    invoke-static {v0}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/X509CertificatePair;->a:Lsun/security/util/Cache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "at least one of certificate pair must be non-null"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iput-object p1, p0, Lsun/security/provider/certpath/X509CertificatePair;->b:Ljava/security/cert/X509Certificate;

    .line 5
    iput-object p2, p0, Lsun/security/provider/certpath/X509CertificatePair;->c:Ljava/security/cert/X509Certificate;

    .line 6
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertificatePair;->a()V

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    :try_start_0
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-direct {p0, v0}, Lsun/security/provider/certpath/X509CertificatePair;->c(Lsun/security/util/DerValue;)V

    .line 9
    iput-object p1, p0, Lsun/security/provider/certpath/X509CertificatePair;->d:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertificatePair;->a()V

    return-void

    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Ljava/security/cert/CertificateException;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->b:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lsun/security/provider/certpath/X509CertificatePair;->c:Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lsun/security/provider/certpath/X509CertificatePair;->b:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->c:Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lsun/security/provider/certpath/X509CertificatePair;->c:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 6
    invoke-virtual {v1, v2}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v3, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    :try_start_0
    iget-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->c:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 8
    instance-of v1, v0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/security/interfaces/DSAPublicKey;

    .line 9
    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10
    :cond_1
    iget-object v1, p0, Lsun/security/provider/certpath/X509CertificatePair;->b:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->b:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 12
    instance-of v1, v0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/security/interfaces/DSAPublicKey;

    .line 13
    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 14
    :cond_3
    iget-object v1, p0, Lsun/security/provider/certpath/X509CertificatePair;->c:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception v0

    .line 15
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_5
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "subject and issuer names in forward and reverse certificates do not match"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    return-void
.end method

.method private b(Lsun/security/util/DerOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 1
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 2
    iget-object v1, p0, Lsun/security/provider/certpath/X509CertificatePair;->b:Ljava/security/cert/X509Certificate;

    const/16 v2, -0x80

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 4
    new-instance v4, Lsun/security/util/DerValue;

    iget-object v5, p0, Lsun/security/provider/certpath/X509CertificatePair;->b:Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-virtual {v1, v4}, Lsun/security/util/DerOutputStream;->putDerValue(Lsun/security/util/DerValue;)V

    const/4 v4, 0x0

    .line 5
    invoke-static {v2, v3, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v4

    invoke-virtual {v0, v4, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 6
    :cond_0
    iget-object v1, p0, Lsun/security/provider/certpath/X509CertificatePair;->c:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 8
    new-instance v4, Lsun/security/util/DerValue;

    iget-object v5, p0, Lsun/security/provider/certpath/X509CertificatePair;->c:Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-virtual {v1, v4}, Lsun/security/util/DerOutputStream;->putDerValue(Lsun/security/util/DerValue;)V

    .line 9
    invoke-static {v2, v3, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    :cond_1
    const/16 v1, 0x30

    .line 10
    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    return-void
.end method

.method private c(Lsun/security/util/DerValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_8

    .line 2
    :cond_0
    :goto_0
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_5

    .line 3
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 4
    iget-byte v1, v0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v1, v1, 0x1f

    int-to-byte v1, v1

    int-to-short v1, v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 5
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lsun/security/provider/certpath/X509CertificatePair;->c:Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_1

    .line 7
    iget-object v0, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 8
    new-instance v1, Lsun/security/x509/X509CertImpl;

    .line 9
    invoke-virtual {v0}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    invoke-static {v1}, Lsun/security/provider/X509Factory;->intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->c:Ljava/security/cert/X509Certificate;

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Duplicate reverse certificate in X509CertificatePair"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid encoding of X509CertificatePair"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    iget-object v1, p0, Lsun/security/provider/certpath/X509CertificatePair;->b:Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_4

    .line 14
    iget-object v0, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 15
    new-instance v1, Lsun/security/x509/X509CertImpl;

    .line 16
    invoke-virtual {v0}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    invoke-static {v1}, Lsun/security/provider/X509Factory;->intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->b:Ljava/security/cert/X509Certificate;

    goto :goto_0

    .line 17
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Duplicate forward certificate in X509CertificatePair"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_5
    iget-object p1, p0, Lsun/security/provider/certpath/X509CertificatePair;->b:Ljava/security/cert/X509Certificate;

    if-nez p1, :cond_7

    iget-object p1, p0, Lsun/security/provider/certpath/X509CertificatePair;->c:Ljava/security/cert/X509Certificate;

    if-eqz p1, :cond_6

    goto :goto_1

    .line 19
    :cond_6
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string v0, "at least one of certificate pair must be non-null"

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    return-void

    .line 20
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Sequence tag missing for X509CertificatePair"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static declared-synchronized clearCache()V
    .locals 2

    const-class v0, Lsun/security/provider/certpath/X509CertificatePair;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lsun/security/provider/certpath/X509CertificatePair;->a:Lsun/security/util/Cache;

    invoke-virtual {v1}, Lsun/security/util/Cache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized generateCertificatePair([B)Lsun/security/provider/certpath/X509CertificatePair;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-class v0, Lsun/security/provider/certpath/X509CertificatePair;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Lsun/security/util/Cache$EqualByteArray;

    invoke-direct {v1, p0}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    .line 2
    sget-object v2, Lsun/security/provider/certpath/X509CertificatePair;->a:Lsun/security/util/Cache;

    invoke-virtual {v2, v1}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/provider/certpath/X509CertificatePair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    :try_start_1
    new-instance v1, Lsun/security/provider/certpath/X509CertificatePair;

    invoke-direct {v1, p0}, Lsun/security/provider/certpath/X509CertificatePair;-><init>([B)V

    .line 5
    new-instance p0, Lsun/security/util/Cache$EqualByteArray;

    iget-object v3, v1, Lsun/security/provider/certpath/X509CertificatePair;->d:[B

    invoke-direct {p0, v3}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    .line 6
    invoke-virtual {v2, p0, v1}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->d:[B

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 3
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/X509CertificatePair;->b(Lsun/security/util/DerOutputStream;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->d:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->d:[B

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getForward()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->b:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getReverse()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->c:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public setForward(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertificatePair;->a()V

    .line 2
    iput-object p1, p0, Lsun/security/provider/certpath/X509CertificatePair;->b:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public setReverse(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertificatePair;->a()V

    .line 2
    iput-object p1, p0, Lsun/security/provider/certpath/X509CertificatePair;->c:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "X.509 Certificate Pair: [\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    iget-object v1, p0, Lsun/security/provider/certpath/X509CertificatePair;->b:Ljava/security/cert/X509Certificate;

    const-string v2, "\n"

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Forward: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lsun/security/provider/certpath/X509CertificatePair;->b:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    :cond_0
    iget-object v1, p0, Lsun/security/provider/certpath/X509CertificatePair;->c:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Reverse: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lsun/security/provider/certpath/X509CertificatePair;->c:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v1, "]"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
