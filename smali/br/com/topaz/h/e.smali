.class public Lbr/com/topaz/h/e;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/h/e$a;
    }
.end annotation


# instance fields
.field private b:Lbr/com/topaz/l/l;

.field private c:Lbr/com/topaz/f0/b;

.field private d:Lbr/com/topaz/l/f0;

.field private e:Lbr/com/topaz/l/e0;

.field private f:Lbr/com/topaz/m0/d;

.field private g:Lbr/com/topaz/h/e$a;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/l;Lbr/com/topaz/f0/b;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;Lbr/com/topaz/m0/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/h/e;->b:Lbr/com/topaz/l/l;

    iput-object p3, p0, Lbr/com/topaz/h/e;->c:Lbr/com/topaz/f0/b;

    iput-object p4, p0, Lbr/com/topaz/h/e;->d:Lbr/com/topaz/l/f0;

    iput-object p5, p0, Lbr/com/topaz/h/e;->e:Lbr/com/topaz/l/e0;

    iput-object p6, p0, Lbr/com/topaz/h/e;->f:Lbr/com/topaz/m0/d;

    return-void
.end method

.method private a(Lbr/com/topaz/h/a$b;)Z
    .locals 6

    iget-object v0, p0, Lbr/com/topaz/h/e;->e:Lbr/com/topaz/l/e0;

    invoke-interface {v0}, Lbr/com/topaz/l/e0;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0}, Lbr/com/topaz/h/e;->c()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1}, Lbr/com/topaz/h/a$b;->b()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    const/4 v4, 0x0

    cmp-long v5, v2, v0

    if-lez v5, :cond_3

    invoke-virtual {p1}, Lbr/com/topaz/h/a$b;->c()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lbr/com/topaz/h/e;->f:Lbr/com/topaz/m0/d;

    invoke-interface {p1}, Lbr/com/topaz/m0/d;->a()Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Lbr/com/topaz/h/a$b;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lbr/com/topaz/h/e;->f:Lbr/com/topaz/m0/d;

    invoke-interface {p1}, Lbr/com/topaz/m0/d;->l()Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Lbr/com/topaz/h/a$b;->c()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lbr/com/topaz/h/e;->f:Lbr/com/topaz/m0/d;

    invoke-interface {p1}, Lbr/com/topaz/m0/d;->a()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lbr/com/topaz/h/e;->f:Lbr/com/topaz/m0/d;

    invoke-interface {p1}, Lbr/com/topaz/m0/d;->l()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v4, 0x1

    :cond_3
    return v4
.end method

.method private c()J
    .locals 3

    new-instance v0, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/h/e;->b:Lbr/com/topaz/l/l;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lbr/com/topaz/h/e$a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/h/e;->g:Lbr/com/topaz/h/e$a;

    return-void
.end method

.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/h/e;->d:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    new-instance v1, Lbr/com/topaz/k/c;

    invoke-direct {v1}, Lbr/com/topaz/k/c;-><init>()V

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/com/topaz/k/c;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->g()Lbr/com/topaz/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/h/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbr/com/topaz/h/a$b;

    invoke-direct {p0, v2}, Lbr/com/topaz/h/e;->a(Lbr/com/topaz/h/a$b;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lbr/com/topaz/h/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbr/com/topaz/k/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbr/com/topaz/h/e;->c:Lbr/com/topaz/f0/b;

    invoke-virtual {v2}, Lbr/com/topaz/h/a$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Lbr/com/topaz/f0/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_1

    const/16 v3, 0x12c

    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lbr/com/topaz/h/e;->e:Lbr/com/topaz/l/e0;

    invoke-direct {p0}, Lbr/com/topaz/h/e;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lbr/com/topaz/l/e0;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/h/e;->g:Lbr/com/topaz/h/e$a;

    invoke-interface {v0}, Lbr/com/topaz/h/e$a;->onSuccess()V

    return-void

    :cond_1
    iget-object v2, p0, Lbr/com/topaz/h/e;->g:Lbr/com/topaz/h/e$a;

    invoke-interface {v2}, Lbr/com/topaz/h/e$a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lbr/com/topaz/k/c$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lbr/com/topaz/h/e;->g:Lbr/com/topaz/h/e$a;

    invoke-interface {v0}, Lbr/com/topaz/h/e$a;->b()V

    :cond_2
    return-void
.end method
