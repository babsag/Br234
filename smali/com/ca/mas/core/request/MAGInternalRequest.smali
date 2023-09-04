.class public Lcom/ca/mas/core/request/MAGInternalRequest;
.super Lcom/ca/mas/core/request/internal/MAGRequestProxy;
.source "MAGInternalRequest.java"


# instance fields
.field private a:Ljava/util/Map;
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

.field private b:Lcom/ca/mas/core/context/MssoContext;


# direct methods
.method public constructor <init>(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/foundation/MASRequest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/request/internal/MAGRequestProxy;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/core/request/MAGInternalRequest;->a:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/ca/mas/core/request/MAGInternalRequest;->b:Lcom/ca/mas/core/context/MssoContext;

    .line 4
    iput-object p2, p0, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->request:Lcom/ca/mas/foundation/MASRequest;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/request/MAGInternalRequest;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/ca/mas/core/request/MAGInternalRequest;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-super {p0}, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2
    iget-object v1, p0, Lcom/ca/mas/core/request/MAGInternalRequest;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    iget-object v3, p0, Lcom/ca/mas/core/request/MAGInternalRequest;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 4
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRequest()Lcom/ca/mas/foundation/MASRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->request:Lcom/ca/mas/foundation/MASRequest;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->getScope()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/request/MAGInternalRequest;->b:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v0}, Lcom/ca/mas/core/context/MssoContext;->getConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getClientScope()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isLocalRequest()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->request:Lcom/ca/mas/foundation/MASRequest;

    instance-of v0, v0, Lcom/ca/mas/core/request/internal/LocalRequest;

    return v0
.end method
