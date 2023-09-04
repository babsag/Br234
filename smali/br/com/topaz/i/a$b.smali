.class Lbr/com/topaz/i/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/f0/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/i/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lbr/com/topaz/i/a;


# direct methods
.method constructor <init>(Lbr/com/topaz/i/a;Z)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/i/a$b;->b:Lbr/com/topaz/i/a;

    iput-boolean p2, p0, Lbr/com/topaz/i/a$b;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/i/a$b;->b:Lbr/com/topaz/i/a;

    const/16 v1, 0x7d3

    invoke-static {v0, v1}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/i/a;I)V

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/i/a$b;->b:Lbr/com/topaz/i/a;

    invoke-static {v0}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/i/a;)Lbr/com/topaz/l/f0;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/i/a$b;->b:Lbr/com/topaz/i/a;

    iget-boolean v2, p0, Lbr/com/topaz/i/a$b;->a:Z

    invoke-static {v1, v0, v2}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/i/a;Lbr/com/topaz/l/g;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a([B)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/i/a$b;->b:Lbr/com/topaz/i/a;

    invoke-static {v0, p1}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/i/a;[B)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbr/com/topaz/i/a$b;->b:Lbr/com/topaz/i/a;

    invoke-static {p1}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/i/a;)Lbr/com/topaz/l/f0;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {p1, v0, v1}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/i/a;Lbr/com/topaz/l/g;I)V

    :cond_0
    iget-object p1, p0, Lbr/com/topaz/i/a$b;->b:Lbr/com/topaz/i/a;

    invoke-static {p1}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/i/a;)Lbr/com/topaz/l/f0;

    move-result-object p1

    invoke-interface {p1}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object p1

    iget-object v0, p0, Lbr/com/topaz/i/a$b;->b:Lbr/com/topaz/i/a;

    iget-boolean v1, p0, Lbr/com/topaz/i/a$b;->a:Z

    invoke-static {v0, p1, v1}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/i/a;Lbr/com/topaz/l/g;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lbr/com/topaz/i/a$b;->b:Lbr/com/topaz/i/a;

    const/16 v0, 0x7d1

    invoke-static {p1, v0}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/i/a;I)V

    return-void
.end method

.method public b([B)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/i/a$b;->b:Lbr/com/topaz/i/a;

    invoke-static {v0, p1}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/i/a;[B)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lbr/com/topaz/i/a$b;->b:Lbr/com/topaz/i/a;

    const/16 v0, 0x7d1

    invoke-static {p1, v0}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/i/a;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/i/a$b;->b:Lbr/com/topaz/i/a;

    invoke-static {v0}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/i/a;)Lbr/com/topaz/l/f0;

    move-result-object v0

    invoke-interface {v0, p1}, Lbr/com/topaz/l/f0;->i([B)V

    :try_start_0
    iget-object p1, p0, Lbr/com/topaz/i/a$b;->b:Lbr/com/topaz/i/a;

    invoke-static {p1}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/i/a;)Lbr/com/topaz/l/f0;

    move-result-object p1

    invoke-interface {p1}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object p1

    iget-object v0, p0, Lbr/com/topaz/i/a$b;->b:Lbr/com/topaz/i/a;

    iget-boolean v1, p0, Lbr/com/topaz/i/a$b;->a:Z

    invoke-static {v0, p1, v1}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/i/a;Lbr/com/topaz/l/g;Z)V

    iget-object v0, p0, Lbr/com/topaz/i/a$b;->b:Lbr/com/topaz/i/a;

    const/16 v1, 0x3e9

    invoke-static {v0, p1, v1}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/i/a;Lbr/com/topaz/l/g;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lbr/com/topaz/i/a$b;->b:Lbr/com/topaz/i/a;

    invoke-static {v0}, Lbr/com/topaz/i/a;->b(Lbr/com/topaz/i/a;)Lbr/com/topaz/heartbeat/utils/OFDException;

    move-result-object v0

    const-string v1, "001"

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    iget-object p1, p0, Lbr/com/topaz/i/a$b;->b:Lbr/com/topaz/i/a;

    const/16 v0, 0x7d2

    invoke-static {p1, v0}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/i/a;I)V

    :goto_0
    return-void
.end method
