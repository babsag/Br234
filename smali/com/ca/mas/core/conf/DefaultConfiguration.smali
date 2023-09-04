.class public Lcom/ca/mas/core/conf/DefaultConfiguration;
.super Ljava/lang/Object;
.source "DefaultConfiguration.java"

# interfaces
.implements Lcom/ca/mas/core/conf/ConfigurationProvider;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lorg/json/JSONObject;

.field private final h:Lcom/ca/mas/core/conf/Server;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ca/mas/core/cert/PublicKeyHash;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->f:Ljava/util/Map;

    .line 3
    new-instance v0, Lcom/ca/mas/core/conf/DefaultConfiguration$a;

    invoke-direct {v0, p0}, Lcom/ca/mas/core/conf/DefaultConfiguration$a;-><init>(Lcom/ca/mas/core/conf/DefaultConfiguration;)V

    iput-object v0, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->i:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->j:Ljava/util/List;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->k:Z

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->l:Ljava/util/Set;

    const-string v0, "tokenHost"

    .line 7
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "clientId"

    .line 8
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p4, :cond_0

    const-string p4, ""

    .line 9
    :cond_0
    iput-object p1, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->g:Lorg/json/JSONObject;

    .line 10
    iput-object p5, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->a:Ljava/lang/String;

    if-eqz p6, :cond_1

    .line 11
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 12
    iput-object p6, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->b:Ljava/lang/String;

    .line 14
    :goto_0
    iput-object p2, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->c:Ljava/lang/String;

    .line 15
    iput-object p8, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->d:Ljava/lang/String;

    .line 16
    iput-object p9, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->e:Ljava/lang/String;

    const-string p1, "msso.token.uri.prefix"

    .line 17
    invoke-virtual {p0, p1, p4}, Lcom/ca/mas/core/conf/DefaultConfiguration;->putProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "msso.organization"

    .line 18
    invoke-virtual {p0, p1, p7}, Lcom/ca/mas/core/conf/DefaultConfiguration;->putProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string p2, "msso.sso.enabled"

    invoke-virtual {p0, p2, p1}, Lcom/ca/mas/core/conf/DefaultConfiguration;->putProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p4, "msso.location.enabled"

    invoke-virtual {p0, p4, p2}, Lcom/ca/mas/core/conf/DefaultConfiguration;->putProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 p2, 0x1f90

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "msso.token.port.http"

    invoke-virtual {p0, p4, p2}, Lcom/ca/mas/core/conf/DefaultConfiguration;->putProperty(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p3, :cond_2

    const/16 p2, 0x20fb

    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_2
    const-string p2, "msso.token.port.https"

    .line 23
    invoke-virtual {p0, p2, p3}, Lcom/ca/mas/core/conf/DefaultConfiguration;->putProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 p2, 0x800

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "msso.cert.rsa.keybits"

    invoke-virtual {p0, p3, p2}, Lcom/ca/mas/core/conf/DefaultConfiguration;->putProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "msso.response.buffer.enabled"

    .line 25
    invoke-virtual {p0, p2, p1}, Lcom/ca/mas/core/conf/DefaultConfiguration;->putProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const/high16 p1, 0xa00000

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "msso.response.buffer.maxSize"

    invoke-virtual {p0, p2, p1}, Lcom/ca/mas/core/conf/DefaultConfiguration;->putProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    new-instance p1, Lcom/ca/mas/core/conf/Server;

    invoke-virtual {p0}, Lcom/ca/mas/core/conf/DefaultConfiguration;->getTokenHost()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/ca/mas/core/conf/DefaultConfiguration;->getTokenPort()I

    move-result p3

    invoke-virtual {p0}, Lcom/ca/mas/core/conf/DefaultConfiguration;->getPrefix()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p2, p3, p4}, Lcom/ca/mas/core/conf/Server;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->h:Lcom/ca/mas/core/conf/Server;

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "http:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public varargs addTrustedCertificateAnchors([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/error/MAGRuntimeException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->j:Ljava/util/List;

    invoke-static {v2}, Lcom/ca/mas/core/cert/CertUtils;->decodeCertFromPem(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lcom/ca/mas/core/error/MAGRuntimeException;

    const v1, 0x1876b

    invoke-direct {v0, v1, p1}, Lcom/ca/mas/core/error/MAGRuntimeException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method

.method public varargs addTrustedCertificatePinnedPublicKeyHashes([Ljava/lang/String;)V
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    iget-object v3, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->l:Ljava/util/Set;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lcom/ca/mas/core/cert/PublicKeyHash;->fromHashString(Ljava/lang/String;I)Lcom/ca/mas/core/cert/PublicKeyHash;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getClientScope()Ljava/lang/String;
    .locals 1

    const-string v0, "msso.oauth.scope"

    .line 1
    invoke-virtual {p0, v0}, Lcom/ca/mas/core/conf/DefaultConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "msso.token.uri.prefix"

    .line 1
    invoke-virtual {p0, v0}, Lcom/ca/mas/core/conf/DefaultConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRaw()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->g:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()Lcom/ca/mas/core/conf/Server;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->h:Lcom/ca/mas/core/conf/Server;

    return-object v0
.end method

.method public getTokenHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenPort()I
    .locals 1

    const-string v0, "msso.token.port.https"

    .line 1
    invoke-virtual {p0, v0}, Lcom/ca/mas/core/conf/DefaultConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/16 v0, 0x20fb

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTokenUri(Ljava/lang/String;)Ljava/net/URI;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/conf/DefaultConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ca/mas/core/conf/DefaultConfiguration;->getUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method public getTrustedCertificateAnchors()Ljava/util/Collection;
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
    iget-object v0, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getTrustedCertificatePinnedPublicKeyHashes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/ca/mas/core/cert/PublicKeyHash;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->l:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getUri(Ljava/lang/String;)Ljava/net/URI;
    .locals 7

    if-nez p1, :cond_0

    :try_start_0
    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/ca/mas/core/conf/DefaultConfiguration;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance v1, Ljava/net/URL;

    const-string v2, "https"

    invoke-virtual {p0}, Lcom/ca/mas/core/conf/DefaultConfiguration;->getTokenHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ca/mas/core/conf/DefaultConfiguration;->getTokenPort()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ca/mas/core/conf/DefaultConfiguration;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 4
    :goto_1
    new-instance v1, Lcom/ca/mas/core/error/MAGRuntimeException;

    const v2, 0x1876c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create URL for operation \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\": "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Lcom/ca/mas/core/error/MAGRuntimeException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUserInfoUri()Ljava/net/URI;
    .locals 1

    const-string v0, "mas.url.user_info"

    .line 1
    invoke-virtual {p0, v0}, Lcom/ca/mas/core/conf/DefaultConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "/openid/connect/v1/userinfo"

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ca/mas/core/conf/DefaultConfiguration;->getUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public isAlsoTrustPublicPki()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->k:Z

    return v0
.end method

.method public putProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAlsoTrustPublicPki(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ca/mas/core/conf/DefaultConfiguration;->k:Z

    return-void
.end method
