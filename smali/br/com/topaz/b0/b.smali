.class public Lbr/com/topaz/b0/b;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/b0/b$a;
    }
.end annotation


# static fields
.field static k:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private b:Lbr/com/topaz/b0/b$a;

.field private c:Lbr/com/topaz/b0/d;

.field private d:Lbr/com/topaz/d0/a;

.field private e:Lbr/com/topaz/l/f0;

.field private f:Lbr/com/topaz/t0/b;

.field private g:Lbr/com/topaz/u0/p;

.field private final h:Lbr/com/topaz/l/e0;

.field private final i:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/b0/d;Lbr/com/topaz/d0/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/t0/b;Lbr/com/topaz/u0/p;Lbr/com/topaz/l/e0;Lbr/com/topaz/heartbeat/utils/OFDException;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    const-string p1, "cGlfZF9j"

    iput-object p1, p0, Lbr/com/topaz/b0/b;->j:Ljava/lang/String;

    iput-object p2, p0, Lbr/com/topaz/b0/b;->c:Lbr/com/topaz/b0/d;

    iput-object p3, p0, Lbr/com/topaz/b0/b;->d:Lbr/com/topaz/d0/a;

    iput-object p4, p0, Lbr/com/topaz/b0/b;->e:Lbr/com/topaz/l/f0;

    iput-object p5, p0, Lbr/com/topaz/b0/b;->f:Lbr/com/topaz/t0/b;

    iput-object p6, p0, Lbr/com/topaz/b0/b;->g:Lbr/com/topaz/u0/p;

    iput-object p7, p0, Lbr/com/topaz/b0/b;->h:Lbr/com/topaz/l/e0;

    iput-object p8, p0, Lbr/com/topaz/b0/b;->i:Lbr/com/topaz/heartbeat/utils/OFDException;

    sget-object p1, Lbr/com/topaz/b0/b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object p1, Lbr/com/topaz/b0/b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/b0/b;->e:Lbr/com/topaz/l/f0;

    iget-object v1, p0, Lbr/com/topaz/b0/b;->g:Lbr/com/topaz/u0/p;

    iget-object v2, p0, Lbr/com/topaz/b0/b;->c:Lbr/com/topaz/b0/d;

    invoke-virtual {v1, v2}, Lbr/com/topaz/u0/p;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "cGlfZF9j"

    invoke-interface {v0, v2, v1}, Lbr/com/topaz/l/f0;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method private d()Lbr/com/topaz/b0/d;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/b0/b;->g:Lbr/com/topaz/u0/p;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lbr/com/topaz/b0/b;->e:Lbr/com/topaz/l/f0;

    const-string v3, "cGlfZF9j"

    invoke-interface {v2, v3}, Lbr/com/topaz/l/f0;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lbr/com/topaz/b0/d;

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/u0/p;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/topaz/b0/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lbr/com/topaz/b0/d;

    invoke-direct {v0}, Lbr/com/topaz/b0/d;-><init>()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Lbr/com/topaz/b0/b$a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/b0/b;->b:Lbr/com/topaz/b0/b$a;

    return-void
.end method

.method public run()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lbr/com/topaz/b0/b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    sget-object v1, Lbr/com/topaz/b0/b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lbr/com/topaz/b0/b;->e:Lbr/com/topaz/l/f0;

    invoke-interface {v1}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/l/g;->E()Lbr/com/topaz/b0/c;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/b0/c;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lbr/com/topaz/b0/c;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lbr/com/topaz/b0/b;->c:Lbr/com/topaz/b0/d;

    invoke-virtual {v4}, Lbr/com/topaz/b0/d;->a()Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lbr/com/topaz/b0/b;->d:Lbr/com/topaz/d0/a;

    invoke-virtual {v5, v3}, Lbr/com/topaz/d0/a;->a(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lbr/com/topaz/b0/c;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lbr/com/topaz/b0/c;->a()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_3

    iget-object v1, p0, Lbr/com/topaz/b0/b;->h:Lbr/com/topaz/l/e0;

    invoke-interface {v1}, Lbr/com/topaz/l/e0;->b()J

    move-result-wide v6

    add-long/2addr v6, v4

    cmp-long v1, v2, v6

    if-lez v1, :cond_3

    iget-object v1, p0, Lbr/com/topaz/b0/b;->f:Lbr/com/topaz/t0/b;

    invoke-virtual {v1}, Lbr/com/topaz/t0/b;->a()Ljava/util/HashMap;

    move-result-object v1

    iget-object v4, p0, Lbr/com/topaz/b0/b;->h:Lbr/com/topaz/l/e0;

    invoke-interface {v4, v1}, Lbr/com/topaz/l/e0;->a(Ljava/util/HashMap;)V

    iget-object v4, p0, Lbr/com/topaz/b0/b;->h:Lbr/com/topaz/l/e0;

    invoke-interface {v4, v2, v3}, Lbr/com/topaz/l/e0;->h(J)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lbr/com/topaz/b0/b;->h:Lbr/com/topaz/l/e0;

    invoke-interface {v1}, Lbr/com/topaz/l/e0;->a()Ljava/util/HashMap;

    move-result-object v1

    :goto_2
    iget-object v2, p0, Lbr/com/topaz/b0/b;->c:Lbr/com/topaz/b0/d;

    invoke-virtual {v2, v1}, Lbr/com/topaz/b0/d;->b(Ljava/util/HashMap;)V

    :cond_4
    iget-object v1, p0, Lbr/com/topaz/b0/b;->c:Lbr/com/topaz/b0/d;

    invoke-virtual {v1}, Lbr/com/topaz/b0/d;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lbr/com/topaz/b0/b;->c:Lbr/com/topaz/b0/d;

    invoke-virtual {v1, v2}, Lbr/com/topaz/b0/d;->a(Ljava/util/HashMap;)V

    :cond_5
    iget-object v1, p0, Lbr/com/topaz/b0/b;->c:Lbr/com/topaz/b0/d;

    invoke-virtual {v1}, Lbr/com/topaz/b0/d;->b()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lbr/com/topaz/b0/b;->c:Lbr/com/topaz/b0/d;

    invoke-virtual {v1, v2}, Lbr/com/topaz/b0/d;->b(Ljava/util/HashMap;)V

    :cond_6
    invoke-direct {p0}, Lbr/com/topaz/b0/b;->d()Lbr/com/topaz/b0/d;

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/b0/b;->c:Lbr/com/topaz/b0/d;

    invoke-virtual {v1, v2}, Lbr/com/topaz/b0/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lbr/com/topaz/b0/b;->c()V

    iget-object v1, p0, Lbr/com/topaz/b0/b;->b:Lbr/com/topaz/b0/b$a;

    iget-object v2, p0, Lbr/com/topaz/b0/b;->c:Lbr/com/topaz/b0/d;

    invoke-interface {v1, v2}, Lbr/com/topaz/b0/b$a;->a(Lbr/com/topaz/b0/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lbr/com/topaz/b0/b;->i:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v3, "187"

    invoke-virtual {v2, v1, v3}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :goto_3
    sget-object v2, Lbr/com/topaz/b0/b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
