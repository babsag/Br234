.class public Lbr/com/topaz/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/c/e$a;
.implements Lbr/com/topaz/r/k$c;
.implements Lbr/com/topaz/r/b$a;
.implements Lbr/com/topaz/c/g$b;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lbr/com/topaz/c/e;

.field private final c:Lbr/com/topaz/l/f0;

.field private final d:Lbr/com/topaz/v0/c;

.field private final e:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private final f:Lbr/com/topaz/u0/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/c/e;Lbr/com/topaz/l/f0;Lbr/com/topaz/v0/c;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/c/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lbr/com/topaz/c/f;->b:Lbr/com/topaz/c/e;

    iput-object p3, p0, Lbr/com/topaz/c/f;->c:Lbr/com/topaz/l/f0;

    iput-object p4, p0, Lbr/com/topaz/c/f;->d:Lbr/com/topaz/v0/c;

    iput-object p5, p0, Lbr/com/topaz/c/f;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    iput-object p6, p0, Lbr/com/topaz/c/f;->f:Lbr/com/topaz/u0/r;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/c/f;->b:Lbr/com/topaz/c/e;

    invoke-interface {v0}, Lbr/com/topaz/c/e;->a()V

    return-void
.end method

.method public a(Lbr/com/topaz/l/l;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/c/f;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbr/com/topaz/r/b;->a(Lbr/com/topaz/r/b$a;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public declared-synchronized a(Lbr/com/topaz/l/x;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    new-instance v7, Lbr/com/topaz/c/g;

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/c/f;->c:Lbr/com/topaz/l/f0;

    iget-object v4, p0, Lbr/com/topaz/c/f;->d:Lbr/com/topaz/v0/c;

    iget-object v5, p0, Lbr/com/topaz/c/f;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    iget-object v6, p0, Lbr/com/topaz/c/f;->f:Lbr/com/topaz/u0/r;

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lbr/com/topaz/c/g;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/x;Lbr/com/topaz/v0/c;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;)V

    invoke-virtual {v7, p0}, Lbr/com/topaz/c/g;->a(Lbr/com/topaz/c/g$b;)V

    invoke-virtual {v7}, Lbr/com/topaz/s0/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Lbr/com/topaz/l/l;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/c/f;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lbr/com/topaz/r/a;->b(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/k;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbr/com/topaz/r/k;->a(Lbr/com/topaz/r/k$c;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/c/f;->b:Lbr/com/topaz/c/e;

    invoke-interface {v0}, Lbr/com/topaz/c/e;->b()V

    return-void
.end method
