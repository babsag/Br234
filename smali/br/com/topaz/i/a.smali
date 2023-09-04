.class public Lbr/com/topaz/i/a;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/i/a$f;
    }
.end annotation


# instance fields
.field private final b:Lbr/com/topaz/l/f0;

.field private final c:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private final d:Lbr/com/topaz/u0/r;

.field private e:Ljava/lang/String;

.field private final f:Lbr/com/topaz/f0/g;

.field private final g:Lbr/com/topaz/k/d;

.field private final h:Lbr/com/topaz/m0/d;

.field private final i:Lbr/com/topaz/g0/f;

.field private final j:Lbr/com/topaz/s/a;

.field private final k:Lbr/com/topaz/l/e0;

.field private final l:Lbr/com/topaz/m/a;

.field private final m:Lbr/com/topaz/f0/c;

.field private final n:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

.field private final o:Lbr/com/topaz/o/b;

.field private p:Lbr/com/topaz/i/a$f;

.field private q:Z


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/u0/r;Lbr/com/topaz/f0/g;Lbr/com/topaz/k/d;Lbr/com/topaz/m0/d;Lbr/com/topaz/g0/f;Lbr/com/topaz/l/e0;Lbr/com/topaz/f0/c;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/m/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/o/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p1, p0, Lbr/com/topaz/i/a;->j:Lbr/com/topaz/s/a;

    iput-object p2, p0, Lbr/com/topaz/i/a;->d:Lbr/com/topaz/u0/r;

    iput-object p11, p0, Lbr/com/topaz/i/a;->b:Lbr/com/topaz/l/f0;

    iput-object p3, p0, Lbr/com/topaz/i/a;->f:Lbr/com/topaz/f0/g;

    iput-object p4, p0, Lbr/com/topaz/i/a;->g:Lbr/com/topaz/k/d;

    iput-object p5, p0, Lbr/com/topaz/i/a;->h:Lbr/com/topaz/m0/d;

    iput-object p6, p0, Lbr/com/topaz/i/a;->i:Lbr/com/topaz/g0/f;

    iput-object p7, p0, Lbr/com/topaz/i/a;->k:Lbr/com/topaz/l/e0;

    iput-object p10, p0, Lbr/com/topaz/i/a;->l:Lbr/com/topaz/m/a;

    iput-object p8, p0, Lbr/com/topaz/i/a;->m:Lbr/com/topaz/f0/c;

    iput-object p9, p0, Lbr/com/topaz/i/a;->n:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    iput-object p12, p0, Lbr/com/topaz/i/a;->o:Lbr/com/topaz/o/b;

    new-instance p1, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {p1, p11}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    iput-object p1, p0, Lbr/com/topaz/i/a;->c:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/i/a;)Lbr/com/topaz/l/f0;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/i/a;->b:Lbr/com/topaz/l/f0;

    return-object p0
.end method

.method private declared-synchronized a(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/i/a;->p:Lbr/com/topaz/i/a$f;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lbr/com/topaz/i/a;->q:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lbr/com/topaz/i/a;->q:Z

    invoke-interface {v0, p1}, Lbr/com/topaz/i/a$f;->onFailure(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lbr/com/topaz/i/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/i/a;->a(I)V

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/i/a;Lbr/com/topaz/l/g;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/l/g;I)V

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/i/a;Lbr/com/topaz/l/g;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/l/g;Z)V

    return-void
.end method

