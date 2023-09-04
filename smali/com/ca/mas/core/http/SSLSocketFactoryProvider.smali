.class public Lcom/ca/mas/core/http/SSLSocketFactoryProvider;
.super Ljava/lang/Object;
.source "SSLSocketFactoryProvider.java"


# static fields
.field private static a:Lcom/ca/mas/core/http/SSLSocketFactoryProvider;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/core/http/SSLSocketFactoryProvider;

    invoke-direct {v0}, Lcom/ca/mas/core/http/SSLSocketFactoryProvider;-><init>()V

    sput-object v0, Lcom/ca/mas/core/http/SSLSocketFactoryProvider;->a:Lcom/ca/mas/core/http/SSLSocketFactoryProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/core/http/SSLSocketFactoryProvider;->b:Ljava/util/Map;

    .line 3
    sget-object v0, Lcom/ca/mas/foundation/MASConfiguration;->SECURITY_CONFIGURATION_CHANGED:Lcom/ca/mas/core/EventDispatcher;

    new-instance v1, Lcom/ca/mas/core/http/SSLSocketFactoryProvider$a;

    invoke-direct {v1, p0}, Lcom/ca/mas/core/http/SSLSocketFactoryProvider$a;-><init>(Lcom/ca/mas/core/http/SSLSocketFactoryProvider;)V

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 4
    sget-object v0, Lcom/ca/mas/foundation/MASConfiguration;->SECURITY_CONFIGURATION_RESET:Lcom/ca/mas/core/EventDispatcher;

    new-instance v1, Lcom/ca/mas/core/http/SSLSocketFactoryProvider$b;

    invoke-direct {v1, p0}, Lcom/ca/mas/core/http/SSLSocketFactoryProvider$b;-><init>(Lcom/ca/mas/core/http/SSLSocketFactoryProvider;)V

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method static synthetic a(Lcom/ca/mas/core/http/SSLSocketFactoryProvider;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/core/http/SSLSocketFactoryProvider;->b:Ljava/util/Map;

    return-object p0
.end method

.method public static getInstance()Lcom/ca/mas/core/http/SSLSocketFactoryProvider;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/http/SSLSocketFactoryProvider;->a:Lcom/ca/mas/core/http/SSLSocketFactoryProvider;

    return-object v0
.end method


# virtual methods
.method public createSSLSocketFactory(Lcom/ca/mas/foundation/MASSecurityConfiguration;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/core/io/ssl/MAGSocketFactory;

    invoke-direct {v0, p1}, Lcom/ca/mas/core/io/ssl/MAGSocketFactory;-><init>(Lcom/ca/mas/foundation/MASSecurityConfiguration;)V

    invoke-virtual {v0}, Lcom/ca/mas/core/io/ssl/MAGSocketFactory;->createTLSSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/net/URL;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/ca/mas/core/http/SSLSocketFactoryProvider;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/http/SSLSocketFactoryProvider;->getSSLSocketFactory(Landroid/net/Uri;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/ca/mas/core/http/SSLSocketFactoryProvider;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getPrimaryGatewaySocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/foundation/MASInvalidHostException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ca/mas/foundation/MASConfiguration;->getCurrentConfiguration()Lcom/ca/mas/foundation/MASConfiguration;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASConfiguration;->getGatewayHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASConfiguration;->getGatewayPort()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/ca/mas/core/http/SSLSocketFactoryProvider;->getSSLSocketFactory(Landroid/net/Uri;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSocketFactory(Landroid/net/Uri;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/foundation/MASInvalidHostException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ca/mas/foundation/MASConfiguration;->getCurrentConfiguration()Lcom/ca/mas/foundation/MASConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ca/mas/foundation/MASConfiguration;->getSecurityConfiguration(Landroid/net/Uri;)Lcom/ca/mas/foundation/MASSecurityConfiguration;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/http/SSLSocketFactoryProvider;->createSSLSocketFactory(Lcom/ca/mas/foundation/MASSecurityConfiguration;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Lcom/ca/mas/foundation/MASInvalidHostException;

    const-string v0, "Could not find hostname configuration."

    invoke-direct {p1, v0}, Lcom/ca/mas/foundation/MASInvalidHostException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
