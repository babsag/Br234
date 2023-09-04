.class public final Lokhttp3/tls/HandshakeCertificates$Builder;
.super Ljava/lang/Object;
.source "HandshakeCertificates.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/tls/HandshakeCertificates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ)\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050\u0004\"\u00020\u0005\u00a2\u0006\u0004\u0008\u0003\u0010\u0007J\u0015\u0010\t\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u001e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00168\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00168\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0018R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006 "
    }
    d2 = {
        "Lokhttp3/tls/HandshakeCertificates$Builder;",
        "",
        "Lokhttp3/tls/HeldCertificate;",
        "heldCertificate",
        "",
        "Ljava/security/cert/X509Certificate;",
        "intermediates",
        "(Lokhttp3/tls/HeldCertificate;[Ljava/security/cert/X509Certificate;)Lokhttp3/tls/HandshakeCertificates$Builder;",
        "certificate",
        "addTrustedCertificate",
        "(Ljava/security/cert/X509Certificate;)Lokhttp3/tls/HandshakeCertificates$Builder;",
        "addPlatformTrustedCertificates",
        "()Lokhttp3/tls/HandshakeCertificates$Builder;",
        "",
        "hostname",
        "addInsecureHost",
        "(Ljava/lang/String;)Lokhttp3/tls/HandshakeCertificates$Builder;",
        "Lokhttp3/tls/HandshakeCertificates;",
        "build",
        "()Lokhttp3/tls/HandshakeCertificates;",
        "b",
        "[Ljava/security/cert/X509Certificate;",
        "",
        "d",
        "Ljava/util/List;",
        "insecureHosts",
        "c",
        "trustedCertificates",
        "a",
        "Lokhttp3/tls/HeldCertificate;",
        "<init>",
        "()V",
        "okhttp-tls"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private a:Lokhttp3/tls/HeldCertificate;

.field private b:[Ljava/security/cert/X509Certificate;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/tls/HandshakeCertificates$Builder;->c:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/tls/HandshakeCertificates$Builder;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addInsecureHost(Ljava/lang/String;)Lokhttp3/tls/HandshakeCertificates$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "hostname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/tls/HandshakeCertificates$Builder;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addPlatformTrustedCertificates()Lokhttp3/tls/HandshakeCertificates$Builder;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform;->platformTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lokhttp3/tls/HandshakeCertificates$Builder;->c:Ljava/util/List;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addTrustedCertificate(Ljava/security/cert/X509Certificate;)Lokhttp3/tls/HandshakeCertificates$Builder;
    .locals 1
    .param p1    # Ljava/security/cert/X509Certificate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "certificate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/tls/HandshakeCertificates$Builder;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Lokhttp3/tls/HandshakeCertificates;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/HandshakeCertificates$Builder;->d:Ljava/util/List;

    invoke-static {v0}, Lokhttp3/internal/Util;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lokhttp3/tls/HandshakeCertificates$Builder;->a:Lokhttp3/tls/HeldCertificate;

    iget-object v2, p0, Lokhttp3/tls/HandshakeCertificates$Builder;->b:[Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    :goto_0
    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/X509Certificate;

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Lokhttp3/tls/internal/TlsUtil;->newKeyManager(Ljava/lang/String;Lokhttp3/tls/HeldCertificate;[Ljava/security/cert/X509Certificate;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lokhttp3/tls/HandshakeCertificates$Builder;->c:Ljava/util/List;

    invoke-static {v3, v2, v0}, Lokhttp3/tls/internal/TlsUtil;->newTrustManager(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 4
    new-instance v2, Lokhttp3/tls/HandshakeCertificates;

    invoke-direct {v2, v1, v0, v3}, Lokhttp3/tls/HandshakeCertificates;-><init>(Ljavax/net/ssl/X509KeyManager;Ljavax/net/ssl/X509TrustManager;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method

.method public final varargs heldCertificate(Lokhttp3/tls/HeldCertificate;[Ljava/security/cert/X509Certificate;)Lokhttp3/tls/HandshakeCertificates$Builder;
    .locals 1
    .param p1    # Lokhttp3/tls/HeldCertificate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/security/cert/X509Certificate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "heldCertificate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intermediates"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lokhttp3/tls/HandshakeCertificates$Builder;->a:Lokhttp3/tls/HeldCertificate;

    .line 2
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;

    iput-object p1, p0, Lokhttp3/tls/HandshakeCertificates$Builder;->b:[Ljava/security/cert/X509Certificate;

    return-object p0
.end method