.method private declared-synchronized a(Lbr/com/topaz/l/g;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/i/a;->p:Lbr/com/topaz/i/a$f;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lbr/com/topaz/i/a;->q:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lbr/com/topaz/i/a;->q:Z

    invoke-interface {v0, p1, p2}, Lbr/com/topaz/i/a$f;->a(Lbr/com/topaz/l/g;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Lbr/com/topaz/l/g;Z)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/l/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lbr/com/topaz/i/a;->b(Lbr/com/topaz/l/g;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lbr/com/topaz/x/d$a;)V
    .locals 11

    new-instance v10, Lbr/com/topaz/x/d;

    iget-object v1, p0, Lbr/com/topaz/i/a;->j:Lbr/com/topaz/s/a;

    iget-object v2, p0, Lbr/com/topaz/i/a;->b:Lbr/com/topaz/l/f0;

    iget-object v3, p0, Lbr/com/topaz/i/a;->k:Lbr/com/topaz/l/e0;

    iget-object v4, p0, Lbr/com/topaz/i/a;->m:Lbr/com/topaz/f0/c;

    iget-object v5, p0, Lbr/com/topaz/i/a;->g:Lbr/com/topaz/k/d;

    iget-object v6, p0, Lbr/com/topaz/i/a;->n:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    iget-object v7, p0, Lbr/com/topaz/i/a;->l:Lbr/com/topaz/m/a;

    new-instance v8, Lbr/com/topaz/u0/s;

    invoke-direct {v8}, Lbr/com/topaz/u0/s;-><init>()V

    iget-object v9, p0, Lbr/com/topaz/i/a;->c:Lbr/com/topaz/heartbeat/utils/OFDException;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lbr/com/topaz/x/d;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;Lbr/com/topaz/f0/c;Lbr/com/topaz/k/d;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/m/a;Lbr/com/topaz/u0/r;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    if-eqz p1, :cond_0

    invoke-virtual {v10, p1}, Lbr/com/topaz/x/d;->a(Lbr/com/topaz/x/d$a;)V

    :cond_0
    invoke-virtual {v10}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/i/a;->f:Lbr/com/topaz/f0/g;

    new-instance v1, Lbr/com/topaz/i/a$d;

    invoke-direct {v1, p0}, Lbr/com/topaz/i/a$d;-><init>(Lbr/com/topaz/i/a;)V

    invoke-interface {v0, p1, v1}, Lbr/com/topaz/f0/g;->b(Ljava/lang/String;Lbr/com/topaz/f0/g$a;)V

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/i/a;[B)Z
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/i/a;->a([B)Z

    move-result p0

    return p0
.end method

.method private a(Lbr/com/topaz/l/g;)Z
    .locals 1

    invoke-virtual {p1}, Lbr/com/topaz/l/g;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbr/com/topaz/l/g;->y()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lbr/com/topaz/i/a$a;

    invoke-direct {p1, p0}, Lbr/com/topaz/i/a$a;-><init>(Lbr/com/topaz/i/a;)V

    invoke-direct {p0, p1}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/x/d$a;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a([B)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/i/a;->g:Lbr/com/topaz/k/d;

    invoke-interface {v0, p1}, Lbr/com/topaz/k/d;->a([B)[B

    move-result-object p1

    new-instance v0, Lbr/com/topaz/l/g;

    iget-object v1, p0, Lbr/com/topaz/i/a;->d:Lbr/com/topaz/u0/r;

    invoke-direct {v0, v1}, Lbr/com/topaz/l/g;-><init>(Lbr/com/topaz/u0/r;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/g;->a(Ljava/lang/String;)Lbr/com/topaz/l/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lbr/com/topaz/i/a;->c:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v1, "020"

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lbr/com/topaz/i/a;)Lbr/com/topaz/heartbeat/utils/OFDException;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/i/a;->c:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-object p0
.end method

.method private b(Lbr/com/topaz/l/g;Z)V
    .locals 2

    invoke-virtual {p1}, Lbr/com/topaz/l/g;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lbr/com/topaz/l/g;->a0()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    iget-object v1, p0, Lbr/com/topaz/i/a;->b:Lbr/com/topaz/l/f0;

    invoke-interface {v1}, Lbr/com/topaz/l/f0;->s()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lbr/com/topaz/i/a;->c(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lbr/com/topaz/l/g;->b()Lbr/com/topaz/d/g;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/d/g;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p2, :cond_2

    iget-object v1, p0, Lbr/com/topaz/i/a;->b:Lbr/com/topaz/l/f0;

    invoke-interface {v1}, Lbr/com/topaz/l/f0;->k()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-direct {p0, v0}, Lbr/com/topaz/i/a;->a(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lbr/com/topaz/l/g;->j()Lbr/com/topaz/o/l;

    move-result-object p1

    invoke-virtual {p1}, Lbr/com/topaz/o/l;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez p2, :cond_4

    iget-object p1, p0, Lbr/com/topaz/i/a;->b:Lbr/com/topaz/l/f0;

    invoke-interface {p1}, Lbr/com/topaz/l/f0;->a()Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    invoke-direct {p0, v0}, Lbr/com/topaz/i/a;->b(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lbr/com/topaz/i/a;->i:Lbr/com/topaz/g0/f;

    invoke-virtual {p1}, Lbr/com/topaz/g0/f;->a()V

    invoke-direct {p0}, Lbr/com/topaz/i/a;->d()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/i/a;->f:Lbr/com/topaz/f0/g;

    new-instance v1, Lbr/com/topaz/i/a$e;

    invoke-direct {v1, p0}, Lbr/com/topaz/i/a$e;-><init>(Lbr/com/topaz/i/a;)V

    invoke-interface {v0, p1, v1}, Lbr/com/topaz/f0/g;->a(Ljava/lang/String;Lbr/com/topaz/f0/g$a;)V

    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lbr/com/topaz/i/a;->k:Lbr/com/topaz/l/e0;

    invoke-interface {v0}, Lbr/com/topaz/l/e0;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/i/a;->e:Ljava/lang/String;

    new-instance v0, Lbr/com/topaz/l/g;

    iget-object v1, p0, Lbr/com/topaz/i/a;->d:Lbr/com/topaz/u0/r;

    invoke-direct {v0, v1}, Lbr/com/topaz/l/g;-><init>(Lbr/com/topaz/u0/r;)V

    iget-object v1, p0, Lbr/com/topaz/i/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/i/a;->b:Lbr/com/topaz/l/f0;

    invoke-interface {v1}, Lbr/com/topaz/l/f0;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lbr/com/topaz/i/a;->b:Lbr/com/topaz/l/f0;

    invoke-interface {v2}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/topaz/l/g;->Y()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    invoke-static {}, Lbr/com/topaz/l/g;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lbr/com/topaz/l/g;->i()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lbr/com/topaz/i/a;->f:Lbr/com/topaz/f0/g;

    new-instance v3, Lbr/com/topaz/i/a$b;

    invoke-direct {v3, p0, v1}, Lbr/com/topaz/i/a$b;-><init>(Lbr/com/topaz/i/a;Z)V

    invoke-interface {v2, v0, v3}, Lbr/com/topaz/f0/g;->c(Ljava/lang/String;Lbr/com/topaz/f0/g$a;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/i/a;->f:Lbr/com/topaz/f0/g;

    new-instance v1, Lbr/com/topaz/i/a$c;

    invoke-direct {v1, p0}, Lbr/com/topaz/i/a$c;-><init>(Lbr/com/topaz/i/a;)V

    invoke-interface {v0, p1, v1}, Lbr/com/topaz/f0/g;->d(Ljava/lang/String;Lbr/com/topaz/f0/g$a;)V

    return-void
.end method

.method private d()V
    .locals 7

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v1

    new-instance v6, Lbr/com/topaz/y/f;

    iget-object v2, p0, Lbr/com/topaz/i/a;->b:Lbr/com/topaz/l/f0;

    iget-object v3, p0, Lbr/com/topaz/i/a;->c:Lbr/com/topaz/heartbeat/utils/OFDException;

    iget-object v4, p0, Lbr/com/topaz/i/a;->f:Lbr/com/topaz/f0/g;

    iget-object v5, p0, Lbr/com/topaz/i/a;->h:Lbr/com/topaz/m0/d;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lbr/com/topaz/y/f;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/f0/g;Lbr/com/topaz/m0/d;)V

    invoke-virtual {v6}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/i/a;->p:Lbr/com/topaz/i/a$f;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/i/a;->b:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    const/16 v1, 0x3eb

    invoke-direct {p0, v0, v1}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/l/g;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/i/a;->b:Lbr/com/topaz/l/f0;

    invoke-interface {v1}, Lbr/com/topaz/l/f0;->o()V

    iget-object v1, p0, Lbr/com/topaz/i/a;->c:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "001"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const/16 v0, 0x7d4

    invoke-direct {p0, v0}, Lbr/com/topaz/i/a;->a(I)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/i/a$f;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/topaz/i/a;->q:Z

    iput-object p1, p0, Lbr/com/topaz/i/a;->p:Lbr/com/topaz/i/a$f;

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/i/a;->b:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/l/g;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbr/com/topaz/i/a;->c()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/i/a;->b:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lbr/com/topaz/i/a;->f()V

    return-void

    :cond_0
    invoke-direct {p0}, Lbr/com/topaz/i/a;->c()V

    return-void
.end method
