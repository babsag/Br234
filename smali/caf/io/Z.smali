.class public Lcaf/io/Z;
.super Ljava/lang/Object;
.source "Server.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcaf/io/O;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static b:Lcaf/io/e0;


# instance fields
.field private final a:Lcaf/io/O;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcaf/io/d;ILcom/combateafraude/passivefaceliveness/input/ProxySettings;Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcaf/io/d;",
            "I",
            "Lcom/combateafraude/passivefaceliveness/input/ProxySettings;",
            "Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;",
            "Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p3

    .line 4
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 5
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 6
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 7
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 8
    invoke-direct {p0, p2, v0, p5, p6}, Lcaf/io/Z;->e(Lcaf/io/d;Lokhttp3/OkHttpClient$Builder;Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;)V

    if-eqz p7, :cond_0

    .line 9
    invoke-static {}, Lcaf/io/m;->a()Lokhttp3/tls/HandshakeCertificates;

    move-result-object p3

    .line 10
    invoke-virtual {p3}, Lokhttp3/tls/HandshakeCertificates;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p6

    invoke-virtual {p3}, Lokhttp3/tls/HandshakeCertificates;->trustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object p3

    invoke-virtual {v0, p6, p3}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    if-eqz p4, :cond_1

    .line 11
    invoke-virtual {p5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const/4 p5, 0x1

    invoke-direct {p0, v0, p4, p3, p5}, Lcaf/io/Z;->f(Lokhttp3/OkHttpClient$Builder;Lcom/combateafraude/passivefaceliveness/input/ProxySettings;Landroid/content/Context;Z)V

    .line 12
    :cond_1
    sget-object p3, Lcaf/io/Z;->b:Lcaf/io/e0;

    invoke-virtual {p2, p3}, Lcaf/io/d;->a(Lcaf/io/e0;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-direct {p0, p2, v0}, Lcaf/io/Z;->d(Ljava/lang/String;Lokhttp3/OkHttpClient$Builder;)Lretrofit2/Retrofit;

    move-result-object p2

    .line 14
    invoke-virtual {p2, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcaf/io/O;

    iput-object p1, p0, Lcaf/io/Z;->a:Lcaf/io/O;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Authenticator;
    .locals 1

    .line 1
    new-instance v0, Lcaf/io/a1;

    invoke-direct {v0, p1, p2}, Lcaf/io/a1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic c(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lokhttp3/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p3}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    const-wide p2, -0x9e83da67cb6L

    invoke-static {p2, p3}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2, p0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/lang/String;Lokhttp3/OkHttpClient$Builder;)Lretrofit2/Retrofit;
    .locals 1

    .line 1
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 3
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    return-object p1
.end method

.method private e(Lcaf/io/d;Lokhttp3/OkHttpClient$Builder;Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcaf/io/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcaf/io/c0;

    invoke-direct {v0}, Lcaf/io/c0;-><init>()V

    invoke-virtual {p2, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcaf/io/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcaf/io/v;

    invoke-direct {v0, p3, p4}, Lcaf/io/v;-><init>(Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;)V

    invoke-virtual {p2, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcaf/io/d;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcaf/io/n;

    invoke-direct {p1}, Lcaf/io/n;-><init>()V

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_2
    return-void
.end method

.method private f(Lokhttp3/OkHttpClient$Builder;Lcom/combateafraude/passivefaceliveness/input/ProxySettings;Landroid/content/Context;Z)V
    .locals 4

    const-wide v0, -0x93d3da67cb6L

    .line 1
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x94b3da67cb6L

    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-wide v0, -0x9503da67cb6L

    .line 2
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-wide v0, -0x95f3da67cb6L

    .line 3
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-wide v0, -0x96e3da67cb6L

    .line 4
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x97d3da67cb6L

    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-wide v0, -0x9823da67cb6L

    .line 5
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-wide v0, -0x9923da67cb6L

    .line 6
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->getUser()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide v0, -0x9a23da67cb6L

    .line 8
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-wide v0, -0x9b13da67cb6L

    .line 9
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-wide v0, -0x9c43da67cb6L

    .line 10
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-wide v0, -0x9d43da67cb6L

    .line 11
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    :cond_0
    invoke-virtual {p1, p4}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 13
    :try_start_0
    new-instance p4, Ljava/net/Proxy;

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->getHostname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {p4, v0, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {p1, p4}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;
    :try_end_0
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 14
    invoke-virtual {p4}, Landroid/os/NetworkOnMainThreadException;->printStackTrace()V

    .line 15
    :goto_0
    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->hasAuthentication()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 16
    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->getUser()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcaf/io/Z;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Authenticator;

    move-result-object p4

    invoke-virtual {p1, p4}, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    .line 17
    :cond_1
    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->hasProxyCertificate()Z

    move-result p4

    if-nez p4, :cond_2

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->hasMTLSCertificate()Z

    move-result p4

    if-eqz p4, :cond_5

    .line 18
    :cond_2
    monitor-enter p0

    .line 19
    :try_start_1
    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->hasMTLSCertificate()Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    const-wide v1, -0x9243da67cb6L

    .line 20
    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p4

    .line 21
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->getMTLSCertificate()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 22
    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->getMTLSPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    goto :goto_1

    .line 23
    :cond_3
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p4

    .line 24
    invoke-virtual {p4, v0, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 25
    :goto_1
    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->hasProxyCertificate()Z

    move-result v1

    if-eqz v1, :cond_4

    const-wide v1, -0x92b3da67cb6L

    .line 26
    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 27
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->getProxyCertificate()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p3

    .line 28
    invoke-virtual {v1, p3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p3

    const-wide v1, -0x9313da67cb6L

    .line 29
    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1, p3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    :cond_4
    const-wide v1, -0x9343da67cb6L

    .line 30
    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object p3

    .line 31
    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->getMTLSPassword()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 32
    invoke-virtual {p3}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object p2

    .line 33
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p3

    .line 34
    invoke-virtual {p3, p4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    const-wide v1, -0x9393da67cb6L

    .line 35
    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p4

    .line 36
    invoke-virtual {p3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    invoke-virtual {p4, p2, v1, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 37
    invoke-virtual {p4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    invoke-virtual {p3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p3

    const/4 p4, 0x0

    aget-object p3, p3, p4

    check-cast p3, Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {p1, p2, p3}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 38
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    :cond_5
    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public static synthetic g(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcaf/io/Z;->c(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lcaf/io/O;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcaf/io/Z;->a:Lcaf/io/O;

    return-object v0
.end method
