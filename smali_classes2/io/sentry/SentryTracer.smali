.class public final Lio/sentry/SentryTracer;
.super Ljava/lang/Object;
.source "SentryTracer.java"

# interfaces
.implements Lio/sentry/ITransaction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryTracer$b;,
        Lio/sentry/SentryTracer$c;
    }
.end annotation

.annotation build Lorg/jetbrains/annotations/ApiStatus$Internal;
.end annotation


# instance fields
.field private final a:Lio/sentry/protocol/SentryId;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lio/sentry/Span;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/Span;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lio/sentry/IHub;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Z

.field private g:Lio/sentry/SentryTracer$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Lio/sentry/TransactionFinishedCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final i:Z

.field private final j:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile k:Ljava/util/TimerTask;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile l:Ljava/util/Timer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final m:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final n:Lio/sentry/SentryTracer$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final o:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final p:Lio/sentry/Baggage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private q:Lio/sentry/protocol/TransactionNameSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/MeasurementValue;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/TransactionContext;Lio/sentry/IHub;)V
    .locals 1
    .param p1    # Lio/sentry/TransactionContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/IHub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/SentryTracer;-><init>(Lio/sentry/TransactionContext;Lio/sentry/IHub;Ljava/util/Date;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/TransactionContext;Lio/sentry/IHub;Ljava/util/Date;)V
    .locals 8
    .param p1    # Lio/sentry/TransactionContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/IHub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-direct/range {v0 .. v7}, Lio/sentry/SentryTracer;-><init>(Lio/sentry/TransactionContext;Lio/sentry/IHub;Ljava/util/Date;ZLjava/lang/Long;ZLio/sentry/TransactionFinishedCallback;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/TransactionContext;Lio/sentry/IHub;Ljava/util/Date;ZLjava/lang/Long;ZLio/sentry/TransactionFinishedCallback;)V
    .locals 2
    .param p1    # Lio/sentry/TransactionContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/IHub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lio/sentry/TransactionFinishedCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lio/sentry/protocol/SentryId;

    invoke-direct {v0}, Lio/sentry/protocol/SentryId;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryTracer;->a:Lio/sentry/protocol/SentryId;

    .line 6
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryTracer;->c:Ljava/util/List;

    .line 7
    sget-object v0, Lio/sentry/SentryTracer$b;->a:Lio/sentry/SentryTracer$b;

    iput-object v0, p0, Lio/sentry/SentryTracer;->g:Lio/sentry/SentryTracer$b;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lio/sentry/SentryTracer;->l:Ljava/util/Timer;

    .line 9
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lio/sentry/SentryTracer;->m:Ljava/lang/Object;

    .line 10
    new-instance v1, Lio/sentry/SentryTracer$c;

    invoke-direct {v1, v0}, Lio/sentry/SentryTracer$c;-><init>(Lio/sentry/SentryTracer$a;)V

    iput-object v1, p0, Lio/sentry/SentryTracer;->n:Lio/sentry/SentryTracer$c;

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/SentryTracer;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "context is required"

    .line 12
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "hub is required"

    .line 13
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryTracer;->r:Ljava/util/Map;

    .line 15
    new-instance v0, Lio/sentry/Span;

    invoke-direct {v0, p1, p0, p2, p3}, Lio/sentry/Span;-><init>(Lio/sentry/TransactionContext;Lio/sentry/SentryTracer;Lio/sentry/IHub;Ljava/util/Date;)V

    iput-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 16
    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lio/sentry/SentryTracer;->e:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/IHub;

    .line 18
    iput-boolean p4, p0, Lio/sentry/SentryTracer;->f:Z

    .line 19
    iput-object p5, p0, Lio/sentry/SentryTracer;->j:Ljava/lang/Long;

    .line 20
    iput-boolean p6, p0, Lio/sentry/SentryTracer;->i:Z

    .line 21
    iput-object p7, p0, Lio/sentry/SentryTracer;->h:Lio/sentry/TransactionFinishedCallback;

    .line 22
    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getTransactionNameSource()Lio/sentry/protocol/TransactionNameSource;

    move-result-object p3

    iput-object p3, p0, Lio/sentry/SentryTracer;->q:Lio/sentry/protocol/TransactionNameSource;

    .line 23
    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getBaggage()Lio/sentry/Baggage;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 24
    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getBaggage()Lio/sentry/Baggage;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/SentryTracer;->p:Lio/sentry/Baggage;

    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Lio/sentry/Baggage;

    invoke-interface {p2}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/sentry/Baggage;-><init>(Lio/sentry/ILogger;)V

    iput-object p1, p0, Lio/sentry/SentryTracer;->p:Lio/sentry/Baggage;

    :goto_0
    if-eqz p5, :cond_1

    .line 26
    new-instance p1, Ljava/util/Timer;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/Timer;-><init>(Z)V

    iput-object p1, p0, Lio/sentry/SentryTracer;->l:Ljava/util/Timer;

    .line 27
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->scheduleFinish()V

    :cond_1
    return-void
