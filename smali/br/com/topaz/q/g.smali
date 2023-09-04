.class public Lbr/com/topaz/q/g;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# instance fields
.field private b:Lbr/com/topaz/l/f0;

.field private c:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

.field private d:Lbr/com/topaz/w0/b;

.field private e:Lbr/com/topaz/u0/d;

.field private f:Lbr/com/topaz/l/e0;

.field private g:Lbr/com/topaz/f0/c;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;Lbr/com/topaz/u0/d;Lbr/com/topaz/l/e0;Lbr/com/topaz/f0/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/q/g;->b:Lbr/com/topaz/l/f0;

    iput-object p3, p0, Lbr/com/topaz/q/g;->c:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    iput-object p4, p0, Lbr/com/topaz/q/g;->d:Lbr/com/topaz/w0/b;

    iput-object p5, p0, Lbr/com/topaz/q/g;->e:Lbr/com/topaz/u0/d;

    iput-object p6, p0, Lbr/com/topaz/q/g;->f:Lbr/com/topaz/l/e0;

    iput-object p7, p0, Lbr/com/topaz/q/g;->g:Lbr/com/topaz/f0/c;

    return-void
.end method

.method private a(Ljava/util/List;)Lbr/com/topaz/q/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbr/com/topaz/l/j;",
            ">;)",
            "Lbr/com/topaz/q/a;"
        }
    .end annotation

    new-instance v0, Lbr/com/topaz/q/a;

    invoke-direct {v0}, Lbr/com/topaz/q/a;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/q/g;->d:Lbr/com/topaz/w0/b;

    invoke-interface {v1}, Lbr/com/topaz/w0/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/q/a;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lbr/com/topaz/q/g;->d:Lbr/com/topaz/w0/b;

    invoke-interface {v1}, Lbr/com/topaz/w0/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/q/a;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lbr/com/topaz/q/g;->e:Lbr/com/topaz/u0/d;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbr/com/topaz/u0/d;->a(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/q/a;->b(Ljava/lang/String;)V

    const-string v1, "HB"

    invoke-virtual {v0, v1}, Lbr/com/topaz/q/a;->f(Ljava/lang/String;)V

    const-string v1, "4.6.0.1074349"

    invoke-virtual {v0, v1}, Lbr/com/topaz/q/a;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lbr/com/topaz/q/g;->f:Lbr/com/topaz/l/e0;

    invoke-interface {v1}, Lbr/com/topaz/l/e0;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/q/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lbr/com/topaz/q/a;->a(Ljava/util/List;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/q/g;->g:Lbr/com/topaz/f0/c;

    invoke-virtual {v0, p1, p3, p2}, Lbr/com/topaz/f0/c;->b(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Lbr/com/topaz/f0/h;

    move-result-object p1

    invoke-virtual {p1}, Lbr/com/topaz/f0/h;->c()I

    move-result p1

    const/16 p2, 0xc9

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p2, p3}, Lbr/com/topaz/q/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/q/g;->b:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->m()Lbr/com/topaz/q/f;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/q/g;->b:Lbr/com/topaz/l/f0;

    invoke-interface {v1}, Lbr/com/topaz/l/f0;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-direct {p0, v1}, Lbr/com/topaz/q/g;->a(Ljava/util/List;)Lbr/com/topaz/q/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbr/com/topaz/q/g;->c:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-virtual {v0}, Lbr/com/topaz/q/f;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbr/com/topaz/q/g;->c:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {v4, v2}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->a([B)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "x-u-id"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "x-k-id"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lbr/com/topaz/q/f;->g()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Content-Type"

    const-string v5, "application/octet-stream"

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lbr/com/topaz/q/f;->h()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, v3, v4}, Lbr/com/topaz/q/g;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/q/g;->b:Lbr/com/topaz/l/f0;

    invoke-interface {v0, v1}, Lbr/com/topaz/l/f0;->b(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
