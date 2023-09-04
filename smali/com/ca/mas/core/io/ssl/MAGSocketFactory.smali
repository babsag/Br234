.class public Lcom/ca/mas/core/io/ssl/MAGSocketFactory;
.super Ljava/lang/Object;
.source "MAGSocketFactory.java"


# static fields
.field private static final a:Ljava/security/SecureRandom;


# instance fields
.field private b:Lcom/ca/mas/foundation/MASSecurityConfiguration;

.field private c:Ljava/security/PrivateKey;

.field private d:[Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/ca/mas/core/io/ssl/MAGSocketFactory;->a:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Lcom/ca/mas/foundation/MASSecurityConfiguration;)V
    .locals 1
    .param p1    # Lcom/ca/mas/foundation/MASSecurityConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ca/mas/core/io/ssl/MAGSocketFactory;->c:Ljava/security/PrivateKey;

    .line 3
    iput-object v0, p0, Lcom/ca/mas/core/io/ssl/MAGSocketFactory;->d:[Ljava/security/cert/X509Certificate;

    .line 4
    iput-object p1, p0, Lcom/ca/mas/core/io/ssl/MAGSocketFactory;->b:Lcom/ca/mas/foundation/MASSecurityConfiguration;

    .line 5
    :try_start_0
    invoke-static {}, Lcom/ca/mas/foundation/MASConfiguration;->getCurrentConfiguration()Lcom/ca/mas/foundation/MASConfiguration;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ca/mas/core/store/StorageProvider;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/ca/mas/core/store/TokenProvider;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/io/ssl/MAGSocketFactory;->c:Ljava/security/PrivateKey;

    .line 7
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ca/mas/core/store/StorageProvider;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/ca/mas/core/store/TokenProvider;->getClientCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/io/ssl/MAGSocketFactory;->d:[Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private a()Ljavax/net/ssl/SSLContext;
    .locals 7

    :try_start_0
    const-string v0, "TLS"

    .line 1
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/ca/mas/core/io/http/TrustedCertificateConfigurationTrustManager;

    iget-object v2, p0, Lcom/ca/mas/core/io/ssl/MAGSocketFactory;->b:Lcom/ca/mas/foundation/MASSecurityConfiguration;

    invoke-direct {v1, v2}, Lcom/ca/mas/core/io/http/TrustedCertificateConfigurationTrustManager;-><init>(Lcom/ca/mas/foundation/MASSecurityConfiguration;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 3
    iget-object v1, p0, Lcom/ca/mas/core/io/ssl/MAGSocketFactory;->c:Ljava/security/PrivateKey;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ca/mas/core/io/ssl/MAGSocketFactory;->d:[Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v2, [Ljavax/net/ssl/KeyManager;

    new-instance v2, Lcom/ca/mas/core/io/http/SingleKeyX509KeyManager;

    iget-object v5, p0, Lcom/ca/mas/core/io/ssl/MAGSocketFactory;->c:Ljava/security/PrivateKey;

    iget-object v6, p0, Lcom/ca/mas/core/io/ssl/MAGSocketFactory;->d:[Ljava/security/cert/X509Certificate;

    invoke-direct {v2, v5, v6}, Lcom/ca/mas/core/io/http/SingleKeyX509KeyManager;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    aput-object v2, v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    new-array v1, v4, [Ljavax/net/ssl/KeyManager;

    .line 4
    :goto_1
    sget-object v2, Lcom/ca/mas/core/io/ssl/MAGSocketFactory;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, v3, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create SSL Context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public createTLSSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    .line 1
    new-instance v0, Lcom/ca/mas/core/io/ssl/a;

    invoke-direct {p0}, Lcom/ca/mas/core/io/ssl/MAGSocketFactory;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ca/mas/core/io/ssl/a;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    return-object v0
.end method
