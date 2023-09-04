.class public Lcom/ca/mas/core/context/MssoContext;
.super Ljava/lang/Object;
.source "MssoContext.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/ca/mas/core/conf/ConfigurationProvider;

.field private c:Lcom/ca/mas/core/policy/PolicyManager;

.field private d:Lcom/ca/mas/core/store/TokenManager;

.field private e:Lcom/ca/mas/core/store/OAuthTokenContainer;

.field private f:Lcom/ca/mas/core/store/ClientCredentialContainer;

.field private g:Ljava/lang/String;

.field private volatile h:Lcom/ca/mas/core/http/MAGHttpClient;

.field private volatile i:Lcom/ca/mas/foundation/MASAuthCredentials;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->b:Lcom/ca/mas/core/conf/ConfigurationProvider;

    const-string v1, "msso.sso.enabled"

    invoke-interface {v0, v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b(Lcom/ca/mas/core/error/MAGServerException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/policy/exceptions/RetryRequestException;,
            Lcom/ca/mas/core/error/MAGServerException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext;->getCredentials()Lcom/ca/mas/foundation/MASAuthCredentials;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext;->getCredentials()Lcom/ca/mas/foundation/MASAuthCredentials;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/foundation/MASAuthCredentials;->isReusable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext;->clearCredentials()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/ca/mas/core/error/MAGServerException;->getErrorCode()I

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "201"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "202"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "206"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lcom/ca/mas/core/policy/exceptions/CertificateExpiredException;

    invoke-direct {v0, p1}, Lcom/ca/mas/core/policy/exceptions/CertificateExpiredException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext;->clearCredentials()V

    .line 10
    throw p1

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext;->clearCredentials()V

    .line 12
    new-instance v0, Lcom/ca/mas/core/auth/AuthenticationException;

    invoke-direct {v0, p1}, Lcom/ca/mas/core/auth/AuthenticationException;-><init>(Lcom/ca/mas/core/error/MAGServerException;)V

    throw v0

    .line 13
    :cond_3
    new-instance v0, Lcom/ca/mas/core/policy/exceptions/InvalidClientCredentialException;

    invoke-direct {v0, p1}, Lcom/ca/mas/core/policy/exceptions/InvalidClientCredentialException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private c(Lcom/ca/mas/core/token/IdToken;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/context/MssoContext;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->d:Lcom/ca/mas/core/store/TokenManager;

    invoke-interface {v0, p1}, Lcom/ca/mas/core/store/TokenManager;->saveIdToken(Lcom/ca/mas/core/token/IdToken;)V
    :try_end_0
    .catch Lcom/ca/mas/core/store/TokenStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lcom/ca/mas/core/context/MssoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to store ID token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/ca/mas/core/context/MssoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public static newContext()Lcom/ca/mas/core/context/MssoContext;
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/core/context/MssoContext;

    invoke-direct {v0}, Lcom/ca/mas/core/context/MssoContext;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clearAccessToken()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->e:Lcom/ca/mas/core/store/OAuthTokenContainer;

    invoke-interface {v0}, Lcom/ca/mas/core/store/OAuthTokenContainer;->clear()V

    return-void
.end method

.method public clearClientCredentials()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->f:Lcom/ca/mas/core/store/ClientCredentialContainer;

    invoke-interface {v0}, Lcom/ca/mas/core/store/ClientCredentialContainer;->clear()V

    return-void
.end method

.method public clearCredentials()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext;->getCredentials()Lcom/ca/mas/foundation/MASAuthCredentials;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/ca/mas/foundation/MASAuthCredentials;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->i:Lcom/ca/mas/foundation/MASAuthCredentials;

    return-void
.end method

.method public clearIdToken()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->d:Lcom/ca/mas/core/store/TokenManager;

    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenManager;->deleteIdToken()V
    :try_end_0
    .catch Lcom/ca/mas/core/store/TokenStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lcom/ca/mas/core/context/MssoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove ID token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/ca/mas/core/context/MssoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearUserProfile()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->d:Lcom/ca/mas/core/store/TokenManager;

    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenManager;->deleteUserProfile()V
    :try_end_0
    .catch Lcom/ca/mas/core/store/TokenStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lcom/ca/mas/core/context/MssoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove User Profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/ca/mas/core/context/MssoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->c:Lcom/ca/mas/core/policy/PolicyManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ca/mas/core/policy/PolicyManager;->close()V

    :cond_0
    return-void
.end method

.method public destroyAllPersistentTokens()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->d:Lcom/ca/mas/core/store/TokenManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext;->clearCredentials()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->e:Lcom/ca/mas/core/store/OAuthTokenContainer;

    invoke-interface {v0}, Lcom/ca/mas/core/store/OAuthTokenContainer;->clearAll()V

    .line 4
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->f:Lcom/ca/mas/core/store/ClientCredentialContainer;

    invoke-interface {v0}, Lcom/ca/mas/core/store/ClientCredentialContainer;->clearAll()V

    .line 5
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->d:Lcom/ca/mas/core/store/TokenManager;

    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenManager;->clearAll()V
    :try_end_0
    .catch Lcom/ca/mas/core/store/TokenStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/ca/mas/core/datasource/DataSourceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext;->resetHttpClient()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 7
    :goto_0
    :try_start_1
    new-instance v1, Lcom/ca/mas/core/context/MssoException;

    invoke-direct {v1, v0}, Lcom/ca/mas/core/context/MssoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :goto_1
    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext;->resetHttpClient()V

    throw v0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MssoContext not initialized, no token manager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroyPersistentTokens()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->d:Lcom/ca/mas/core/store/TokenManager;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->e:Lcom/ca/mas/core/store/OAuthTokenContainer;

    invoke-interface {v0}, Lcom/ca/mas/core/store/OAuthTokenContainer;->clear()V

    .line 3
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->f:Lcom/ca/mas/core/store/ClientCredentialContainer;

    invoke-interface {v0}, Lcom/ca/mas/core/store/ClientCredentialContainer;->clear()V

    .line 4
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->d:Lcom/ca/mas/core/store/TokenManager;

    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenManager;->clear()V
    :try_end_0
    .catch Lcom/ca/mas/core/store/TokenStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/ca/mas/core/datasource/DataSourceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext;->resetHttpClient()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 6
    :goto_0
    :try_start_1
    new-instance v1, Lcom/ca/mas/core/context/MssoException;

    invoke-direct {v1, v0}, Lcom/ca/mas/core/context/MssoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_1
    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext;->resetHttpClient()V

    throw v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MssoContext not initialized, no token manager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeRequest(Landroid/os/Bundle;Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/foundation/MASResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Attempting to retry request. "

    const-string v1, "MAS"

    .line 1
    new-instance v2, Lcom/ca/mas/core/policy/RequestInfo;

    invoke-direct {v2, p0, p2, p1}, Lcom/ca/mas/core/policy/RequestInfo;-><init>(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/foundation/MASRequest;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {v2}, Lcom/ca/mas/core/policy/RequestInfo;->getRequest()Lcom/ca/mas/core/request/MAGInternalRequest;

    move-result-object p1

    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-virtual {v2}, Lcom/ca/mas/core/policy/RequestInfo;->getNumAttempts()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_3

    .line 4
    :try_start_0
    invoke-interface {p2}, Lcom/ca/mas/foundation/MASRequest;->isPublic()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext;->getMAGHttpClient()Lcom/ca/mas/core/http/MAGHttpClient;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/ca/mas/core/http/MAGHttpClient;->execute(Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/foundation/MASResponse;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    iget-object v4, p0, Lcom/ca/mas/core/context/MssoContext;->c:Lcom/ca/mas/core/policy/PolicyManager;

    new-instance v5, Lcom/ca/mas/core/context/MssoContext$a;

    invoke-direct {v5, p0, p1}, Lcom/ca/mas/core/context/MssoContext$a;-><init>(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/request/MAGInternalRequest;)V

    invoke-virtual {v4, v2, v5}, Lcom/ca/mas/core/policy/PolicyManager;->execute(Lcom/ca/mas/core/policy/RequestInfo;Lcom/ca/mas/core/policy/PolicyManager$Route;)Lcom/ca/mas/foundation/MASResponse;

    move-result-object p1
    :try_end_0
    .catch Lcom/ca/mas/core/error/MAGServerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/ca/mas/core/policy/exceptions/RetryRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext;->clearCredentials()V

    .line 8
    throw p1

    :catch_1
    move-exception v3

    .line 9
    invoke-virtual {v3, p0}, Lcom/ca/mas/core/policy/exceptions/RetryRequestException;->recover(Lcom/ca/mas/core/context/MssoContext;)V

    .line 10
    sget-boolean v4, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v4

    .line 11
    sget-boolean v5, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 12
    invoke-virtual {v4}, Lcom/ca/mas/core/error/MAGServerException;->getErrorCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "Server returned x-ca-err %d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_1
    :try_start_1
    invoke-direct {p0, v4}, Lcom/ca/mas/core/context/MssoContext;->b(Lcom/ca/mas/core/error/MAGServerException;)V
    :try_end_1
    .catch Lcom/ca/mas/core/policy/exceptions/RetryRequestException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :catch_3
    move-exception v3

    .line 14
    invoke-virtual {v3, p0}, Lcom/ca/mas/core/policy/exceptions/RetryRequestException;->recover(Lcom/ca/mas/core/context/MssoContext;)V

    .line 15
    sget-boolean v5, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/ca/mas/core/policy/RequestInfo;->incrementNumAttempts()V

    goto/16 :goto_0

    .line 17
    :cond_3
    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext;->clearCredentials()V

    if-eqz v3, :cond_4

    .line 18
    throw v3

    .line 19
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Too many attempts, giving up"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->e:Lcom/ca/mas/core/store/OAuthTokenContainer;

    invoke-interface {v0}, Lcom/ca/mas/core/store/OAuthTokenContainer;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessTokenExpiry()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->e:Lcom/ca/mas/core/store/OAuthTokenContainer;

    invoke-interface {v0}, Lcom/ca/mas/core/store/OAuthTokenContainer;->getExpiry()J

    move-result-wide v0

    return-wide v0
.end method

.method public getClientExpiration()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->f:Lcom/ca/mas/core/store/ClientCredentialContainer;

    invoke-interface {v0}, Lcom/ca/mas/core/store/ClientCredentialContainer;->getClientExpiration()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->f:Lcom/ca/mas/core/store/ClientCredentialContainer;

    invoke-interface {v0}, Lcom/ca/mas/core/store/ClientCredentialContainer;->getClientId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->b:Lcom/ca/mas/core/conf/ConfigurationProvider;

    invoke-interface {v0}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getClientId()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->f:Lcom/ca/mas/core/store/ClientCredentialContainer;

    invoke-interface {v0}, Lcom/ca/mas/core/store/ClientCredentialContainer;->getClientSecret()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->b:Lcom/ca/mas/core/conf/ConfigurationProvider;

    invoke-interface {v0}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getClientSecret()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->b:Lcom/ca/mas/core/conf/ConfigurationProvider;

    return-object v0
.end method

.method public getCredentials()Lcom/ca/mas/foundation/MASAuthCredentials;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->i:Lcom/ca/mas/foundation/MASAuthCredentials;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getGrantedScope()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->e:Lcom/ca/mas/core/store/OAuthTokenContainer;

    invoke-interface {v0}, Lcom/ca/mas/core/store/OAuthTokenContainer;->getGrantedScope()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdToken()Lcom/ca/mas/core/token/IdToken;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/context/MssoContext;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->d:Lcom/ca/mas/core/store/TokenManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenProvider;->getIdToken()Lcom/ca/mas/core/token/IdToken;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMAGHttpClient()Lcom/ca/mas/core/http/MAGHttpClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->h:Lcom/ca/mas/core/http/MAGHttpClient;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ca/mas/core/http/MAGHttpClient;

    invoke-direct {v0}, Lcom/ca/mas/core/http/MAGHttpClient;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->h:Lcom/ca/mas/core/http/MAGHttpClient;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->h:Lcom/ca/mas/core/http/MAGHttpClient;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->e:Lcom/ca/mas/core/store/OAuthTokenContainer;

    invoke-interface {v0}, Lcom/ca/mas/core/store/OAuthTokenContainer;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStoredClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->f:Lcom/ca/mas/core/store/ClientCredentialContainer;

    invoke-interface {v0}, Lcom/ca/mas/core/store/ClientCredentialContainer;->getClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenManager()Lcom/ca/mas/core/store/TokenManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->d:Lcom/ca/mas/core/store/TokenManager;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/context/MssoContext;->a:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/context/MssoContext;->b:Lcom/ca/mas/core/conf/ConfigurationProvider;

    .line 3
    iget-object p1, p0, Lcom/ca/mas/core/context/MssoContext;->d:Lcom/ca/mas/core/store/TokenManager;

    if-nez p1, :cond_0

    .line 4
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ca/mas/core/store/StorageProvider;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/context/MssoContext;->d:Lcom/ca/mas/core/store/TokenManager;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ca/mas/core/context/MssoContext;->e:Lcom/ca/mas/core/store/OAuthTokenContainer;

    if-nez p1, :cond_1

    .line 6
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ca/mas/core/store/StorageProvider;->getOAuthTokenContainer()Lcom/ca/mas/core/store/OAuthTokenContainer;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/context/MssoContext;->e:Lcom/ca/mas/core/store/OAuthTokenContainer;

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/ca/mas/core/context/MssoContext;->f:Lcom/ca/mas/core/store/ClientCredentialContainer;

    if-nez p1, :cond_2

    .line 8
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ca/mas/core/store/StorageProvider;->getClientCredentialContainer()Lcom/ca/mas/core/store/ClientCredentialContainer;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/context/MssoContext;->f:Lcom/ca/mas/core/store/ClientCredentialContainer;

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/ca/mas/core/context/MssoContext;->g:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 10
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p1, p0, Lcom/ca/mas/core/context/MssoContext;->g:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public initPolicyManager()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->c:Lcom/ca/mas/core/policy/PolicyManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ca/mas/core/policy/PolicyManager;

    invoke-direct {v0, p0}, Lcom/ca/mas/core/policy/PolicyManager;-><init>(Lcom/ca/mas/core/context/MssoContext;)V

    iput-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->c:Lcom/ca/mas/core/policy/PolicyManager;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->c:Lcom/ca/mas/core/policy/PolicyManager;

    iget-object v1, p0, Lcom/ca/mas/core/context/MssoContext;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ca/mas/core/policy/PolicyManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public isClientCredentialExpired(Ljava/lang/Long;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isDeviceRegistered()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/ca/mas/core/context/MssoContext;->d:Lcom/ca/mas/core/store/TokenManager;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/ca/mas/core/store/TokenProvider;->isClientCertificateChainAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ca/mas/core/context/MssoContext;->d:Lcom/ca/mas/core/store/TokenManager;

    invoke-interface {v1}, Lcom/ca/mas/core/store/TokenProvider;->getMagIdentifier()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lcom/ca/mas/core/datasource/DataSourceException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 2
    sget-boolean v2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device not registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAS"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->b:Lcom/ca/mas/core/conf/ConfigurationProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLogin()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext;->getIdToken()Lcom/ca/mas/core/token/IdToken;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAccessTokenAvailable(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext;->clearCredentials()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->e:Lcom/ca/mas/core/store/OAuthTokenContainer;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/ca/mas/core/store/OAuthTokenContainer;->saveAccessToken(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public onDeviceRegistrationCompleted()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext;->resetHttpClient()V

    return-void
.end method

.method public onIdTokenAvailable(Lcom/ca/mas/core/token/IdToken;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/token/JWTValidationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext;->clearCredentials()V

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->d:Lcom/ca/mas/core/store/TokenManager;

    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenProvider;->getMagIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext;->getClientId()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext;->getClientSecret()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/ca/mas/core/token/IdToken;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "urn:ietf:params:oauth:grant-type:jwt-bearer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-static {p0, p1, v0, v1, v2}, Lcom/ca/mas/core/token/JWTValidation;->validateIdToken(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/token/IdToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-direct {p0, p1}, Lcom/ca/mas/core/context/MssoContext;->c(Lcom/ca/mas/core/token/IdToken;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lcom/ca/mas/core/token/JWTValidationException;

    const/16 v0, 0x332d

    const-string v1, "JWT Token is not valid"

    invoke-direct {p1, v0, v1}, Lcom/ca/mas/core/token/JWTValidationException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/context/MssoContext;->c(Lcom/ca/mas/core/token/IdToken;)V

    :goto_0
    return-void
.end method

.method public removeDeviceRegistration()V
    .locals 3

    .line 1
    sget-object v0, Lcom/ca/mas/core/EventDispatcher;->BEFORE_DEREGISTER:Lcom/ca/mas/core/EventDispatcher;

    invoke-virtual {v0}, Ljava/util/Observable;->notifyObservers()V

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->d:Lcom/ca/mas/core/store/TokenManager;

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext;->isDeviceRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/ca/mas/core/registration/RegistrationClient;

    invoke-direct {v0, p0}, Lcom/ca/mas/core/registration/RegistrationClient;-><init>(Lcom/ca/mas/core/context/MssoContext;)V

    invoke-virtual {v0}, Lcom/ca/mas/core/registration/RegistrationClient;->removeDeviceRegistration()V

    .line 5
    :cond_0
    sget-object v0, Lcom/ca/mas/core/EventDispatcher;->AFTER_DEREGISTER:Lcom/ca/mas/core/EventDispatcher;

    invoke-virtual {v0}, Ljava/util/Observable;->notifyObservers()V

    .line 6
    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext;->resetHttpClient()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in removing device registration details from the server "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAS"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_1
    new-instance v1, Lcom/ca/mas/core/context/MssoException;

    invoke-direct {v1, v0}, Lcom/ca/mas/core/context/MssoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MssoContext not initialized, no token manager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetHttpClient()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MASConfiguration;->SECURITY_CONFIGURATION_RESET:Lcom/ca/mas/core/EventDispatcher;

    invoke-virtual {v0}, Ljava/util/Observable;->notifyObservers()V

    return-void
.end method

.method public setClientCredentials(Lcom/ca/mas/core/token/ClientCredentials;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->f:Lcom/ca/mas/core/store/ClientCredentialContainer;

    invoke-interface {v0, p1}, Lcom/ca/mas/core/store/ClientCredentialContainer;->saveClientCredentials(Lcom/ca/mas/core/token/ClientCredentials;)V

    return-void
.end method

.method public setCredentials(Lcom/ca/mas/foundation/MASAuthCredentials;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/context/MssoContext;->i:Lcom/ca/mas/foundation/MASAuthCredentials;

    return-void
.end method

.method public takeRefreshToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext;->e:Lcom/ca/mas/core/store/OAuthTokenContainer;

    invoke-interface {v0}, Lcom/ca/mas/core/store/OAuthTokenContainer;->takeRefreshToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
