.class public Lcom/ca/mas/core/service/MssoClient;
.super Ljava/lang/Object;
.source "MssoClient.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/ca/mas/core/context/MssoContext;


# direct methods
.method public constructor <init>(Lcom/ca/mas/core/context/MssoContext;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sysContext"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mssoContext"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/ca/mas/core/service/MssoClient;->b:Lcom/ca/mas/core/context/MssoContext;

    .line 5
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/service/MssoClient;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ca/mas/core/service/MssoServiceConnection;

    invoke-direct {v0, p1}, Lcom/ca/mas/core/service/MssoServiceConnection;-><init>(Landroid/content/Intent;)V

    .line 2
    invoke-static {}, Lcom/ca/mas/core/service/MssoServiceState;->getInstance()Lcom/ca/mas/core/service/MssoServiceState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ca/mas/core/service/MssoServiceState;->setServiceConnection(Landroid/content/ServiceConnection;)V

    .line 3
    iget-object v1, p0, Lcom/ca/mas/core/service/MssoClient;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private b(Lcom/ca/mas/foundation/MASAuthCredentials;Lcom/ca/mas/core/MAGResultReceiver;)Landroid/content/Intent;
    .locals 4

    .line 1
    new-instance v0, Lcom/ca/mas/core/service/c;

    iget-object v1, p0, Lcom/ca/mas/core/service/MssoClient;->b:Lcom/ca/mas/core/context/MssoContext;

    new-instance v2, Lcom/ca/mas/core/request/internal/AuthenticateRequest;

    invoke-direct {v2}, Lcom/ca/mas/core/request/internal/AuthenticateRequest;-><init>()V

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/ca/mas/core/service/c;-><init>(Ljava/lang/Object;Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/foundation/MASRequest;Landroid/os/ResultReceiver;)V

    .line 2
    invoke-static {}, Lcom/ca/mas/core/service/d;->b()Lcom/ca/mas/core/service/d;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/ca/mas/core/service/d;->a(Lcom/ca/mas/core/service/c;)V

    .line 3
    invoke-virtual {v0}, Lcom/ca/mas/core/service/c;->c()J

    move-result-wide v0

    .line 4
    new-instance p2, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ca/mas/core/service/MssoClient;->a:Landroid/content/Context;

    const-class v3, Lcom/ca/mas/core/service/MssoService;

    invoke-direct {p2, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.ca.mas.core.service.action.CREDENTIALS_OBTAINED"

    .line 5
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.ca.mas.core.service.req.extra.credentials"

    .line 6
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.ca.mas.core.service.req.extra.requestId"

    .line 7
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object p2
.end method

.method public static takeMAGResponse(J)Lcom/ca/mas/foundation/MASResponse;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/service/f;->b()Lcom/ca/mas/core/service/f;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ca/mas/core/service/f;->d(J)Lcom/ca/mas/core/service/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ca/mas/core/service/e;->a()Lcom/ca/mas/foundation/MASResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public authenticate(Lcom/ca/mas/foundation/MASAuthCredentials;Lcom/ca/mas/core/MAGResultReceiver;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ca/mas/core/service/MssoClient;->b(Lcom/ca/mas/foundation/MASAuthCredentials;Lcom/ca/mas/core/MAGResultReceiver;)Landroid/content/Intent;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/ca/mas/foundation/MASUser;->getCurrentUser()Lcom/ca/mas/foundation/MASUser;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ca/mas/core/store/StorageProvider;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object p2

    .line 4
    sget-object v0, Lcom/ca/mas/core/EventDispatcher;->LOGOUT:Lcom/ca/mas/core/EventDispatcher;

    invoke-virtual {v0}, Ljava/util/Observable;->notifyObservers()V

    .line 5
    :try_start_0
    invoke-interface {p2}, Lcom/ca/mas/core/store/TokenManager;->deleteIdToken()V

    .line 6
    invoke-interface {p2}, Lcom/ca/mas/core/store/TokenManager;->deleteSecureIdToken()V

    .line 7
    invoke-interface {p2}, Lcom/ca/mas/core/store/TokenManager;->deleteUserProfile()V
    :try_end_0
    .catch Lcom/ca/mas/core/store/TokenStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 8
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ca/mas/core/store/StorageProvider;->getOAuthTokenContainer()Lcom/ca/mas/core/store/OAuthTokenContainer;

    move-result-object p2

    invoke-interface {p2}, Lcom/ca/mas/core/store/OAuthTokenContainer;->clear()V
    :try_end_1
    .catch Lcom/ca/mas/core/datasource/DataSourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 10
    new-instance p2, Lcom/ca/mas/core/datasource/DataSourceException;

    invoke-direct {p2, p1}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 11
    :cond_0
    :goto_1
    invoke-static {}, Lcom/ca/mas/core/service/MssoServiceState;->getInstance()Lcom/ca/mas/core/service/MssoServiceState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ca/mas/core/service/MssoServiceState;->isBound()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 12
    invoke-static {}, Lcom/ca/mas/core/service/MssoServiceState;->getInstance()Lcom/ca/mas/core/service/MssoServiceState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ca/mas/core/service/MssoServiceState;->getMssoService()Lcom/ca/mas/core/service/MssoService;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ca/mas/core/service/MssoService;->handleWork(Landroid/content/Intent;)V

    goto :goto_2

    .line 13
    :cond_1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/service/MssoClient;->a(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method

.method public cancelAll(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ca/mas/core/service/d;->b()Lcom/ca/mas/core/service/d;

    move-result-object v0

    new-instance v1, Lcom/ca/mas/core/service/MssoClient$a;

    invoke-direct {v1, p0}, Lcom/ca/mas/core/service/MssoClient$a;-><init>(Lcom/ca/mas/core/service/MssoClient;)V

    invoke-virtual {v0, v1, p1}, Lcom/ca/mas/core/service/d;->c(Lcom/ca/mas/core/util/Functions$Unary;Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/ca/mas/core/service/f;->b()Lcom/ca/mas/core/service/f;

    move-result-object v0

    new-instance v1, Lcom/ca/mas/core/service/MssoClient$b;

    invoke-direct {v1, p0}, Lcom/ca/mas/core/service/MssoClient$b;-><init>(Lcom/ca/mas/core/service/MssoClient;)V

    invoke-virtual {v0, v1, p1}, Lcom/ca/mas/core/service/f;->c(Lcom/ca/mas/core/util/Functions$Unary;Landroid/os/Bundle;)V

    .line 3
    invoke-static {}, Lcom/ca/mas/core/service/a;->c()Lcom/ca/mas/core/service/a;

    move-result-object v0

    new-instance v1, Lcom/ca/mas/core/service/MssoClient$c;

    invoke-direct {v1, p0}, Lcom/ca/mas/core/service/MssoClient$c;-><init>(Lcom/ca/mas/core/service/MssoClient;)V

    invoke-virtual {v0, v1, p1}, Lcom/ca/mas/core/service/a;->e(Lcom/ca/mas/core/util/Functions$Unary;Landroid/os/Bundle;)V

    return-void
.end method

.method public cancelRequest(JLandroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/service/f;->b()Lcom/ca/mas/core/service/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ca/mas/core/service/f;->d(J)Lcom/ca/mas/core/service/e;

    .line 2
    invoke-static {}, Lcom/ca/mas/core/service/d;->b()Lcom/ca/mas/core/service/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ca/mas/core/service/d;->d(J)Lcom/ca/mas/core/service/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/ca/mas/core/service/a;->c()Lcom/ca/mas/core/service/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ca/mas/core/service/a;->f(J)Lcom/ca/mas/core/service/c;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/ca/mas/core/service/c;->f()Landroid/os/ResultReceiver;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/ca/mas/core/service/c;->f()Landroid/os/ResultReceiver;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public processPendingRequests()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ca/mas/core/service/MssoClient;->a:Landroid/content/Context;

    const-class v2, Lcom/ca/mas/core/service/MssoService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ca.mas.core.service.action.PROCESS_REQUEST"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.ca.mas.core.service.req.extra.requestId"

    const-wide/16 v2, -0x1

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lcom/ca/mas/core/service/MssoServiceState;->getInstance()Lcom/ca/mas/core/service/MssoServiceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/core/service/MssoServiceState;->isBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/ca/mas/core/service/MssoServiceState;->getInstance()Lcom/ca/mas/core/service/MssoServiceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/core/service/MssoServiceState;->getMssoService()Lcom/ca/mas/core/service/MssoService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ca/mas/core/service/MssoService;->handleWork(Landroid/content/Intent;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Lcom/ca/mas/core/service/MssoClient;->a(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public processRequest(Lcom/ca/mas/foundation/MASRequest;Landroid/os/ResultReceiver;)J
    .locals 3

    .line 1
    new-instance v0, Lcom/ca/mas/core/service/c;

    iget-object v1, p0, Lcom/ca/mas/core/service/MssoClient;->b:Lcom/ca/mas/core/context/MssoContext;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/ca/mas/core/service/c;-><init>(Ljava/lang/Object;Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/foundation/MASRequest;Landroid/os/ResultReceiver;)V

    .line 2
    invoke-static {}, Lcom/ca/mas/core/service/d;->b()Lcom/ca/mas/core/service/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ca/mas/core/service/d;->a(Lcom/ca/mas/core/service/c;)V

    .line 3
    invoke-virtual {v0}, Lcom/ca/mas/core/service/c;->c()J

    move-result-wide p1

    .line 4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ca/mas/core/service/MssoClient;->a:Landroid/content/Context;

    const-class v2, Lcom/ca/mas/core/service/MssoService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ca.mas.core.service.action.PROCESS_REQUEST"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.ca.mas.core.service.req.extra.requestId"

    .line 6
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 7
    invoke-static {}, Lcom/ca/mas/core/service/MssoServiceState;->getInstance()Lcom/ca/mas/core/service/MssoServiceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/core/service/MssoServiceState;->isBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-static {}, Lcom/ca/mas/core/service/MssoServiceState;->getInstance()Lcom/ca/mas/core/service/MssoServiceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/core/service/MssoServiceState;->getMssoService()Lcom/ca/mas/core/service/MssoService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ca/mas/core/service/MssoService;->handleWork(Landroid/content/Intent;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, v0}, Lcom/ca/mas/core/service/MssoClient;->a(Landroid/content/Intent;)V

    :goto_0
    return-wide p1
.end method
