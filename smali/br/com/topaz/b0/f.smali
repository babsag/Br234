.class public Lbr/com/topaz/b0/f;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# instance fields
.field private b:Lbr/com/topaz/l/f0;

.field private c:Lbr/com/topaz/r/k;

.field private d:Ljava/util/concurrent/CountDownLatch;

.field private e:Lbr/com/topaz/r/k$c;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/r/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    new-instance p1, Lbr/com/topaz/b0/f$a;

    invoke-direct {p1, p0}, Lbr/com/topaz/b0/f$a;-><init>(Lbr/com/topaz/b0/f;)V

    iput-object p1, p0, Lbr/com/topaz/b0/f;->e:Lbr/com/topaz/r/k$c;

    iput-object p2, p0, Lbr/com/topaz/b0/f;->b:Lbr/com/topaz/l/f0;

    iput-object p3, p0, Lbr/com/topaz/b0/f;->c:Lbr/com/topaz/r/k;

    invoke-virtual {p3, p1}, Lbr/com/topaz/r/k;->a(Lbr/com/topaz/r/k$c;)V

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/b0/f;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/b0/f;->d:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/b0/f;->b:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->E()Lbr/com/topaz/b0/c;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/b0/c;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lbr/com/topaz/b0/c;->b()I

    move-result v0

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lbr/com/topaz/b0/f;->d:Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Lbr/com/topaz/b0/f;->c:Lbr/com/topaz/r/k;

    invoke-virtual {v1}, Lbr/com/topaz/r/k;->run()V

    iget-object v1, p0, Lbr/com/topaz/b0/f;->d:Ljava/util/concurrent/CountDownLatch;

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
