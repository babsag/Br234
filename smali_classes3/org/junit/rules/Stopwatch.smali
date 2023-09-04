.class public abstract Lorg/junit/rules/Stopwatch;
.super Ljava/lang/Object;
.source "Stopwatch.java"

# interfaces
.implements Lorg/junit/rules/TestRule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/rules/Stopwatch$b;,
        Lorg/junit/rules/Stopwatch$c;
    }
.end annotation


# instance fields
.field private final a:Lorg/junit/rules/Stopwatch$b;

.field private volatile b:J

.field private volatile c:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/junit/rules/Stopwatch$b;

    invoke-direct {v0}, Lorg/junit/rules/Stopwatch$b;-><init>()V

    invoke-direct {p0, v0}, Lorg/junit/rules/Stopwatch;-><init>(Lorg/junit/rules/Stopwatch$b;)V

    return-void
.end method

.method constructor <init>(Lorg/junit/rules/Stopwatch$b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/junit/rules/Stopwatch;->a:Lorg/junit/rules/Stopwatch$b;

    return-void
.end method

.method static synthetic a(Lorg/junit/rules/Stopwatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/junit/rules/Stopwatch;->e()V

    return-void
.end method

.method static synthetic b(Lorg/junit/rules/Stopwatch;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/junit/rules/Stopwatch;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic c(Lorg/junit/rules/Stopwatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/junit/rules/Stopwatch;->f()V

    return-void
.end method

.method private d()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/junit/rules/Stopwatch;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-wide v0, p0, Lorg/junit/rules/Stopwatch;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    iget-object v0, p0, Lorg/junit/rules/Stopwatch;->a:Lorg/junit/rules/Stopwatch$b;

    invoke-virtual {v0}, Lorg/junit/rules/Stopwatch$b;->a()J

    move-result-wide v0

    .line 4
    :cond_0
    iget-wide v2, p0, Lorg/junit/rules/Stopwatch;->b:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Test has not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/junit/rules/Stopwatch;->a:Lorg/junit/rules/Stopwatch$b;

    invoke-virtual {v0}, Lorg/junit/rules/Stopwatch$b;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/junit/rules/Stopwatch;->b:J

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/junit/rules/Stopwatch;->c:J

    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/junit/rules/Stopwatch;->a:Lorg/junit/rules/Stopwatch$b;

    invoke-virtual {v0}, Lorg/junit/rules/Stopwatch$b;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/junit/rules/Stopwatch;->c:J

    return-void
.end method


# virtual methods
.method public final apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;
    .locals 2

    .line 1
    new-instance v0, Lorg/junit/rules/Stopwatch$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/junit/rules/Stopwatch$c;-><init>(Lorg/junit/rules/Stopwatch;Lorg/junit/rules/Stopwatch$a;)V

    invoke-virtual {v0, p1, p2}, Lorg/junit/rules/TestWatcher;->apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;

    move-result-object p1

    return-object p1
.end method

.method protected failed(JLjava/lang/Throwable;Lorg/junit/runner/Description;)V
    .locals 0

    return-void
.end method

.method protected finished(JLorg/junit/runner/Description;)V
    .locals 0

    return-void
.end method

.method public runtime(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/junit/rules/Stopwatch;->d()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected skipped(JLorg/junit/AssumptionViolatedException;Lorg/junit/runner/Description;)V
    .locals 0

    return-void
.end method

.method protected succeeded(JLorg/junit/runner/Description;)V
    .locals 0

    return-void
.end method
