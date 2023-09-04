.class final Lio/sentry/transport/AsyncHttpTransport$c;
.super Ljava/lang/Object;
.source "AsyncHttpTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/transport/AsyncHttpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:Lio/sentry/SentryEnvelope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lio/sentry/Hint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lio/sentry/cache/IEnvelopeCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lio/sentry/transport/TransportResult;

.field final synthetic e:Lio/sentry/transport/AsyncHttpTransport;


# direct methods
.method constructor <init>(Lio/sentry/transport/AsyncHttpTransport;Lio/sentry/SentryEnvelope;Lio/sentry/Hint;Lio/sentry/cache/IEnvelopeCache;)V
    .locals 0
    .param p1    # Lio/sentry/transport/AsyncHttpTransport;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryEnvelope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/sentry/Hint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$c;->e:Lio/sentry/transport/AsyncHttpTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lio/sentry/transport/TransportResult;->error()Lio/sentry/transport/TransportResult;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$c;->d:Lio/sentry/transport/TransportResult;

    const-string p1, "Envelope is required."

    .line 3
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryEnvelope;

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$c;->a:Lio/sentry/SentryEnvelope;

    .line 4
    iput-object p3, p0, Lio/sentry/transport/AsyncHttpTransport$c;->b:Lio/sentry/Hint;

    const-string p1, "EnvelopeCache is required."

    .line 5
    invoke-static {p4, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/cache/IEnvelopeCache;

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$c;->c:Lio/sentry/cache/IEnvelopeCache;

    return-void
.end method

.method static synthetic a(Lio/sentry/transport/AsyncHttpTransport$c;)Lio/sentry/Hint;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport$c;->b:Lio/sentry/Hint;

    return-object p0
.end method

.method static synthetic b(Lio/sentry/transport/AsyncHttpTransport$c;)Lio/sentry/SentryEnvelope;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport$c;->a:Lio/sentry/SentryEnvelope;

    return-object p0
.end method

.method private c()Lio/sentry/transport/TransportResult;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Lio/sentry/hints/Retryable;

    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport$c;->d:Lio/sentry/transport/TransportResult;

    .line 2
    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$c;->c:Lio/sentry/cache/IEnvelopeCache;

    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport$c;->a:Lio/sentry/SentryEnvelope;

    iget-object v4, p0, Lio/sentry/transport/AsyncHttpTransport$c;->b:Lio/sentry/Hint;

    invoke-interface {v2, v3, v4}, Lio/sentry/cache/IEnvelopeCache;->store(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V

    .line 3
    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$c;->b:Lio/sentry/Hint;

    const-class v3, Lio/sentry/hints/DiskFlushNotification;

    new-instance v4, Lio/sentry/transport/c;

    invoke-direct {v4, p0}, Lio/sentry/transport/c;-><init>(Lio/sentry/transport/AsyncHttpTransport$c;)V

    invoke-static {v2, v3, v4}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 4
    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$c;->e:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v2}, Lio/sentry/transport/AsyncHttpTransport;->b(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/transport/ITransportGate;

    move-result-object v2

    invoke-interface {v2}, Lio/sentry/transport/ITransportGate;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport$c;->e:Lio/sentry/transport/AsyncHttpTransport;

    .line 6
    invoke-static {v1}, Lio/sentry/transport/AsyncHttpTransport;->a(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$c;->a:Lio/sentry/SentryEnvelope;

    invoke-interface {v1, v2}, Lio/sentry/clientreport/IClientReportRecorder;->attachReportToEnvelope(Lio/sentry/SentryEnvelope;)Lio/sentry/SentryEnvelope;

    move-result-object v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$c;->e:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v2}, Lio/sentry/transport/AsyncHttpTransport;->c(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/transport/n;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/sentry/transport/n;->h(Lio/sentry/SentryEnvelope;)Lio/sentry/transport/TransportResult;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lio/sentry/transport/TransportResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport$c;->c:Lio/sentry/cache/IEnvelopeCache;

    iget-object v4, p0, Lio/sentry/transport/AsyncHttpTransport$c;->a:Lio/sentry/SentryEnvelope;

    invoke-interface {v3, v4}, Lio/sentry/cache/IEnvelopeCache;->discard(Lio/sentry/SentryEnvelope;)V

    move-object v1, v2

    goto :goto_0

    .line 10
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The transport failed to send the envelope with response code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v2}, Lio/sentry/transport/TransportResult;->getResponseCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12
    iget-object v4, p0, Lio/sentry/transport/AsyncHttpTransport$c;->e:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v4}, Lio/sentry/transport/AsyncHttpTransport;->a(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v3, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v2}, Lio/sentry/transport/TransportResult;->getResponseCode()I

    move-result v4

    const/16 v5, 0x190

    if-lt v4, v5, :cond_1

    invoke-virtual {v2}, Lio/sentry/transport/TransportResult;->getResponseCode()I

    move-result v2

    const/16 v4, 0x1ad

    if-eq v2, v4, :cond_1

    .line 14
    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$c;->b:Lio/sentry/Hint;

    new-instance v4, Lio/sentry/transport/b;

    invoke-direct {v4, p0, v1}, Lio/sentry/transport/b;-><init>(Lio/sentry/transport/AsyncHttpTransport$c;Lio/sentry/SentryEnvelope;)V

    invoke-static {v2, v0, v4}, Lio/sentry/util/HintUtils;->runIfDoesNotHaveType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryNullableConsumer;)V

    .line 15
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    .line 16
    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport$c;->b:Lio/sentry/Hint;

    sget-object v4, Lio/sentry/transport/e;->a:Lio/sentry/transport/e;

    new-instance v5, Lio/sentry/transport/a;

    invoke-direct {v5, p0, v1}, Lio/sentry/transport/a;-><init>(Lio/sentry/transport/AsyncHttpTransport$c;Lio/sentry/SentryEnvelope;)V

    invoke-static {v3, v0, v4, v5}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;Lio/sentry/util/HintUtils$SentryHintFallback;)V

    .line 17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sending the event failed."

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 18
    :cond_2
    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$c;->b:Lio/sentry/Hint;

    sget-object v3, Lio/sentry/transport/f;->a:Lio/sentry/transport/f;

    new-instance v4, Lio/sentry/transport/d;

    invoke-direct {v4, p0}, Lio/sentry/transport/d;-><init>(Lio/sentry/transport/AsyncHttpTransport$c;)V

    invoke-static {v2, v0, v3, v4}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;Lio/sentry/util/HintUtils$SentryHintFallback;)V

    :goto_0
    return-object v1
