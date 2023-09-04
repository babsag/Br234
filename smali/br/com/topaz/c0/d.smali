.class public Lbr/com/topaz/c0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/r/k$c;
.implements Lbr/com/topaz/r/b$a;


# static fields
.field private static k:Ljava/lang/Thread;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lbr/com/topaz/c0/c;

.field private c:Lbr/com/topaz/d0/a;

.field private d:Lbr/com/topaz/l/l;

.field private e:Lbr/com/topaz/d0/c;

.field private f:Lbr/com/topaz/l/f0;

.field private g:Lbr/com/topaz/m0/d;

.field private h:Lbr/com/topaz/c0/e;

.field private i:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private j:Lbr/com/topaz/c0/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/c0/c;Lbr/com/topaz/d0/a;Lbr/com/topaz/d0/c;Lbr/com/topaz/l/f0;Lbr/com/topaz/m0/d;Lbr/com/topaz/c0/e;Lbr/com/topaz/c0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/c0/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lbr/com/topaz/c0/d;->b:Lbr/com/topaz/c0/c;

    iput-object p3, p0, Lbr/com/topaz/c0/d;->c:Lbr/com/topaz/d0/a;

    iput-object p4, p0, Lbr/com/topaz/c0/d;->e:Lbr/com/topaz/d0/c;

    iput-object p5, p0, Lbr/com/topaz/c0/d;->f:Lbr/com/topaz/l/f0;

    iput-object p6, p0, Lbr/com/topaz/c0/d;->g:Lbr/com/topaz/m0/d;

    iput-object p7, p0, Lbr/com/topaz/c0/d;->h:Lbr/com/topaz/c0/e;

    new-instance p1, Lbr/com/topaz/heartbeat/utils/OFDException;

    iget-object p2, p0, Lbr/com/topaz/c0/d;->f:Lbr/com/topaz/l/f0;

    invoke-direct {p1, p2}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    iput-object p1, p0, Lbr/com/topaz/c0/d;->i:Lbr/com/topaz/heartbeat/utils/OFDException;

    iput-object p8, p0, Lbr/com/topaz/c0/d;->j:Lbr/com/topaz/c0/a;

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/c0/d;)Lbr/com/topaz/d0/c;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/c0/d;->e:Lbr/com/topaz/d0/c;

    return-object p0
.end method

.method static synthetic a(Lbr/com/topaz/c0/d;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/c0/d;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lbr/com/topaz/c0/d;)Lbr/com/topaz/l/f0;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/c0/d;->f:Lbr/com/topaz/l/f0;

    return-object p0
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbr/com/topaz/c0/g;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/c0/d;->e:Lbr/com/topaz/d0/c;

    invoke-virtual {v0}, Lbr/com/topaz/d0/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbr/com/topaz/c0/g;

    invoke-virtual {v1}, Lbr/com/topaz/c0/g;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbr/com/topaz/c0/d;->e:Lbr/com/topaz/d0/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lbr/com/topaz/c0/d;->j:Lbr/com/topaz/c0/a;

    invoke-virtual {v1}, Lbr/com/topaz/c0/g;->h()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbr/com/topaz/c0/a;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbr/com/topaz/d0/c;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbr/com/topaz/c0/d;->j:Lbr/com/topaz/c0/a;

    invoke-virtual {v1}, Lbr/com/topaz/c0/g;->h()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbr/com/topaz/c0/a;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic c(Lbr/com/topaz/c0/d;)Lbr/com/topaz/d0/a;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/c0/d;->c:Lbr/com/topaz/d0/a;

    return-object p0
.end method

.method static synthetic d(Lbr/com/topaz/c0/d;)Lbr/com/topaz/heartbeat/utils/OFDException;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/c0/d;->i:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbr/com/topaz/c0/g;",
            ">;)",
            "Ljava/util/List<",
            "Lbr/com/topaz/c0/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbr/com/topaz/c0/g;

    invoke-virtual {v1}, Lbr/com/topaz/c0/g;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbr/com/topaz/c0/d;->h:Lbr/com/topaz/c0/e;

    invoke-virtual {v3, v2}, Lbr/com/topaz/c0/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbr/com/topaz/c0/g;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lbr/com/topaz/c0/d;->h:Lbr/com/topaz/c0/e;

    invoke-virtual {v3, v2}, Lbr/com/topaz/c0/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbr/com/topaz/c0/g;->c(Ljava/lang/String;)V

    iget-object v3, p0, Lbr/com/topaz/c0/d;->h:Lbr/com/topaz/c0/e;

    invoke-virtual {v3, v2}, Lbr/com/topaz/c0/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbr/com/topaz/c0/g;->g(Ljava/lang/String;)V

    iget-object v3, p0, Lbr/com/topaz/c0/d;->e:Lbr/com/topaz/d0/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbr/com/topaz/c0/d;->j:Lbr/com/topaz/c0/a;

    invoke-virtual {v1}, Lbr/com/topaz/c0/g;->h()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lbr/com/topaz/c0/a;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lbr/com/topaz/c0/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lbr/com/topaz/c0/g;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lbr/com/topaz/c0/g;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v4, v5, v6}, Lbr/com/topaz/d0/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/c0/d;->b:Lbr/com/topaz/c0/c;

    invoke-interface {v0}, Lbr/com/topaz/c0/c;->a()V

    return-void
