.class public Lbr/com/topaz/r/l;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/r/k$c;
.implements Lbr/com/topaz/r/b$a;


# instance fields
.field private final b:Lbr/com/topaz/s/a;

.field private final c:Landroid/content/Context;

.field private final d:Lbr/com/topaz/l/l;

.field private final e:Lbr/com/topaz/k0/f;

.field private final f:Lbr/com/topaz/r/m;

.field private final g:Lbr/com/topaz/k0/a;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Landroid/content/Context;Lbr/com/topaz/l/l;Lbr/com/topaz/k0/f;Lbr/com/topaz/k0/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p1, p0, Lbr/com/topaz/r/l;->b:Lbr/com/topaz/s/a;

    iput-object p2, p0, Lbr/com/topaz/r/l;->c:Landroid/content/Context;

    iput-object p3, p0, Lbr/com/topaz/r/l;->d:Lbr/com/topaz/l/l;

    iput-object p4, p0, Lbr/com/topaz/r/l;->e:Lbr/com/topaz/k0/f;

    iput-object p5, p0, Lbr/com/topaz/r/l;->g:Lbr/com/topaz/k0/a;

    new-instance p1, Lbr/com/topaz/r/m;

    const-string p3, "ssspfod"

    const-string p4, "ttmmsdi"

    invoke-direct {p1, p2, p3, p4}, Lbr/com/topaz/r/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lbr/com/topaz/r/l;->f:Lbr/com/topaz/r/m;

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/r/l;)Lbr/com/topaz/k0/f;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/r/l;->e:Lbr/com/topaz/k0/f;

    return-object p0
.end method

.method private a(Lbr/com/topaz/l/l;)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/r/l;->g:Lbr/com/topaz/k0/a;

    invoke-virtual {v0}, Lbr/com/topaz/k0/a;->b()Lbr/com/topaz/k0/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbr/com/topaz/k0/e;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Lbr/com/topaz/l/l;->a(Lbr/com/topaz/k0/e;)V

    iget-object v0, p0, Lbr/com/topaz/r/l;->g:Lbr/com/topaz/k0/a;

    invoke-virtual {v0}, Lbr/com/topaz/k0/a;->a()V

    invoke-direct {p0, p1}, Lbr/com/topaz/r/l;->c(Lbr/com/topaz/l/l;)V

    :cond_0
    invoke-direct {p0}, Lbr/com/topaz/r/l;->d()V

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/r/l;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/r/l;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    const-string v0, "0"

    :try_start_0
    iget-object v1, p0, Lbr/com/topaz/r/l;->f:Lbr/com/topaz/r/m;

    iget-object v2, p0, Lbr/com/topaz/r/l;->e:Lbr/com/topaz/k0/f;

    invoke-virtual {v2}, Lbr/com/topaz/k0/f;->c()I

    move-result v2

    iget-object v3, p0, Lbr/com/topaz/r/l;->e:Lbr/com/topaz/k0/f;

    invoke-virtual {v3}, Lbr/com/topaz/k0/f;->d()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lbr/com/topaz/r/m;->b(IJ)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lbr/com/topaz/r/l;->c:Landroid/content/Context;

    invoke-static {p1}, Lbr/com/topaz/k0/h;->a(Landroid/content/Context;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lbr/com/topaz/r/l;->d:Lbr/com/topaz/l/l;

    invoke-virtual {v1}, Lbr/com/topaz/l/l;->b()Lbr/com/topaz/l/l;

    move-result-object v1

    const-string v2, "SS_DELAY"

    invoke-virtual {v1, v2, p1}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "6"

    const-string v3, "SS"

    invoke-virtual {v1, v2, v3}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lbr/com/topaz/r/l;->c:Landroid/content/Context;

    invoke-static {v2, v1}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lbr/com/topaz/r/b;->a(Lbr/com/topaz/r/b$a;)V

    invoke-virtual {v1}, Lbr/com/topaz/s0/a;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lbr/com/topaz/r/l;->c:Landroid/content/Context;

    invoke-static {p1}, Lbr/com/topaz/k0/h;->a(Landroid/content/Context;)V

    :cond_2
    throw v1

    :catch_0
    nop

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :goto_0
    iget-object p1, p0, Lbr/com/topaz/r/l;->c:Landroid/content/Context;

    invoke-static {p1}, Lbr/com/topaz/k0/h;->a(Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method private c()V
    .locals 5

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lbr/com/topaz/r/l$a;

    invoke-direct {v1, p0}, Lbr/com/topaz/r/l$a;-><init>(Lbr/com/topaz/r/l;)V

    iget-object v2, p0, Lbr/com/topaz/r/l;->e:Lbr/com/topaz/k0/f;

    invoke-virtual {v2}, Lbr/com/topaz/k0/f;->a()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method private c(Lbr/com/topaz/l/l;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/r/l;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lbr/com/topaz/r/a;->b(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/k;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbr/com/topaz/r/k;->a(Lbr/com/topaz/r/k$c;)V

    iget-object v0, p0, Lbr/com/topaz/r/l;->e:Lbr/com/topaz/k0/f;

    invoke-virtual {v0}, Lbr/com/topaz/k0/f;->e()Lbr/com/topaz/r/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbr/com/topaz/r/k;->a(Lbr/com/topaz/r/h;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method private d()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/r/l;->c:Landroid/content/Context;

    invoke-static {v0}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v0

    new-instance v1, Lbr/com/topaz/j0/g;

    iget-object v2, p0, Lbr/com/topaz/r/l;->b:Lbr/com/topaz/s/a;

    iget-object v3, p0, Lbr/com/topaz/r/l;->c:Landroid/content/Context;

    invoke-static {v3, v0}, Lbr/com/topaz/j0/c;->a(Landroid/content/Context;Lbr/com/topaz/l/f0;)Lbr/com/topaz/j0/c;

    move-result-object v3

    iget-object v4, p0, Lbr/com/topaz/r/l;->c:Landroid/content/Context;

    invoke-static {v4}, Lbr/com/topaz/k0/b;->a(Landroid/content/Context;)Lbr/com/topaz/k0/a;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lbr/com/topaz/j0/g;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/j0/c;Lbr/com/topaz/k0/a;)V

    invoke-virtual {v1}, Lbr/com/topaz/s0/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Lbr/com/topaz/l/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/r/l;->a(Lbr/com/topaz/l/l;)V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, Lbr/com/topaz/r/l;->e:Lbr/com/topaz/k0/f;

    invoke-virtual {v0}, Lbr/com/topaz/k0/f;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "0"

    invoke-direct {p0, v0}, Lbr/com/topaz/r/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/l;->e:Lbr/com/topaz/k0/f;

    invoke-virtual {v0}, Lbr/com/topaz/k0/f;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-direct {p0}, Lbr/com/topaz/r/l;->c()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbr/com/topaz/r/l;->c:Landroid/content/Context;

    invoke-static {v0}, Lbr/com/topaz/k0/h;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
