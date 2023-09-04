.class Lio/sentry/SentryTracer$a;
.super Ljava/util/TimerTask;
.source "SentryTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/SentryTracer;->scheduleFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/sentry/SentryTracer;


# direct methods
.method constructor <init>(Lio/sentry/SentryTracer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryTracer$a;->a:Lio/sentry/SentryTracer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer$a;->a:Lio/sentry/SentryTracer;

    invoke-virtual {v0}, Lio/sentry/SentryTracer;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/sentry/SentryTracer$a;->a:Lio/sentry/SentryTracer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    :goto_0
    invoke-virtual {v1, v0}, Lio/sentry/SentryTracer;->finish(Lio/sentry/SpanStatus;)V

    .line 3
    iget-object v0, p0, Lio/sentry/SentryTracer$a;->a:Lio/sentry/SentryTracer;

    invoke-static {v0}, Lio/sentry/SentryTracer;->a(Lio/sentry/SentryTracer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