.end method

.method private synthetic d(Lio/sentry/hints/DiskFlushNotification;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lio/sentry/hints/DiskFlushNotification;->markFlushed()V

    .line 2
    iget-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$c;->e:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {p1}, Lio/sentry/transport/AsyncHttpTransport;->a(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Disk flush envelope fired"

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic f(Lio/sentry/SentryEnvelope;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lio/sentry/transport/AsyncHttpTransport$c;->e:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {p2}, Lio/sentry/transport/AsyncHttpTransport;->a(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object p2

    sget-object v0, Lio/sentry/clientreport/DiscardReason;->NETWORK_ERROR:Lio/sentry/clientreport/DiscardReason;

    .line 3
    invoke-interface {p2, v0, p1}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEnvelope(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V

    return-void
.end method

.method static synthetic h(Lio/sentry/hints/Retryable;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p0, v0}, Lio/sentry/hints/Retryable;->setRetry(Z)V

    return-void
.end method

.method private synthetic i(Lio/sentry/SentryEnvelope;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$c;->e:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v0}, Lio/sentry/transport/AsyncHttpTransport;->a(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    invoke-static {p3, p2, v0}, Lio/sentry/util/LogUtils;->logNotInstanceOf(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V

    .line 2
    iget-object p2, p0, Lio/sentry/transport/AsyncHttpTransport$c;->e:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {p2}, Lio/sentry/transport/AsyncHttpTransport;->a(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object p2

    sget-object p3, Lio/sentry/clientreport/DiscardReason;->NETWORK_ERROR:Lio/sentry/clientreport/DiscardReason;

    .line 4
    invoke-interface {p2, p3, p1}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEnvelope(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V

    return-void
.end method

.method static synthetic k(Lio/sentry/hints/Retryable;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p0, v0}, Lio/sentry/hints/Retryable;->setRetry(Z)V

    return-void
.end method

.method private synthetic l(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$c;->e:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v0}, Lio/sentry/transport/AsyncHttpTransport;->a(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lio/sentry/util/LogUtils;->logNotInstanceOf(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V

    .line 2
    iget-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$c;->e:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {p1}, Lio/sentry/transport/AsyncHttpTransport;->a(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object p1

    sget-object p2, Lio/sentry/clientreport/DiscardReason;->NETWORK_ERROR:Lio/sentry/clientreport/DiscardReason;

    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$c;->a:Lio/sentry/SentryEnvelope;

    .line 4
    invoke-interface {p1, p2, v0}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEnvelope(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V

    return-void
.end method

.method private synthetic n(Lio/sentry/transport/TransportResult;Lio/sentry/hints/SubmissionResult;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$c;->e:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v0}, Lio/sentry/transport/AsyncHttpTransport;->a(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lio/sentry/transport/TransportResult;->isSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Marking envelope submission result: %s"

    .line 4
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Lio/sentry/transport/TransportResult;->isSuccess()Z

    move-result p1

    invoke-interface {p2, p1}, Lio/sentry/hints/SubmissionResult;->setResult(Z)V

    return-void
.end method


# virtual methods
.method public synthetic e(Lio/sentry/hints/DiskFlushNotification;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/transport/AsyncHttpTransport$c;->d(Lio/sentry/hints/DiskFlushNotification;)V

    return-void
.end method

.method public synthetic g(Lio/sentry/SentryEnvelope;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/sentry/transport/AsyncHttpTransport$c;->f(Lio/sentry/SentryEnvelope;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic j(Lio/sentry/SentryEnvelope;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/transport/AsyncHttpTransport$c;->i(Lio/sentry/SentryEnvelope;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic m(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/sentry/transport/AsyncHttpTransport$c;->l(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic o(Lio/sentry/transport/TransportResult;Lio/sentry/hints/SubmissionResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/sentry/transport/AsyncHttpTransport$c;->n(Lio/sentry/transport/TransportResult;Lio/sentry/hints/SubmissionResult;)V

    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    const-class v0, Lio/sentry/hints/SubmissionResult;

    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport$c;->d:Lio/sentry/transport/TransportResult;

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lio/sentry/transport/AsyncHttpTransport$c;->c()Lio/sentry/transport/TransportResult;

    move-result-object v1

    .line 3
    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport$c;->e:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v3}, Lio/sentry/transport/AsyncHttpTransport;->a(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "Envelope flushed"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$c;->b:Lio/sentry/Hint;

    new-instance v3, Lio/sentry/transport/g;

    invoke-direct {v3, p0, v1}, Lio/sentry/transport/g;-><init>(Lio/sentry/transport/AsyncHttpTransport$c;Lio/sentry/transport/TransportResult;)V

    invoke-static {v2, v0, v3}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    return-void

    :catchall_0
    move-exception v3

    .line 5
    :try_start_1
    iget-object v4, p0, Lio/sentry/transport/AsyncHttpTransport$c;->e:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v4}, Lio/sentry/transport/AsyncHttpTransport;->a(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "Envelope submission failed"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v4, v5, v3, v6, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    .line 7
    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport$c;->b:Lio/sentry/Hint;

    new-instance v4, Lio/sentry/transport/g;

    invoke-direct {v4, p0, v1}, Lio/sentry/transport/g;-><init>(Lio/sentry/transport/AsyncHttpTransport$c;Lio/sentry/transport/TransportResult;)V

    invoke-static {v3, v0, v4}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 8
    throw v2
.end method
