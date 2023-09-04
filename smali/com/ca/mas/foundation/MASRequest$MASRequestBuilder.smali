.class public Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;
.super Ljava/lang/Object;
.source "MASRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/foundation/MASRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MASRequestBuilder"
.end annotation


# instance fields
.field private a:Ljava/net/URL;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Lcom/ca/mas/foundation/MASRequestBody;

.field private e:Lcom/ca/mas/foundation/MASResponseBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ca/mas/foundation/MASResponseBody<",
            "*>;"
        }
    .end annotation
.end field

.field private f:Lcom/ca/mas/foundation/MASGrantProvider;

.field private g:Ljava/lang/String;

.field private h:Lcom/ca/mas/foundation/MASConnectionListener;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/ca/mas/foundation/MASClaims;

.field private m:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/ca/mas/foundation/MASRequest$Method;->GET:Lcom/ca/mas/foundation/MASRequest$Method;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->b:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->c:Ljava/util/Map;

    .line 15
    new-instance v0, Lcom/ca/mas/foundation/MASResponseBody;

    invoke-direct {v0}, Lcom/ca/mas/foundation/MASResponseBody;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->e:Lcom/ca/mas/foundation/MASResponseBody;

    .line 16
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getDefaultGrantProvider()Lcom/ca/mas/foundation/MASGrantProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->f:Lcom/ca/mas/foundation/MASGrantProvider;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->j:Z

    .line 18
    iput-boolean v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->k:Z

    if-eqz p1, :cond_1

    .line 19
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->a:Ljava/net/URL;

    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->a:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/ca/mas/foundation/MASRequest;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/ca/mas/foundation/MASRequest$Method;->GET:Lcom/ca/mas/foundation/MASRequest$Method;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->b:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->c:Ljava/util/Map;

    .line 34
    new-instance v0, Lcom/ca/mas/foundation/MASResponseBody;

    invoke-direct {v0}, Lcom/ca/mas/foundation/MASResponseBody;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->e:Lcom/ca/mas/foundation/MASResponseBody;

    .line 35
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getDefaultGrantProvider()Lcom/ca/mas/foundation/MASGrantProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->f:Lcom/ca/mas/foundation/MASGrantProvider;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->j:Z

    .line 37
    iput-boolean v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->k:Z

    .line 38
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->b:Ljava/lang/String;

    .line 39
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getBody()Lcom/ca/mas/foundation/MASRequestBody;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->d:Lcom/ca/mas/foundation/MASRequestBody;

    .line 40
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getGrantProvider()Lcom/ca/mas/foundation/MASGrantProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->f:Lcom/ca/mas/foundation/MASGrantProvider;

    .line 41
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getScope()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->g:Ljava/lang/String;

    .line 42
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getResponseBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->e:Lcom/ca/mas/foundation/MASResponseBody;

    .line 43
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->isPublic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->i:Z

    .line 44
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->c:Ljava/util/Map;

    .line 45
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getConnectionListener()Lcom/ca/mas/foundation/MASConnectionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->h:Lcom/ca/mas/foundation/MASConnectionListener;

    .line 46
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getURL()Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->a:Ljava/net/URL;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/ca/mas/foundation/MASRequest$Method;->GET:Lcom/ca/mas/foundation/MASRequest$Method;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->b:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->c:Ljava/util/Map;

    .line 4
    new-instance v0, Lcom/ca/mas/foundation/MASResponseBody;

    invoke-direct {v0}, Lcom/ca/mas/foundation/MASResponseBody;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->e:Lcom/ca/mas/foundation/MASResponseBody;

    .line 5
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getDefaultGrantProvider()Lcom/ca/mas/foundation/MASGrantProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->f:Lcom/ca/mas/foundation/MASGrantProvider;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->j:Z

    .line 7
    iput-boolean v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->k:Z

    if-eqz p1, :cond_1

    .line 8
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->a:Ljava/net/URL;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->a:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/ca/mas/foundation/MASRequest$Method;->GET:Lcom/ca/mas/foundation/MASRequest$Method;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->b:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->c:Ljava/util/Map;

    .line 26
    new-instance v0, Lcom/ca/mas/foundation/MASResponseBody;

    invoke-direct {v0}, Lcom/ca/mas/foundation/MASResponseBody;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->e:Lcom/ca/mas/foundation/MASResponseBody;

    .line 27
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getDefaultGrantProvider()Lcom/ca/mas/foundation/MASGrantProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->f:Lcom/ca/mas/foundation/MASGrantProvider;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->j:Z

    .line 29
    iput-boolean v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->k:Z

    .line 30
    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->a:Ljava/net/URL;

    return-void
.end method

