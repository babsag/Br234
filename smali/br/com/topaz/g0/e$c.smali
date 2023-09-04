.class Lbr/com/topaz/g0/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/i/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/g0/e;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lbr/com/topaz/l/g;

.field final synthetic c:Lbr/com/topaz/g0/e;


# direct methods
.method constructor <init>(Lbr/com/topaz/g0/e;JLbr/com/topaz/l/g;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/g0/e$c;->c:Lbr/com/topaz/g0/e;

    iput-wide p2, p0, Lbr/com/topaz/g0/e$c;->a:J

    iput-object p4, p0, Lbr/com/topaz/g0/e$c;->b:Lbr/com/topaz/l/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/l/g;I)V
    .locals 3

    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lbr/com/topaz/g0/e$c;->c:Lbr/com/topaz/g0/e;

    invoke-static {v0}, Lbr/com/topaz/g0/e;->h(Lbr/com/topaz/g0/e;)Lbr/com/topaz/l/e0;

    move-result-object v0

    iget-wide v1, p0, Lbr/com/topaz/g0/e$c;->a:J

    invoke-interface {v0, v1, v2}, Lbr/com/topaz/l/e0;->l(J)V

    iget-object v0, p0, Lbr/com/topaz/g0/e$c;->c:Lbr/com/topaz/g0/e;

    invoke-static {v0}, Lbr/com/topaz/g0/e;->f(Lbr/com/topaz/g0/e;)Lbr/com/topaz/b0/e;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/b0/e;->b()V

    iget-object v0, p0, Lbr/com/topaz/g0/e$c;->c:Lbr/com/topaz/g0/e;

    invoke-static {v0}, Lbr/com/topaz/g0/e;->i(Lbr/com/topaz/g0/e;)Lbr/com/topaz/g0/b;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/topaz/g0/b;->b()Lbr/com/topaz/g0/b$b;

    move-result-object v0

    sget-object v1, Lbr/com/topaz/g0/b$b;->b:Lbr/com/topaz/g0/b$b;

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lbr/com/topaz/l/g;->o()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/g0/e$c;->c:Lbr/com/topaz/g0/e;

    invoke-static {v0}, Lbr/com/topaz/g0/e;->i(Lbr/com/topaz/g0/e;)Lbr/com/topaz/g0/b;

    move-result-object v0

    const-string v1, "heartbeat-event"

    invoke-interface {v0, v1}, Lbr/com/topaz/g0/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lbr/com/topaz/g0/e$c;->b:Lbr/com/topaz/l/g;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lbr/com/topaz/l/g;->b(Lbr/com/topaz/l/g;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lbr/com/topaz/g0/e$c;->c:Lbr/com/topaz/g0/e;

    invoke-static {v1, v0}, Lbr/com/topaz/g0/e;->c(Lbr/com/topaz/g0/e;I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lbr/com/topaz/g0/e$c;->b:Lbr/com/topaz/l/g;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lbr/com/topaz/l/g;->a(Lbr/com/topaz/l/g;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lbr/com/topaz/g0/e$c;->c:Lbr/com/topaz/g0/e;

    invoke-virtual {p1}, Lbr/com/topaz/l/g;->V()I

    move-result v1

    invoke-static {v0, v1}, Lbr/com/topaz/g0/e;->d(Lbr/com/topaz/g0/e;I)V

    :cond_4
    iget-object v0, p0, Lbr/com/topaz/g0/e$c;->c:Lbr/com/topaz/g0/e;

    invoke-static {v0, p1}, Lbr/com/topaz/g0/e;->f(Lbr/com/topaz/g0/e;Lbr/com/topaz/l/g;)V

    iget-object v0, p0, Lbr/com/topaz/g0/e$c;->c:Lbr/com/topaz/g0/e;

    iget-object v1, p0, Lbr/com/topaz/g0/e$c;->b:Lbr/com/topaz/l/g;

    invoke-static {v0, v1, p1}, Lbr/com/topaz/g0/e;->a(Lbr/com/topaz/g0/e;Lbr/com/topaz/l/g;Lbr/com/topaz/l/g;)V

    :cond_5
    :try_start_0
    iget-object p1, p0, Lbr/com/topaz/g0/e$c;->c:Lbr/com/topaz/g0/e;

    invoke-static {p1, p2}, Lbr/com/topaz/g0/e;->e(Lbr/com/topaz/g0/e;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lbr/com/topaz/g0/e$c;->c:Lbr/com/topaz/g0/e;

    invoke-static {p2}, Lbr/com/topaz/g0/e;->g(Lbr/com/topaz/g0/e;)Lbr/com/topaz/heartbeat/utils/OFDException;

    move-result-object p2

    const-string v0, "Erro"

    invoke-virtual {p2, p1, v0}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onFailure(I)V
    .locals 0

    return-void
.end method
