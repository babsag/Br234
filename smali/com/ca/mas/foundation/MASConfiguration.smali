.class public Lcom/ca/mas/foundation/MASConfiguration;
.super Ljava/lang/Object;
.source "MASConfiguration.java"


# static fields
.field public static ID_TOKEN_SIGN_ALG:Lcom/ca/mas/core/conf/Config;

.field public static final SECURITY_CONFIGURATION_CHANGED:Lcom/ca/mas/core/EventDispatcher;

.field public static final SECURITY_CONFIGURATION_RESET:Lcom/ca/mas/core/EventDispatcher;

.field private static a:Lcom/ca/mas/core/conf/Config;

.field private static b:Lcom/ca/mas/core/conf/Config;

.field private static c:Lcom/ca/mas/core/conf/Config;

.field private static d:Lcom/ca/mas/core/conf/Config;

.field private static e:Lcom/ca/mas/core/conf/Config;

.field private static f:Lcom/ca/mas/core/conf/Config;

.field private static g:Lcom/ca/mas/core/conf/Config;

.field private static h:Lcom/ca/mas/core/conf/Config;

.field private static i:Lcom/ca/mas/foundation/MASConfiguration;

.field private static j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/ca/mas/foundation/MASSecurityConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/ca/mas/core/conf/Config;

    const/4 v2, 0x0

    const-string v3, "mas.url.user_info"

    const-string v4, "oauth.oauth_protected_endpoints.userinfo_endpoint_path"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lcom/ca/mas/foundation/MASConfiguration;->a:Lcom/ca/mas/core/conf/Config;

    .line 2
    new-instance v1, Lcom/ca/mas/core/conf/Config;

    const-string v3, "mas.url.scim_path"

    const-string v4, "mas.scim-path"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lcom/ca/mas/foundation/MASConfiguration;->b:Lcom/ca/mas/core/conf/Config;

    .line 3
    new-instance v1, Lcom/ca/mas/core/conf/Config;

    const-string v3, "mas.url.mas_storage_path"

    const-string v4, "mas.mas-storage-path"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lcom/ca/mas/foundation/MASConfiguration;->c:Lcom/ca/mas/core/conf/Config;

    .line 4
    new-instance v1, Lcom/ca/mas/core/conf/Config;

    const-string v3, "application_name"

    const-string v4, "oauth.client.client_name"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lcom/ca/mas/foundation/MASConfiguration;->d:Lcom/ca/mas/core/conf/Config;

    .line 5
    new-instance v1, Lcom/ca/mas/core/conf/Config;

    const-string v3, "application_organization"

    const-string v4, "oauth.client.organization"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lcom/ca/mas/foundation/MASConfiguration;->e:Lcom/ca/mas/core/conf/Config;

    .line 6
    new-instance v1, Lcom/ca/mas/core/conf/Config;

    const-string v3, "application_registered_by"

    const-string v4, "oauth.client.registered_by"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lcom/ca/mas/foundation/MASConfiguration;->f:Lcom/ca/mas/core/conf/Config;

    .line 7
    new-instance v1, Lcom/ca/mas/core/conf/Config;

    const-string v3, "application_description"

    const-string v4, "oauth.client.description"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lcom/ca/mas/foundation/MASConfiguration;->g:Lcom/ca/mas/core/conf/Config;

    .line 8
    new-instance v1, Lcom/ca/mas/core/conf/Config;

    const-string v3, "application_type"

    const-string v4, "oauth.client.client_type"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lcom/ca/mas/foundation/MASConfiguration;->h:Lcom/ca/mas/core/conf/Config;

    .line 9
    new-instance v1, Lcom/ca/mas/core/conf/Config;

    const-string v3, "id_token_signed_response_alg"

    const-string v4, "oauth.client.client_ids.0.client_key_custom.openid_registration.response.id_token_signed_response_alg"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lcom/ca/mas/foundation/MASConfiguration;->ID_TOKEN_SIGN_ALG:Lcom/ca/mas/core/conf/Config;

    .line 10
    new-instance v0, Lcom/ca/mas/core/EventDispatcher;

    invoke-direct {v0}, Lcom/ca/mas/core/EventDispatcher;-><init>()V

    sput-object v0, Lcom/ca/mas/foundation/MASConfiguration;->SECURITY_CONFIGURATION_CHANGED:Lcom/ca/mas/core/EventDispatcher;

    .line 11
    new-instance v0, Lcom/ca/mas/core/EventDispatcher;

    invoke-direct {v0}, Lcom/ca/mas/core/EventDispatcher;-><init>()V

    sput-object v0, Lcom/ca/mas/foundation/MASConfiguration;->SECURITY_CONFIGURATION_RESET:Lcom/ca/mas/core/EventDispatcher;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ca/mas/foundation/MASConfiguration;->j:Ljava/util/Map;

    .line 13
    sget-object v0, Lcom/ca/mas/core/EventDispatcher;->STARTED:Lcom/ca/mas/core/EventDispatcher;

    new-instance v1, Lcom/ca/mas/foundation/MASConfiguration$a;

    invoke-direct {v1}, Lcom/ca/mas/foundation/MASConfiguration$a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 14
    sget-object v0, Lcom/ca/mas/core/EventDispatcher;->STOP:Lcom/ca/mas/core/EventDispatcher;

    new-instance v1, Lcom/ca/mas/foundation/MASConfiguration$b;

    invoke-direct {v1}, Lcom/ca/mas/foundation/MASConfiguration$b;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/ca/mas/core/conf/ConfigurationManager;->init(Landroid/content/Context;)V

    const/16 p1, 0x9

    new-array p1, p1, [Lcom/ca/mas/core/conf/Config;

    .line 5
    sget-object v1, Lcom/ca/mas/foundation/MASConfiguration;->a:Lcom/ca/mas/core/conf/Config;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    sget-object v1, Lcom/ca/mas/foundation/MASConfiguration;->b:Lcom/ca/mas/core/conf/Config;

    const/4 v2, 0x1

    aput-object v1, p1, v2

    sget-object v1, Lcom/ca/mas/foundation/MASConfiguration;->c:Lcom/ca/mas/core/conf/Config;

    const/4 v2, 0x2

    aput-object v1, p1, v2

    sget-object v1, Lcom/ca/mas/foundation/MASConfiguration;->d:Lcom/ca/mas/core/conf/Config;

    const/4 v2, 0x3

    aput-object v1, p1, v2

    sget-object v1, Lcom/ca/mas/foundation/MASConfiguration;->e:Lcom/ca/mas/core/conf/Config;

    const/4 v2, 0x4

    aput-object v1, p1, v2

    sget-object v1, Lcom/ca/mas/foundation/MASConfiguration;->f:Lcom/ca/mas/core/conf/Config;

    const/4 v2, 0x5

    aput-object v1, p1, v2

    sget-object v1, Lcom/ca/mas/foundation/MASConfiguration;->g:Lcom/ca/mas/core/conf/Config;

    const/4 v2, 0x6

    aput-object v1, p1, v2

    sget-object v1, Lcom/ca/mas/foundation/MASConfiguration;->h:Lcom/ca/mas/core/conf/Config;

    const/4 v2, 0x7

    aput-object v1, p1, v2

    sget-object v1, Lcom/ca/mas/foundation/MASConfiguration;->ID_TOKEN_SIGN_ALG:Lcom/ca/mas/core/conf/Config;

    const/16 v2, 0x8

    aput-object v1, p1, v2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/conf/ConfigurationManager;->setAppConfigs(Ljava/util/List;)V

    .line 6
    sput-object p0, Lcom/ca/mas/foundation/MASConfiguration;->i:Lcom/ca/mas/foundation/MASConfiguration;

    .line 7
    sget-object p1, Lcom/ca/mas/foundation/MASConfiguration;->SECURITY_CONFIGURATION_RESET:Lcom/ca/mas/core/EventDispatcher;

    invoke-virtual {p1}, Ljava/util/Observable;->notifyObservers()V

    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MASConfiguration;->j:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b()Lcom/ca/mas/foundation/MASConfiguration;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MASConfiguration;->i:Lcom/ca/mas/foundation/MASConfiguration;

    return-object v0
.end method

.method static c(Landroid/net/Uri;)Lcom/ca/mas/foundation/MASSecurityConfiguration;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;

    invoke-direct {v1}, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;-><init>()V

    .line 3
    invoke-virtual {v1, p0}, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->host(Landroid/net/Uri;)Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;

    move-result-object p0

    .line 4
    invoke-interface {v0}, Lcom/ca/mas/core/cert/TrustedCertificateConfiguration;->isAlsoTrustPublicPki()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->trustPublicPKI(Z)Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;

    move-result-object p0

    .line 5
    invoke-interface {v0}, Lcom/ca/mas/core/cert/TrustedCertificateConfiguration;->getTrustedCertificateAnchors()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 7
    invoke-virtual {p0, v2}, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->add(Ljava/security/cert/Certificate;)Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/ca/mas/core/cert/TrustedCertificateConfiguration;->getTrustedCertificatePinnedPublicKeyHashes()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ca/mas/core/cert/PublicKeyHash;

    .line 10
    invoke-virtual {v1}, Lcom/ca/mas/core/cert/PublicKeyHash;->getHashString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p0, v1}, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->add(Ljava/lang/String;)Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->build()Lcom/ca/mas/foundation/MASSecurityConfiguration;

    move-result-object p0

    return-object p0
