.class public Lbr/com/topaz/c0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/r/k$c;
.implements Lbr/com/topaz/r/b$a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lbr/com/topaz/d0/c;

.field private c:Lbr/com/topaz/d0/a;

.field private d:Lbr/com/topaz/l/f0;

.field private e:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private f:Lbr/com/topaz/m0/d;

.field private g:Lbr/com/topaz/c0/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/d0/c;Lbr/com/topaz/d0/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/m0/d;Lbr/com/topaz/c0/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/c0/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lbr/com/topaz/c0/i;->b:Lbr/com/topaz/d0/c;

    iput-object p3, p0, Lbr/com/topaz/c0/i;->c:Lbr/com/topaz/d0/a;

    iput-object p4, p0, Lbr/com/topaz/c0/i;->d:Lbr/com/topaz/l/f0;

    new-instance p1, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {p1, p4}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    iput-object p1, p0, Lbr/com/topaz/c0/i;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    iput-object p5, p0, Lbr/com/topaz/c0/i;->f:Lbr/com/topaz/m0/d;

    iput-object p6, p0, Lbr/com/topaz/c0/i;->g:Lbr/com/topaz/c0/e;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/c0/i;->c:Lbr/com/topaz/d0/a;

    invoke-virtual {v0, p1}, Lbr/com/topaz/d0/a;->b(Ljava/lang/String;)Lbr/com/topaz/c0/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbr/com/topaz/c0/i;->g:Lbr/com/topaz/c0/e;

    invoke-virtual {v1, p1}, Lbr/com/topaz/c0/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/c0/g;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lbr/com/topaz/c0/i;->g:Lbr/com/topaz/c0/e;

    invoke-virtual {v1, p1}, Lbr/com/topaz/c0/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/c0/g;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lbr/com/topaz/c0/i;->g:Lbr/com/topaz/c0/e;

    invoke-virtual {v1, p1}, Lbr/com/topaz/c0/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/c0/g;->g(Ljava/lang/String;)V

    iget-object v1, p0, Lbr/com/topaz/c0/i;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-static {v0, v1}, Lbr/com/topaz/d0/d;->a(Lbr/com/topaz/c0/g;Lbr/com/topaz/heartbeat/utils/OFDException;)Lbr/com/topaz/d0/d;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/c0/i;->b:Lbr/com/topaz/d0/c;

    invoke-virtual {v1, p1, v0}, Lbr/com/topaz/d0/c;->a(Ljava/lang/String;Lbr/com/topaz/d0/d;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lbr/com/topaz/l/l;

    invoke-direct {v0}, Lbr/com/topaz/l/l;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/c0/i;->b:Lbr/com/topaz/d0/c;

    invoke-virtual {v1, p2}, Lbr/com/topaz/d0/c;->c(Ljava/lang/String;)Lbr/com/topaz/d0/d;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "6"

    invoke-virtual {v0, p2, p1}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lbr/com/topaz/c0/i;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbr/com/topaz/r/b;->a(Lbr/com/topaz/r/b$a;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/c0/i;->b:Lbr/com/topaz/d0/c;

    invoke-virtual {v0, p1}, Lbr/com/topaz/d0/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lbr/com/topaz/c0/i;->b:Lbr/com/topaz/d0/c;

    invoke-virtual {v0, p1}, Lbr/com/topaz/d0/c;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "EventLib"

    const-string v1, "Success request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Lbr/com/topaz/l/l;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/c0/i;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lbr/com/topaz/r/a;->b(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/k;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbr/com/topaz/r/k;->a(Lbr/com/topaz/r/k$c;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/c0/i;->d:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->e0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->g0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->g0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/c0/i;->f:Lbr/com/topaz/m0/d;

    invoke-interface {v0}, Lbr/com/topaz/m0/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/c0/i;->b:Lbr/com/topaz/d0/c;

    invoke-virtual {v0}, Lbr/com/topaz/d0/c;->c()V

    invoke-direct {p0, p1}, Lbr/com/topaz/c0/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/c0/i;->b:Lbr/com/topaz/d0/c;

    invoke-virtual {v0}, Lbr/com/topaz/d0/c;->d()V

    const-string v0, "PRO_BROADCAST"

    invoke-direct {p0, v0, p1}, Lbr/com/topaz/c0/i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object v0, p0, Lbr/com/topaz/c0/i;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v1, "057"

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/c0/i;->d:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->e0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->g0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->g0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/c0/i;->f:Lbr/com/topaz/m0/d;

    invoke-interface {v0}, Lbr/com/topaz/m0/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/c0/i;->b:Lbr/com/topaz/d0/c;

    invoke-virtual {v0}, Lbr/com/topaz/d0/c;->c()V

    const-string v0, "PRO_BROADCAST_REMOVE"

    invoke-direct {p0, v0, p1}, Lbr/com/topaz/c0/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lbr/com/topaz/c0/i;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lbr/com/topaz/c0/i;->b:Lbr/com/topaz/d0/c;

    invoke-virtual {p1}, Lbr/com/topaz/d0/c;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object v0, p0, Lbr/com/topaz/c0/i;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v1, "057"

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "EventLib"

    const-string v1, "Failure request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
