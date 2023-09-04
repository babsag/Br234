.class public Lcom/ca/mas/core/policy/ClientCredentialAssertion;
.super Ljava/lang/Object;
.source "ClientCredentialAssertion.java"

# interfaces
.implements Lcom/ca/mas/core/policy/MssoAssertion;


# direct methods
.method public constructor <init>()V
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
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object p1

    const-string p2, "ConfigurationProvider is null"

    .line 2
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized processRequest(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/policy/RequestInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/error/MAGException;,
            Lcom/ca/mas/core/error/MAGServerException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object p2

    invoke-interface {p2}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getClientSecret()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getClientId()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    sget-boolean p1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "MAS"

    const-string p2, "Using static client ID and client secret"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getClientExpiration()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ca/mas/core/context/MssoContext;->isClientCredentialExpired(Ljava/lang/Long;)Z

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_4

    .line 8
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getStoredClientId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    sget-boolean p2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p2, :cond_3

    const-string p2, "MAS"

    const-string v0, "Client ID: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getStoredClientId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :cond_3
    monitor-exit p0

    return-void

    .line 11
    :cond_4
    :goto_0
    :try_start_2
    new-instance p2, Lcom/ca/mas/core/context/DeviceIdentifier;

    invoke-direct {p2}, Lcom/ca/mas/core/context/DeviceIdentifier;-><init>()V

    invoke-virtual {p2}, Lcom/ca/mas/core/context/UniqueIdentifier;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :try_start_3
    sget-boolean v3, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "MAS"

    const-string v4, "Retrieving dynamic client credentials"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 14
    new-instance v4, Lcom/ca/mas/core/clientcredentials/ClientCredentialsClient;

    invoke-direct {v4, p1}, Lcom/ca/mas/core/clientcredentials/ClientCredentialsClient;-><init>(Lcom/ca/mas/core/context/MssoContext;)V

    .line 15
    invoke-virtual {v4, v0, v3, p2}, Lcom/ca/mas/core/clientcredentials/ClientCredentialsClient;->getClientCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/core/token/ClientCredentials;

    move-result-object p2

    .line 16
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "MAS"

    const-string v3, "Client ID: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/ca/mas/core/token/ClientCredentials;->getClientId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_6
    invoke-virtual {p1, p2}, Lcom/ca/mas/core/context/MssoContext;->setClientCredentials(Lcom/ca/mas/core/token/ClientCredentials;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    .line 19
    :catch_0
    :try_start_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Please check your configurations: one or more configurations are wrong or incomplete"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 20
    new-instance p2, Lcom/ca/mas/core/context/MssoException;

    invoke-direct {p2, p1}, Lcom/ca/mas/core/context/MssoException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public processResponse(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/policy/RequestInfo;Lcom/ca/mas/foundation/MASResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/error/MAGStateException;
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lcom/ca/mas/core/client/ServerClient;->findErrorCode(Lcom/ca/mas/foundation/MASResponse;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "201"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance p1, Lcom/ca/mas/core/policy/exceptions/InvalidClientCredentialException;

    const-string p2, "Client is rejected by server"

    invoke-direct {p1, p2}, Lcom/ca/mas/core/policy/exceptions/InvalidClientCredentialException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
