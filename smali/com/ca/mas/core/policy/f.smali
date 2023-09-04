.class Lcom/ca/mas/core/policy/f;
.super Ljava/lang/Object;
.source "SecureLockAssertion.java"

# interfaces
.implements Lcom/ca/mas/core/policy/MssoAssertion;


# instance fields
.field private a:Lcom/ca/mas/core/store/TokenManager;


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

    .line 1
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object p2

    iput-object p2, p0, Lcom/ca/mas/core/policy/f;->a:Lcom/ca/mas/core/store/TokenManager;

    .line 2
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object p1

    const-string p2, "ConfigurationProvider is null"

    .line 3
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public processRequest(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/policy/RequestInfo;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/ca/mas/core/policy/f;->a:Lcom/ca/mas/core/store/TokenManager;

    invoke-interface {p2}, Lcom/ca/mas/core/store/TokenProvider;->getSecureIdToken()[B

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2
    invoke-static {}, Lcom/ca/mas/core/oauth/OAuthClientUtil;->getRevokeRequest()Lcom/ca/mas/foundation/MASRequest;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    invoke-static {}, Lcom/ca/mas/core/oauth/OAuthClientUtil;->getRevokeRequest()Lcom/ca/mas/foundation/MASRequest;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->clearAccessToken()V

    .line 5
    new-instance p1, Lcom/ca/mas/core/security/SecureLockException;

    const-string p2, "The session is currently locked."

    invoke-direct {p1, p2}, Lcom/ca/mas/core/security/SecureLockException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public processResponse(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/policy/RequestInfo;Lcom/ca/mas/foundation/MASResponse;)V
    .locals 0

    return-void
.end method
