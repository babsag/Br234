.class Lcom/ca/mas/core/service/f;
.super Ljava/lang/Object;
.source "MssoResponseQueue.java"


# static fields
.field private static final a:Lcom/ca/mas/core/service/f;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/ca/mas/core/service/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/core/service/f;

    invoke-direct {v0}, Lcom/ca/mas/core/service/f;-><init>()V

    sput-object v0, Lcom/ca/mas/core/service/f;->a:Lcom/ca/mas/core/service/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/core/service/f;->b:Ljava/util/Map;

    return-void
.end method

.method public static b()Lcom/ca/mas/core/service/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/service/f;->a:Lcom/ca/mas/core/service/f;

    return-object v0
.end method


# virtual methods
.method declared-synchronized a(Lcom/ca/mas/core/service/e;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/service/f;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ca/mas/core/service/e;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized c(Lcom/ca/mas/core/util/Functions$Unary;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/core/util/Functions$Unary<",
            "Ljava/lang/Boolean;",
            "Lcom/ca/mas/core/service/e;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/service/f;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ca/mas/core/service/e;

    .line 4
    invoke-interface {p1, v1}, Lcom/ca/mas/core/util/Functions$Unary;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/ca/mas/core/service/e;->c()Lcom/ca/mas/core/service/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ca/mas/core/service/c;->f()Landroid/os/ResultReceiver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/ca/mas/core/service/e;->c()Lcom/ca/mas/core/service/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/core/service/c;->f()Landroid/os/ResultReceiver;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized d(J)Lcom/ca/mas/core/service/e;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/service/f;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ca/mas/core/service/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
