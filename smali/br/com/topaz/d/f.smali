.class public Lbr/com/topaz/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/d/f$a;
    }
.end annotation


# instance fields
.field private a:Lbr/com/topaz/d/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 1

    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lbr/com/topaz/d/f;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a([B)Ljava/lang/String;
    .locals 6

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v0, v3

    aput-char v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method private a([Ljava/security/cert/Certificate;Ljava/util/List;Lbr/com/topaz/d/f$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lbr/com/topaz/d/f$a;",
            ")V"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    instance-of v3, v2, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/security/cert/X509Certificate;

    :try_start_0
    invoke-direct {p0, v2}, Lbr/com/topaz/d/f;->a(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lbr/com/topaz/d/f;->a:Lbr/com/topaz/d/b;

    invoke-virtual {v3, v2}, Lbr/com/topaz/d/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lbr/com/topaz/d/f;->a:Lbr/com/topaz/d/b;

    invoke-interface {p3, p1}, Lbr/com/topaz/d/f$a;->a(Lbr/com/topaz/d/b;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;ILbr/com/topaz/d/f$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lbr/com/topaz/d/f$a;",
            ")V"
        }
    .end annotation

    new-instance v0, Lbr/com/topaz/d/b;

    invoke-direct {v0}, Lbr/com/topaz/d/b;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/d/f;->a:Lbr/com/topaz/d/b;

    invoke-virtual {v0, p1}, Lbr/com/topaz/d/b;->b(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1, p3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p1

    invoke-direct {p0, p1, p2, p4}, Lbr/com/topaz/d/f;->a([Ljava/security/cert/Certificate;Ljava/util/List;Lbr/com/topaz/d/f$a;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object p1, p0, Lbr/com/topaz/d/f;->a:Lbr/com/topaz/d/b;

    const/16 p2, 0x18

    goto :goto_0

    :catch_1
    iget-object p1, p0, Lbr/com/topaz/d/f;->a:Lbr/com/topaz/d/b;

    const/16 p2, 0x19

    goto :goto_0

    :catch_2
    iget-object p1, p0, Lbr/com/topaz/d/f;->a:Lbr/com/topaz/d/b;

    const/16 p2, 0x17

    :goto_0
    invoke-virtual {p1, p2}, Lbr/com/topaz/d/b;->a(I)V

    iget-object p1, p0, Lbr/com/topaz/d/f;->a:Lbr/com/topaz/d/b;

    invoke-interface {p4, p1}, Lbr/com/topaz/d/f$a;->a(Lbr/com/topaz/d/b;)V

    :goto_1
    return-void
.end method