.end method

.method public a(Lbr/com/topaz/l/l;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/c0/d;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbr/com/topaz/r/b;->a(Lbr/com/topaz/r/b$a;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lbr/com/topaz/c0/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lbr/com/topaz/c0/d;->k:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbr/com/topaz/c0/d$a;

    invoke-direct {v1, p0, p1}, Lbr/com/topaz/c0/d$a;-><init>(Lbr/com/topaz/c0/d;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lbr/com/topaz/c0/d;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbr/com/topaz/c0/g;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lbr/com/topaz/l/l;

    invoke-direct {v0}, Lbr/com/topaz/l/l;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/c0/d;->d:Lbr/com/topaz/l/l;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/topaz/c0/g;

    invoke-virtual {v0}, Lbr/com/topaz/c0/g;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/c0/d;->i:Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-static {v0, v2}, Lbr/com/topaz/d0/d;->a(Lbr/com/topaz/c0/g;Lbr/com/topaz/heartbeat/utils/OFDException;)Lbr/com/topaz/d0/d;

    move-result-object v0

    iget-object v2, p0, Lbr/com/topaz/c0/d;->e:Lbr/com/topaz/d0/c;

    invoke-virtual {v2, v1, v0}, Lbr/com/topaz/d0/c;->a(Ljava/lang/String;Lbr/com/topaz/d0/d;)V

    iget-object v2, p0, Lbr/com/topaz/c0/d;->d:Lbr/com/topaz/l/l;

    invoke-virtual {v2, v1, v0}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lbr/com/topaz/c0/d;->e:Lbr/com/topaz/d0/c;

    invoke-virtual {p1}, Lbr/com/topaz/d0/c;->d()V

    iget-object p1, p0, Lbr/com/topaz/c0/d;->d:Lbr/com/topaz/l/l;

    const-string v0, "6"

    invoke-virtual {p1, v0, p2}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lbr/com/topaz/c0/d;->d:Lbr/com/topaz/l/l;

    invoke-virtual {p0, p1}, Lbr/com/topaz/c0/d;->a(Lbr/com/topaz/l/l;)V

    :cond_1
    return-void
.end method

.method public b(Lbr/com/topaz/l/l;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/c0/d;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lbr/com/topaz/r/a;->b(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/k;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbr/com/topaz/r/k;->a(Lbr/com/topaz/r/k$c;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public b()Z
    .locals 1

    sget-object v0, Lbr/com/topaz/c0/d;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    const-string v0, "PRO"

    invoke-virtual {p0, v0}, Lbr/com/topaz/c0/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lbr/com/topaz/l/l;

    invoke-direct {v0}, Lbr/com/topaz/l/l;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/c0/d;->d:Lbr/com/topaz/l/l;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lbr/com/topaz/c0/d;->d:Lbr/com/topaz/l/l;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbr/com/topaz/c0/d;->e:Lbr/com/topaz/d0/c;

    invoke-virtual {v3, v0}, Lbr/com/topaz/d0/c;->b(Ljava/lang/String;)Lbr/com/topaz/d0/d;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lbr/com/topaz/c0/d;->e:Lbr/com/topaz/d0/c;

    invoke-virtual {v1, v0}, Lbr/com/topaz/d0/c;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lbr/com/topaz/c0/d;->e:Lbr/com/topaz/d0/c;

    invoke-virtual {p1}, Lbr/com/topaz/d0/c;->d()V

    iget-object p1, p0, Lbr/com/topaz/c0/d;->d:Lbr/com/topaz/l/l;

    const-string v0, "6"

    const-string v1, "UN"

    invoke-virtual {p1, v0, v1}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lbr/com/topaz/c0/d;->d:Lbr/com/topaz/l/l;

    invoke-virtual {p0, p1}, Lbr/com/topaz/c0/d;->a(Lbr/com/topaz/l/l;)V

    :cond_1
    return-void
.end method

.method public d()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lbr/com/topaz/c0/d;->f:Lbr/com/topaz/l/f0;

    invoke-interface {v1}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/l/g;->g0()Z

    move-result v2

    invoke-virtual {v1}, Lbr/com/topaz/l/g;->f0()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_0

    if-eqz v2, :cond_1

    iget-object v1, p0, Lbr/com/topaz/c0/d;->g:Lbr/com/topaz/m0/d;

    invoke-interface {v1}, Lbr/com/topaz/m0/d;->a()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    iget-object v2, p0, Lbr/com/topaz/c0/d;->i:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v3, "027"

    invoke-virtual {v2, v1, v3}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    return v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/c0/d;->b:Lbr/com/topaz/c0/c;

    invoke-interface {v0}, Lbr/com/topaz/c0/c;->b()V

    return-void
.end method
