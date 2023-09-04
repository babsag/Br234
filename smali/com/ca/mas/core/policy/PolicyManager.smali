.class public Lcom/ca/mas/core/policy/PolicyManager;
.super Ljava/lang/Object;
.source "PolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/core/policy/PolicyManager$Route;
    }
.end annotation


# instance fields
.field private final a:Lcom/ca/mas/core/context/MssoContext;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ca/mas/core/policy/MssoAssertion;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ca/mas/core/policy/MssoAssertion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ca/mas/core/context/MssoContext;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/ca/mas/core/policy/PolicyManager;->b:Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/ca/mas/core/policy/PolicyManager;->c:Ljava/util/Map;

    move-object/from16 v2, p1

    .line 4
    iput-object v2, v0, Lcom/ca/mas/core/policy/PolicyManager;->a:Lcom/ca/mas/core/context/MssoContext;

    .line 5
    new-instance v2, Lcom/ca/mas/core/policy/g;

    invoke-direct {v2}, Lcom/ca/mas/core/policy/g;-><init>()V

    .line 6
    new-instance v3, Lcom/ca/mas/core/policy/f;

    invoke-direct {v3}, Lcom/ca/mas/core/policy/f;-><init>()V

    .line 7
    new-instance v4, Lcom/ca/mas/core/policy/ClientCredentialAssertion;

    invoke-direct {v4}, Lcom/ca/mas/core/policy/ClientCredentialAssertion;-><init>()V

    .line 8
    new-instance v5, Lcom/ca/mas/core/policy/c;

    invoke-direct {v5}, Lcom/ca/mas/core/policy/c;-><init>()V

    .line 9
    new-instance v6, Lcom/ca/mas/core/policy/a;

    invoke-direct {v6}, Lcom/ca/mas/core/policy/a;-><init>()V

    .line 10
    new-instance v7, Lcom/ca/mas/core/policy/d;

    invoke-direct {v7}, Lcom/ca/mas/core/policy/d;-><init>()V

    .line 11
    new-instance v8, Lcom/ca/mas/core/policy/h;

    invoke-direct {v8}, Lcom/ca/mas/core/policy/h;-><init>()V

    .line 12
    new-instance v9, Lcom/ca/mas/core/policy/b;

    invoke-direct {v9}, Lcom/ca/mas/core/policy/b;-><init>()V

    .line 13
    new-instance v10, Lcom/ca/mas/core/policy/e;

    invoke-direct {v10}, Lcom/ca/mas/core/policy/e;-><init>()V

    const/16 v11, 0x9

    new-array v11, v11, [Lcom/ca/mas/core/policy/MssoAssertion;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    const/4 v13, 0x1

    aput-object v3, v11, v13

    const/4 v14, 0x2

    aput-object v4, v11, v14

    const/4 v15, 0x3

    aput-object v5, v11, v15

    const/4 v5, 0x4

    aput-object v6, v11, v5

    const/4 v6, 0x5

    aput-object v7, v11, v6

    const/16 v16, 0x6

    aput-object v8, v11, v16

    const/4 v8, 0x7

    aput-object v9, v11, v8

    const/16 v8, 0x8

    aput-object v10, v11, v8

    .line 14
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v0, Lcom/ca/mas/core/policy/PolicyManager;->d:Ljava/util/List;

    .line 15
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v8

    .line 16
    invoke-virtual {v8}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v8

    const-string v9, "msso.url.resource_owner_logout"

    .line 17
    invoke-interface {v8, v9}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getTokenUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    .line 18
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v9

    .line 19
    invoke-virtual {v9}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v9

    const-string v11, "msso.url.usersession_logout_endpoint_path"

    .line 20
    invoke-interface {v9, v11}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getTokenUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v9

    .line 21
    invoke-virtual {v8}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Lcom/ca/mas/core/policy/MssoAssertion;

    aput-object v2, v6, v12

    aput-object v3, v6, v13

    aput-object v4, v6, v14

    aput-object v7, v6, v15

    aput-object v10, v6, v5

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {v9}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    new-array v5, v5, [Lcom/ca/mas/core/policy/MssoAssertion;

    aput-object v2, v5, v12

    aput-object v4, v5, v13

    aput-object v7, v5, v14

    aput-object v10, v5, v15

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/ca/mas/core/policy/RequestInfo;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/core/policy/RequestInfo;",
            "Ljava/util/List<",
            "Lcom/ca/mas/core/policy/MssoAssertion;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/error/MAGException;,
            Lcom/ca/mas/core/error/MAGServerException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/policy/PolicyManager;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ca/mas/core/policy/MssoAssertion;

    .line 3
    iget-object v2, p0, Lcom/ca/mas/core/policy/PolicyManager;->a:Lcom/ca/mas/core/context/MssoContext;

    invoke-interface {v1, v2, p1}, Lcom/ca/mas/core/policy/MssoAssertion;->processRequest(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/policy/RequestInfo;)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b(Lcom/ca/mas/core/policy/RequestInfo;Lcom/ca/mas/foundation/MASResponse;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/core/policy/RequestInfo;",
            "Lcom/ca/mas/foundation/MASResponse;",
            "Ljava/util/List<",
            "Lcom/ca/mas/core/policy/MssoAssertion;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/error/MAGException;,
            Lcom/ca/mas/core/error/MAGServerException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/policy/PolicyManager;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ca/mas/core/policy/MssoAssertion;

    .line 3
    iget-object v2, p0, Lcom/ca/mas/core/policy/PolicyManager;->a:Lcom/ca/mas/core/context/MssoContext;

    invoke-interface {v1, v2, p1, p2}, Lcom/ca/mas/core/policy/MssoAssertion;->processResponse(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/policy/RequestInfo;Lcom/ca/mas/foundation/MASResponse;)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/policy/PolicyManager;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ca/mas/core/policy/MssoAssertion;

    .line 2
    invoke-interface {v1}, Lcom/ca/mas/core/policy/MssoAssertion;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public execute(Lcom/ca/mas/core/policy/RequestInfo;Lcom/ca/mas/core/policy/PolicyManager$Route;)Lcom/ca/mas/foundation/MASResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/core/policy/RequestInfo;",
            "Lcom/ca/mas/core/policy/PolicyManager$Route<",
            "Lcom/ca/mas/foundation/MASResponse;",
            ">;)",
            "Lcom/ca/mas/foundation/MASResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/error/MAGException;,
            Lcom/ca/mas/core/error/MAGServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ca/mas/core/policy/RequestInfo;->getRequest()Lcom/ca/mas/core/request/MAGInternalRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->getURL()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/ca/mas/core/policy/RequestInfo;->getRequest()Lcom/ca/mas/core/request/MAGInternalRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/ca/mas/core/policy/PolicyManager;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/ca/mas/core/policy/PolicyManager;->d:Ljava/util/List;

    .line 4
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/ca/mas/core/policy/PolicyManager;->a(Lcom/ca/mas/core/policy/RequestInfo;Ljava/util/List;)V

    .line 5
    invoke-interface {p2}, Lcom/ca/mas/core/policy/PolicyManager$Route;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ca/mas/foundation/MASResponse;

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lcom/ca/mas/core/policy/PolicyManager;->b(Lcom/ca/mas/core/policy/RequestInfo;Lcom/ca/mas/foundation/MASResponse;Ljava/util/List;)V

    return-object p2
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/policy/PolicyManager;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ca/mas/core/policy/MssoAssertion;

    .line 3
    iget-object v2, p0, Lcom/ca/mas/core/policy/PolicyManager;->a:Lcom/ca/mas/core/context/MssoContext;

    invoke-interface {v1, v2, p1}, Lcom/ca/mas/core/policy/MssoAssertion;->init(Lcom/ca/mas/core/context/MssoContext;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method
