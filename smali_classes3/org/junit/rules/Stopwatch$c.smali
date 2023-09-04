.class Lorg/junit/rules/Stopwatch$c;
.super Lorg/junit/rules/TestWatcher;
.source "Stopwatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/rules/Stopwatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lorg/junit/rules/Stopwatch;


# direct methods
.method private constructor <init>(Lorg/junit/rules/Stopwatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/junit/rules/Stopwatch$c;->a:Lorg/junit/rules/Stopwatch;

    invoke-direct {p0}, Lorg/junit/rules/TestWatcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/rules/Stopwatch;Lorg/junit/rules/Stopwatch$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/junit/rules/Stopwatch$c;-><init>(Lorg/junit/rules/Stopwatch;)V

    return-void
.end method


# virtual methods
.method protected failed(Ljava/lang/Throwable;Lorg/junit/runner/Description;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/junit/rules/Stopwatch$c;->a:Lorg/junit/rules/Stopwatch;

    invoke-static {v0}, Lorg/junit/rules/Stopwatch;->c(Lorg/junit/rules/Stopwatch;)V

    .line 2
    iget-object v0, p0, Lorg/junit/rules/Stopwatch$c;->a:Lorg/junit/rules/Stopwatch;

    invoke-static {v0}, Lorg/junit/rules/Stopwatch;->b(Lorg/junit/rules/Stopwatch;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/junit/rules/Stopwatch;->failed(JLjava/lang/Throwable;Lorg/junit/runner/Description;)V

    return-void
.end method

.method protected finished(Lorg/junit/runner/Description;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/junit/rules/Stopwatch$c;->a:Lorg/junit/rules/Stopwatch;

    invoke-static {v0}, Lorg/junit/rules/Stopwatch;->b(Lorg/junit/rules/Stopwatch;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/junit/rules/Stopwatch;->finished(JLorg/junit/runner/Description;)V

    return-void
.end method

.method protected skipped(Lorg/junit/AssumptionViolatedException;Lorg/junit/runner/Description;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/junit/rules/Stopwatch$c;->a:Lorg/junit/rules/Stopwatch;

    invoke-static {v0}, Lorg/junit/rules/Stopwatch;->c(Lorg/junit/rules/Stopwatch;)V

    .line 2
    iget-object v0, p0, Lorg/junit/rules/Stopwatch$c;->a:Lorg/junit/rules/Stopwatch;

    invoke-static {v0}, Lorg/junit/rules/Stopwatch;->b(Lorg/junit/rules/Stopwatch;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/junit/rules/Stopwatch;->skipped(JLorg/junit/AssumptionViolatedException;Lorg/junit/runner/Description;)V

    return-void
.end method

.method protected starting(Lorg/junit/runner/Description;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/junit/rules/Stopwatch$c;->a:Lorg/junit/rules/Stopwatch;

    invoke-static {p1}, Lorg/junit/rules/Stopwatch;->a(Lorg/junit/rules/Stopwatch;)V

    return-void
.end method

.method protected succeeded(Lorg/junit/runner/Description;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/junit/rules/Stopwatch$c;->a:Lorg/junit/rules/Stopwatch;

    invoke-static {v0}, Lorg/junit/rules/Stopwatch;->c(Lorg/junit/rules/Stopwatch;)V

    .line 2
    iget-object v0, p0, Lorg/junit/rules/Stopwatch$c;->a:Lorg/junit/rules/Stopwatch;

    invoke-static {v0}, Lorg/junit/rules/Stopwatch;->b(Lorg/junit/rules/Stopwatch;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/junit/rules/Stopwatch;->succeeded(JLorg/junit/runner/Description;)V

    return-void
.end method
