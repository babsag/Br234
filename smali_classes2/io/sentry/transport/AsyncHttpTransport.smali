.class public final Lio/sentry/transport/AsyncHttpTransport;
.super Ljava/lang/Object;
.source "AsyncHttpTransport.java"

# interfaces
.implements Lio/sentry/transport/ITransport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/transport/AsyncHttpTransport$c;,
        Lio/sentry/transport/AsyncHttpTransport$b;
    }
.end annotation


# instance fields
.field private final a:Lio/sentry/transport/q;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lio/sentry/cache/IEnvelopeCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lio/sentry/SentryOptions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lio/sentry/transport/RateLimiter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lio/sentry/transport/ITransportGate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lio/sentry/transport/n;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/transport/RateLimiter;Lio/sentry/transport/ITransportGate;Lio/sentry/RequestDetails;)V
    .locals 9
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/transport/RateLimiter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/sentry/transport/ITransportGate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lio/sentry/RequestDetails;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getMaxQueueSize()I

    move-result v0

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;

    move-result-object v1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    .line 2
    invoke-static {v0, v1, v2}, Lio/sentry/transport/AsyncHttpTransport;->d(ILio/sentry/cache/IEnvelopeCache;Lio/sentry/ILogger;)Lio/sentry/transport/q;

    move-result-object v4

    new-instance v8, Lio/sentry/transport/n;

    invoke-direct {v8, p1, p4, p2}, Lio/sentry/transport/n;-><init>(Lio/sentry/SentryOptions;Lio/sentry/RequestDetails;Lio/sentry/transport/RateLimiter;)V

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 3
    invoke-direct/range {v3 .. v8}, Lio/sentry/transport/AsyncHttpTransport;-><init>(Lio/sentry/transport/q;Lio/sentry/SentryOptions;Lio/sentry/transport/RateLimiter;Lio/sentry/transport/ITransportGate;Lio/sentry/transport/n;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/transport/q;Lio/sentry/SentryOptions;Lio/sentry/transport/RateLimiter;Lio/sentry/transport/ITransportGate;Lio/sentry/transport/n;)V
    .locals 1
    .param p1    # Lio/sentry/transport/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/sentry/transport/RateLimiter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lio/sentry/transport/ITransportGate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lio/sentry/transport/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "executor is required"

    .line 5
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/transport/q;

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->a:Lio/sentry/transport/q;

    .line 6
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;

    move-result-object p1

    const-string v0, "envelopeCache is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/cache/IEnvelopeCache;

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->b:Lio/sentry/cache/IEnvelopeCache;

    const-string p1, "options is required"

    .line 7
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->c:Lio/sentry/SentryOptions;

    const-string p1, "rateLimiter is required"

    .line 8
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/transport/RateLimiter;

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->d:Lio/sentry/transport/RateLimiter;

    const-string p1, "transportGate is required"

    .line 9
    invoke-static {p4, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/transport/ITransportGate;

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->e:Lio/sentry/transport/ITransportGate;

    const-string p1, "httpConnection is required"

    .line 10
    invoke-static {p5, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/transport/n;

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->f:Lio/sentry/transport/n;

    return-void
.end method

.method static synthetic a(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport;->c:Lio/sentry/SentryOptions;

    return-object p0
.end method

.method static synthetic b(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/transport/ITransportGate;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport;->e:Lio/sentry/transport/ITransportGate;

    return-object p0
.end method

.method static synthetic c(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/transport/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport;->f:Lio/sentry/transport/n;

    return-object p0
.end method

.method private static d(ILio/sentry/cache/IEnvelopeCache;Lio/sentry/ILogger;)Lio/sentry/transport/q;
    .locals 6
    .param p1    # Lio/sentry/cache/IEnvelopeCache;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/ILogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v4, Lio/sentry/transport/h;

    invoke-direct {v4, p1, p2}, Lio/sentry/transport/h;-><init>(Lio/sentry/cache/IEnvelopeCache;Lio/sentry/ILogger;)V

    .line 2
    new-instance p1, Lio/sentry/transport/q;

    new-instance v3, Lio/sentry/transport/AsyncHttpTransport$b;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lio/sentry/transport/AsyncHttpTransport$b;-><init>(Lio/sentry/transport/AsyncHttpTransport$a;)V

    const/4 v1, 0x1

    move-object v0, p1

    move v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/sentry/transport/q;-><init>(IILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;Lio/sentry/ILogger;)V

    return-object p1
.end method

.method static synthetic e(Lio/sentry/cache/IEnvelopeCache;Lio/sentry/ILogger;Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    .line 1
    instance-of p3, p2, Lio/sentry/transport/AsyncHttpTransport$c;

    if-eqz p3, :cond_1

    .line 2
    check-cast p2, Lio/sentry/transport/AsyncHttpTransport$c;

    .line 3
    invoke-static {p2}, Lio/sentry/transport/AsyncHttpTransport$c;->a(Lio/sentry/transport/AsyncHttpTransport$c;)Lio/sentry/Hint;

    move-result-object p3

    const-class v0, Lio/sentry/hints/Cached;

    invoke-static {p3, v0}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 4
    invoke-static {p2}, Lio/sentry/transport/AsyncHttpTransport$c;->b(Lio/sentry/transport/AsyncHttpTransport$c;)Lio/sentry/SentryEnvelope;

    move-result-object p3

    invoke-static {p2}, Lio/sentry/transport/AsyncHttpTransport$c;->a(Lio/sentry/transport/AsyncHttpTransport$c;)Lio/sentry/Hint;

    move-result-object v0

    invoke-interface {p0, p3, v0}, Lio/sentry/cache/IEnvelopeCache;->store(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V

    .line 5
    :cond_0
    invoke-static {p2}, Lio/sentry/transport/AsyncHttpTransport$c;->a(Lio/sentry/transport/AsyncHttpTransport$c;)Lio/sentry/Hint;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lio/sentry/transport/AsyncHttpTransport;->h(Lio/sentry/Hint;Z)V

    .line 6
    sget-object p0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Envelope rejected"

    invoke-interface {p1, p0, p3, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic f(Lio/sentry/hints/SubmissionResult;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0}, Lio/sentry/hints/SubmissionResult;->setResult(Z)V

    return-void
.end method

.method static synthetic g(ZLio/sentry/hints/Retryable;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lio/sentry/hints/Retryable;->setRetry(Z)V

    return-void
.end method

.method private static h(Lio/sentry/Hint;Z)V
    .locals 2
    .param p0    # Lio/sentry/Hint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Lio/sentry/hints/SubmissionResult;

    sget-object v1, Lio/sentry/transport/i;->a:Lio/sentry/transport/i;

    invoke-static {p0, v0, v1}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 2
    const-class v0, Lio/sentry/hints/Retryable;

    new-instance v1, Lio/sentry/transport/j;

    invoke-direct {v1, p1}, Lio/sentry/transport/j;-><init>(Z)V

    invoke-static {p0, v0, v1}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->a:Lio/sentry/transport/q;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 2
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->c:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Shutting down"

    invoke-interface {v0, v1, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->a:Lio/sentry/transport/q;

    const-wide/16 v3, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->c:Lio/sentry/SentryOptions;

    .line 5
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "Failed to shutdown the async connection async sender within 1 minute. Trying to force it now."

    new-array v4, v2, [Ljava/lang/Object;

    .line 6
    invoke-interface {v0, v1, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->a:Lio/sentry/transport/q;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->c:Lio/sentry/SentryOptions;

    .line 9
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Thread interrupted while closing the connection."

    .line 10
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    return-void
.end method

.method public flush(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->a:Lio/sentry/transport/q;

    invoke-virtual {v0, p1, p2}, Lio/sentry/transport/q;->b(J)V

    return-void
.end method

.method public synthetic send(Lio/sentry/SentryEnvelope;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/transport/o;->a(Lio/sentry/transport/ITransport;Lio/sentry/SentryEnvelope;)V

    return-void
.end method

.method public send(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    .locals 6
    .param p1    # Lio/sentry/SentryEnvelope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/Hint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->b:Lio/sentry/cache/IEnvelopeCache;

    .line 2
    const-class v1, Lio/sentry/hints/Cached;

    invoke-static {p2, v1}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lio/sentry/transport/NoOpEnvelopeCache;->getInstance()Lio/sentry/transport/NoOpEnvelopeCache;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport;->c:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "Captured Envelope is already cached"

    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 5
    :cond_0
    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport;->d:Lio/sentry/transport/RateLimiter;

    invoke-virtual {v1, p1, p2}, Lio/sentry/transport/RateLimiter;->filter(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/SentryEnvelope;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    .line 6
    iget-object p2, p0, Lio/sentry/transport/AsyncHttpTransport;->b:Lio/sentry/cache/IEnvelopeCache;

    invoke-interface {p2, p1}, Lio/sentry/cache/IEnvelopeCache;->discard(Lio/sentry/SentryEnvelope;)V

    goto :goto_0

    .line 7
    :cond_1
    const-class p1, Lio/sentry/hints/DiskFlushNotification;

    invoke-static {p2, p1}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->c:Lio/sentry/SentryOptions;

    .line 9
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object p1

    invoke-interface {p1, v1}, Lio/sentry/clientreport/IClientReportRecorder;->attachReportToEnvelope(Lio/sentry/SentryEnvelope;)Lio/sentry/SentryEnvelope;

    move-result-object v1

    .line 10
    :cond_2
    iget-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->a:Lio/sentry/transport/q;

    new-instance v2, Lio/sentry/transport/AsyncHttpTransport$c;

    invoke-direct {v2, p0, v1, p2, v0}, Lio/sentry/transport/AsyncHttpTransport$c;-><init>(Lio/sentry/transport/AsyncHttpTransport;Lio/sentry/SentryEnvelope;Lio/sentry/Hint;Lio/sentry/cache/IEnvelopeCache;)V

    .line 11
    invoke-virtual {p1, v2}, Lio/sentry/transport/q;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->c:Lio/sentry/SentryOptions;

    .line 14
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object p1

    sget-object p2, Lio/sentry/clientreport/DiscardReason;->QUEUE_OVERFLOW:Lio/sentry/clientreport/DiscardReason;

    .line 15
    invoke-interface {p1, p2, v1}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEnvelope(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V

    :cond_3
    :goto_0
    return-void
.end method
