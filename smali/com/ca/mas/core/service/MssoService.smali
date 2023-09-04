.class public Lcom/ca/mas/core/service/MssoService;
.super Landroid/app/Service;
.source "MssoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/core/service/MssoService$MASBinder;,
        Lcom/ca/mas/core/service/MssoService$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/IBinder;

.field private b:Landroid/os/Looper;

.field private volatile c:Lcom/ca/mas/core/service/MssoService$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/ca/mas/core/service/MssoService$MASBinder;

    invoke-direct {v0, p0}, Lcom/ca/mas/core/service/MssoService$MASBinder;-><init>(Lcom/ca/mas/core/service/MssoService;)V

    iput-object v0, p0, Lcom/ca/mas/core/service/MssoService;->a:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic a(Lcom/ca/mas/core/service/MssoService;Lcom/ca/mas/core/service/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/service/MssoService;->g(Lcom/ca/mas/core/service/c;)V

    return-void
.end method

.method private b(Lcom/ca/mas/core/service/c;Lcom/ca/mas/foundation/MASResponse;)Lcom/ca/mas/core/service/e;
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/core/service/e;

    invoke-direct {v0, p1, p2}, Lcom/ca/mas/core/service/e;-><init>(Lcom/ca/mas/core/service/c;Lcom/ca/mas/foundation/MASResponse;)V

    return-object v0
.end method

.method private c(Lcom/ca/mas/core/service/c;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAS"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/ca/mas/core/service/MssoService;->h(Lcom/ca/mas/core/service/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/ca/mas/core/service/c;->f()Landroid/os/ResultReceiver;

    move-result-object p1

    new-instance v0, Lcom/ca/mas/core/error/MAGError;

    invoke-direct {v0, p2}, Lcom/ca/mas/core/error/MAGError;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, v0}, Lcom/ca/mas/core/service/MssoService;->i(Landroid/os/ResultReceiver;Lcom/ca/mas/core/error/MAGError;)V

    :cond_1
    return-void
.end method

.method private d(JLcom/ca/mas/foundation/MASRequest;Landroid/os/Bundle;Lcom/ca/mas/foundation/MASResponse;)Z
    .locals 8

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getResponseInterceptors()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/ca/mas/core/ResponseInterceptor;

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 2
    invoke-interface/range {v2 .. v7}, Lcom/ca/mas/core/ResponseInterceptor;->intercept(JLcom/ca/mas/foundation/MASRequest;Landroid/os/Bundle;Lcom/ca/mas/foundation/MASResponse;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private e(Landroid/os/Bundle;Lcom/ca/mas/core/service/c;)V
    .locals 1

    const-string v0, "com.ca.mas.core.service.req.extra.credentials"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ca/mas/foundation/MASAuthCredentials;

    .line 2
    invoke-virtual {p2}, Lcom/ca/mas/core/service/c;->d()Lcom/ca/mas/core/context/MssoContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/context/MssoContext;->setCredentials(Lcom/ca/mas/foundation/MASAuthCredentials;)V

    .line 3
    invoke-direct {p0, p2}, Lcom/ca/mas/core/service/MssoService;->g(Lcom/ca/mas/core/service/c;)V

    return-void
.end method

.method private f()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/ca/mas/core/service/a;->c()Lcom/ca/mas/core/service/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/core/service/a;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ca/mas/core/service/c;

    .line 3
    invoke-virtual {v1}, Lcom/ca/mas/core/service/c;->g()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 4
    invoke-direct {p0, v2, v1}, Lcom/ca/mas/core/service/MssoService;->k(Landroid/os/Bundle;Lcom/ca/mas/core/service/c;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g(Lcom/ca/mas/core/service/c;)V
    .locals 11

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Lcom/ca/mas/core/service/c;->i(Z)V

    .line 2
    invoke-virtual {p1}, Lcom/ca/mas/core/service/c;->f()Landroid/os/ResultReceiver;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/ca/mas/core/service/c;->d()Lcom/ca/mas/core/context/MssoContext;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/ca/mas/core/service/c;->b()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ca/mas/core/service/c;->e()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/ca/mas/core/context/MssoContext;->executeRequest(Landroid/os/Bundle;Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/foundation/MASResponse;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Lcom/ca/mas/core/service/c;->c()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/ca/mas/core/service/c;->e()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v8

    invoke-virtual {p1}, Lcom/ca/mas/core/service/c;->b()Landroid/os/Bundle;

    move-result-object v9

    move-object v5, p0

    move-object v10, v3

    invoke-direct/range {v5 .. v10}, Lcom/ca/mas/core/service/MssoService;->d(JLcom/ca/mas/foundation/MASRequest;Landroid/os/Bundle;Lcom/ca/mas/foundation/MASResponse;)Z

    move-result v4
    :try_end_0
    .catch Lcom/ca/mas/core/policy/exceptions/CredentialRequiredException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/ca/mas/core/policy/exceptions/TokenStoreUnavailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/ca/mas/core/error/MAGServerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {p1, v2}, Lcom/ca/mas/core/service/c;->i(Z)V

    return-void

    .line 7
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/service/MssoService;->h(Lcom/ca/mas/core/service/c;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    invoke-direct {p0, p1, v3}, Lcom/ca/mas/core/service/MssoService;->b(Lcom/ca/mas/core/service/c;Lcom/ca/mas/foundation/MASResponse;)Lcom/ca/mas/core/service/e;

    move-result-object v3

    .line 9
    invoke-static {}, Lcom/ca/mas/core/service/f;->b()Lcom/ca/mas/core/service/f;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ca/mas/core/service/f;->a(Lcom/ca/mas/core/service/e;)V

    .line 10
    invoke-virtual {v3}, Lcom/ca/mas/core/service/e;->b()J

    move-result-wide v3

    const-string v5, "OK"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/ca/mas/core/service/MssoService;->j(Landroid/os/ResultReceiver;JLjava/lang/String;)V
    :try_end_1
    .catch Lcom/ca/mas/core/policy/exceptions/CredentialRequiredException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/ca/mas/core/policy/exceptions/TokenStoreUnavailableException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/ca/mas/core/error/MAGServerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    .line 11
    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/ca/mas/core/service/MssoService;->c(Lcom/ca/mas/core/service/c;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Lcom/ca/mas/core/service/c;->i(Z)V

    goto/16 :goto_3

    :catch_1
    move-exception v0

    .line 13
    :try_start_3
    invoke-virtual {p1}, Lcom/ca/mas/core/service/c;->c()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/ca/mas/core/service/c;->e()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v6

    invoke-virtual {p1}, Lcom/ca/mas/core/service/c;->b()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v0}, Lcom/ca/mas/core/error/MAGServerException;->getResponse()Lcom/ca/mas/foundation/MASResponse;

    move-result-object v8

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/ca/mas/core/service/MssoService;->d(JLcom/ca/mas/foundation/MASRequest;Landroid/os/Bundle;Lcom/ca/mas/foundation/MASResponse;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {p1, v2}, Lcom/ca/mas/core/service/c;->i(Z)V

    return-void

    .line 15
    :cond_2
    :try_start_4
    invoke-direct {p0, p1, v0}, Lcom/ca/mas/core/service/MssoService;->c(Lcom/ca/mas/core/service/c;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 16
    :catch_2
    :try_start_5
    invoke-virtual {v1}, Lcom/ca/mas/core/context/MssoContext;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenManager;->getTokenStore()Lcom/ca/mas/core/datasource/DataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/core/datasource/DataSource;->unlock()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 17
    :try_start_6
    invoke-direct {p0, p1, v0}, Lcom/ca/mas/core/service/MssoService;->c(Lcom/ca/mas/core/service/c;Ljava/lang/Exception;)V

    goto :goto_0

    .line 18
    :catch_4
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v1, "MAS"

    if-eqz v0, :cond_3

    :try_start_7
    const-string v0, "Request for user credentials"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_3
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getMobileSsoListener()Lcom/ca/mas/core/MobileSsoListener;

    move-result-object v0

    .line 20
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->isBrowserBasedAuthenticationEnabled()Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v4, 0x0

    if-nez v3, :cond_4

    .line 21
    :try_start_8
    new-instance v3, Lcom/ca/mas/core/oauth/OAuthClient;

    invoke-virtual {p1}, Lcom/ca/mas/core/service/c;->d()Lcom/ca/mas/core/context/MssoContext;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/ca/mas/core/oauth/OAuthClient;-><init>(Lcom/ca/mas/core/context/MssoContext;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ca/mas/core/oauth/OAuthClient;->getSocialPlatformProvider(Landroid/content/Context;)Lcom/ca/mas/core/service/AuthenticationProvider;

    move-result-object v4
    :try_end_8
    .catch Lcom/ca/mas/core/oauth/OAuthException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lcom/ca/mas/core/oauth/OAuthServerException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :catch_5
    move-exception v3

    goto :goto_1

    :catch_6
    move-exception v3

    .line 22
    :goto_1
    :try_start_9
    sget-boolean v5, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 23
    invoke-virtual {p1}, Lcom/ca/mas/core/service/c;->c()J

    move-result-wide v5

    invoke-interface {v0, v5, v6, v4}, Lcom/ca/mas/core/MobileSsoListener;->onAuthenticateRequest(JLcom/ca/mas/core/service/AuthenticationProvider;)V

    goto :goto_0

    .line 24
    :cond_5
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "No Authentication listener is registered"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :goto_3
    return-void

    .line 25
    :goto_4
    invoke-virtual {p1, v2}, Lcom/ca/mas/core/service/c;->i(Z)V

    throw v0
.end method

.method private h(Lcom/ca/mas/core/service/c;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/ca/mas/core/service/a;->c()Lcom/ca/mas/core/service/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ca/mas/core/service/c;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ca/mas/core/service/a;->f(J)Lcom/ca/mas/core/service/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private i(Landroid/os/ResultReceiver;Lcom/ca/mas/core/error/MAGError;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.ca.mas.core.service.result.error"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.ca.mas.core.service.result.errorMessage"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private j(Landroid/os/ResultReceiver;JLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.ca.mas.core.service.result.errorMessage"

    .line 2
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "com.ca.mas.core.service.result.requestId"

    .line 3
    invoke-virtual {v0, p4, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private k(Landroid/os/Bundle;Lcom/ca/mas/core/service/c;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p2, v0}, Lcom/ca/mas/core/service/c;->i(Z)V

    .line 2
    invoke-virtual {p2, p1}, Lcom/ca/mas/core/service/c;->h(Landroid/os/Bundle;)V

    .line 3
    :try_start_0
    invoke-static {}, Lcom/ca/mas/core/service/b;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/ca/mas/core/service/MssoService$a;

    invoke-direct {v0, p0, p2}, Lcom/ca/mas/core/service/MssoService$a;-><init>(Lcom/ca/mas/core/service/MssoService;Lcom/ca/mas/core/service/c;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, v0}, Lcom/ca/mas/core/service/c;->i(Z)V

    .line 5
    invoke-direct {p0, p2}, Lcom/ca/mas/core/service/MssoService;->h(Lcom/ca/mas/core/service/c;)Z

    .line 6
    invoke-virtual {p2}, Lcom/ca/mas/core/service/c;->f()Landroid/os/ResultReceiver;

    move-result-object p2

    new-instance v0, Lcom/ca/mas/core/error/MAGError;

    invoke-direct {v0, p1}, Lcom/ca/mas/core/error/MAGError;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, p2, v0}, Lcom/ca/mas/core/service/MssoService;->i(Landroid/os/ResultReceiver;Lcom/ca/mas/core/error/MAGError;)V

    :goto_0
    return-void
.end method

.method private l(J)Lcom/ca/mas/core/service/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/service/d;->b()Lcom/ca/mas/core/service/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ca/mas/core/service/d;->d(J)Lcom/ca/mas/core/service/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ca/mas/core/service/a;->c()Lcom/ca/mas/core/service/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ca/mas/core/service/a;->a(Lcom/ca/mas/core/service/c;)V

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/ca/mas/core/service/a;->c()Lcom/ca/mas/core/service/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ca/mas/core/service/a;->d(J)Lcom/ca/mas/core/service/c;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public handleWork(Landroid/content/Intent;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/ca/mas/core/service/MssoService;->c:Lcom/ca/mas/core/service/MssoService$b;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    sget-boolean p1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "MAS"

    const-string v0, "MssoService onBind"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ca/mas/core/service/MssoService;->a:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BoundService Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/service/MssoService;->b:Landroid/os/Looper;

    .line 5
    new-instance v0, Lcom/ca/mas/core/service/MssoService$b;

    iget-object v1, p0, Lcom/ca/mas/core/service/MssoService;->b:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/ca/mas/core/service/MssoService$b;-><init>(Lcom/ca/mas/core/service/MssoService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ca/mas/core/service/MssoService;->c:Lcom/ca/mas/core/service/MssoService$b;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MAS"

    const-string v1, "MssoService onDestroy"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ca/mas/core/service/MssoService;->b:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ca/mas/core/service/MssoService;->b:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 6
    :goto_0
    invoke-static {}, Lcom/ca/mas/core/service/MssoServiceState;->getInstance()Lcom/ca/mas/core/service/MssoServiceState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ca/mas/core/service/MssoServiceState;->setBound(Z)V

    .line 7
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onHandleWork(Landroid/content/Intent;)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    const-string v1, "MAS"

    if-eqz v0, :cond_0

    const-string v0, "MssoService onHandleWork"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3
    sget-boolean p1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "Intent did not contain an action"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 4
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_a

    const-string v2, "com.ca.mas.core.service.req.extra.requestId"

    .line 5
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 7
    invoke-direct {p0}, Lcom/ca/mas/core/service/MssoService;->f()V

    return-void

    .line 8
    :cond_4
    invoke-direct {p0, v2, v3}, Lcom/ca/mas/core/service/MssoService;->l(J)Lcom/ca/mas/core/service/c;

    move-result-object v2

    if-nez v2, :cond_6

    .line 9
    sget-boolean p1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p1, :cond_5

    const-string p1, "Request ID not found, assuming request is canceled or already processed"

    .line 10
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    const-string v3, "com.ca.mas.core.service.action.PROCESS_REQUEST"

    .line 11
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 12
    invoke-direct {p0, p1, v2}, Lcom/ca/mas/core/service/MssoService;->k(Landroid/os/Bundle;Lcom/ca/mas/core/service/c;)V

    return-void

    :cond_7
    const-string v3, "com.ca.mas.core.service.action.CREDENTIALS_OBTAINED"

    .line 13
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 14
    invoke-direct {p0, p1, v2}, Lcom/ca/mas/core/service/MssoService;->e(Landroid/os/Bundle;Lcom/ca/mas/core/service/c;)V

    return-void

    .line 15
    :cond_8
    sget-boolean p1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring intent with unrecognized action "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    .line 16
    :cond_a
    :goto_0
    sget-boolean p1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p1, :cond_b

    const-string p1, "Intent did not contain extras that included a request ID"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MAS"

    const-string v1, "MssoService onUnBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
