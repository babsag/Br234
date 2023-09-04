.class public Lsun/security/provider/X509Factory;
.super Ljava/security/cert/CertificateFactorySpi;
.source "X509Factory.java"


# static fields
.field public static final BEGIN_CERT:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----"

.field public static final END_CERT:Ljava/lang/String; = "-----END CERTIFICATE-----"

.field private static final a:[C

.field private static final b:Lsun/security/util/Cache;

.field private static final c:Lsun/security/util/Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "-----END"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lsun/security/provider/X509Factory;->a:[C

    const/16 v0, 0x2ee

    .line 2
    invoke-static {v0}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    move-result-object v1

    sput-object v1, Lsun/security/provider/X509Factory;->b:Lsun/security/util/Cache;

    .line 3
    invoke-static {v0}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    move-result-object v0

    sput-object v0, Lsun/security/provider/X509Factory;->c:Lsun/security/util/Cache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Lsun/security/util/Cache;[BLjava/lang/Object;)V
    .locals 3

    const-class v0, Lsun/security/provider/X509Factory;

    monitor-enter v0

    .line 1
    :try_start_0
    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v2, 0x400000

    if-le v1, v2, :cond_0

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_0
    :try_start_1
    new-instance v1, Lsun/security/util/Cache$EqualByteArray;

    invoke-direct {v1, p1}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    .line 4
    invoke-virtual {p0, v1, p2}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private b(Ljava/io/InputStream;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 2
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "ASCII"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4
    invoke-direct {p0, v1}, Lsun/security/provider/X509Factory;->i(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unsupported encoding"

    if-eqz v0, :cond_2

    const-string v3, "-----BEGIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    add-long/2addr v3, v5

    .line 6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 7
    :goto_0
    invoke-direct {p0, v1}, Lsun/security/provider/X509Factory;->i(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "-----END"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    .line 9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v3, v1

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v3, v1

    .line 11
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 12
    invoke-virtual {p1, v3, v4}, Ljava/io/InputStream;->skip(J)J

    .line 13
    new-instance p1, Lsun/misc/BASE64Decoder;

    invoke-direct {p1}, Lsun/misc/BASE64Decoder;-><init>()V

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsun/misc/CharacterDecoder;->decodeBuffer(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 15
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static declared-synchronized c(Lsun/security/util/Cache;[B)Ljava/lang/Object;
    .locals 2

    const-class v0, Lsun/security/provider/X509Factory;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Lsun/security/util/Cache$EqualByteArray;

    invoke-direct {v1, p1}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    .line 2
    invoke-virtual {p0, v1}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private d(Ljava/io/InputStream;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v1, v0, [B

    .line 1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x800

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    :goto_0
    const/4 v3, 0x0

    .line 3
    invoke-virtual {p1, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 4
    invoke-virtual {v2, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/io/InputStream;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    .line 2
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 5
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 6
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 7
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 8
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 9
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 10
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 11
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 12
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v10

    .line 13
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    const/16 p1, 0x2d

    if-ne v0, p1, :cond_0

    if-ne v2, p1, :cond_0

    if-ne v3, p1, :cond_0

    if-ne v4, p1, :cond_0

    if-ne v5, p1, :cond_0

    const/16 p1, 0x42

    if-ne v6, p1, :cond_0

    const/16 p1, 0x45

    if-ne v7, p1, :cond_0

    const/16 p1, 0x47

    if-ne v8, p1, :cond_0

    const/16 p1, 0x49

    if-ne v9, p1, :cond_0

    const/16 p1, 0x4e

    if-ne v10, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method private f(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    invoke-direct {p0, p1}, Lsun/security/provider/X509Factory;->e(Ljava/io/InputStream;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, p1}, Lsun/security/provider/X509Factory;->b(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_1

    :cond_0
    move-object v2, p1

    :goto_1
    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->mark(I)V

    .line 6
    :cond_1
    :try_start_0
    new-instance v1, Lsun/security/x509/X509CRLImpl;

    invoke-direct {v1, v2}, Lsun/security/x509/X509CRLImpl;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private g(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    invoke-direct {p0, p1}, Lsun/security/provider/X509Factory;->e(Ljava/io/InputStream;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, p1}, Lsun/security/provider/X509Factory;->b(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_1

    :cond_0
    move-object v2, p1

    :goto_1
    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->mark(I)V

    .line 6
    :cond_1
    :try_start_0
    new-instance v1, Lsun/security/x509/X509CertImpl;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, v2}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/util/DerValue;)V

    invoke-static {v1}, Lsun/security/provider/X509Factory;->intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getCause()Ljava/lang/Throwable;

    .line 8
    throw p1

    :cond_2
    return-object v0
.end method

.method private static h(Ljava/io/InputStream;[BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-lez p3, :cond_1

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v0, v1

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private i(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->read()I

    move-result v6

    if-eqz v3, :cond_2

    .line 3
    sget-object v7, Lsun/security/provider/X509Factory;->a:[C

    array-length v8, v7

    if-ge v4, v8, :cond_2

    int-to-char v3, v6

    add-int/lit8 v8, v4, 0x1

    .line 4
    aget-char v4, v7, v4

    if-eq v3, v4, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    move v4, v8

    :cond_2
    if-nez v5, :cond_4

    if-eqz v3, :cond_3

    .line 5
    sget-object v5, Lsun/security/provider/X509Factory;->a:[C

    array-length v5, v5

    if-ne v4, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :cond_4
    :goto_1
    int-to-char v7, v6

    .line 6
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v8, 0xd

    const/16 v9, 0xa

    const/4 v10, -0x1

    if-eq v6, v10, :cond_5

    if-eq v6, v9, :cond_5

    if-ne v6, v8, :cond_0

    :cond_5
    if-nez v5, :cond_6

    if-ne v6, v10, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    if-ne v6, v8, :cond_8

    .line 7
    invoke-virtual {p1, v2}, Ljava/io/BufferedReader;->mark(I)V

    .line 8
    invoke-virtual {p1}, Ljava/io/BufferedReader;->read()I

    move-result v1

    if-ne v1, v9, :cond_7

    .line 9
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 10
    :cond_7
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 11
    :cond_8
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized intern(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    const-class v0, Lsun/security/provider/X509Factory;

    monitor-enter v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 12
    monitor-exit v0

    return-object p0

    .line 13
    :cond_0
    :try_start_0
    instance-of v1, p0, Lsun/security/x509/X509CRLImpl;

    if-eqz v1, :cond_1

    .line 14
    move-object v2, p0

    check-cast v2, Lsun/security/x509/X509CRLImpl;

    invoke-virtual {v2}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B

    move-result-object v2

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v2

    .line 16
    :goto_0
    sget-object v3, Lsun/security/provider/X509Factory;->c:Lsun/security/util/Cache;

    invoke-static {v3, v2}, Lsun/security/provider/X509Factory;->c(Lsun/security/util/Cache;[B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/X509CRLImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 17
    monitor-exit v0

    return-object v4

    :cond_2
    if-eqz v1, :cond_3

    .line 18
    :try_start_1
    check-cast p0, Lsun/security/x509/X509CRLImpl;

    goto :goto_1

    .line 19
    :cond_3
    new-instance p0, Lsun/security/x509/X509CRLImpl;

    invoke-direct {p0, v2}, Lsun/security/x509/X509CRLImpl;-><init>([B)V

    .line 20
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B

    move-result-object v2

    .line 21
    :goto_1
    invoke-static {v3, v2, p0}, Lsun/security/provider/X509Factory;->a(Lsun/security/util/Cache;[BLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-class v0, Lsun/security/provider/X509Factory;

    monitor-enter v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 1
    monitor-exit v0

    return-object p0

    .line 2
    :cond_0
    :try_start_0
    instance-of v1, p0, Lsun/security/x509/X509CertImpl;

    if-eqz v1, :cond_1

    .line 3
    move-object v2, p0

    check-cast v2, Lsun/security/x509/X509CertImpl;

    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    move-result-object v2

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 5
    :goto_0
    sget-object v3, Lsun/security/provider/X509Factory;->b:Lsun/security/util/Cache;

    invoke-static {v3, v2}, Lsun/security/provider/X509Factory;->c(Lsun/security/util/Cache;[B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/X509CertImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 6
    monitor-exit v0

    return-object v4

    :cond_2
    if-eqz v1, :cond_3

    .line 7
    :try_start_1
    check-cast p0, Lsun/security/x509/X509CertImpl;

    goto :goto_1

    .line 8
    :cond_3
    new-instance p0, Lsun/security/x509/X509CertImpl;

    invoke-direct {p0, v2}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    .line 9
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    move-result-object v2

    .line 10
    :goto_1
    invoke-static {v3, v2, p0}, Lsun/security/provider/X509Factory;->a(Lsun/security/util/Cache;[BLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static j(Ljava/io/InputStream;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x400000

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    const/4 v1, 0x4

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 2
    invoke-static {p0, v2, v3, v1}, Lsun/security/provider/X509Factory;->h(Ljava/io/InputStream;[BII)I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v1, :cond_7

    .line 3
    aget-byte v4, v2, v3

    const/16 v6, 0x30

    if-eq v4, v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    .line 4
    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0x80

    const/4 v7, 0x2

    if-ge v4, v6, :cond_1

    add-int/2addr v4, v7

    goto :goto_0

    :cond_1
    const/16 v6, 0x81

    const/4 v8, 0x3

    if-ne v4, v6, :cond_2

    .line 5
    aget-byte v4, v2, v7

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v8

    goto :goto_0

    :cond_2
    const/16 v6, 0x82

    if-ne v4, v6, :cond_6

    .line 6
    aget-byte v4, v2, v7

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v6, v2, v8

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    add-int/2addr v4, v1

    :goto_0
    if-le v4, v0, :cond_3

    .line 7
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-object v5

    .line 8
    :cond_3
    new-array v0, v4, [B

    if-ge v4, v1, :cond_4

    .line 9
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 10
    invoke-static {p0, v0, v3, v4}, Lsun/security/provider/X509Factory;->h(Ljava/io/InputStream;[BII)I

    move-result v1

    if-eq v1, v4, :cond_5

    .line 11
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-object v5

    .line 12
    :cond_4
    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v4, v1

    .line 13
    invoke-static {p0, v0, v1, v4}, Lsun/security/provider/X509Factory;->h(Ljava/io/InputStream;[BII)I

    move-result v1

    if-eq v1, v4, :cond_5

    .line 14
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-object v5

    :cond_5
    return-object v0

    .line 15
    :cond_6
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-object v5

    .line 16
    :cond_7
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-object v5
.end method


# virtual methods
.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lsun/security/provider/X509Factory;->d(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object p1, v0

    .line 4
    :cond_0
    invoke-static {p1}, Lsun/security/provider/X509Factory;->j(Ljava/io/InputStream;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    sget-object p1, Lsun/security/provider/X509Factory;->c:Lsun/security/util/Cache;

    invoke-static {p1, v0}, Lsun/security/provider/X509Factory;->c(Lsun/security/util/Cache;[B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/X509CRLImpl;

    if-eqz v1, :cond_1

    return-object v1

    .line 6
    :cond_1
    new-instance v1, Lsun/security/x509/X509CRLImpl;

    invoke-direct {v1, v0}, Lsun/security/x509/X509CRLImpl;-><init>([B)V

    .line 7
    invoke-virtual {v1}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B

    move-result-object v0

    invoke-static {p1, v0, v1}, Lsun/security/provider/X509Factory;->a(Lsun/security/util/Cache;[BLjava/lang/Object;)V

    return-object v1

    .line 8
    :cond_2
    invoke-direct {p0, p1}, Lsun/security/provider/X509Factory;->e(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-direct {p0, p1}, Lsun/security/provider/X509Factory;->b(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 10
    new-instance v0, Lsun/security/x509/X509CRLImpl;

    invoke-direct {v0, p1}, Lsun/security/x509/X509CRLImpl;-><init>([B)V

    goto :goto_0

    .line 11
    :cond_3
    new-instance v0, Lsun/security/x509/X509CRLImpl;

    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lsun/security/x509/X509CRLImpl;-><init>(Lsun/security/util/DerValue;)V

    .line 12
    :goto_0
    invoke-static {v0}, Lsun/security/provider/X509Factory;->intern(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/security/cert/CRLException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_4
    sget-object p1, Lsun/security/provider/X509Factory;->c:Lsun/security/util/Cache;

    invoke-virtual {p1}, Lsun/security/util/Cache;->clear()V

    .line 15
    new-instance p1, Ljava/security/cert/CRLException;

    const-string v0, "Missing input stream"

    invoke-direct {p1, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3
    invoke-direct {p0, v1}, Lsun/security/provider/X509Factory;->d(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object p1, v0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lsun/security/provider/X509Factory;->f(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/security/cert/CRLException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance p1, Ljava/security/cert/CRLException;

    const-string v0, "Missing input stream"

    invoke-direct {p1, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lsun/security/provider/X509Factory;->d(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object p1, v0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lsun/security/provider/X509Factory;->e(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lsun/security/provider/X509Factory;->b(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 6
    new-instance v0, Lsun/security/provider/certpath/X509CertPath;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lsun/security/provider/certpath/X509CertPath;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Lsun/security/provider/certpath/X509CertPath;

    invoke-direct {v0, p1}, Lsun/security/provider/certpath/X509CertPath;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/security/cert/CertificateException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string v0, "Missing input stream"

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 10
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lsun/security/provider/X509Factory;->d(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 12
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object p1, v0

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lsun/security/provider/X509Factory;->e(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-direct {p0, p1}, Lsun/security/provider/X509Factory;->b(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 15
    new-instance v0, Lsun/security/provider/certpath/X509CertPath;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, p2}, Lsun/security/provider/certpath/X509CertPath;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0

    .line 16
    :cond_1
    new-instance v0, Lsun/security/provider/certpath/X509CertPath;

    invoke-direct {v0, p1, p2}, Lsun/security/provider/certpath/X509CertPath;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 17
    new-instance p2, Ljava/security/cert/CertificateException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 18
    :cond_2
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Missing input stream"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ljava/security/cert/CertPath;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 19
    new-instance v0, Lsun/security/provider/certpath/X509CertPath;

    invoke-direct {v0, p1}, Lsun/security/provider/certpath/X509CertPath;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lsun/security/provider/X509Factory;->d(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object p1, v0

    .line 4
    :cond_0
    invoke-static {p1}, Lsun/security/provider/X509Factory;->j(Ljava/io/InputStream;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    sget-object p1, Lsun/security/provider/X509Factory;->b:Lsun/security/util/Cache;

    invoke-static {p1, v0}, Lsun/security/provider/X509Factory;->c(Lsun/security/util/Cache;[B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/X509CertImpl;

    if-eqz v1, :cond_1

    return-object v1

    .line 6
    :cond_1
    new-instance v1, Lsun/security/x509/X509CertImpl;

    invoke-direct {v1, v0}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    .line 7
    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    move-result-object v0

    invoke-static {p1, v0, v1}, Lsun/security/provider/X509Factory;->a(Lsun/security/util/Cache;[BLjava/lang/Object;)V

    return-object v1

    .line 8
    :cond_2
    invoke-direct {p0, p1}, Lsun/security/provider/X509Factory;->e(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-direct {p0, p1}, Lsun/security/provider/X509Factory;->b(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 10
    new-instance v0, Lsun/security/x509/X509CertImpl;

    invoke-direct {v0, p1}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    goto :goto_0

    .line 11
    :cond_3
    new-instance v0, Lsun/security/x509/X509CertImpl;

    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/util/DerValue;)V

    .line 12
    :goto_0
    invoke-static {v0}, Lsun/security/provider/X509Factory;->intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/security/cert/CertificateException;

    throw p1

    .line 15
    :cond_4
    sget-object p1, Lsun/security/provider/X509Factory;->b:Lsun/security/util/Cache;

    invoke-virtual {p1}, Lsun/security/util/Cache;->clear()V

    .line 16
    invoke-static {}, Lsun/security/provider/certpath/X509CertificatePair;->clearCache()V

    .line 17
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string v0, "Missing input stream"

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3
    invoke-direct {p0, v1}, Lsun/security/provider/X509Factory;->d(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object p1, v0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lsun/security/provider/X509Factory;->g(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/security/cert/CertificateException;

    invoke-direct {v0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 6
    :cond_1
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string v0, "Missing input stream"

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetCertPathEncodings()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lsun/security/provider/certpath/X509CertPath;->getEncodingsStatic()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
