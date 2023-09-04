.class public Lbr/com/topaz/y/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/v0/a$a;
.implements Lbr/com/topaz/r/b$a;
.implements Lbr/com/topaz/r/k$c;
.implements Lbr/com/topaz/y/c$a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lbr/com/topaz/s/a;

.field private c:Lbr/com/topaz/l/f0;

.field private d:Lbr/com/topaz/y/e;

.field private e:Lbr/com/topaz/c/e;

.field private f:Lbr/com/topaz/y/c;

.field private g:Lbr/com/topaz/l/e0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/y/e;Lbr/com/topaz/c/e;Lbr/com/topaz/y/c;Lbr/com/topaz/l/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/y/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lbr/com/topaz/y/b;->b:Lbr/com/topaz/s/a;

    iput-object p3, p0, Lbr/com/topaz/y/b;->c:Lbr/com/topaz/l/f0;

    iput-object p4, p0, Lbr/com/topaz/y/b;->d:Lbr/com/topaz/y/e;

    iput-object p5, p0, Lbr/com/topaz/y/b;->e:Lbr/com/topaz/c/e;

    iput-object p6, p0, Lbr/com/topaz/y/b;->f:Lbr/com/topaz/y/c;

    iput-object p7, p0, Lbr/com/topaz/y/b;->g:Lbr/com/topaz/l/e0;

    return-void
.end method

.method private b()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/y/b;->e:Lbr/com/topaz/c/e;

    invoke-interface {v0}, Lbr/com/topaz/c/e;->a()V

    return-void
.end method

.method public a(Lbr/com/topaz/l/l;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/y/b;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbr/com/topaz/r/b;->a(Lbr/com/topaz/r/b$a;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public a(Lbr/com/topaz/l/x;)V
    .locals 4

    new-instance v0, Lbr/com/topaz/v0/a;

    iget-object v1, p0, Lbr/com/topaz/y/b;->b:Lbr/com/topaz/s/a;

    iget-object v2, p0, Lbr/com/topaz/y/b;->c:Lbr/com/topaz/l/f0;

    iget-object v3, p0, Lbr/com/topaz/y/b;->d:Lbr/com/topaz/y/e;

    invoke-direct {v0, v1, v2, p1, v3}, Lbr/com/topaz/v0/a;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/x;Lbr/com/topaz/y/e;)V

    invoke-virtual {v0, p0}, Lbr/com/topaz/v0/a;->a(Lbr/com/topaz/v0/a$a;)V

    invoke-virtual {v0}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public a(Ljava/util/List;Lbr/com/topaz/l/x;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbr/com/topaz/l/b0;",
            ">;",
            "Lbr/com/topaz/l/x;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/y/b;->c:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->B()Lbr/com/topaz/y/d;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/y/d;->b()J

    move-result-wide v1

    iget-object v3, p0, Lbr/com/topaz/y/b;->g:Lbr/com/topaz/l/e0;

    invoke-interface {v3, p2}, Lbr/com/topaz/l/e0;->b(Lbr/com/topaz/l/x;)Lbr/com/topaz/l/y;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_0

    cmp-long v6, v1, v4

    if-lez v6, :cond_0

    invoke-virtual {v3}, Lbr/com/topaz/l/y;->b()J

    move-result-wide v6

    add-long/2addr v6, v1

    invoke-virtual {p2}, Lbr/com/topaz/l/x;->c()J

    move-result-wide v1

    cmp-long v3, v6, v1

    if-lez v3, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lbr/com/topaz/y/b;->g:Lbr/com/topaz/l/e0;

    invoke-interface {v1, p2}, Lbr/com/topaz/l/e0;->a(Lbr/com/topaz/l/x;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbr/com/topaz/l/b0;

    invoke-virtual {v1}, Lbr/com/topaz/l/b0;->b()J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    invoke-virtual {v1}, Lbr/com/topaz/l/b0;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    :cond_2
    invoke-virtual {v1}, Lbr/com/topaz/l/b0;->a()I

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v1}, Lbr/com/topaz/l/b0;->a()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->e0()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lbr/com/topaz/y/b;->b()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    invoke-virtual {v0}, Lbr/com/topaz/l/g;->B()Lbr/com/topaz/y/d;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/topaz/y/d;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object p1, p0, Lbr/com/topaz/y/b;->f:Lbr/com/topaz/y/c;

    invoke-virtual {p1, p0}, Lbr/com/topaz/y/c;->a(Lbr/com/topaz/y/c$a;)V

    iget-object p1, p0, Lbr/com/topaz/y/b;->f:Lbr/com/topaz/y/c;

    invoke-virtual {p1}, Lbr/com/topaz/y/c;->run()V

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lbr/com/topaz/l/b0;->a()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    new-instance p1, Lbr/com/topaz/l/l;

    invoke-direct {p1}, Lbr/com/topaz/l/l;-><init>()V

    const-string v0, "6"

    const-string v2, "N"

    invoke-virtual {p1, v0, v2}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "i"

    invoke-virtual {v1}, Lbr/com/topaz/l/b0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ttr"

    invoke-virtual {p2}, Lbr/com/topaz/l/x;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "txr"

    invoke-virtual {p2}, Lbr/com/topaz/l/x;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "7"

    invoke-virtual {p1, p2, v0}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lbr/com/topaz/y/b;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbr/com/topaz/r/b;->a(Lbr/com/topaz/r/b$a;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method

.method public b(Lbr/com/topaz/l/l;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/y/b;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lbr/com/topaz/r/a;->b(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/k;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbr/com/topaz/r/k;->a(Lbr/com/topaz/r/k$c;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/y/b;->e:Lbr/com/topaz/c/e;

    invoke-interface {v0}, Lbr/com/topaz/c/e;->b()V

    return-void
.end method