.end method

.method private d(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public static getCurrentConfiguration()Lcom/ca/mas/foundation/MASConfiguration;
    .locals 2

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MASConfiguration;->i:Lcom/ca/mas/foundation/MASConfiguration;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MAS.start() has not been invoked."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addSecurityConfiguration(Lcom/ca/mas/foundation/MASSecurityConfiguration;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASSecurityConfiguration;->getHost()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ca/mas/foundation/MASConfiguration;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/ca/mas/foundation/MASConfiguration;->j:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/ca/mas/foundation/MASConfiguration;->SECURITY_CONFIGURATION_CHANGED:Lcom/ca/mas/core/EventDispatcher;

    invoke-interface {p1}, Lcom/ca/mas/foundation/MASSecurityConfiguration;->getHost()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public getApplicationDescription()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    const-string v1, "application_description"

    invoke-interface {v0, v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    const-string v1, "application_name"

    invoke-interface {v0, v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationOrganization()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    const-string v1, "application_organization"

    invoke-interface {v0, v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationRegisteredBy()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    const-string v1, "application_registered_by"

    invoke-interface {v0, v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationType()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    const-string v1, "application_type"

    invoke-interface {v0, v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCertificateAdvancedRenewTimeframe()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getCertificateAdvancedRenewTimeframe()I

    move-result v0

    return v0
.end method

.method public getEndpointPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getGatewayCertificates()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/core/cert/TrustedCertificateConfiguration;->getTrustedCertificateAnchors()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getGatewayHostName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getTokenHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGatewayPort()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getTokenPort()I

    move-result v0

    return v0
.end method

.method public getGatewayPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGatewayUrl()Ljava/net/URL;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getIdTokenSignAlg()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    const-string v1, "id_token_signed_response_alg"

    invoke-interface {v0, v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLocationIsRequired()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    const-string v1, "msso.location.enabled"

    invoke-interface {v0, v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSecurityConfiguration(Landroid/net/Uri;)Lcom/ca/mas/foundation/MASSecurityConfiguration;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/foundation/MASConfiguration;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/ca/mas/foundation/MASConfiguration;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ca/mas/foundation/MASSecurityConfiguration;

    return-object p1
.end method

.method public isEnabledPublicKeyPinning()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/core/cert/TrustedCertificateConfiguration;->getTrustedCertificatePinnedPublicKeyHashes()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/core/cert/TrustedCertificateConfiguration;->getTrustedCertificatePinnedPublicKeyHashes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledTrustedPublicPKI()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/core/cert/TrustedCertificateConfiguration;->isAlsoTrustPublicPki()Z

    move-result v0

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSsoEnabled()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    const-string v1, "msso.sso.enabled"

    invoke-interface {v0, v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public removeSecurityConfiguration(Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/foundation/MASConfiguration;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/ca/mas/foundation/MASConfiguration;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/ca/mas/foundation/MASConfiguration;->SECURITY_CONFIGURATION_CHANGED:Lcom/ca/mas/core/EventDispatcher;

    invoke-virtual {v0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setCertificateAdvancedRenewTimeframe(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/conf/ConfigurationManager;->setCertificateAdvancedRenewTimeframe(I)V

    return-void
.end method
