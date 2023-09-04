.class public final Lokhttp3/mockwebserver/MockWebServer;
.super Lorg/junit/rules/ExternalResource;
.source "MockWebServer.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final a:Ljavax/net/ssl/X509TrustManager;

.field private static final b:Ljava/util/logging/Logger;


# instance fields
.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lokhttp3/mockwebserver/RecordedRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lokhttp3/internal/http2/Http2Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private g:J

.field private h:Ljavax/net/ServerSocketFactory;

.field private i:Ljava/net/ServerSocket;

.field private j:Ljavax/net/ssl/SSLSocketFactory;

.field private k:Ljava/util/concurrent/ExecutorService;

.field private l:Z

.field private m:I

.field private n:Lokhttp3/mockwebserver/Dispatcher;

.field private o:I

.field private p:Ljava/net/InetSocketAddress;

.field private q:Z

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lokhttp3/internal/Internal;->initializeInstanceForTests()V

    .line 2
    new-instance v0, Lokhttp3/mockwebserver/MockWebServer$a;

    invoke-direct {v0}, Lokhttp3/mockwebserver/MockWebServer$a;-><init>()V

    sput-object v0, Lokhttp3/mockwebserver/MockWebServer;->a:Ljavax/net/ssl/X509TrustManager;

    .line 3
    const-class v0, Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/mockwebserver/MockWebServer;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/junit/rules/ExternalResource;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->c:Ljava/util/concurrent/BlockingQueue;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->d:Ljava/util/Set;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->e:Ljava/util/Set;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide v0, 0x7fffffffffffffffL

    .line 8
    iput-wide v0, p0, Lokhttp3/mockwebserver/MockWebServer;->g:J

    .line 9
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->h:Ljavax/net/ServerSocketFactory;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lokhttp3/mockwebserver/MockWebServer;->m:I

    .line 11
    new-instance v1, Lokhttp3/mockwebserver/QueueDispatcher;

    invoke-direct {v1}, Lokhttp3/mockwebserver/QueueDispatcher;-><init>()V

    iput-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->n:Lokhttp3/mockwebserver/Dispatcher;

    const/4 v1, -0x1

    .line 12
    iput v1, p0, Lokhttp3/mockwebserver/MockWebServer;->o:I

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lokhttp3/mockwebserver/MockWebServer;->q:Z

    const/4 v2, 0x2

    new-array v2, v2, [Lokhttp3/Protocol;

    .line 14
    sget-object v3, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    aput-object v3, v2, v0

    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    aput-object v0, v2, v1

    invoke-static {v2}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->r:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized b(Ljava/net/InetSocketAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/mockwebserver/MockWebServer;->s:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lokhttp3/mockwebserver/MockWebServer;->s:Z

    const-string v1, "MockWebServer"

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->k:Ljava/util/concurrent/ExecutorService;

    .line 4
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->p:Ljava/net/InetSocketAddress;

    .line 5
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->h:Ljavax/net/ServerSocketFactory;

    invoke-virtual {v1}, Ljavax/net/ServerSocketFactory;->createServerSocket()Ljava/net/ServerSocket;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->i:Ljava/net/ServerSocket;

    .line 6
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 7
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->i:Ljava/net/ServerSocket;

    const/16 v3, 0x32

    invoke-virtual {v1, p1, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 8
    iget-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->i:Ljava/net/ServerSocket;

    invoke-virtual {p1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p1

    iput p1, p0, Lokhttp3/mockwebserver/MockWebServer;->o:I

    .line 9
    iget-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lokhttp3/mockwebserver/MockWebServer$b;

    const-string v3, "MockWebServer %s"

    new-array v0, v0, [Ljava/lang/Object;

    iget v4, p0, Lokhttp3/mockwebserver/MockWebServer;->o:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-direct {v1, p0, v3, v0}, Lokhttp3/mockwebserver/MockWebServer$b;-><init>(Lokhttp3/mockwebserver/MockWebServer;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "start() already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected declared-synchronized after()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2
    :try_start_1
    sget-object v1, Lokhttp3/mockwebserver/MockWebServer;->b:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "MockWebServer shutdown failed"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized before()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/mockwebserver/MockWebServer;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 4
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->shutdown()V

    return-void
.end method

.method public enqueue(Lokhttp3/mockwebserver/MockResponse;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->n:Lokhttp3/mockwebserver/Dispatcher;

    check-cast v0, Lokhttp3/mockwebserver/QueueDispatcher;

    invoke-virtual {p1}, Lokhttp3/mockwebserver/MockResponse;->clone()Lokhttp3/mockwebserver/MockResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/mockwebserver/QueueDispatcher;->enqueueResponse(Lokhttp3/mockwebserver/MockResponse;)V

    return-void
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->before()V

    .line 2
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->p:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->before()V

    .line 2
    iget v0, p0, Lokhttp3/mockwebserver/MockWebServer;->o:I

    return v0
.end method

.method public getRequestCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public noClientAuth()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lokhttp3/mockwebserver/MockWebServer;->m:I

    return-void
.end method

.method public protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->r:Ljava/util/List;

    return-object v0
.end method

.method public requestClientAuth()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lokhttp3/mockwebserver/MockWebServer;->m:I

    return-void
.end method

.method public requireClientAuth()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lokhttp3/mockwebserver/MockWebServer;->m:I

    return-void
.end method

.method public setBodyLimit(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lokhttp3/mockwebserver/MockWebServer;->g:J

    return-void
.end method

.method public setDispatcher(Lokhttp3/mockwebserver/Dispatcher;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->n:Lokhttp3/mockwebserver/Dispatcher;

    return-void
.end method

.method public setProtocolNegotiationEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/mockwebserver/MockWebServer;->q:Z

    return-void
.end method

.method public setProtocols(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2
    sget-object v0, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols containing h2_prior_knowledge cannot use other protocols: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->r:Ljava/util/List;

    return-void

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "protocols must not contain null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setServerSocketFactory(Ljavax/net/ServerSocketFactory;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->k:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->h:Ljavax/net/ServerSocketFactory;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setServerSocketFactory() must be called before start()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized shutdown()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/mockwebserver/MockWebServer;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->i:Ljava/net/ServerSocket;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->k:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Gave up waiting for executor to shut down"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7
    :catch_0
    :try_start_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "shutdown() before start()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lokhttp3/mockwebserver/MockWebServer;->start(I)V

    return-void
.end method

.method public start(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "localhost"

    .line 2
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lokhttp3/mockwebserver/MockWebServer;->start(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public start(Ljava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, v0}, Lokhttp3/mockwebserver/MockWebServer;->b(Ljava/net/InetSocketAddress;)V

    return-void
.end method

.method public takeRequest()Lokhttp3/mockwebserver/RecordedRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/mockwebserver/RecordedRequest;

    return-object v0
.end method

.method public takeRequest(JLjava/util/concurrent/TimeUnit;)Lokhttp3/mockwebserver/RecordedRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/mockwebserver/RecordedRequest;

    return-object p1
.end method

.method public toProxyAddress()Ljava/net/Proxy;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->before()V

    .line 2
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->p:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 4
    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v1, v2, v0}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MockWebServer["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/mockwebserver/MockWebServer;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public url(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v0}, Lokhttp3/HttpUrl$Builder;-><init>()V

    .line 2
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->j:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_0

    const-string v1, "https"

    goto :goto_0

    :cond_0
    const-string v1, "http"

    :goto_0
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->port(I)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    return-object p1
.end method

.method public useHttps(Ljavax/net/ssl/SSLSocketFactory;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->j:Ljavax/net/ssl/SSLSocketFactory;

    .line 2
    iput-boolean p2, p0, Lokhttp3/mockwebserver/MockWebServer;->l:Z

    return-void
.end method
