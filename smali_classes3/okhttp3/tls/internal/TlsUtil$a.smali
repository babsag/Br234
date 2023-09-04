.class final Lokhttp3/tls/internal/TlsUtil$a;
.super Lkotlin/jvm/internal/Lambda;
.source "TlsUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/tls/internal/TlsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lokhttp3/tls/HandshakeCertificates;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lokhttp3/tls/internal/TlsUtil$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/tls/internal/TlsUtil$a;

    invoke-direct {v0}, Lokhttp3/tls/internal/TlsUtil$a;-><init>()V

    sput-object v0, Lokhttp3/tls/internal/TlsUtil$a;->b:Lokhttp3/tls/internal/TlsUtil$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/tls/HandshakeCertificates;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lokhttp3/tls/HeldCertificate$Builder;

    invoke-direct {v0}, Lokhttp3/tls/HeldCertificate$Builder;-><init>()V

    const-string v1, "localhost"

    .line 2
    invoke-virtual {v0, v1}, Lokhttp3/tls/HeldCertificate$Builder;->commonName(Ljava/lang/String;)Lokhttp3/tls/HeldCertificate$Builder;

    move-result-object v0

    .line 3
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const-string v2, "InetAddress.getByName(\"localhost\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InetAddress.getByName(\"l\u2026lhost\").canonicalHostName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lokhttp3/tls/HeldCertificate$Builder;->addSubjectAlternativeName(Ljava/lang/String;)Lokhttp3/tls/HeldCertificate$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lokhttp3/tls/HeldCertificate$Builder;->build()Lokhttp3/tls/HeldCertificate;

    move-result-object v0

    .line 5
    new-instance v1, Lokhttp3/tls/HandshakeCertificates$Builder;

    invoke-direct {v1}, Lokhttp3/tls/HandshakeCertificates$Builder;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    .line 6
    invoke-virtual {v1, v0, v2}, Lokhttp3/tls/HandshakeCertificates$Builder;->heldCertificate(Lokhttp3/tls/HeldCertificate;[Ljava/security/cert/X509Certificate;)Lokhttp3/tls/HandshakeCertificates$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lokhttp3/tls/HeldCertificate;->certificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/tls/HandshakeCertificates$Builder;->addTrustedCertificate(Ljava/security/cert/X509Certificate;)Lokhttp3/tls/HandshakeCertificates$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lokhttp3/tls/HandshakeCertificates$Builder;->build()Lokhttp3/tls/HandshakeCertificates;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/tls/internal/TlsUtil$a;->a()Lokhttp3/tls/HandshakeCertificates;

    move-result-object v0

    return-object v0
.end method
