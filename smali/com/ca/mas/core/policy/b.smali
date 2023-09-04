.class Lcom/ca/mas/core/policy/b;
.super Ljava/lang/Object;
.source "CustomHeaderAssertion.java"

# interfaces
.implements Lcom/ca/mas/core/policy/MssoAssertion;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public init(Lcom/ca/mas/core/context/MssoContext;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lcom/ca/mas/core/context/MssoContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public processRequest(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/policy/RequestInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/ca/mas/core/policy/RequestInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "com.ca.mas.core.service.req.extra.additional.headers"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-virtual {p2}, Lcom/ca/mas/core/policy/RequestInfo;->getRequest()Lcom/ca/mas/core/request/MAGInternalRequest;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/ca/mas/core/request/MAGInternalRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public processResponse(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/policy/RequestInfo;Lcom/ca/mas/foundation/MASResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/error/MAGServerException;
        }
    .end annotation

    return-void
.end method
