.class Lbr/com/topaz/g0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/i/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/g0/e;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/g0/e;


# direct methods
.method constructor <init>(Lbr/com/topaz/g0/e;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/l/g;I)V
    .locals 4

    iget-object v0, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-static {v0, p2}, Lbr/com/topaz/g0/e;->a(Lbr/com/topaz/g0/e;I)V

    iget-object v0, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-static {v0}, Lbr/com/topaz/g0/e;->a(Lbr/com/topaz/g0/e;)Lbr/com/topaz/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/g/c;->c()V

    iget-object v0, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-virtual {v0}, Lbr/com/topaz/g0/e;->i()V

    iget-object v0, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-virtual {v0}, Lbr/com/topaz/g0/e;->j()V

    iget-object v0, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-virtual {v0}, Lbr/com/topaz/g0/e;->k()V

    iget-object v0, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-virtual {p1}, Lbr/com/topaz/l/g;->w()Lbr/com/topaz/w/e;

    move-result-object v1

    invoke-static {v0, v1}, Lbr/com/topaz/g0/e;->a(Lbr/com/topaz/g0/e;Lbr/com/topaz/w/e;)V

    iget-object v0, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-static {v0}, Lbr/com/topaz/g0/e;->d(Lbr/com/topaz/g0/e;)V

    iget-object v0, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-static {v0}, Lbr/com/topaz/g0/e;->e(Lbr/com/topaz/g0/e;)Lbr/com/topaz/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/e/c;->e()V

    iget-object v0, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-static {v0}, Lbr/com/topaz/g0/e;->f(Lbr/com/topaz/g0/e;)Lbr/com/topaz/b0/e;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/b0/e;->c()V

    invoke-virtual {p1}, Lbr/com/topaz/l/g;->L()I

    move-result v0

    const/16 v1, 0x3e9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-ne p2, v1, :cond_1

    :cond_0
    new-instance v0, Lbr/com/topaz/l/l;

    invoke-direct {v0}, Lbr/com/topaz/l/l;-><init>()V

    const-string v2, "6"

    const-string v3, "START"

    invoke-virtual {v0, v2, v3}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-virtual {v2, v0}, Lbr/com/topaz/g0/e;->a(Lbr/com/topaz/l/l;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-static {v0, p2}, Lbr/com/topaz/g0/e;->e(Lbr/com/topaz/g0/e;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-static {v2}, Lbr/com/topaz/g0/e;->g(Lbr/com/topaz/g0/e;)Lbr/com/topaz/heartbeat/utils/OFDException;

    move-result-object v2

    const-string v3, "190"

    invoke-virtual {v2, v0, v3}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    if-ne p2, v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-static {v0}, Lbr/com/topaz/g0/e;->h(Lbr/com/topaz/g0/e;)Lbr/com/topaz/l/e0;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lbr/com/topaz/l/e0;->d(J)V

    iget-object v0, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-static {v0}, Lbr/com/topaz/g0/e;->h(Lbr/com/topaz/g0/e;)Lbr/com/topaz/l/e0;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lbr/com/topaz/l/e0;->l(J)V

    :cond_2
    if-eq p2, v1, :cond_3

    iget-object v0, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-static {v0}, Lbr/com/topaz/g0/e;->i(Lbr/com/topaz/g0/e;)Lbr/com/topaz/g0/b;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/topaz/g0/b;->b()Lbr/com/topaz/g0/b$b;

    move-result-object v0

    sget-object v2, Lbr/com/topaz/g0/b$b;->b:Lbr/com/topaz/g0/b$b;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-static {v0, p1, p2}, Lbr/com/topaz/g0/e;->a(Lbr/com/topaz/g0/e;Lbr/com/topaz/l/g;I)V

    :cond_3
    iget-object v0, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-static {v0}, Lbr/com/topaz/g0/e;->b(Lbr/com/topaz/g0/e;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-static {v0, p1}, Lbr/com/topaz/g0/e;->a(Lbr/com/topaz/g0/e;Lbr/com/topaz/l/g;)Z

    :cond_4
    invoke-virtual {p1}, Lbr/com/topaz/l/g;->m()Lbr/com/topaz/q/f;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/q/f;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-static {v0}, Lbr/com/topaz/g0/e;->c(Lbr/com/topaz/g0/e;)Lbr/com/topaz/q/d;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/topaz/q/d;->start()V

    :cond_5
    iget-object v0, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-static {v0, p1}, Lbr/com/topaz/g0/e;->b(Lbr/com/topaz/g0/e;Lbr/com/topaz/l/g;)V

    if-eq p2, v1, :cond_6

    iget-object p2, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-static {p2, p1}, Lbr/com/topaz/g0/e;->c(Lbr/com/topaz/g0/e;Lbr/com/topaz/l/g;)V

    :cond_6
    iget-object p2, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-static {p2, p1}, Lbr/com/topaz/g0/e;->d(Lbr/com/topaz/g0/e;Lbr/com/topaz/l/g;)V

    iget-object p2, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-static {p2, p1}, Lbr/com/topaz/g0/e;->e(Lbr/com/topaz/g0/e;Lbr/com/topaz/l/g;)V

    return-void
.end method

.method public onFailure(I)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-static {v2}, Lbr/com/topaz/g0/e;->h(Lbr/com/topaz/g0/e;)Lbr/com/topaz/l/e0;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lbr/com/topaz/l/e0;->d(J)V

    iget-object v0, p0, Lbr/com/topaz/g0/e$a;->a:Lbr/com/topaz/g0/e;

    invoke-static {v0, p1}, Lbr/com/topaz/g0/e;->b(Lbr/com/topaz/g0/e;I)V

    return-void
.end method
