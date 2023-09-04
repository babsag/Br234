.class public Lbr/com/topaz/l/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lbr/com/topaz/l/t;

.field private f:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

.field private g:Lbr/com/topaz/l/n;


# direct methods
.method public constructor <init>(Lbr/com/topaz/l/t;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/u0/r;Lbr/com/topaz/l/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/l/c;->e:Lbr/com/topaz/l/t;

    iput-object p2, p0, Lbr/com/topaz/l/c;->f:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    const/16 p1, 0xc

    invoke-interface {p3, p1}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/l/c;->a:Ljava/lang/String;

    const/16 p1, 0xd

    invoke-interface {p3, p1}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/l/c;->b:Ljava/lang/String;

    const/16 p1, 0xe

    invoke-interface {p3, p1}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/l/c;->c:Ljava/lang/String;

    const/16 p1, 0xf

    invoke-interface {p3, p1}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/l/c;->d:Ljava/lang/String;

    iput-object p4, p0, Lbr/com/topaz/l/c;->g:Lbr/com/topaz/l/n;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lbr/com/topaz/l/c;->e:Lbr/com/topaz/l/t;

    iget-object v1, p0, Lbr/com/topaz/l/c;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lbr/com/topaz/l/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/l/c;->e:Lbr/com/topaz/l/t;

    iget-object v3, p0, Lbr/com/topaz/l/c;->d:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Lbr/com/topaz/l/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/l/c;->f:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-interface {v2, p1}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbr/com/topaz/l/c;->f:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-interface {v3, p2}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    return v5
.end method


# virtual methods
.method public a()J
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/l/c;->e:Lbr/com/topaz/l/t;

    const-string v1, "aWNjdA=="

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Lbr/com/topaz/l/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/l/c;->e:Lbr/com/topaz/l/t;

    const-string v2, "aWNjdA=="

    invoke-interface {v1, v2, v0}, Lbr/com/topaz/l/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lbr/com/topaz/l/c;->e:Lbr/com/topaz/l/t;

    iget-object v2, p0, Lbr/com/topaz/l/c;->a:Ljava/lang/String;

    iget-object v3, p0, Lbr/com/topaz/l/c;->f:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-interface {v3, p1}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lbr/com/topaz/l/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lbr/com/topaz/l/c;->e:Lbr/com/topaz/l/t;

    iget-object v2, p0, Lbr/com/topaz/l/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lbr/com/topaz/l/c;->f:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-interface {v3, p1}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lbr/com/topaz/l/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lbr/com/topaz/l/c;->g:Lbr/com/topaz/l/n;

    const-string v2, "mid1"

    invoke-virtual {v1, v2, p1, v0}, Lbr/com/topaz/l/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/l/c;->g:Lbr/com/topaz/l/n;

    invoke-virtual {v0}, Lbr/com/topaz/l/n;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/l/c;->e:Lbr/com/topaz/l/t;

    iget-object v2, p0, Lbr/com/topaz/l/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lbr/com/topaz/l/c;->f:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-interface {v3, p1}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lbr/com/topaz/l/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lbr/com/topaz/l/c;->e:Lbr/com/topaz/l/t;

    iget-object v2, p0, Lbr/com/topaz/l/c;->d:Ljava/lang/String;

    iget-object v3, p0, Lbr/com/topaz/l/c;->f:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-interface {v3, p1}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lbr/com/topaz/l/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lbr/com/topaz/l/c;->g:Lbr/com/topaz/l/n;

    const-string v2, "mid2"

    invoke-virtual {v1, v2, p1, v0}, Lbr/com/topaz/l/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lbr/com/topaz/l/c;->e:Lbr/com/topaz/l/t;

    iget-object v1, p0, Lbr/com/topaz/l/c;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lbr/com/topaz/l/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/l/c;->e:Lbr/com/topaz/l/t;

    iget-object v3, p0, Lbr/com/topaz/l/c;->b:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Lbr/com/topaz/l/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/l/c;->f:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-interface {v2, v0}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lbr/com/topaz/l/c;->f:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-interface {v2, v1}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbr/com/topaz/l/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lbr/com/topaz/l/c;->e:Lbr/com/topaz/l/t;

    iget-object v1, p0, Lbr/com/topaz/l/c;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lbr/com/topaz/l/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/l/c;->e:Lbr/com/topaz/l/t;

    iget-object v3, p0, Lbr/com/topaz/l/c;->b:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Lbr/com/topaz/l/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/l/c;->f:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-interface {v2, v0}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lbr/com/topaz/l/c;->f:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-interface {v2, v1}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbr/com/topaz/l/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public e()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/l/c;->g:Lbr/com/topaz/l/n;

    invoke-virtual {p0}, Lbr/com/topaz/l/c;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mid1"

    invoke-virtual {v1, v3, v2, v0}, Lbr/com/topaz/l/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lbr/com/topaz/l/c;->g:Lbr/com/topaz/l/n;

    invoke-virtual {p0}, Lbr/com/topaz/l/c;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mid2"

    invoke-virtual {v1, v3, v2, v0}, Lbr/com/topaz/l/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
