.class public Lbr/com/topaz/heartbeat/EventInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/r/d;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lbr/com/topaz/l/l;

.field private final c:Lbr/com/topaz/l/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/EventInitializer;->a:Landroid/content/Context;

    new-instance p1, Lbr/com/topaz/l/l;

    invoke-direct {p1}, Lbr/com/topaz/l/l;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/EventInitializer;->b:Lbr/com/topaz/l/l;

    new-instance p1, Lbr/com/topaz/l/h;

    invoke-direct {p1}, Lbr/com/topaz/l/h;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/EventInitializer;->c:Lbr/com/topaz/l/h;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "EventLib"

    const-string v1, "Success request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/EventInitializer;->b:Lbr/com/topaz/l/l;

    invoke-virtual {v0, p1, p2}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/EventInitializer;->c:Lbr/com/topaz/l/h;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lbr/com/topaz/l/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "EventLib"

    const-string v1, "Failure request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "EventLib"

    const-string v1, "Success request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "EventLib"

    const-string v1, "Failure request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lbr/com/topaz/heartbeat/EventInitializer;->a:Landroid/content/Context;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/EventInitializer;->b:Lbr/com/topaz/l/l;

    invoke-static {v0, v1}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/b;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/EventInitializer;->a:Landroid/content/Context;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/EventInitializer;->c:Lbr/com/topaz/l/h;

    invoke-static {v1, v2}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/h;)Lbr/com/topaz/r/j;

    move-result-object v1

    new-instance v2, Lbr/com/topaz/r/f;

    iget-object v3, p0, Lbr/com/topaz/heartbeat/EventInitializer;->a:Landroid/content/Context;

    invoke-direct {v2, v3, p0, v0, v1}, Lbr/com/topaz/r/f;-><init>(Landroid/content/Context;Lbr/com/topaz/r/d;Lbr/com/topaz/r/b;Lbr/com/topaz/r/j;)V

    invoke-interface {v2}, Lbr/com/topaz/r/d$a;->b()V

    new-instance v0, Lbr/com/topaz/heartbeat/sensors/e;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/EventInitializer;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lbr/com/topaz/heartbeat/sensors/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/sensors/e;->b()V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/EventInitializer;->b:Lbr/com/topaz/l/l;

    invoke-virtual {v0}, Lbr/com/topaz/l/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/EventInitializer;->a:Landroid/content/Context;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/EventInitializer;->b:Lbr/com/topaz/l/l;

    invoke-static {v0, v1}, Lbr/com/topaz/r/a;->c(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/l;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/s0/a;->b()V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/EventInitializer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbr/com/topaz/g/b;->a(Landroid/content/Context;)V

    new-instance v0, Lbr/com/topaz/a/d;

    invoke-direct {v0}, Lbr/com/topaz/a/d;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/heartbeat/EventInitializer;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/a/d;->a(Landroid/content/Context;)V

    new-instance v0, Lbr/com/topaz/o/i;

    invoke-direct {v0}, Lbr/com/topaz/o/i;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/heartbeat/EventInitializer;->a:Landroid/content/Context;

    sget v2, Lbr/com/topaz/o/i;->c:I

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/o/i;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
