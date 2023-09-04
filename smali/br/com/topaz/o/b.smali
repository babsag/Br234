.class public Lbr/com/topaz/o/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lbr/com/topaz/o/a;

.field private b:Lbr/com/topaz/l/f0;

.field private c:Lbr/com/topaz/k/b;

.field private d:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private e:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(Lbr/com/topaz/l/f0;Lbr/com/topaz/k/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/o/b;->e:Ljava/util/concurrent/locks/Lock;

    iput-object p1, p0, Lbr/com/topaz/o/b;->b:Lbr/com/topaz/l/f0;

    iput-object p2, p0, Lbr/com/topaz/o/b;->c:Lbr/com/topaz/k/b;

    new-instance p2, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {p2, p1}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    iput-object p2, p0, Lbr/com/topaz/o/b;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lbr/com/topaz/o/h;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lbr/com/topaz/o/b;->e:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v2, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lbr/com/topaz/o/b;->a:Lbr/com/topaz/o/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    :try_start_2
    iget-object p1, p0, Lbr/com/topaz/o/b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :cond_0
    :try_start_3
    invoke-virtual {v1, p1}, Lbr/com/topaz/o/a;->a(Ljava/lang/String;)Lbr/com/topaz/o/h;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Lbr/com/topaz/o/b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lbr/com/topaz/o/b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    iget-object v1, p0, Lbr/com/topaz/o/b;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "173"

    invoke-virtual {v1, p1, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/o/b;->e:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v1, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lbr/com/topaz/o/b;->b:Lbr/com/topaz/l/f0;

    const-string v1, "dc"

    invoke-interface {v0, v1}, Lbr/com/topaz/l/f0;->b(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbr/com/topaz/o/b;->c:Lbr/com/topaz/k/b;

    invoke-virtual {v1, v0}, Lbr/com/topaz/k/b;->a([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lbr/com/topaz/o/a;

    invoke-direct {v1}, Lbr/com/topaz/o/a;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lbr/com/topaz/o/a;->a(Lorg/json/JSONObject;)Lbr/com/topaz/o/a;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lbr/com/topaz/o/b;->a:Lbr/com/topaz/o/a;

    goto :goto_1

    :cond_0
    new-instance v0, Lbr/com/topaz/o/a;

    invoke-direct {v0}, Lbr/com/topaz/o/a;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :try_start_2
    new-instance v0, Lbr/com/topaz/o/a;

    invoke-direct {v0}, Lbr/com/topaz/o/a;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/o/b;->a:Lbr/com/topaz/o/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-object v0, p0, Lbr/com/topaz/o/b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3

    :goto_2
    iget-object v1, p0, Lbr/com/topaz/o/b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/o/b;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "173"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1
    :goto_3
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbr/com/topaz/o/h;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/o/b;->e:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v1, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lbr/com/topaz/o/b;->a:Lbr/com/topaz/o/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    :try_start_2
    iget-object p1, p0, Lbr/com/topaz/o/b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :cond_0
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/topaz/o/h;

    iget-object v1, p0, Lbr/com/topaz/o/b;->a:Lbr/com/topaz/o/a;

    invoke-virtual {v0}, Lbr/com/topaz/o/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lbr/com/topaz/o/a;->a(Ljava/lang/String;Lbr/com/topaz/o/h;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_4
    iget-object p1, p0, Lbr/com/topaz/o/b;->a:Lbr/com/topaz/o/a;

    invoke-virtual {p1}, Lbr/com/topaz/o/a;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lbr/com/topaz/o/b;->c:Lbr/com/topaz/k/b;

    invoke-virtual {v0, p1}, Lbr/com/topaz/k/b;->a(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v0, p0, Lbr/com/topaz/o/b;->b:Lbr/com/topaz/l/f0;

    const-string v1, "dc"

    invoke-interface {v0, v1, p1}, Lbr/com/topaz/l/f0;->a(Ljava/lang/String;[B)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    :try_start_5
    iget-object p1, p0, Lbr/com/topaz/o/b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lbr/com/topaz/o/b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p1

    iget-object v0, p0, Lbr/com/topaz/o/b;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v1, "173"

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/o/b;->b:Lbr/com/topaz/l/f0;

    const-string v1, "dc"

    invoke-interface {v0, v1}, Lbr/com/topaz/l/f0;->d(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lbr/com/topaz/o/b;->e:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v2, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lbr/com/topaz/o/b;->a:Lbr/com/topaz/o/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    :try_start_2
    iget-object p1, p0, Lbr/com/topaz/o/b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    :cond_0
    :try_start_3
    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    :try_start_4
    iget-object v1, p0, Lbr/com/topaz/o/b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :cond_1
    iget-object p1, p0, Lbr/com/topaz/o/b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lbr/com/topaz/o/b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    iget-object v1, p0, Lbr/com/topaz/o/b;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "173"

    invoke-virtual {v1, p1, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v0
.end method
