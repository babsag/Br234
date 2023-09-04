.class public final Lokhttp3/tls/HandshakeCertificates;
.super Ljava/lang/Object;
.source "HandshakeCertificates.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/tls/HandshakeCertificates$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001:\u0001\u0016B\u0019\u0008\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0005\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0006H\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0019\u0010\t\u001a\u00020\u00068\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\t\u0010\u0008R\u0019\u0010\u0005\u001a\u00020\u00028\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0005\u0010\u0004\u00a8\u0006\u0017"
    }
    d2 = {
        "Lokhttp3/tls/HandshakeCertificates;",
        "",
        "Ljavax/net/ssl/X509KeyManager;",
        "-deprecated_keyManager",
        "()Ljavax/net/ssl/X509KeyManager;",
        "keyManager",
        "Ljavax/net/ssl/X509TrustManager;",
        "-deprecated_trustManager",
        "()Ljavax/net/ssl/X509TrustManager;",
        "trustManager",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "sslSocketFactory",
        "()Ljavax/net/ssl/SSLSocketFactory;",
        "Ljavax/net/ssl/SSLContext;",
        "sslContext",
        "()Ljavax/net/ssl/SSLContext;",
        "b",
        "Ljavax/net/ssl/X509TrustManager;",
        "a",
        "Ljavax/net/ssl/X509KeyManager;",
        "<init>",
        "(Ljavax/net/ssl/X509KeyManager;Ljavax/net/ssl/X509TrustManager;)V",
        "Builder",
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
.field private final a:Ljavax/net/ssl/X509KeyManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljavax/net/ssl/X509TrustManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/net/ssl/X509KeyManager;Ljavax/net/ssl/X509TrustManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/tls/HandshakeCertificates;->a:Ljavax/net/ssl/X509KeyManager;

    iput-object p2, p0, Lokhttp3/tls/HandshakeCertificates;->b:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method public synthetic constructor <init>(Ljavax/net/ssl/X509KeyManager;Ljavax/net/ssl/X509TrustManager;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lokhttp3/tls/HandshakeCertificates;-><init>(Ljavax/net/ssl/X509KeyManager;Ljavax/net/ssl/X509TrustManager;)V

    return-void
.end method


# virtual methods
.method public final -deprecated_keyManager()Ljavax/net/ssl/X509KeyManager;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "keyManager"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_keyManager"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/HandshakeCertificates;->a:Ljavax/net/ssl/X509KeyManager;

    return-object v0
.end method

.method public final -deprecated_trustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "trustManager"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_trustManager"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/HandshakeCertificates;->b:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public final keyManager()Ljavax/net/ssl/X509KeyManager;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "keyManager"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/HandshakeCertificates;->a:Ljavax/net/ssl/X509KeyManager;

    return-object v0
.end method

.method public final sslContext()Ljavax/net/ssl/SSLContext;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform;->newSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljavax/net/ssl/KeyManager;

    .line 2
    iget-object v3, p0, Lokhttp3/tls/HandshakeCertificates;->a:Ljavax/net/ssl/X509KeyManager;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    iget-object v3, p0, Lokhttp3/tls/HandshakeCertificates;->b:Ljavax/net/ssl/X509TrustManager;

    aput-object v3, v1, v4

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v2, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-object v0
.end method

.method public final sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokhttp3/tls/HandshakeCertificates;->sslContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    const-string v1, "sslContext().socketFactory"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final trustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "trustManager"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/HandshakeCertificates;->b:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method
