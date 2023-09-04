.class public Lbr/com/topaz/g/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lbr/com/topaz/heartbeat/utils/OFDException;

.field protected c:Lbr/com/topaz/a/b;

.field private final d:Ljava/util/concurrent/locks/Lock;

.field private final e:Lbr/com/topaz/l/f0;

.field private final f:Lbr/com/topaz/s/a;

.field private final g:Lbr/com/topaz/g/d;

.field private final h:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/g/d;Lbr/com/topaz/heartbeat/utils/OFDException;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/g/c;->d:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Lbr/com/topaz/g/c$a;

    invoke-direct {v0, p0}, Lbr/com/topaz/g/c$a;-><init>(Lbr/com/topaz/g/c;)V

    iput-object v0, p0, Lbr/com/topaz/g/c;->h:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lbr/com/topaz/g/c;->a:Landroid/content/Context;

    iput-object p3, p0, Lbr/com/topaz/g/c;->e:Lbr/com/topaz/l/f0;

    iput-object p2, p0, Lbr/com/topaz/g/c;->f:Lbr/com/topaz/s/a;

    iput-object p4, p0, Lbr/com/topaz/g/c;->g:Lbr/com/topaz/g/d;

    iput-object p5, p0, Lbr/com/topaz/g/c;->b:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-void
.end method

.method private a()J
    .locals 4

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/g/c;->g:Lbr/com/topaz/g/d;

    invoke-virtual {v0}, Lbr/com/topaz/g/d;->a()J

    move-result-wide v0

    iget-object v2, p0, Lbr/com/topaz/g/c;->e:Lbr/com/topaz/l/f0;

    invoke-interface {v2}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/topaz/l/g;->f()Lbr/com/topaz/g/e;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/topaz/g/e;->a()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v0, v2

    goto :goto_0

    :catch_0
    const-wide/32 v0, 0xea60

    :goto_0
    return-wide v0
.end method

.method static synthetic a(Lbr/com/topaz/g/c;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/g/c;->d:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic b(Lbr/com/topaz/g/c;)Lbr/com/topaz/g/d;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/g/c;->g:Lbr/com/topaz/g/d;

    return-object p0
.end method

.method static synthetic c(Lbr/com/topaz/g/c;)Lbr/com/topaz/heartbeat/utils/OFDException;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/g/c;->b:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-object p0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/g/c;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbr/com/topaz/g/c;->c:Lbr/com/topaz/a/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbr/com/topaz/g/c;->h:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lbr/com/topaz/g/c;)V
    .locals 0

    invoke-direct {p0}, Lbr/com/topaz/g/c;->d()V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 2

    :try_start_0
    new-instance v0, Lbr/com/topaz/g/c$b;

    iget-object v1, p0, Lbr/com/topaz/g/c;->f:Lbr/com/topaz/s/a;

    invoke-direct {v0, p0, v1}, Lbr/com/topaz/g/c$b;-><init>(Lbr/com/topaz/g/c;Lbr/com/topaz/s/a;)V

    invoke-virtual {v0}, Lbr/com/topaz/s0/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public c()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/g/c;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lbr/com/topaz/g/c;->e:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->f()Lbr/com/topaz/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/g/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lbr/com/topaz/g/c;->a:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbr/com/topaz/g/c;->c:Lbr/com/topaz/a/b;

    if-nez v2, :cond_1

    iget-object v2, p0, Lbr/com/topaz/g/c;->g:Lbr/com/topaz/g/d;

    invoke-virtual {v2}, Lbr/com/topaz/g/d;->a()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lbr/com/topaz/g/c;->a()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbr/com/topaz/g/c;->a:Landroid/content/Context;

    const-class v2, Lbr/com/topaz/g/a;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lbr/com/topaz/g/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lbr/com/topaz/g/c;->h:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_1
    iget-object v0, p0, Lbr/com/topaz/g/c;->b:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v1, "183"

    invoke-virtual {v0, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lbr/com/topaz/g/c;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    iget-object v1, p0, Lbr/com/topaz/g/c;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lbr/com/topaz/g/c;->d()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
