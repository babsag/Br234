.class Lbr/com/topaz/g/c$b;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/g/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lbr/com/topaz/g/c;


# direct methods
.method constructor <init>(Lbr/com/topaz/g/c;Lbr/com/topaz/s/a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/g/c$b;->b:Lbr/com/topaz/g/c;

    invoke-direct {p0, p2}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/g/c$b;->b:Lbr/com/topaz/g/c;

    invoke-static {v0}, Lbr/com/topaz/g/c;->a(Lbr/com/topaz/g/c;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lbr/com/topaz/g/c$b;->b:Lbr/com/topaz/g/c;

    iget-object v0, v0, Lbr/com/topaz/g/c;->c:Lbr/com/topaz/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lbr/com/topaz/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/g/c$b;->b:Lbr/com/topaz/g/c;

    invoke-static {v0}, Lbr/com/topaz/g/c;->b(Lbr/com/topaz/g/c;)Lbr/com/topaz/g/d;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/g/d;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lbr/com/topaz/g/c$b;->b:Lbr/com/topaz/g/c;

    invoke-static {v0}, Lbr/com/topaz/g/c;->d(Lbr/com/topaz/g/c;)V

    iget-object v0, p0, Lbr/com/topaz/g/c$b;->b:Lbr/com/topaz/g/c;

    invoke-static {v0}, Lbr/com/topaz/g/c;->a(Lbr/com/topaz/g/c;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :try_start_1
    iget-object v0, p0, Lbr/com/topaz/g/c$b;->b:Lbr/com/topaz/g/c;

    invoke-static {v0}, Lbr/com/topaz/g/c;->c(Lbr/com/topaz/g/c;)Lbr/com/topaz/heartbeat/utils/OFDException;

    move-result-object v0

    const-string v1, "184"

    invoke-virtual {v0, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object v1, p0, Lbr/com/topaz/g/c$b;->b:Lbr/com/topaz/g/c;

    invoke-static {v1}, Lbr/com/topaz/g/c;->d(Lbr/com/topaz/g/c;)V

    iget-object v1, p0, Lbr/com/topaz/g/c$b;->b:Lbr/com/topaz/g/c;

    invoke-static {v1}, Lbr/com/topaz/g/c;->a(Lbr/com/topaz/g/c;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