.end method

.method public constructor <init>(Lio/sentry/TransactionContext;Lio/sentry/IHub;ZLio/sentry/TransactionFinishedCallback;)V
    .locals 8
    .param p1    # Lio/sentry/TransactionContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/IHub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lio/sentry/TransactionFinishedCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v7, p4

    .line 2
    invoke-direct/range {v0 .. v7}, Lio/sentry/SentryTracer;-><init>(Lio/sentry/TransactionContext;Lio/sentry/IHub;Ljava/util/Date;ZLjava/lang/Long;ZLio/sentry/TransactionFinishedCallback;)V

    return-void
.end method

.method static synthetic a(Lio/sentry/SentryTracer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryTracer;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/sentry/SentryTracer;->k:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/sentry/SentryTracer;->k:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 4
    iget-object v1, p0, Lio/sentry/SentryTracer;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lio/sentry/SentryTracer;->k:Ljava/util/TimerTask;

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private c(Lio/sentry/SpanId;Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 1
    .param p1    # Lio/sentry/SpanId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lio/sentry/SentryTracer;->d(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method private d(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lio/sentry/ISpan;
    .locals 9
    .param p1    # Lio/sentry/SpanId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "parentSpanId is required"

    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "operation is required"

    .line 4
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Lio/sentry/SentryTracer;->b()V

    .line 6
    new-instance v0, Lio/sentry/Span;

    iget-object v1, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 7
    invoke-virtual {v1}, Lio/sentry/Span;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    iget-object v6, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/IHub;

    new-instance v8, Lio/sentry/s0;

    invoke-direct {v8, p0}, Lio/sentry/s0;-><init>(Lio/sentry/SentryTracer;)V

    move-object v1, v0

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lio/sentry/Span;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SentryTracer;Ljava/lang/String;Lio/sentry/IHub;Ljava/util/Date;Lio/sentry/n1;)V

    .line 8
    invoke-virtual {v0, p3}, Lio/sentry/Span;->setDescription(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lio/sentry/SentryTracer;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lio/sentry/ISpan;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/IHub;

    invoke-interface {v1}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getMaxSpans()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0, p1, p2, p3}, Lio/sentry/Span;->startChild(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object p3, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/IHub;

    invoke-interface {p3}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p3

    .line 6
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p3

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "Span operation: %s, description: %s dropped due to limit reached. Returning NoOpSpan."

    .line 7
    invoke-interface {p3, v0, p1, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p1

    return-object p1
.end method

.method private f()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/sentry/SentryTracer;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/Span;

    .line 4
    invoke-virtual {v1}, Lio/sentry/Span;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic g(Lio/sentry/Span;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/sentry/SentryTracer;->g:Lio/sentry/SentryTracer$b;

    .line 2
    iget-object v0, p0, Lio/sentry/SentryTracer;->j:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean p1, p0, Lio/sentry/SentryTracer;->f:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lio/sentry/SentryTracer;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->scheduleFinish()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p1}, Lio/sentry/SentryTracer$b;->b(Lio/sentry/SentryTracer$b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {p1}, Lio/sentry/SentryTracer$b;->a(Lio/sentry/SentryTracer$b;)Lio/sentry/SpanStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/SentryTracer;->finish(Lio/sentry/SpanStatus;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic i(Lio/sentry/Scope;Lio/sentry/ITransaction;)V
    .locals 0

    if-ne p2, p0, :cond_0

    .line 1
    invoke-virtual {p1}, Lio/sentry/Scope;->clearTransaction()V

    :cond_0
    return-void
.end method

.method private synthetic k(Lio/sentry/Scope;)V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/p0;

    invoke-direct {v0, p0, p1}, Lio/sentry/p0;-><init>(Lio/sentry/SentryTracer;Lio/sentry/Scope;)V

    invoke-virtual {p1, v0}, Lio/sentry/Scope;->withTransaction(Lio/sentry/Scope$IWithTransaction;)V

    return-void
.end method

.method static synthetic m(Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/Scope;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lio/sentry/Scope;->getUser()Lio/sentry/protocol/User;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private p()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->p:Lio/sentry/Baggage;

    invoke-virtual {v0}, Lio/sentry/Baggage;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    iget-object v1, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/IHub;

    new-instance v2, Lio/sentry/q0;

    invoke-direct {v2, v0}, Lio/sentry/q0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v1, v2}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 5
    iget-object v1, p0, Lio/sentry/SentryTracer;->p:Lio/sentry/Baggage;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/User;

    iget-object v2, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/IHub;

    invoke-interface {v2}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object v3

    .line 7
    invoke-virtual {v1, p0, v0, v2, v3}, Lio/sentry/Baggage;->setValuesFromTransaction(Lio/sentry/ITransaction;Lio/sentry/protocol/User;Lio/sentry/SentryOptions;Lio/sentry/TracesSamplingDecision;)V

    .line 8
    iget-object v0, p0, Lio/sentry/SentryTracer;->p:Lio/sentry/Baggage;

    invoke-virtual {v0}, Lio/sentry/Baggage;->freeze()V

    .line 9
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryTracer;->finish(Lio/sentry/SpanStatus;)V

    return-void
.end method

.method public finish(Lio/sentry/SpanStatus;)V
    .locals 9
    .param p1    # Lio/sentry/SpanStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p1}, Lio/sentry/SentryTracer$b;->c(Lio/sentry/SpanStatus;)Lio/sentry/SentryTracer$b;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/SentryTracer;->g:Lio/sentry/SentryTracer$b;

    .line 3
    iget-object p1, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {p1}, Lio/sentry/Span;->isFinished()Z

    move-result p1

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lio/sentry/SentryTracer;->f:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lio/sentry/SentryTracer;->f()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 4
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lio/sentry/SentryTracer;->isSampled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/sentry/SentryTracer;->isProfileSampled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/IHub;

    invoke-interface {p1}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getTransactionProfiler()Lio/sentry/ITransactionProfiler;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/sentry/ITransactionProfiler;->onTransactionFinish(Lio/sentry/ITransaction;)V

    .line 6
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0, p1}, Lio/sentry/Span;->d(Ljava/lang/Long;)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 8
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lio/sentry/DateUtils;->dateToSeconds(Ljava/util/Date;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object p1, v1

    .line 9
    :cond_2
    iget-object v2, p0, Lio/sentry/SentryTracer;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/Span;

    .line 10
    invoke-virtual {v3}, Lio/sentry/Span;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    .line 11
    invoke-virtual {v3, v1}, Lio/sentry/Span;->e(Lio/sentry/n1;)V

    .line 12
    sget-object v4, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    invoke-virtual {v3, v4, v0, p1}, Lio/sentry/Span;->a(Lio/sentry/SpanStatus;Ljava/lang/Double;Ljava/lang/Long;)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object v2, p0, Lio/sentry/SentryTracer;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lio/sentry/SentryTracer;->i:Z

    if-eqz v2, :cond_5

    .line 14
    iget-object v2, p0, Lio/sentry/SentryTracer;->c:Ljava/util/List;

    iget-object v3, p0, Lio/sentry/SentryTracer;->n:Lio/sentry/SentryTracer$c;

    invoke-static {v2, v3}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/Span;

    .line 15
    invoke-virtual {v2}, Lio/sentry/Span;->getTimestamp()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 16
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v8, v4, v6

    if-lez v8, :cond_5

    .line 17
    invoke-virtual {v2}, Lio/sentry/Span;->c()Ljava/lang/Long;

    move-result-object p1

    move-object v0, v3

    .line 18
    :cond_5
    iget-object v2, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    iget-object v3, p0, Lio/sentry/SentryTracer;->g:Lio/sentry/SentryTracer$b;

    invoke-static {v3}, Lio/sentry/SentryTracer$b;->a(Lio/sentry/SentryTracer$b;)Lio/sentry/SpanStatus;

    move-result-object v3

    invoke-virtual {v2, v3, v0, p1}, Lio/sentry/Span;->a(Lio/sentry/SpanStatus;Ljava/lang/Double;Ljava/lang/Long;)V

    .line 19
    iget-object p1, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/IHub;

    new-instance v0, Lio/sentry/r0;

    invoke-direct {v0, p0}, Lio/sentry/r0;-><init>(Lio/sentry/SentryTracer;)V

    invoke-interface {p1, v0}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 20
    new-instance p1, Lio/sentry/protocol/SentryTransaction;

    invoke-direct {p1, p0}, Lio/sentry/protocol/SentryTransaction;-><init>(Lio/sentry/SentryTracer;)V

    .line 21
    iget-object v0, p0, Lio/sentry/SentryTracer;->h:Lio/sentry/TransactionFinishedCallback;

    if-eqz v0, :cond_6

    .line 22
    invoke-interface {v0, p0}, Lio/sentry/TransactionFinishedCallback;->execute(Lio/sentry/ITransaction;)V

    .line 23
    :cond_6
    iget-object v0, p0, Lio/sentry/SentryTracer;->l:Ljava/util/Timer;

    if-eqz v0, :cond_8

    .line 24
    iget-object v0, p0, Lio/sentry/SentryTracer;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v2, p0, Lio/sentry/SentryTracer;->l:Ljava/util/Timer;

    if-eqz v2, :cond_7

    .line 26
    iget-object v2, p0, Lio/sentry/SentryTracer;->l:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 27
    iput-object v1, p0, Lio/sentry/SentryTracer;->l:Ljava/util/Timer;

    .line 28
    :cond_7
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 29
    :cond_8
    :goto_1
    iget-object v0, p0, Lio/sentry/SentryTracer;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lio/sentry/SentryTracer;->j:Ljava/lang/Long;

    if-eqz v0, :cond_9

    return-void

    .line 30
    :cond_9
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getMeasurements()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/SentryTracer;->r:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 31
    iget-object v0, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/IHub;

    invoke-virtual {p0}, Lio/sentry/SentryTracer;->traceContext()Lio/sentry/TraceContext;

    move-result-object v2

    invoke-interface {v0, p1, v2, v1}, Lio/sentry/IHub;->captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    :cond_a
    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Span;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->c:Ljava/util/List;

    return-object v0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0, p1}, Lio/sentry/Span;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventId()Lio/sentry/protocol/SentryId;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->a:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getHighPrecisionTimestamp()Ljava/lang/Double;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getHighPrecisionTimestamp()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getLatestActiveSpan()Lio/sentry/Span;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/sentry/SentryTracer;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/Span;

    invoke-virtual {v2}, Lio/sentry/Span;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/Span;

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getOperation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSamplingDecision()Lio/sentry/TracesSamplingDecision;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object v0

    return-object v0
.end method

.method public getSpanContext()Lio/sentry/SpanContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v0

    return-object v0
.end method

.method public getSpans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Span;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->c:Ljava/util/List;

    return-object v0
.end method

.method public getStartTimestamp()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getStartTimestamp()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lio/sentry/SpanStatus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0, p1}, Lio/sentry/Span;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/Double;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getTimestamp()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionNameSource()Lio/sentry/protocol/TransactionNameSource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->q:Lio/sentry/protocol/TransactionNameSource;

    return-object v0
.end method

.method public synthetic h(Lio/sentry/Span;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/SentryTracer;->g(Lio/sentry/Span;)V

    return-void
.end method

.method public isFinished()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    return v0
.end method

.method public isProfileSampled()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isProfileSampled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isSampled()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isSampled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j(Lio/sentry/Scope;Lio/sentry/ITransaction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/sentry/SentryTracer;->i(Lio/sentry/Scope;Lio/sentry/ITransaction;)V

    return-void
.end method

.method public synthetic l(Lio/sentry/Scope;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/SentryTracer;->k(Lio/sentry/Scope;)V

    return-void
.end method

.method n(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 0
    .param p1    # Lio/sentry/SpanId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/SentryTracer;->c(Lio/sentry/SpanId;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object p1

    .line 2
    invoke-interface {p1, p3}, Lio/sentry/ISpan;->setDescription(Ljava/lang/String;)V

    return-object p1
.end method

.method o(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lio/sentry/ISpan;
    .locals 0
    .param p1    # Lio/sentry/SpanId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/sentry/SentryTracer;->d(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method public scheduleFinish()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lio/sentry/SentryTracer;->b()V

    .line 3
    iget-object v1, p0, Lio/sentry/SentryTracer;->l:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lio/sentry/SentryTracer;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    new-instance v1, Lio/sentry/SentryTracer$a;

    invoke-direct {v1, p0}, Lio/sentry/SentryTracer$a;-><init>(Lio/sentry/SentryTracer;)V

    iput-object v1, p0, Lio/sentry/SentryTracer;->k:Ljava/util/TimerTask;

    .line 6
    iget-object v1, p0, Lio/sentry/SentryTracer;->l:Ljava/util/Timer;

    iget-object v2, p0, Lio/sentry/SentryTracer;->k:Ljava/util/TimerTask;

    iget-object v3, p0, Lio/sentry/SentryTracer;->j:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0, p1, p2}, Lio/sentry/Span;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0, p1}, Lio/sentry/Span;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->r:Ljava/util/Map;

    new-instance v1, Lio/sentry/protocol/MeasurementValue;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lio/sentry/protocol/MeasurementValue;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/sentry/MeasurementUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->r:Ljava/util/Map;

    new-instance v1, Lio/sentry/protocol/MeasurementValue;

    invoke-interface {p3}, Lio/sentry/MeasurementUnit;->apiName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p2, p3}, Lio/sentry/protocol/MeasurementValue;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lio/sentry/SentryTracer;->e:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/protocol/TransactionNameSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/ApiStatus$Internal;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lio/sentry/SentryTracer;->setName(Ljava/lang/String;)V

    .line 4
    iput-object p2, p0, Lio/sentry/SentryTracer;->q:Lio/sentry/protocol/TransactionNameSource;

    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0, p1}, Lio/sentry/Span;->setOperation(Ljava/lang/String;)V

    return-void
.end method

.method public setStatus(Lio/sentry/SpanStatus;)V
    .locals 1
    .param p1    # Lio/sentry/SpanStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0, p1}, Lio/sentry/Span;->setStatus(Lio/sentry/SpanStatus;)V

    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0, p1, p2}, Lio/sentry/Span;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0, p1}, Lio/sentry/Span;->setThrowable(Ljava/lang/Throwable;)V

    return-void
.end method

.method public startChild(Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/sentry/SentryTracer;->startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/SentryTracer;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lio/sentry/ISpan;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/SentryTracer;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method public toBaggageHeader(Ljava/util/List;)Lio/sentry/BaggageHeader;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/BaggageHeader;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/IHub;

    invoke-interface {v0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTraceSampling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/sentry/SentryTracer;->p()V

    .line 3
    iget-object v0, p0, Lio/sentry/SentryTracer;->p:Lio/sentry/Baggage;

    invoke-static {v0, p1}, Lio/sentry/BaggageHeader;->fromBaggageAndOutgoingHeader(Lio/sentry/Baggage;Ljava/util/List;)Lio/sentry/BaggageHeader;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public toSentryTrace()Lio/sentry/SentryTraceHeader;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->toSentryTrace()Lio/sentry/SentryTraceHeader;

    move-result-object v0

    return-object v0
.end method

.method public traceContext()Lio/sentry/TraceContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/IHub;

    invoke-interface {v0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTraceSampling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/sentry/SentryTracer;->p()V

    .line 3
    iget-object v0, p0, Lio/sentry/SentryTracer;->p:Lio/sentry/Baggage;

    invoke-virtual {v0}, Lio/sentry/Baggage;->toTraceContext()Lio/sentry/TraceContext;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
