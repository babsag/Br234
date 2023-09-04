.class public Lbr/com/topaz/p/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/p/g;
.implements Lbr/com/topaz/r/k$c;
.implements Lbr/com/topaz/r/b$a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lbr/com/topaz/p/a;

.field private c:Lbr/com/topaz/l/f0;

.field private d:Lbr/com/topaz/m0/d;

.field private e:Lbr/com/topaz/p/f;

.field private f:Lbr/com/topaz/heartbeat/utils/OFDException;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/p/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/m0/d;Lbr/com/topaz/p/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/p/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lbr/com/topaz/p/b;->b:Lbr/com/topaz/p/a;

    iput-object p3, p0, Lbr/com/topaz/p/b;->c:Lbr/com/topaz/l/f0;

    iput-object p4, p0, Lbr/com/topaz/p/b;->d:Lbr/com/topaz/m0/d;

    iput-object p5, p0, Lbr/com/topaz/p/b;->e:Lbr/com/topaz/p/f;

    new-instance p1, Lbr/com/topaz/heartbeat/utils/OFDException;

    iget-object p2, p0, Lbr/com/topaz/p/b;->c:Lbr/com/topaz/l/f0;

    invoke-direct {p1, p2}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    iput-object p1, p0, Lbr/com/topaz/p/b;->f:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/p/b;->b:Lbr/com/topaz/p/a;

    invoke-interface {v0}, Lbr/com/topaz/p/a;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lbr/com/topaz/l/l;

    invoke-direct {v0}, Lbr/com/topaz/l/l;-><init>()V

    const-string v1, "6"

    const-string v2, "AP"

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "domain"

    invoke-virtual {v0, v1, p1}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "untrustedIp"

    invoke-virtual {v0, p1, p2}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lbr/com/topaz/p/b;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbr/com/topaz/r/b;->a(Lbr/com/topaz/r/b$a;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/p/b;->c:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/p/b;->c:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/p/b;->d:Lbr/com/topaz/m0/d;

    invoke-interface {v0}, Lbr/com/topaz/m0/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/p/b;->e:Lbr/com/topaz/p/f;

    const/4 v1, 0x1

    new-array v1, v1, [Lbr/com/topaz/p/g;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    iget-object v1, p0, Lbr/com/topaz/p/b;->f:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "010"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void
.end method

.method public b(Lbr/com/topaz/l/l;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/p/b;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lbr/com/topaz/r/a;->b(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/k;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbr/com/topaz/r/k;->a(Lbr/com/topaz/r/k$c;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/p/b;->b:Lbr/com/topaz/p/a;

    invoke-interface {v0}, Lbr/com/topaz/p/a;->b()V

    return-void
.end method
