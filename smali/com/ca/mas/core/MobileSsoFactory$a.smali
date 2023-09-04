.class final Lcom/ca/mas/core/MobileSsoFactory$a;
.super Ljava/lang/Object;
.source "MobileSsoFactory.java"

# interfaces
.implements Lcom/ca/mas/core/MobileSso;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/MobileSsoFactory;->a(Landroid/content/Context;)Lcom/ca/mas/core/MobileSso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/core/service/MssoClient;

.field final synthetic b:Lcom/ca/mas/core/context/MssoContext;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/service/MssoClient;Lcom/ca/mas/core/context/MssoContext;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/MobileSsoFactory$a;->a:Lcom/ca/mas/core/service/MssoClient;

    iput-object p2, p0, Lcom/ca/mas/core/MobileSsoFactory$a;->b:Lcom/ca/mas/core/context/MssoContext;

    iput-object p3, p0, Lcom/ca/mas/core/MobileSsoFactory$a;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Lcom/ca/mas/foundation/MASAuthCredentials;Lcom/ca/mas/core/MAGResultReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASAuthCredentials;",
            "Lcom/ca/mas/core/MAGResultReceiver<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/MobileSsoFactory$a;->a:Lcom/ca/mas/core/service/MssoClient;

    invoke-virtual {v0, p1, p2}, Lcom/ca/mas/core/service/MssoClient;->authenticate(Lcom/ca/mas/foundation/MASAuthCredentials;Lcom/ca/mas/core/MAGResultReceiver;)V

    return-void
.end method

.method public authorize(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    .line 2
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "provider_url"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    instance-of v2, p2, Lcom/ca/mas/core/auth/AuthResultReceiver;

    if-eqz v2, :cond_0

    .line 5
    move-object v2, p2

    check-cast v2, Lcom/ca/mas/core/auth/AuthResultReceiver;

    invoke-interface {v2, v0}, Lcom/ca/mas/core/auth/AuthResultReceiver;->setData(Lorg/json/JSONObject;)V

    .line 6
    :cond_0
    new-instance v0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    iget-object v2, p0, Lcom/ca/mas/core/MobileSsoFactory$a;->b:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v2}, Lcom/ca/mas/core/context/MssoContext;->getConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URI;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 7
    :catch_0
    :try_start_2
    new-instance v0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    iget-object v1, p0, Lcom/ca/mas/core/MobileSsoFactory$a;->b:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v1}, Lcom/ca/mas/core/context/MssoContext;->getConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URI;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 8
    :goto_0
    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/core/MobileSsoFactory$a;->processRequest(Lcom/ca/mas/foundation/MASRequest;Landroid/os/ResultReceiver;)J

    return-void

    .line 9
    :cond_1
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Authorization request cannot be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    if-eqz p2, :cond_2

    .line 10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    new-instance v1, Lcom/ca/mas/core/error/MAGError;

    invoke-direct {v1, p1}, Lcom/ca/mas/core/error/MAGError;-><init>(Ljava/lang/Throwable;)V

    const-string v2, "com.ca.mas.core.service.result.error"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.ca.mas.core.service.result.errorMessage"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 13
    invoke-virtual {p2, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public cancelAllRequests(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/MobileSsoFactory$a;->a:Lcom/ca/mas/core/service/MssoClient;

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/service/MssoClient;->cancelAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public cancelRequest(JLandroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/MobileSsoFactory$a;->a:Lcom/ca/mas/core/service/MssoClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ca/mas/core/service/MssoClient;->cancelRequest(JLandroid/os/Bundle;)V

    return-void
.end method

.method public destroyAllPersistentTokens()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/EventDispatcher;->RESET_LOCALLY:Lcom/ca/mas/core/EventDispatcher;

    invoke-virtual {v0}, Ljava/util/Observable;->notifyObservers()V

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/MobileSsoFactory$a;->b:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v0}, Lcom/ca/mas/core/context/MssoContext;->destroyAllPersistentTokens()V

    return-void
.end method

.method public getAuthenticationProvider()Lcom/ca/mas/core/service/AuthenticationProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/core/oauth/OAuthClient;

    iget-object v1, p0, Lcom/ca/mas/core/MobileSsoFactory$a;->b:Lcom/ca/mas/core/context/MssoContext;

    invoke-direct {v0, v1}, Lcom/ca/mas/core/oauth/OAuthClient;-><init>(Lcom/ca/mas/core/context/MssoContext;)V

    iget-object v1, p0, Lcom/ca/mas/core/MobileSsoFactory$a;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ca/mas/core/oauth/OAuthClient;->getSocialPlatformProvider(Landroid/content/Context;)Lcom/ca/mas/core/service/AuthenticationProvider;

    move-result-object v0

    return-object v0
.end method

.method public isDeviceRegistered()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/MobileSsoFactory$a;->b:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v0}, Lcom/ca/mas/core/context/MssoContext;->isDeviceRegistered()Z

    move-result v0

    return v0
.end method

.method public isLogin()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/MobileSsoFactory$a;->b:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v0}, Lcom/ca/mas/core/context/MssoContext;->isLogin()Z

    move-result v0

    return v0
.end method

.method public processPendingRequests()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/MobileSsoFactory$a;->a:Lcom/ca/mas/core/service/MssoClient;

    invoke-virtual {v0}, Lcom/ca/mas/core/service/MssoClient;->processPendingRequests()V

    return-void
.end method

.method public processRequest(Lcom/ca/mas/foundation/MASRequest;Landroid/os/ResultReceiver;)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/MobileSsoFactory$a;->a:Lcom/ca/mas/core/service/MssoClient;

    invoke-virtual {v0, p1, p2}, Lcom/ca/mas/core/service/MssoClient;->processRequest(Lcom/ca/mas/foundation/MASRequest;Landroid/os/ResultReceiver;)J

    move-result-wide p1

    return-wide p1
.end method

.method public removeDeviceRegistration()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/MobileSsoFactory$a;->b:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v0}, Lcom/ca/mas/core/context/MssoContext;->removeDeviceRegistration()V

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/MobileSsoFactory$a;->b:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v0}, Lcom/ca/mas/core/context/MssoContext;->destroyPersistentTokens()V

    return-void
.end method
