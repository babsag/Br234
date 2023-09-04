.class public Lbr/com/topaz/heartbeat/sensors/c;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/heartbeat/sensors/c$a;
    }
.end annotation


# instance fields
.field private b:Lbr/com/topaz/l/f0;

.field private c:Lbr/com/topaz/m0/d;

.field private d:Lbr/com/topaz/heartbeat/sensors/g;

.field private e:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private f:Lbr/com/topaz/heartbeat/sensors/a;

.field private g:Lbr/com/topaz/heartbeat/sensors/c$a;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/m0/d;Lbr/com/topaz/heartbeat/sensors/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/heartbeat/sensors/c;->b:Lbr/com/topaz/l/f0;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/sensors/c;->c:Lbr/com/topaz/m0/d;

    new-instance p1, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {p1, p2}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/sensors/c;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    iput-object p4, p0, Lbr/com/topaz/heartbeat/sensors/c;->f:Lbr/com/topaz/heartbeat/sensors/a;

    return-void
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/sensors/c;->d:Lbr/com/topaz/heartbeat/sensors/g;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/sensors/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/sensors/c;->c:Lbr/com/topaz/m0/d;

    invoke-interface {v0}, Lbr/com/topaz/m0/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public a(Lbr/com/topaz/heartbeat/sensors/c$a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/sensors/c;->g:Lbr/com/topaz/heartbeat/sensors/c$a;

    return-void
.end method

.method public declared-synchronized run()V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/sensors/c;->f:Lbr/com/topaz/heartbeat/sensors/a;

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/sensors/a;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/sensors/c;->f:Lbr/com/topaz/heartbeat/sensors/a;

    invoke-virtual {v2}, Lbr/com/topaz/heartbeat/sensors/a;->b()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v2, p0, Lbr/com/topaz/heartbeat/sensors/c;->f:Lbr/com/topaz/heartbeat/sensors/a;

    invoke-virtual {v2}, Lbr/com/topaz/heartbeat/sensors/a;->d()V

    iget-object v2, p0, Lbr/com/topaz/heartbeat/sensors/c;->b:Lbr/com/topaz/l/f0;

    invoke-interface {v2}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/topaz/l/g;->P()Lbr/com/topaz/heartbeat/sensors/g;

    move-result-object v2

    iput-object v2, p0, Lbr/com/topaz/heartbeat/sensors/c;->d:Lbr/com/topaz/heartbeat/sensors/g;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/sensors/c;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lbr/com/topaz/l/l;

    invoke-direct {v2}, Lbr/com/topaz/l/l;-><init>()V

    const-string v3, "6"

    const-string v4, "SN"

    invoke-virtual {v2, v3, v4}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "7"

    invoke-virtual {v2, v3, v0}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "8"

    invoke-virtual {v2, v0, v1}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/sensors/c;->g:Lbr/com/topaz/heartbeat/sensors/c$a;

    invoke-interface {v0, v2}, Lbr/com/topaz/heartbeat/sensors/c$a;->a(Lbr/com/topaz/l/l;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lbr/com/topaz/heartbeat/sensors/c;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "030"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
