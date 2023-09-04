.class Lcom/ca/mas/core/policy/g;
.super Ljava/lang/Object;
.source "StorageReadyAssertion.java"

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/policy/exceptions/TokenStoreUnavailableException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/ca/mas/core/store/TokenManager;->isTokenStoreReady()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/ca/mas/core/policy/exceptions/TokenStoreUnavailableException;

    invoke-direct {p1}, Lcom/ca/mas/core/policy/exceptions/TokenStoreUnavailableException;-><init>()V

    throw p1
.end method

.method public processResponse(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/policy/RequestInfo;Lcom/ca/mas/foundation/MASResponse;)V
    .locals 0

    return-void
.end method
