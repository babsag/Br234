.class public final Lcaf/io/m;
.super Ljava/lang/Object;
.source "CertificateHelper.java"


# static fields
.field static final a:Ljava/security/cert/X509Certificate;

.field static final b:Ljava/security/cert/X509Certificate;

.field static final c:Ljava/security/cert/X509Certificate;

.field static final d:Ljava/security/cert/X509Certificate;

.field static final e:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, -0x9fc3da67cb6L

    .line 1
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/tls/Certificates;->decodeCertificatePem(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    sput-object v0, Lcaf/io/m;->a:Ljava/security/cert/X509Certificate;

    const-wide v0, -0xea13da67cb6L

    .line 2
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/tls/Certificates;->decodeCertificatePem(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    sput-object v0, Lcaf/io/m;->b:Ljava/security/cert/X509Certificate;

    const-wide v0, -0x15fd3da67cb6L

    .line 3
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/tls/Certificates;->decodeCertificatePem(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    sput-object v0, Lcaf/io/m;->c:Ljava/security/cert/X509Certificate;

    const-wide v0, -0x188e3da67cb6L

    .line 4
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/tls/Certificates;->decodeCertificatePem(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    sput-object v0, Lcaf/io/m;->d:Ljava/security/cert/X509Certificate;

    const-wide v0, -0x1b703da67cb6L

    .line 5
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/tls/Certificates;->decodeCertificatePem(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    sput-object v0, Lcaf/io/m;->e:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public static a()Lokhttp3/tls/HandshakeCertificates;
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/tls/HandshakeCertificates$Builder;

    invoke-direct {v0}, Lokhttp3/tls/HandshakeCertificates$Builder;-><init>()V

    sget-object v1, Lcaf/io/m;->a:Ljava/security/cert/X509Certificate;

    .line 2
    invoke-virtual {v0, v1}, Lokhttp3/tls/HandshakeCertificates$Builder;->addTrustedCertificate(Ljava/security/cert/X509Certificate;)Lokhttp3/tls/HandshakeCertificates$Builder;

    move-result-object v0

    sget-object v1, Lcaf/io/m;->b:Ljava/security/cert/X509Certificate;

    .line 3
    invoke-virtual {v0, v1}, Lokhttp3/tls/HandshakeCertificates$Builder;->addTrustedCertificate(Ljava/security/cert/X509Certificate;)Lokhttp3/tls/HandshakeCertificates$Builder;

    move-result-object v0

    sget-object v1, Lcaf/io/m;->c:Ljava/security/cert/X509Certificate;

    .line 4
    invoke-virtual {v0, v1}, Lokhttp3/tls/HandshakeCertificates$Builder;->addTrustedCertificate(Ljava/security/cert/X509Certificate;)Lokhttp3/tls/HandshakeCertificates$Builder;

    move-result-object v0

    sget-object v1, Lcaf/io/m;->d:Ljava/security/cert/X509Certificate;

    .line 5
    invoke-virtual {v0, v1}, Lokhttp3/tls/HandshakeCertificates$Builder;->addTrustedCertificate(Ljava/security/cert/X509Certificate;)Lokhttp3/tls/HandshakeCertificates$Builder;

    move-result-object v0

    sget-object v1, Lcaf/io/m;->e:Ljava/security/cert/X509Certificate;

    .line 6
    invoke-virtual {v0, v1}, Lokhttp3/tls/HandshakeCertificates$Builder;->addTrustedCertificate(Ljava/security/cert/X509Certificate;)Lokhttp3/tls/HandshakeCertificates$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lokhttp3/tls/HandshakeCertificates$Builder;->build()Lokhttp3/tls/HandshakeCertificates;

    move-result-object v0

    return-object v0
.end method
