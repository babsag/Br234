.class public Lcom/ca/mas/foundation/MAS;
.super Ljava/lang/Object;
.source "MAS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/foundation/MAS$RequestCancelledException;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "MAS"

.field private static a:Landroid/content/Context;

.field private static b:Landroid/app/Activity;

.field private static c:Z

.field private static d:Lcom/ca/mas/foundation/MASAuthenticationListener;

.field private static e:Lcom/ca/mas/foundation/MASOtpMultiFactorAuthenticator;

.field private static f:I

.field private static g:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Class;",
            "Lcom/ca/mas/foundation/MASLifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MAS"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    .line 2
    new-instance v0, Lcom/ca/mas/foundation/MASOtpMultiFactorAuthenticator;

    invoke-direct {v0}, Lcom/ca/mas/foundation/MASOtpMultiFactorAuthenticator;-><init>()V

    sput-object v0, Lcom/ca/mas/foundation/MAS;->e:Lcom/ca/mas/foundation/MASOtpMultiFactorAuthenticator;

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/ca/mas/foundation/MAS;->g:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcom/ca/mas/foundation/MAS;->h:Z

    .line 5
    sget-object v0, Lcom/ca/mas/core/EventDispatcher;->STARTED:Lcom/ca/mas/core/EventDispatcher;

    new-instance v1, Lcom/ca/mas/foundation/MAS$a;

    invoke-direct {v1}, Lcom/ca/mas/foundation/MAS$a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/LinkedHashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MAS;->g:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic b()Landroid/app/Activity;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MAS;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .line 1
    sput-object p0, Lcom/ca/mas/foundation/MAS;->b:Landroid/app/Activity;

    return-object p0
.end method

