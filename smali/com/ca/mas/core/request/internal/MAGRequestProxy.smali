.class public abstract Lcom/ca/mas/core/request/internal/MAGRequestProxy;
.super Ljava/lang/Object;
.source "MAGRequestProxy.java"

# interfaces
.implements Lcom/ca/mas/foundation/MASRequest;


# instance fields
.field protected request:Lcom/ca/mas/foundation/MASRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Lcom/ca/mas/foundation/MASRequestBody;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->request:Lcom/ca/mas/foundation/MASRequest;

    invoke-interface {v0}, Lcom/ca/mas/foundation/MASRequest;->getBody()Lcom/ca/mas/foundation/MASRequestBody;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionListener()Lcom/ca/mas/foundation/MASConnectionListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->request:Lcom/ca/mas/foundation/MASRequest;

    invoke-interface {v0}, Lcom/ca/mas/foundation/MASRequest;->getConnectionListener()Lcom/ca/mas/foundation/MASConnectionListener;

    move-result-object v0

    return-object v0
.end method

.method public getGrantProvider()Lcom/ca/mas/foundation/MASGrantProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->request:Lcom/ca/mas/foundation/MASRequest;

    invoke-interface {v0}, Lcom/ca/mas/foundation/MASRequest;->getGrantProvider()Lcom/ca/mas/foundation/MASGrantProvider;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
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
    iget-object v0, p0, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->request:Lcom/ca/mas/foundation/MASRequest;

    invoke-interface {v0}, Lcom/ca/mas/foundation/MASRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->request:Lcom/ca/mas/foundation/MASRequest;

    invoke-interface {v0}, Lcom/ca/mas/foundation/MASRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBody()Lcom/ca/mas/foundation/MASResponseBody;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->request:Lcom/ca/mas/foundation/MASRequest;

    invoke-interface {v0}, Lcom/ca/mas/foundation/MASRequest;->getResponseBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v0

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->request:Lcom/ca/mas/foundation/MASRequest;

    invoke-interface {v0}, Lcom/ca/mas/foundation/MASRequest;->getScope()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->request:Lcom/ca/mas/foundation/MASRequest;

    invoke-interface {v0}, Lcom/ca/mas/foundation/MASRequest;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public isPublic()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->request:Lcom/ca/mas/foundation/MASRequest;

    invoke-interface {v0}, Lcom/ca/mas/foundation/MASRequest;->isPublic()Z

    move-result v0

    return v0
.end method

.method public notifyOnCancel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
