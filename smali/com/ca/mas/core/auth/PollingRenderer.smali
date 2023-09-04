.class public abstract Lcom/ca/mas/core/auth/PollingRenderer;
.super Lcom/ca/mas/core/auth/AuthRenderer;
.source "PollingRenderer.java"


# static fields
.field public static final DELAY:I = 0xa

.field public static final INVALID_SESSION_ID_OR_POLL_URL:I = 0xa

.field public static final MAX_POLL_COUNT:I = 0x6

.field public static final POLL_INTERVAL:I = 0x5

.field public static final SESSION_EXPIRED:I = 0xb


# instance fields
.field private a:Ljava/util/TimerTask;

.field private b:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/auth/AuthRenderer;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ca/mas/core/auth/PollingRenderer;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/auth/PollingRenderer;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/auth/PollingRenderer;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_0
    return-void
.end method

.method protected getDelay()J
    .locals 2

    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method protected getMaxPollCount()J
    .locals 2

    const-wide/16 v0, 0x6

    return-wide v0
.end method

.method protected getPollInterval()J
    .locals 2

    const-wide/16 v0, 0x5

    return-wide v0
.end method

.method public init(Landroid/content/Context;Lcom/ca/mas/core/service/Provider;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/ca/mas/core/auth/AuthRenderer;->init(Landroid/content/Context;Lcom/ca/mas/core/service/Provider;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/ca/mas/core/service/Provider;->getPollUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/ca/mas/core/service/Provider;->getPollUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p2}, Lcom/ca/mas/core/service/Provider;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/ca/mas/core/service/Provider;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    const-string p1, "Invalid session id"

    .line 4
    invoke-virtual {p0, v2, p1, v1}, Lcom/ca/mas/core/auth/AuthRenderer;->onError(ILjava/lang/String;Ljava/lang/Exception;)V

    return v0

    :cond_4
    :goto_1
    const-string p1, "Invalid Poll url"

    .line 5
    invoke-virtual {p0, v2, p1, v1}, Lcom/ca/mas/core/auth/AuthRenderer;->onError(ILjava/lang/String;Ljava/lang/Exception;)V

    return v0
.end method

.method protected onAuthCodeReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ca/mas/core/auth/PollingRenderer;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_0
    return-void
.end method

.method public onRenderCompleted()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/core/auth/PollingRenderer;->startPollingOnStartup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ca/mas/core/auth/PollingRenderer;->poll()V

    :cond_0
    return-void
.end method

.method protected poll()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/auth/PollingRenderer;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/auth/PollingRenderer;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/ca/mas/core/auth/PollingRenderer;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    invoke-virtual {p0}, Lcom/ca/mas/core/auth/PollingRenderer;->getMaxPollCount()J

    move-result-wide v1

    new-array v0, v0, [I

    const/4 v3, 0x0

    aput v3, v0, v3

    .line 5
    new-instance v5, Lcom/ca/mas/core/auth/PollingRenderer$a;

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/ca/mas/core/auth/PollingRenderer$a;-><init>(Lcom/ca/mas/core/auth/PollingRenderer;[IJ)V

    iput-object v5, p0, Lcom/ca/mas/core/auth/PollingRenderer;->a:Ljava/util/TimerTask;

    .line 6
    iget-object v4, p0, Lcom/ca/mas/core/auth/PollingRenderer;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p0}, Lcom/ca/mas/core/auth/PollingRenderer;->getDelay()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/ca/mas/core/auth/PollingRenderer;->getPollInterval()J

    move-result-wide v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method protected abstract startPollingOnStartup()Z
.end method
