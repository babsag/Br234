.class public Lbr/com/topaz/heartbeat/sensors/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/r/b$a;
.implements Lbr/com/topaz/r/k$c;
.implements Lbr/com/topaz/heartbeat/sensors/c$a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/sensors/e;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lbr/com/topaz/l/l;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/sensors/e;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbr/com/topaz/r/b;->a(Lbr/com/topaz/r/b$a;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/heartbeat/sensors/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/sensors/a;->a(Landroid/content/Context;)Lbr/com/topaz/heartbeat/sensors/a;

    move-result-object v1

    invoke-static {v0, v1}, Lbr/com/topaz/i0/a;->a(Landroid/content/Context;Lbr/com/topaz/heartbeat/sensors/a;)Lbr/com/topaz/heartbeat/sensors/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbr/com/topaz/heartbeat/sensors/c;->a(Lbr/com/topaz/heartbeat/sensors/c$a;)V

    invoke-virtual {v0}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public b(Lbr/com/topaz/l/l;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/sensors/e;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lbr/com/topaz/r/a;->b(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/k;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbr/com/topaz/r/k;->a(Lbr/com/topaz/r/k$c;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method