.method static synthetic a(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Ljava/net/URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->a:Ljava/net/URL;

    return-object p0
.end method

.method static synthetic b(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Ljava/security/PrivateKey;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->m:Ljava/security/PrivateKey;

    return-object p0
.end method

.method static synthetic d(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Lcom/ca/mas/foundation/MASResponseBody;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->e:Lcom/ca/mas/foundation/MASResponseBody;

    return-object p0
.end method

.method static synthetic e(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Lcom/ca/mas/foundation/MASGrantProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->f:Lcom/ca/mas/foundation/MASGrantProvider;

    return-object p0
.end method

.method static synthetic f(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Lcom/ca/mas/foundation/MASConnectionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->h:Lcom/ca/mas/foundation/MASConnectionListener;

    return-object p0
.end method

.method static synthetic g(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->i:Z

    return p0
.end method

.method static synthetic i(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->j:Z

    return p0
.end method

.method static synthetic j(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->k:Z

    return p0
.end method

.method static synthetic k(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Lcom/ca/mas/foundation/MASRequestBody;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->d:Lcom/ca/mas/foundation/MASRequestBody;

    return-object p0
.end method

.method static synthetic l(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Lcom/ca/mas/foundation/MASClaims;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->l:Lcom/ca/mas/foundation/MASClaims;

    return-object p0
.end method

.method private m(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "https"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public build()Lcom/ca/mas/foundation/MASRequest;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v4, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->c:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5
    iget-object v4, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->c:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 6
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 9
    iget-boolean v1, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->i:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->a:Ljava/net/URL;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 11
    invoke-static {}, Lcom/ca/mas/foundation/MASConfiguration;->getCurrentConfiguration()Lcom/ca/mas/foundation/MASConfiguration;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ca/mas/foundation/MASConfiguration;->getSecurityConfiguration(Landroid/net/Uri;)Lcom/ca/mas/foundation/MASSecurityConfiguration;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    invoke-interface {v1}, Lcom/ca/mas/foundation/MASSecurityConfiguration;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->setPublic()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    .line 14
    :cond_2
    new-instance v1, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder$a;

    invoke-direct {v1, p0, v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder$a;-><init>(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;Ljava/util/Map;)V

    return-object v1
.end method

.method public clientCredential()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MASGrantProvider;->CLIENT_CREDENTIALS:Lcom/ca/mas/foundation/MASGrantProvider;

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->f:Lcom/ca/mas/foundation/MASGrantProvider;

    return-object p0
.end method

.method public connectionListener(Lcom/ca/mas/foundation/MASConnectionListener;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->h:Lcom/ca/mas/foundation/MASConnectionListener;

    return-object p0
.end method

.method public delete(Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MASRequest$Method;->DELETE:Lcom/ca/mas/foundation/MASRequest$Method;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->b:Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->d:Lcom/ca/mas/foundation/MASRequestBody;

    return-object p0
.end method

.method public get()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MASRequest$Method;->GET:Lcom/ca/mas/foundation/MASRequest$Method;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->d:Lcom/ca/mas/foundation/MASRequestBody;

    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public notifyOnCancel()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->j:Z

    return-object p0
.end method

.method public password()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MASGrantProvider;->PASSWORD:Lcom/ca/mas/foundation/MASGrantProvider;

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->f:Lcom/ca/mas/foundation/MASGrantProvider;

    return-object p0
.end method

.method public patch(Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MASRequest$Method;->PATCH:Lcom/ca/mas/foundation/MASRequest$Method;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->b:Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->d:Lcom/ca/mas/foundation/MASRequestBody;

    return-object p0
.end method

.method public post(Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MASRequest$Method;->POST:Lcom/ca/mas/foundation/MASRequest$Method;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->b:Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->d:Lcom/ca/mas/foundation/MASRequestBody;

    return-object p0
.end method

.method public put(Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MASRequest$Method;->PUT:Lcom/ca/mas/foundation/MASRequest$Method;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->b:Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->d:Lcom/ca/mas/foundation/MASRequestBody;

    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public responseBody(Lcom/ca/mas/foundation/MASResponseBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->e:Lcom/ca/mas/foundation/MASResponseBody;

    return-object p0
.end method

.method public scope(Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->g:Ljava/lang/String;

    return-object p0
.end method

.method public setPublic()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->i:Z

    return-object p0
.end method

.method public sign()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->k:Z

    return-object p0
.end method

.method public sign(Lcom/ca/mas/foundation/MASClaims;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->k:Z

    .line 3
    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->l:Lcom/ca/mas/foundation/MASClaims;

    return-object p0
.end method

.method public sign(Ljava/security/PrivateKey;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->k:Z

    .line 5
    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->m:Ljava/security/PrivateKey;

    return-object p0
.end method
