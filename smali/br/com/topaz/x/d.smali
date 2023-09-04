.class public Lbr/com/topaz/x/d;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/x/d$a;
    }
.end annotation


# instance fields
.field private b:Lbr/com/topaz/x/d$a;

.field private c:Lbr/com/topaz/l/f0;

.field private d:Lbr/com/topaz/l/e0;

.field private e:Lbr/com/topaz/f0/c;

.field private f:Lbr/com/topaz/k/d;

.field private g:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

.field private h:Lbr/com/topaz/m/a;

.field private i:Lbr/com/topaz/u0/r;

.field private j:Lbr/com/topaz/heartbeat/utils/OFDException;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;Lbr/com/topaz/f0/c;Lbr/com/topaz/k/d;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/m/a;Lbr/com/topaz/u0/r;Lbr/com/topaz/heartbeat/utils/OFDException;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/x/d;->c:Lbr/com/topaz/l/f0;

    iput-object p3, p0, Lbr/com/topaz/x/d;->d:Lbr/com/topaz/l/e0;

    iput-object p4, p0, Lbr/com/topaz/x/d;->e:Lbr/com/topaz/f0/c;

    iput-object p5, p0, Lbr/com/topaz/x/d;->f:Lbr/com/topaz/k/d;

    iput-object p6, p0, Lbr/com/topaz/x/d;->g:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    iput-object p7, p0, Lbr/com/topaz/x/d;->h:Lbr/com/topaz/m/a;

    iput-object p8, p0, Lbr/com/topaz/x/d;->i:Lbr/com/topaz/u0/r;

    iput-object p9, p0, Lbr/com/topaz/x/d;->j:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/x/d$a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/x/d;->b:Lbr/com/topaz/x/d$a;

    return-void
.end method

.method public run()V
    .locals 9

    const-string v0, "index"

    :try_start_0
    iget-object v1, p0, Lbr/com/topaz/x/d;->c:Lbr/com/topaz/l/f0;

    invoke-interface {v1}, Lbr/com/topaz/l/f0;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbr/com/topaz/x/d;->c:Lbr/com/topaz/l/f0;

    invoke-interface {v1}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/l/g;->y()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lbr/com/topaz/l/g;

    iget-object v3, p0, Lbr/com/topaz/x/d;->i:Lbr/com/topaz/u0/r;

    invoke-direct {v2, v3}, Lbr/com/topaz/l/g;-><init>(Lbr/com/topaz/u0/r;)V

    iget-object v3, p0, Lbr/com/topaz/x/d;->d:Lbr/com/topaz/l/e0;

    invoke-interface {v3}, Lbr/com/topaz/l/e0;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "If-None-Match"

    iget-object v5, p0, Lbr/com/topaz/x/d;->d:Lbr/com/topaz/l/e0;

    invoke-interface {v5, v0}, Lbr/com/topaz/l/e0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lbr/com/topaz/x/d;->e:Lbr/com/topaz/f0/c;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v3, v5}, Lbr/com/topaz/f0/c;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Lbr/com/topaz/f0/h;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/topaz/f0/h;->c()I

    move-result v3

    const/16 v4, 0x12c

    const/16 v6, 0xc8

    if-eq v3, v6, :cond_2

    invoke-virtual {v2}, Lbr/com/topaz/f0/h;->c()I

    move-result v3

    if-ge v3, v4, :cond_1

    :cond_2
    iget-object v1, p0, Lbr/com/topaz/x/d;->d:Lbr/com/topaz/l/e0;

    invoke-virtual {v2}, Lbr/com/topaz/f0/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lbr/com/topaz/l/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/x/d;->f:Lbr/com/topaz/k/d;

    invoke-virtual {v2}, Lbr/com/topaz/f0/h;->b()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lbr/com/topaz/k/d;->a([B)[B

    move-result-object v0

    new-instance v1, Lbr/com/topaz/x/c;

    iget-object v2, p0, Lbr/com/topaz/x/d;->i:Lbr/com/topaz/u0/r;

    invoke-direct {v1, v2}, Lbr/com/topaz/x/c;-><init>(Lbr/com/topaz/u0/r;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lbr/com/topaz/x/c;->a(Ljava/lang/String;)Lbr/com/topaz/x/c;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/x/d;->h:Lbr/com/topaz/m/a;

    invoke-virtual {v1}, Lbr/com/topaz/m/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/x/c;->b(Ljava/lang/String;)Lbr/com/topaz/x/b;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/x/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbr/com/topaz/x/a;

    const-string v3, ""

    iget-object v7, p0, Lbr/com/topaz/x/d;->c:Lbr/com/topaz/l/f0;

    invoke-virtual {v2}, Lbr/com/topaz/x/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lbr/com/topaz/l/f0;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v3, p0, Lbr/com/topaz/x/d;->g:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    iget-object v7, p0, Lbr/com/topaz/x/d;->c:Lbr/com/topaz/l/f0;

    invoke-virtual {v2}, Lbr/com/topaz/x/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lbr/com/topaz/l/f0;->b(Ljava/lang/String;)[B

    move-result-object v7

    invoke-interface {v3, v7}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->a([B)Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-virtual {v2}, Lbr/com/topaz/x/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lbr/com/topaz/x/d;->e:Lbr/com/topaz/f0/c;

    iget-object v7, p0, Lbr/com/topaz/x/d;->c:Lbr/com/topaz/l/f0;

    invoke-interface {v7}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v7

    invoke-virtual {v7}, Lbr/com/topaz/l/g;->Y()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lbr/com/topaz/x/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v5, v5}, Lbr/com/topaz/f0/c;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Lbr/com/topaz/f0/h;

    move-result-object v3

    invoke-virtual {v3}, Lbr/com/topaz/f0/h;->c()I

    move-result v7

    if-lt v7, v6, :cond_3

    invoke-virtual {v3}, Lbr/com/topaz/f0/h;->c()I

    move-result v7

    if-ge v7, v4, :cond_3

    iget-object v7, p0, Lbr/com/topaz/x/d;->c:Lbr/com/topaz/l/f0;

    invoke-virtual {v2}, Lbr/com/topaz/x/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lbr/com/topaz/f0/h;->b()[B

    move-result-object v3

    invoke-interface {v7, v8, v3}, Lbr/com/topaz/l/f0;->a(Ljava/lang/String;[B)V

    iget-object v3, p0, Lbr/com/topaz/x/d;->b:Lbr/com/topaz/x/d$a;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lbr/com/topaz/x/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lbr/com/topaz/x/d$a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lbr/com/topaz/x/d;->b:Lbr/com/topaz/x/d$a;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1, v0}, Lbr/com/topaz/x/d$a;->onFinish(I)V

    return-void

    :cond_6
    iget-object v0, p0, Lbr/com/topaz/x/d;->b:Lbr/com/topaz/x/d$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbr/com/topaz/x/d$a;->onFinish(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/x/d;->j:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "063"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/x/d;->b:Lbr/com/topaz/x/d$a;

    if-eqz v0, :cond_7

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lbr/com/topaz/x/d$a;->onFinish(I)V

    :cond_7
    :goto_2
    return-void
.end method
