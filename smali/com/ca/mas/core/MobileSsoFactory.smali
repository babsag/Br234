.class public final Lcom/ca/mas/core/MobileSsoFactory;
.super Ljava/lang/Object;
.source "MobileSsoFactory.java"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/ca/mas/core/MobileSso;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/ca/mas/core/MobileSsoFactory;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/ca/mas/core/MobileSso;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/ca/mas/core/context/MssoContext;->newContext()Lcom/ca/mas/core/context/MssoContext;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lcom/ca/mas/core/context/MssoContext;->init(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v0}, Lcom/ca/mas/core/context/MssoContext;->initPolicyManager()V

    .line 5
    new-instance v1, Lcom/ca/mas/core/service/MssoClient;

    invoke-direct {v1, v0, p0}, Lcom/ca/mas/core/service/MssoClient;-><init>(Lcom/ca/mas/core/context/MssoContext;Landroid/content/Context;)V

    .line 6
    new-instance v2, Lcom/ca/mas/core/MobileSsoFactory$a;

    invoke-direct {v2, v1, v0, p0}, Lcom/ca/mas/core/MobileSsoFactory$a;-><init>(Lcom/ca/mas/core/service/MssoClient;Lcom/ca/mas/core/context/MssoContext;Landroid/content/Context;)V

    return-object v2
.end method

.method private static b(Lorg/json/JSONObject;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGateway()Lcom/ca/mas/core/conf/Server;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/ca/mas/core/conf/Server;

    invoke-direct {v1, p0}, Lcom/ca/mas/core/conf/Server;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/ca/mas/core/conf/Server;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance()Lcom/ca/mas/core/MobileSso;
    .locals 2

    .line 1
    sget-object v0, Lcom/ca/mas/core/MobileSsoFactory;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ca/mas/core/MobileSso;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MAS SDK has not been initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ca/mas/core/MobileSso;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 7
    invoke-static {p0, v0}, Lcom/ca/mas/core/MobileSsoFactory;->getInstance(Landroid/content/Context;Z)Lcom/ca/mas/core/MobileSso;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/net/URL;)Lcom/ca/mas/core/MobileSso;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ca/mas/core/conf/ConfigurationManager;->init(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConfig(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object p1

    .line 12
    invoke-static {p0, p1}, Lcom/ca/mas/core/MobileSsoFactory;->getInstance(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/ca/mas/core/MobileSso;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 13
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 14
    :try_start_2
    new-instance p1, Lcom/ca/mas/core/error/MAGRuntimeException;

    const v1, 0x186a2

    invoke-direct {p1, v1, p0}, Lcom/ca/mas/core/error/MAGRuntimeException;-><init>(ILjava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 15
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 16
    :catch_2
    :cond_1
    throw p0

    .line 17
    :cond_2
    new-instance p0, Lcom/ca/mas/core/error/MAGRuntimeException;

    const p1, 0x186a1

    const-string v0, "Invalid URL, only file URL is allowed"

    invoke-direct {p0, p1, v0}, Lcom/ca/mas/core/error/MAGRuntimeException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/ca/mas/core/MobileSso;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    sget-object v0, Lcom/ca/mas/core/MobileSsoFactory;->a:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 19
    :try_start_0
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ca/mas/core/conf/ConfigurationManager;->init(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 20
    invoke-static {p1}, Lcom/ca/mas/core/MobileSsoFactory;->b(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    sget-object v1, Lcom/ca/mas/core/EventDispatcher;->BEFORE_GATEWAY_SWITCH:Lcom/ca/mas/core/EventDispatcher;

    invoke-virtual {v1}, Ljava/util/Observable;->notifyObservers()V

    const/4 v1, 0x1

    .line 22
    :cond_0
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ca/mas/core/conf/ConfigurationManager;->activate(Lorg/json/JSONObject;)V

    .line 23
    invoke-static {p0}, Lcom/ca/mas/core/MobileSsoFactory;->a(Landroid/content/Context;)Lcom/ca/mas/core/MobileSso;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    .line 24
    sget-object p0, Lcom/ca/mas/core/EventDispatcher;->AFTER_GATEWAY_SWITCH:Lcom/ca/mas/core/EventDispatcher;

    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    .line 25
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ca/mas/core/MobileSso;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance(Landroid/content/Context;Z)Lcom/ca/mas/core/MobileSso;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ca/mas/core/conf/ConfigurationManager;->init(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ca/mas/core/conf/ConfigurationManager;->activateDefault()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/ca/mas/core/MobileSsoFactory;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ca/mas/core/MobileSso;

    if-eqz p1, :cond_1

    return-object p1

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfig()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ca/mas/core/MobileSsoFactory;->getInstance(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/ca/mas/core/MobileSso;

    move-result-object p0

    return-object p0
.end method

.method public static reset()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ca/mas/core/MobileSsoFactory;->a:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/core/store/StorageProvider;->reset()V

    .line 4
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/core/conf/ConfigurationManager;->reset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :catch_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