.method public static cancelAllRequest(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/MobileSsoFactory;->getInstance()Lcom/ca/mas/core/MobileSso;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/mas/core/MobileSso;->cancelAllRequests(Landroid/os/Bundle;)V

    return-void
.end method

.method public static cancelAllRequests()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ca/mas/core/MobileSsoFactory;->getInstance()Lcom/ca/mas/core/MobileSso;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ca/mas/core/MobileSso;->cancelAllRequests(Landroid/os/Bundle;)V

    return-void
.end method

.method public static cancelRequest(J)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ca/mas/core/MobileSsoFactory;->getInstance()Lcom/ca/mas/core/MobileSso;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/ca/mas/core/MobileSso;->cancelRequest(JLandroid/os/Bundle;)V

    return-void
.end method

.method public static cancelRequest(JLandroid/os/Bundle;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/ca/mas/core/MobileSsoFactory;->getInstance()Lcom/ca/mas/core/MobileSso;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/ca/mas/core/MobileSso;->cancelRequest(JLandroid/os/Bundle;)V

    return-void
.end method

.method private static d(Lcom/ca/mas/foundation/MASLifecycleListener;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MAS;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static debug()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    return-void
.end method

.method static e()Lcom/ca/mas/foundation/MASAuthenticationListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MAS;->d:Lcom/ca/mas/foundation/MASAuthenticationListener;

    return-object v0
.end method

.method public static enableBrowserBasedAuthentication()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/ca/mas/foundation/MAS;->h:Z

    return-void
.end method

.method public static enableIdTokenValidation(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ca/mas/core/conf/ConfigurationManager;->enableIdTokenValidation(Z)V

    return-void
.end method

.method public static enableJwksPreload(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ca/mas/core/conf/ConfigurationManager;->enableJwksPreload(Z)V

    return-void
.end method

.method public static enablePKCE(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ca/mas/core/conf/ConfigurationManager;->enablePKCE(Z)V

    return-void
.end method

.method private static declared-synchronized f(Landroid/content/Context;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/ca/mas/foundation/MAS;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->stop()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/ca/mas/foundation/MAS;->a:Landroid/content/Context;

    .line 3
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 4
    check-cast p0, Landroid/app/Activity;

    sput-object p0, Lcom/ca/mas/foundation/MAS;->b:Landroid/app/Activity;

    .line 5
    :cond_0
    check-cast v1, Landroid/app/Application;

    invoke-static {v1}, Lcom/ca/mas/foundation/MAS;->h(Landroid/app/Application;)V

    .line 6
    new-instance p0, Lcom/ca/mas/foundation/MASConfiguration;

    sget-object v1, Lcom/ca/mas/foundation/MAS;->a:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/ca/mas/foundation/MASConfiguration;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object p0

    new-instance v1, Lcom/ca/mas/foundation/b;

    sget-object v2, Lcom/ca/mas/foundation/MAS;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/ca/mas/foundation/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/ca/mas/core/conf/ConfigurationManager;->setMobileSsoListener(Lcom/ca/mas/core/MobileSsoListener;)V

    .line 8
    sget-object p0, Lcom/ca/mas/foundation/MAS;->e:Lcom/ca/mas/foundation/MASOtpMultiFactorAuthenticator;

    invoke-static {p0}, Lcom/ca/mas/foundation/MAS;->registerMultiFactorAuthenticator(Lcom/ca/mas/foundation/MASMultiFactorAuthenticator;)V

    .line 9
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->g()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/ca/mas/foundation/MAS;->isPreloadJWKSEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 10
    :cond_1
    new-instance p0, Lcom/ca/mas/foundation/JWKPreLoadListener;

    invoke-direct {p0}, Lcom/ca/mas/foundation/JWKPreLoadListener;-><init>()V

    invoke-static {p0}, Lcom/ca/mas/foundation/MAS;->d(Lcom/ca/mas/foundation/MASLifecycleListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static g()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;->RS256:Lcom/ca/mas/core/token/JWTValidatorFactory$Algorithm;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ca/mas/foundation/MASConfiguration;->getCurrentConfiguration()Lcom/ca/mas/foundation/MASConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/foundation/MASConfiguration;->getIdTokenSignAlg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static gatewayIsReachable(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MAS$e;

    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ca/mas/foundation/MAS$e;-><init>(Landroid/content/Context;Lcom/ca/mas/foundation/MASCallback;)V

    .line 2
    invoke-virtual {v0}, Landroid/content/AsyncTaskLoader;->startLoading()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Lcom/ca/mas/foundation/Internal;
    .end annotation

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MAS;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 1
    .annotation runtime Lcom/ca/mas/foundation/Internal;
    .end annotation

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MAS;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public static getState(Landroid/content/Context;)I
    .locals 1

    .line 1
    sget v0, Lcom/ca/mas/foundation/MAS;->f:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ca/mas/core/conf/ConfigurationManager;->init(Landroid/content/Context;)V

    .line 3
    :try_start_0
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    .line 4
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ca/mas/core/conf/ConfigurationManager;->reset()V

    const/4 p0, 0x2

    .line 5
    sput p0, Lcom/ca/mas/foundation/MAS;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x1

    .line 6
    sput p0, Lcom/ca/mas/foundation/MAS;->f:I

    .line 7
    :goto_0
    sget p0, Lcom/ca/mas/foundation/MAS;->f:I

    return p0
.end method

.method private static h(Landroid/app/Application;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/ca/mas/foundation/MAS;->c:Z

    .line 3
    new-instance v0, Lcom/ca/mas/foundation/MAS$b;

    invoke-direct {v0}, Lcom/ca/mas/foundation/MAS$b;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ca/mas/foundation/MASRequest;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/foundation/MASResponse<",
            "TT;>;>;)J"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ca/mas/core/MobileSsoFactory;->getInstance()Lcom/ca/mas/core/MobileSso;

    move-result-object v0

    new-instance v1, Lcom/ca/mas/foundation/MAS$d;

    invoke-static {p1}, Lcom/ca/mas/foundation/notify/Callback;->getHandler(Lcom/ca/mas/foundation/MASCallback;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2, p1, p0}, Lcom/ca/mas/foundation/MAS$d;-><init>(Landroid/os/Handler;Lcom/ca/mas/foundation/MASCallback;Lcom/ca/mas/foundation/MASRequest;)V

    invoke-interface {v0, p0, v1}, Lcom/ca/mas/core/MobileSso;->processRequest(Lcom/ca/mas/foundation/MASRequest;Landroid/os/ResultReceiver;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static isAuthenticationListenerRegistered()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MAS;->d:Lcom/ca/mas/foundation/MASAuthenticationListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBrowserBasedAuthenticationEnabled()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->h:Z

    return v0
.end method

.method public static isIdTokenValidationEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->isIdTokenValidationEnabled()Z

    move-result v0

    return v0
.end method

.method public static isPKCEEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->isPKCEEnabled()Z

    move-result v0

    return v0
.end method

.method public static isPreloadJWKSEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->isJwksPreloadEnabled()Z

    move-result v0

    return v0
.end method

.method public static postMultiPartForm(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MultiPart;Lcom/ca/mas/foundation/MASProgressListener;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/foundation/MASException;,
            Lcom/ca/mas/core/error/MAGRuntimeException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/ca/mas/foundation/MultiPart;->getFilePart()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ca/mas/foundation/MultiPart;->getFormFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-direct {v0, p0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Lcom/ca/mas/foundation/MASRequest;)V

    invoke-static {p1, p2}, Lcom/ca/mas/foundation/MASRequestBody;->multipartBody(Lcom/ca/mas/foundation/MultiPart;Lcom/ca/mas/foundation/MASProgressListener;)Lcom/ca/mas/foundation/MASRequestBody;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->post(Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object p0

    .line 4
    invoke-static {p0, p3}, Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J

    return-void

    .line 5
    :cond_1
    new-instance p0, Lcom/ca/mas/core/error/MAGRuntimeException;

    const p1, 0x1876d

    const-string p2, "Multipart body empty"

    invoke-direct {p0, p1, p2}, Lcom/ca/mas/core/error/MAGRuntimeException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static processPendingRequests()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/MobileSsoFactory;->getInstance()Lcom/ca/mas/core/MobileSso;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/core/MobileSso;->processPendingRequests()V

    return-void
.end method

.method public static registerMultiFactorAuthenticator(Lcom/ca/mas/foundation/MASMultiFactorAuthenticator;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ca/mas/core/conf/ConfigurationManager;->registerResponseInterceptor(Lcom/ca/mas/core/ResponseInterceptor;)V

    return-void
.end method

.method public static setAuthenticationListener(Lcom/ca/mas/foundation/MASAuthenticationListener;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ca/mas/foundation/MAS;->d:Lcom/ca/mas/foundation/MASAuthenticationListener;

    return-void
.end method

.method public static setConfigurationFileName(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ca/mas/core/conf/ConfigurationManager;->setConfigurationFileName(Ljava/lang/String;)V

    return-void
.end method

.method public static setConnectionListener(Lcom/ca/mas/foundation/MASConnectionListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ca/mas/core/conf/ConfigurationManager;->setConnectionListener(Lcom/ca/mas/foundation/MASConnectionListener;)V

    return-void
.end method

.method public static setGrantFlow(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object p0

    sget-object v0, Lcom/ca/mas/foundation/MASGrantProvider;->PASSWORD:Lcom/ca/mas/foundation/MASGrantProvider;

    invoke-virtual {p0, v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->setDefaultGrantProvider(Lcom/ca/mas/foundation/MASGrantProvider;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Flow Type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object p0

    sget-object v0, Lcom/ca/mas/foundation/MASGrantProvider;->CLIENT_CREDENTIALS:Lcom/ca/mas/foundation/MASGrantProvider;

    invoke-virtual {p0, v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->setDefaultGrantProvider(Lcom/ca/mas/foundation/MASGrantProvider;)V

    :goto_0
    return-void
.end method

.method public static sign(Lcom/ca/mas/foundation/MASClaims;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/foundation/MASException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/store/StorageProvider;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenProvider;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ca/mas/foundation/MAS;->sign(Lcom/ca/mas/foundation/MASClaims;Ljava/security/PrivateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sign(Lcom/ca/mas/foundation/MASClaims;Ljava/security/PrivateKey;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/foundation/MASException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/ca/mas/foundation/MASDevice;->getCurrentDevice()Lcom/ca/mas/foundation/MASDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASDevice;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0, p1}, Lcom/ca/mas/foundation/d;->a(Lcom/ca/mas/foundation/MASClaims;Ljava/security/PrivateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Device not registered."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/ca/mas/foundation/MAS;->f(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Lcom/ca/mas/core/MobileSsoFactory;->getInstance(Landroid/content/Context;)Lcom/ca/mas/core/MobileSso;

    const/4 p0, 0x3

    .line 3
    sput p0, Lcom/ca/mas/foundation/MAS;->f:I

    .line 4
    sget-object p0, Lcom/ca/mas/core/EventDispatcher;->STARTED:Lcom/ca/mas/core/EventDispatcher;

    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/net/URL;)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    invoke-static {p0}, Lcom/ca/mas/foundation/MAS;->f(Landroid/content/Context;)V

    .line 15
    invoke-static {p0, p1}, Lcom/ca/mas/core/MobileSsoFactory;->getInstance(Landroid/content/Context;Ljava/net/URL;)Lcom/ca/mas/core/MobileSso;

    const/4 p0, 0x3

    .line 16
    sput p0, Lcom/ca/mas/foundation/MAS;->f:I

    .line 17
    sget-object p0, Lcom/ca/mas/core/EventDispatcher;->STARTED:Lcom/ca/mas/core/EventDispatcher;

    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/net/URL;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/net/URL;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 18
    :try_start_0
    invoke-static {p0}, Lcom/ca/mas/foundation/MAS;->start(Landroid/content/Context;)V

    .line 19
    invoke-static {p2, v0}, Lcom/ca/mas/foundation/notify/Callback;->onSuccess(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 20
    invoke-static {p2, p0}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 21
    :cond_0
    sget-object v1, Lcom/ca/mas/foundation/MAS;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/ca/mas/foundation/MAS;->a:Landroid/content/Context;

    .line 23
    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v1, "subjectKeyHash"

    .line 24
    invoke-virtual {v4, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 25
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 26
    :cond_2
    new-instance v1, Lcom/ca/mas/foundation/MAS$c;

    move-object v2, v1

    move-object v5, p1

    move-object v6, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/ca/mas/foundation/MAS$c;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/net/URL;Landroid/content/Context;Lcom/ca/mas/foundation/MASCallback;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Void;

    const/4 p1, 0x0

    aput-object v0, p0, p1

    .line 27
    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 28
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "subjectKeyHash is not provided."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p0}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static start(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/conf/ConfigurationManager;->setJsonConfig(Lorg/json/JSONObject;)V

    .line 10
    invoke-static {p0}, Lcom/ca/mas/foundation/MAS;->f(Landroid/content/Context;)V

    .line 11
    invoke-static {p0, p1}, Lcom/ca/mas/core/MobileSsoFactory;->getInstance(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/ca/mas/core/MobileSso;

    const/4 p0, 0x3

    .line 12
    sput p0, Lcom/ca/mas/foundation/MAS;->f:I

    .line 13
    sget-object p0, Lcom/ca/mas/core/EventDispatcher;->STARTED:Lcom/ca/mas/core/EventDispatcher;

    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    return-void
.end method

.method public static start(Landroid/content/Context;Z)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-static {p0}, Lcom/ca/mas/foundation/MAS;->f(Landroid/content/Context;)V

    .line 6
    invoke-static {p0, p1}, Lcom/ca/mas/core/MobileSsoFactory;->getInstance(Landroid/content/Context;Z)Lcom/ca/mas/core/MobileSso;

    const/4 p0, 0x3

    .line 7
    sput p0, Lcom/ca/mas/foundation/MAS;->f:I

    .line 8
    sget-object p0, Lcom/ca/mas/core/EventDispatcher;->STARTED:Lcom/ca/mas/core/EventDispatcher;

    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    return-void
.end method

.method public static stop()V
    .locals 3

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MAS;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ca/mas/core/service/MssoServiceState;->getInstance()Lcom/ca/mas/core/service/MssoServiceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/service/MssoServiceState;->getServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/ca/mas/foundation/MAS;->a:Landroid/content/Context;

    invoke-static {}, Lcom/ca/mas/core/service/MssoServiceState;->getInstance()Lcom/ca/mas/core/service/MssoServiceState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ca/mas/core/service/MssoServiceState;->getServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3
    invoke-static {}, Lcom/ca/mas/core/service/MssoServiceState;->getInstance()Lcom/ca/mas/core/service/MssoServiceState;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ca/mas/core/service/MssoServiceState;->setBound(Z)V

    .line 4
    invoke-static {}, Lcom/ca/mas/core/service/MssoServiceState;->getInstance()Lcom/ca/mas/core/service/MssoServiceState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ca/mas/core/service/MssoServiceState;->setServiceConnection(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x4

    .line 5
    sput v0, Lcom/ca/mas/foundation/MAS;->f:I

    .line 6
    sget-object v0, Lcom/ca/mas/core/EventDispatcher;->STOP:Lcom/ca/mas/core/EventDispatcher;

    invoke-virtual {v0}, Ljava/util/Observable;->notifyObservers()V

    .line 7
    invoke-static {}, Lcom/ca/mas/core/MobileSsoFactory;->reset()V

    .line 8
    sput-object v1, Lcom/ca/mas/foundation/MAS;->a:Landroid/content/Context;

    return-void
.end method
