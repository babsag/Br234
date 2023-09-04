.class final Lio/sentry/android/core/a0;
.super Ljava/lang/Object;
.source "AndroidTransactionProfiler.java"

# interfaces
.implements Lio/sentry/ITransactionProfiler;


# instance fields
.field private a:I

.field private b:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lio/sentry/android/core/SentryAndroidOptions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Lio/sentry/IHub;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Lio/sentry/android/core/BuildInfoProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Landroid/content/pm/PackageInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:J

.field private k:J

.field private l:Z

.field private m:I

.field private n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final o:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/ProfilingTransactionData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final q:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/sentry/profilemeasurements/ProfileMeasurementValue;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final r:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/sentry/profilemeasurements/ProfileMeasurementValue;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final s:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/sentry/profilemeasurements/ProfileMeasurementValue;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/ProfileMeasurement;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/sentry/android/core/BuildInfoProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lio/sentry/android/core/a0;-><init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/IHub;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/IHub;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/sentry/android/core/BuildInfoProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lio/sentry/IHub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/sentry/android/core/a0;->b:Ljava/io/File;

    .line 5
    iput-object v0, p0, Lio/sentry/android/core/a0;->c:Ljava/io/File;

    .line 6
    iput-object v0, p0, Lio/sentry/android/core/a0;->d:Ljava/util/concurrent/Future;

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lio/sentry/android/core/a0;->j:J

    .line 8
    iput-wide v0, p0, Lio/sentry/android/core/a0;->k:J

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lio/sentry/android/core/a0;->l:Z

    .line 10
    iput v0, p0, Lio/sentry/android/core/a0;->m:I

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/a0;->p:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/a0;->q:Ljava/util/ArrayDeque;

    .line 13
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/a0;->r:Ljava/util/ArrayDeque;

    .line 14
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/a0;->s:Ljava/util/ArrayDeque;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/a0;->t:Ljava/util/Map;

    const-string v0, "The application context is required"

    .line 16
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lio/sentry/android/core/a0;->e:Landroid/content/Context;

    const-string v0, "SentryAndroidOptions is required"

    .line 17
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p2, p0, Lio/sentry/android/core/a0;->f:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v0, "Hub is required"

    .line 18
    invoke-static {p5, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lio/sentry/IHub;

    iput-object p5, p0, Lio/sentry/android/core/a0;->g:Lio/sentry/IHub;

    const-string p5, "SentryFrameMetricsCollector is required"

    .line 19
    invoke-static {p4, p5}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    iput-object p4, p0, Lio/sentry/android/core/a0;->o:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    const-string p4, "The BuildInfoProvider is required."

    .line 20
    invoke-static {p3, p4}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/sentry/android/core/BuildInfoProvider;

    iput-object p4, p0, Lio/sentry/android/core/a0;->h:Lio/sentry/android/core/BuildInfoProvider;

    .line 21
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lio/sentry/android/core/d0;->c(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/a0;->i:Landroid/content/pm/PackageInfo;

    return-void
.end method

.method static synthetic a(Lio/sentry/android/core/a0;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/android/core/a0;->j:J

    return-wide v0
.end method

.method static synthetic b(Lio/sentry/android/core/a0;)Ljava/util/ArrayDeque;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/a0;->s:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static synthetic c(Lio/sentry/android/core/a0;)Ljava/util/ArrayDeque;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/a0;->r:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static synthetic d(Lio/sentry/android/core/a0;)Ljava/util/ArrayDeque;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/a0;->q:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method private e()Landroid/app/ActivityManager$MemoryInfo;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "Error getting MemoryInfo."

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/core/a0;->e:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 2
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    return-object v3

    .line 4
    :cond_0
    iget-object v2, p0, Lio/sentry/android/core/a0;->f:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v0, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v2

    .line 5
    iget-object v3, p0, Lio/sentry/android/core/a0;->f:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {v3, v4, v0, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private f()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/sentry/android/core/a0;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/sentry/android/core/a0;->l:Z

    .line 3
    iget-object v1, p0, Lio/sentry/android/core/a0;->f:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getProfilingTracesDirPath()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lio/sentry/android/core/a0;->f:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->isProfilingEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 5
    iget-object v0, p0, Lio/sentry/android/core/a0;->f:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "Profiling is disabled in options."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-nez v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/sentry/android/core/a0;->f:Lio/sentry/android/core/SentryAndroidOptions;

    .line 7
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "Disabling profiling because no profiling traces dir path is defined in options."

    .line 8
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_2
    iget-object v2, p0, Lio/sentry/android/core/a0;->f:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getProfilingTracesHz()I

    move-result v2

    if-gtz v2, :cond_3

    .line 10
    iget-object v1, p0, Lio/sentry/android/core/a0;->f:Lio/sentry/android/core/SentryAndroidOptions;

    .line 11
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "Disabling profiling because trace rate is set to %d"

    .line 13
    invoke-interface {v1, v4, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v3

    long-to-int v0, v3

    div-int/2addr v0, v2

    iput v0, p0, Lio/sentry/android/core/a0;->a:I

    .line 15
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/android/core/a0;->c:Ljava/io/File;

    return-void
.end method

.method private synthetic g(Lio/sentry/ITransaction;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/a0;->p(Lio/sentry/ITransaction;Z)V

    return-void
.end method

.method static synthetic i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->getInstance()Lio/sentry/android/core/internal/util/CpuInfoUtils;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->readMaxFrequencies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic j(Lio/sentry/ITransaction;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/a0;->p(Lio/sentry/ITransaction;Z)V

    return-void
.end method

.method private synthetic l(Lio/sentry/ITransaction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/android/core/a0;->q(Lio/sentry/ITransaction;)V

    return-void
.end method

.method private n(Lio/sentry/ITransaction;)V
    .locals 4
    .param p1    # Lio/sentry/ITransaction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/sentry/android/core/a0;->c:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".trace"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/android/core/a0;->b:Ljava/io/File;

    .line 2
    iget-object v0, p0, Lio/sentry/android/core/a0;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    iget-object v0, p0, Lio/sentry/android/core/a0;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 4
    iget-object v0, p0, Lio/sentry/android/core/a0;->r:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 5
    iget-object v0, p0, Lio/sentry/android/core/a0;->s:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 6
    iget-object v0, p0, Lio/sentry/android/core/a0;->o:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    new-instance v1, Lio/sentry/android/core/a0$a;

    invoke-direct {v1, p0}, Lio/sentry/android/core/a0$a;-><init>(Lio/sentry/android/core/a0;)V

    .line 7
    invoke-virtual {v0, v1}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->startCollection(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/a0;->n:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lio/sentry/android/core/a0;->f:Lio/sentry/android/core/SentryAndroidOptions;

    .line 9
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/android/core/n;

    invoke-direct {v1, p0, p1}, Lio/sentry/android/core/n;-><init>(Lio/sentry/android/core/a0;Lio/sentry/ITransaction;)V

    const-wide/16 v2, 0x7530

    .line 10
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/a0;->d:Ljava/util/concurrent/Future;

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/a0;->j:J

    .line 12
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/a0;->k:J

    .line 13
    new-instance v0, Lio/sentry/ProfilingTransactionData;

    iget-wide v1, p0, Lio/sentry/android/core/a0;->j:J

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lio/sentry/android/core/a0;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lio/sentry/ProfilingTransactionData;-><init>(Lio/sentry/ITransaction;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 15
    iget-object v1, p0, Lio/sentry/android/core/a0;->p:Ljava/util/Map;

    invoke-interface {p1}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lio/sentry/android/core/a0;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lio/sentry/android/core/a0;->a:I

    const v1, 0x2dc6c0

    invoke-static {p1, v1, v0}, Landroid/os/Debug;->startMethodTracingSampling(Ljava/lang/String;II)V

    return-void
.end method

.method private o(Lio/sentry/ITransaction;Z)V
    .locals 27
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 2
    iget-object v0, v1, Lio/sentry/android/core/a0;->o:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    iget-object v2, v1, Lio/sentry/android/core/a0;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->stopCollection(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .line 4
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v4

    .line 5
    iget-wide v6, v1, Lio/sentry/android/core/a0;->j:J

    sub-long v6, v2, v6

    .line 6
    new-instance v10, Ljava/util/ArrayList;

    iget-object v0, v1, Lio/sentry/android/core/a0;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    iget-object v0, v1, Lio/sentry/android/core/a0;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 8
    iput v0, v1, Lio/sentry/android/core/a0;->m:I

    .line 9
    iget-object v8, v1, Lio/sentry/android/core/a0;->d:Ljava/util/concurrent/Future;

    if-eqz v8, :cond_0

    const/4 v9, 0x1

    .line 10
    invoke-interface {v8, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v8, 0x0

    .line 11
    iput-object v8, v1, Lio/sentry/android/core/a0;->d:Ljava/util/concurrent/Future;

    .line 12
    :cond_0
    iget-object v8, v1, Lio/sentry/android/core/a0;->b:Ljava/io/File;

    if-nez v8, :cond_1

    .line 13
    iget-object v2, v1, Lio/sentry/android/core/a0;->f:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "Trace file does not exists"

    invoke-interface {v2, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_1
    invoke-direct/range {p0 .. p0}, Lio/sentry/android/core/a0;->e()Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v8

    .line 15
    iget-object v9, v1, Lio/sentry/android/core/a0;->i:Landroid/content/pm/PackageInfo;

    const-string v11, ""

    if-eqz v9, :cond_2

    .line 16
    invoke-static {v9}, Lio/sentry/android/core/d0;->f(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v9

    .line 17
    iget-object v12, v1, Lio/sentry/android/core/a0;->i:Landroid/content/pm/PackageInfo;

    iget-object v13, v1, Lio/sentry/android/core/a0;->h:Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {v12, v13}, Lio/sentry/android/core/d0;->d(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/BuildInfoProvider;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v22, v9

    move-object/from16 v23, v12

    goto :goto_0

    :cond_2
    move-object/from16 v22, v11

    move-object/from16 v23, v22

    :goto_0
    if-eqz v8, :cond_3

    .line 18
    iget-wide v8, v8, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_3
    const-string v8, "0"

    :goto_1
    move-object/from16 v20, v8

    .line 19
    sget-object v8, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 20
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/sentry/ProfilingTransactionData;

    .line 21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget-wide v14, v1, Lio/sentry/android/core/a0;->j:J

    .line 22
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 23
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-wide/from16 v16, v2

    iget-wide v2, v1, Lio/sentry/android/core/a0;->k:J

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 25
    invoke-virtual {v12, v13, v14, v15, v2}, Lio/sentry/ProfilingTransactionData;->notifyFinish(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    move-wide/from16 v2, v16

    goto :goto_2

    .line 26
    :cond_4
    iget-object v2, v1, Lio/sentry/android/core/a0;->r:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    const-string v3, "nanosecond"

    if-nez v2, :cond_5

    .line 27
    iget-object v2, v1, Lio/sentry/android/core/a0;->t:Ljava/util/Map;

    new-instance v4, Lio/sentry/profilemeasurements/ProfileMeasurement;

    iget-object v5, v1, Lio/sentry/android/core/a0;->r:Ljava/util/ArrayDeque;

    invoke-direct {v4, v3, v5}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    const-string v5, "slow_frame_renders"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_5
    iget-object v2, v1, Lio/sentry/android/core/a0;->s:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 29
    iget-object v2, v1, Lio/sentry/android/core/a0;->t:Ljava/util/Map;

    new-instance v4, Lio/sentry/profilemeasurements/ProfileMeasurement;

    iget-object v5, v1, Lio/sentry/android/core/a0;->s:Ljava/util/ArrayDeque;

    invoke-direct {v4, v3, v5}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    const-string v3, "frozen_frame_renders"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_6
    iget-object v2, v1, Lio/sentry/android/core/a0;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 31
    iget-object v2, v1, Lio/sentry/android/core/a0;->t:Ljava/util/Map;

    new-instance v3, Lio/sentry/profilemeasurements/ProfileMeasurement;

    iget-object v4, v1, Lio/sentry/android/core/a0;->q:Ljava/util/ArrayDeque;

    const-string v5, "hz"

    invoke-direct {v3, v5, v4}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    const-string v4, "screen_frame_rates"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_7
    new-instance v2, Lio/sentry/ProfilingTraceData;

    iget-object v9, v1, Lio/sentry/android/core/a0;->b:Ljava/io/File;

    .line 33
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    iget-object v3, v1, Lio/sentry/android/core/a0;->h:Lio/sentry/android/core/BuildInfoProvider;

    .line 34
    invoke-virtual {v3}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v13

    if-eqz v8, :cond_8

    .line 35
    array-length v3, v8

    if-lez v3, :cond_8

    aget-object v0, v8, v0

    move-object v14, v0

    goto :goto_3

    :cond_8
    move-object v14, v11

    :goto_3
    sget-object v15, Lio/sentry/android/core/m;->a:Lio/sentry/android/core/m;

    iget-object v0, v1, Lio/sentry/android/core/a0;->h:Lio/sentry/android/core/BuildInfoProvider;

    .line 36
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getManufacturer()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v1, Lio/sentry/android/core/a0;->h:Lio/sentry/android/core/BuildInfoProvider;

    .line 37
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getModel()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v1, Lio/sentry/android/core/a0;->h:Lio/sentry/android/core/BuildInfoProvider;

    .line 38
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getVersionRelease()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v1, Lio/sentry/android/core/a0;->h:Lio/sentry/android/core/BuildInfoProvider;

    .line 39
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->isEmulator()Ljava/lang/Boolean;

    move-result-object v19

    iget-object v0, v1, Lio/sentry/android/core/a0;->f:Lio/sentry/android/core/SentryAndroidOptions;

    .line 40
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v21

    iget-object v0, v1, Lio/sentry/android/core/a0;->f:Lio/sentry/android/core/SentryAndroidOptions;

    .line 41
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v24

    if-eqz p2, :cond_9

    const-string v0, "timeout"

    goto :goto_4

    :cond_9
    const-string v0, "normal"

    :goto_4
    move-object/from16 v25, v0

    .line 42
    iget-object v0, v1, Lio/sentry/android/core/a0;->t:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object v8, v2

    move-object/from16 v11, p1

    invoke-direct/range {v8 .. v26}, Lio/sentry/ProfilingTraceData;-><init>(Ljava/io/File;Ljava/util/List;Lio/sentry/ITransaction;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    :try_start_0
    iget-object v0, v1, Lio/sentry/android/core/a0;->f:Lio/sentry/android/core/SentryAndroidOptions;

    .line 44
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v0

    iget-object v3, v1, Lio/sentry/android/core/a0;->f:Lio/sentry/android/core/SentryAndroidOptions;

    .line 45
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getMaxTraceFileSize()J

    move-result-wide v3

    iget-object v5, v1, Lio/sentry/android/core/a0;->f:Lio/sentry/android/core/SentryAndroidOptions;

    .line 46
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v5

    .line 47
    invoke-static {v0, v2, v3, v4, v5}, Lio/sentry/SentryEnvelope;->from(Lio/sentry/ISerializer;Lio/sentry/ProfilingTraceData;JLio/sentry/protocol/SdkVersion;)Lio/sentry/SentryEnvelope;

    move-result-object v0
    :try_end_0
    .catch Lio/sentry/exception/SentryEnvelopeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    iget-object v2, v1, Lio/sentry/android/core/a0;->g:Lio/sentry/IHub;

    invoke-interface {v2, v0}, Lio/sentry/IHub;->captureEnvelope(Lio/sentry/SentryEnvelope;)Lio/sentry/protocol/SentryId;

    return-void

    :catch_0
    move-exception v0

    .line 49
    iget-object v2, v1, Lio/sentry/android/core/a0;->f:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Failed to capture profile."

    invoke-interface {v2, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private p(Lio/sentry/ITransaction;Z)V
    .locals 7
    .param p1    # Lio/sentry/ITransaction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/a0;->h:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/a0;->p:Ljava/util/Map;

    invoke-interface {p1}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 3
    iget-object p2, p0, Lio/sentry/android/core/a0;->f:Lio/sentry/android/core/SentryAndroidOptions;

    .line 4
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-interface {p1}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 6
    invoke-interface {p1}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Transaction %s (%s) finished, but was not currently being profiled. Skipping"

    .line 7
    invoke-interface {p2, v0, p1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_1
    iget v0, p0, Lio/sentry/android/core/a0;->m:I

    if-lez v0, :cond_2

    sub-int/2addr v0, v3

    .line 9
    iput v0, p0, Lio/sentry/android/core/a0;->m:I

    .line 10
    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/a0;->f:Lio/sentry/android/core/SentryAndroidOptions;

    .line 11
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 12
    invoke-interface {p1}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 13
    invoke-interface {p1}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    iget v1, p0, Lio/sentry/android/core/a0;->m:I

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const-string v1, "Transaction %s (%s) finished. Transactions to be profiled: %d"

    .line 15
    invoke-interface {v0, v4, v1, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget v0, p0, Lio/sentry/android/core/a0;->m:I

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    .line 17
    iget-object p2, p0, Lio/sentry/android/core/a0;->p:Ljava/util/Map;

    .line 18
    invoke-interface {p1}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ProfilingTransactionData;

    if-eqz p1, :cond_3

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-wide v0, p0, Lio/sentry/android/core/a0;->j:J

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 21
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lio/sentry/android/core/a0;->k:J

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 23
    invoke-virtual {p1, p2, v0, v1, v2}, Lio/sentry/ProfilingTransactionData;->notifyFinish(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    :cond_3
    return-void

    .line 24
    :cond_4
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/a0;->o(Lio/sentry/ITransaction;Z)V

    return-void
.end method

.method private q(Lio/sentry/ITransaction;)V
    .locals 6
    .param p1    # Lio/sentry/ITransaction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/a0;->h:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/a0;->f()V

    .line 3
    iget-object v0, p0, Lio/sentry/android/core/a0;->c:Ljava/io/File;

    if-eqz v0, :cond_3

    iget v1, p0, Lio/sentry/android/core/a0;->a:I

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget v0, p0, Lio/sentry/android/core/a0;->m:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/sentry/android/core/a0;->m:I

    if-ne v0, v1, :cond_2

    .line 5
    invoke-direct {p0, p1}, Lio/sentry/android/core/a0;->n(Lio/sentry/ITransaction;)V

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lio/sentry/ProfilingTransactionData;

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, p1, v2, v3}, Lio/sentry/ProfilingTransactionData;-><init>(Lio/sentry/ITransaction;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 8
    iget-object v2, p0, Lio/sentry/android/core/a0;->p:Ljava/util/Map;

    invoke-interface {p1}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :goto_0
    iget-object v0, p0, Lio/sentry/android/core/a0;->f:Lio/sentry/android/core/SentryAndroidOptions;

    .line 10
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 11
    invoke-interface {p1}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 12
    invoke-interface {p1}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x2

    iget v1, p0, Lio/sentry/android/core/a0;->m:I

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, p1

    const-string p1, "Transaction %s (%s) started. Transactions being profiled: %d"

    .line 14
    invoke-interface {v0, v2, p1, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic h(Lio/sentry/ITransaction;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/android/core/a0;->g(Lio/sentry/ITransaction;)V

    return-void
.end method

.method public synthetic k(Lio/sentry/ITransaction;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/android/core/a0;->j(Lio/sentry/ITransaction;)V

    return-void
.end method

.method public synthetic m(Lio/sentry/ITransaction;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/android/core/a0;->l(Lio/sentry/ITransaction;)V

    return-void
.end method

.method public declared-synchronized onTransactionFinish(Lio/sentry/ITransaction;)V
    .locals 2
    .param p1    # Lio/sentry/ITransaction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/a0;->f:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/android/core/o;

    invoke-direct {v1, p0, p1}, Lio/sentry/android/core/o;-><init>(Lio/sentry/android/core/a0;Lio/sentry/ITransaction;)V

    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onTransactionStart(Lio/sentry/ITransaction;)V
    .locals 2
    .param p1    # Lio/sentry/ITransaction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/a0;->f:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/android/core/p;

    invoke-direct {v1, p0, p1}, Lio/sentry/android/core/p;-><init>(Lio/sentry/android/core/a0;Lio/sentry/ITransaction;)V

    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
