.class public abstract Lcom/ca/mas/core/auth/AuthRenderer;
.super Ljava/lang/Object;
.source "AuthRenderer.java"


# static fields
.field public static final AUTH_CODE_ERR:I = 0x1


# instance fields
.field protected context:Landroid/content/Context;

.field protected provider:Lcom/ca/mas/core/service/Provider;

.field protected requestId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "qrcode"

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/ca/mas/core/service/Provider;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/auth/AuthRenderer;->context:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/ca/mas/core/auth/AuthRenderer;->provider:Lcom/ca/mas/core/service/Provider;

    const/4 p1, 0x1

    return p1
.end method

.method abstract onAuthCodeReceived(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract onError(ILjava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract onRenderCompleted()V
.end method

.method protected declared-synchronized proceed()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    new-instance v1, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/ca/mas/core/auth/AuthRenderer;->provider:Lcom/ca/mas/core/service/Provider;

    invoke-virtual {v3}, Lcom/ca/mas/core/service/Provider;->getPollUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URL;)V

    .line 2
    invoke-static {}, Lcom/ca/mas/foundation/MASResponseBody;->jsonBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->responseBody(Lcom/ca/mas/foundation/MASResponseBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/ca/mas/core/auth/AuthRenderer$a;

    invoke-direct {v2, p0}, Lcom/ca/mas/core/auth/AuthRenderer$a;-><init>(Lcom/ca/mas/core/auth/AuthRenderer;)V

    .line 5
    invoke-virtual {v2, v1}, Lcom/ca/mas/core/http/MAGHttpClient;->execute(Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/foundation/MASResponse;

    move-result-object v1

    const/16 v2, 0xc8

    .line 6
    invoke-interface {v1}, Lcom/ca/mas/foundation/MASResponse;->getResponseCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 7
    invoke-interface {v1}, Lcom/ca/mas/foundation/MASResponse;->getBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8
    invoke-interface {v1}, Lcom/ca/mas/foundation/MASResponse;->getBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/foundation/MASResponseBody;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    const-string v2, "code"

    .line 9
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "state"

    .line 10
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 12
    invoke-virtual {p0, v2, v1}, Lcom/ca/mas/core/auth/AuthRenderer;->onAuthCodeReceived(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "Session Polling error."

    .line 13
    invoke-interface {v1}, Lcom/ca/mas/foundation/MASResponse;->getBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 14
    new-instance v2, Ljava/lang/String;

    invoke-interface {v1}, Lcom/ca/mas/foundation/MASResponse;->getBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/foundation/MASResponseBody;->getRawContent()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    :cond_1
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v0, v2, v1}, Lcom/ca/mas/core/auth/AuthRenderer;->onError(ILjava/lang/String;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 16
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/ca/mas/core/auth/AuthRenderer;->onError(ILjava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public abstract render()Landroid/view/View;
.end method
