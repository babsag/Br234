.class Lsun/security/util/c;
.super Lsun/security/util/Cache;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/c$c;,
        Lsun/security/util/c$b;,
        Lsun/security/util/c$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lsun/security/util/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lsun/security/util/c;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lsun/security/util/Cache;-><init>()V

    .line 3
    iput p2, p0, Lsun/security/util/c;->b:I

    mul-int/lit16 p3, p3, 0x3e8

    .line 4
    iput p3, p0, Lsun/security/util/c;->c:I

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lsun/security/util/c;->d:Ljava/lang/ref/ReferenceQueue;

    int-to-float p1, p2

    const/high16 p2, 0x3f400000    # 0.75f

    div-float/2addr p1, p2

    float-to-int p1, p1

    const/4 p3, 0x1

    add-int/2addr p1, p3

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1, p2, p3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lsun/security/util/c;->a:Ljava/util/Map;

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsun/security/util/c;->d:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsun/security/util/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lsun/security/util/c;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lsun/security/util/c$a;

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-interface {v0}, Lsun/security/util/c$a;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    iget-object v2, p0, Lsun/security/util/c;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/util/c$a;

    if-eqz v2, :cond_1

    if-eq v0, v2, :cond_1

    .line 6
    iget-object v0, p0, Lsun/security/util/c;->a:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lsun/security/util/c;->a()V

    .line 2
    iget v0, p0, Lsun/security/util/c;->c:I

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lsun/security/util/c;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/util/c$a;

    .line 7
    invoke-interface {v3, v0, v1}, Lsun/security/util/c$a;->isValid(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected c(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)Lsun/security/util/c$a;
    .locals 7

    if-eqz p5, :cond_0

    .line 1
    new-instance v6, Lsun/security/util/c$c;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lsun/security/util/c$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)V

    return-object v6

    .line 2
    :cond_0
    new-instance p5, Lsun/security/util/c$b;

    invoke-direct {p5, p1, p2, p3, p4}, Lsun/security/util/c$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;J)V

    return-object p5
.end method

.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lsun/security/util/c;->d:Ljava/lang/ref/ReferenceQueue;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lsun/security/util/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/util/c$a;

    .line 3
    invoke-interface {v1}, Lsun/security/util/c$a;->a()V

    goto :goto_0

    .line 4
    :cond_0
    :goto_1
    iget-object v0, p0, Lsun/security/util/c;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lsun/security/util/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lsun/security/util/c;->a()V

    .line 2
    iget-object v0, p0, Lsun/security/util/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-object v1

    .line 4
    :cond_0
    :try_start_1
    iget v2, p0, Lsun/security/util/c;->c:I

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5
    :goto_0
    invoke-interface {v0, v2, v3}, Lsun/security/util/c$a;->isValid(J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    iget-object v0, p0, Lsun/security/util/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-object v1

    .line 8
    :cond_2
    :try_start_2
    invoke-interface {v0}, Lsun/security/util/c$a;->getValue()Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lsun/security/util/c;->a()V

    .line 2
    iget v0, p0, Lsun/security/util/c;->c:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    move-wide v5, v0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lsun/security/util/c;->c:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 4
    :goto_1
    iget-object v7, p0, Lsun/security/util/c;->d:Ljava/lang/ref/ReferenceQueue;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lsun/security/util/c;->c(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)Lsun/security/util/c$a;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lsun/security/util/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsun/security/util/c$a;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Lsun/security/util/c$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_1
    :try_start_1
    iget-object p1, p0, Lsun/security/util/c;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget p2, p0, Lsun/security/util/c;->b:I

    if-le p1, p2, :cond_2

    .line 9
    invoke-direct {p0}, Lsun/security/util/c;->b()V

    .line 10
    iget-object p1, p0, Lsun/security/util/c;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget p2, p0, Lsun/security/util/c;->b:I

    if-le p1, p2, :cond_2

    .line 11
    iget-object p1, p0, Lsun/security/util/c;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsun/security/util/c$a;

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 14
    invoke-interface {p2}, Lsun/security/util/c$a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lsun/security/util/c;->a()V

    .line 2
    iget-object v0, p0, Lsun/security/util/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsun/security/util/c$a;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lsun/security/util/c$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lsun/security/util/c;->b()V

    .line 2
    iget-object v0, p0, Lsun/security/util/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
