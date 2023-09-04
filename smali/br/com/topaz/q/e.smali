.class public Lbr/com/topaz/q/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/q/d;


# instance fields
.field private a:Lbr/com/topaz/l/f0;

.field private b:Lbr/com/topaz/q/g;

.field private c:Lbr/com/topaz/l/e0;


# direct methods
.method public constructor <init>(Lbr/com/topaz/l/f0;Lbr/com/topaz/q/g;Lbr/com/topaz/l/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/q/e;->a:Lbr/com/topaz/l/f0;

    iput-object p2, p0, Lbr/com/topaz/q/e;->b:Lbr/com/topaz/q/g;

    iput-object p3, p0, Lbr/com/topaz/q/e;->c:Lbr/com/topaz/l/e0;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/q/e;->a:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->m()Lbr/com/topaz/q/f;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/q/f;->i()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lbr/com/topaz/q/e;->c:Lbr/com/topaz/l/e0;

    invoke-interface {v1}, Lbr/com/topaz/l/e0;->f()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    sub-long v1, v3, v1

    invoke-virtual {v0}, Lbr/com/topaz/q/f;->c()J

    move-result-wide v5

    cmp-long v0, v1, v5

    if-lez v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/q/e;->b:Lbr/com/topaz/q/g;

    invoke-virtual {v0}, Lbr/com/topaz/s0/a;->b()V

    iget-object v0, p0, Lbr/com/topaz/q/e;->c:Lbr/com/topaz/l/e0;

    invoke-interface {v0, v3, v4}, Lbr/com/topaz/l/e0;->k(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
