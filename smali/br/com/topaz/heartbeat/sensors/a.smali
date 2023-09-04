.class public Lbr/com/topaz/heartbeat/sensors/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lbr/com/topaz/heartbeat/sensors/b;",
            ">;>;"
        }
    .end annotation
.end field

.field private static d:Landroid/hardware/SensorManager; = null

.field private static e:Lbr/com/topaz/heartbeat/sensors/a; = null

.field private static f:Lbr/com/topaz/i0/b; = null

.field private static g:Z = false


# instance fields
.field private a:Lbr/com/topaz/l/f0;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/heartbeat/sensors/a;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbr/com/topaz/heartbeat/sensors/a;->c:Ljava/util/HashMap;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lbr/com/topaz/heartbeat/sensors/a;->d:Landroid/hardware/SensorManager;

    invoke-static {p1}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/heartbeat/sensors/a;->a:Lbr/com/topaz/l/f0;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lbr/com/topaz/heartbeat/sensors/a;
    .locals 2

    const-class v0, Lbr/com/topaz/heartbeat/sensors/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbr/com/topaz/heartbeat/sensors/a;->e:Lbr/com/topaz/heartbeat/sensors/a;

    if-nez v1, :cond_0

    new-instance v1, Lbr/com/topaz/heartbeat/sensors/a;

    invoke-direct {v1, p0}, Lbr/com/topaz/heartbeat/sensors/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lbr/com/topaz/heartbeat/sensors/a;->e:Lbr/com/topaz/heartbeat/sensors/a;

    :cond_0
    sget-object p0, Lbr/com/topaz/heartbeat/sensors/a;->e:Lbr/com/topaz/heartbeat/sensors/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lbr/com/topaz/heartbeat/sensors/b;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lbr/com/topaz/heartbeat/sensors/a;->c:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(IIII)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lbr/com/topaz/heartbeat/sensors/a;->f:Lbr/com/topaz/i0/b;

    if-nez v0, :cond_0

    new-instance v0, Lbr/com/topaz/i0/b;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/sensors/a;->a:Lbr/com/topaz/l/f0;

    invoke-interface {v1}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v1

    invoke-static {v1, p0, p2}, Lbr/com/topaz/heartbeat/sensors/d;->a(Lbr/com/topaz/l/g;Lbr/com/topaz/heartbeat/sensors/a;I)Lbr/com/topaz/heartbeat/sensors/d;

    move-result-object p2

    invoke-direct {v0, p2}, Lbr/com/topaz/i0/b;-><init>(Lbr/com/topaz/heartbeat/sensors/d;)V

    sput-object v0, Lbr/com/topaz/heartbeat/sensors/a;->f:Lbr/com/topaz/i0/b;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lbr/com/topaz/i0/b;->a(I)V

    :goto_0
    sget-object p2, Lbr/com/topaz/heartbeat/sensors/a;->d:Landroid/hardware/SensorManager;

    sget-object v0, Lbr/com/topaz/heartbeat/sensors/a;->f:Lbr/com/topaz/i0/b;

    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p3, p4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z

    move-result p2

    iget-object p3, p0, Lbr/com/topaz/heartbeat/sensors/a;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lbr/com/topaz/heartbeat/utils/OFDException;

    iget-object p3, p0, Lbr/com/topaz/heartbeat/sensors/a;->a:Lbr/com/topaz/l/f0;

    invoke-direct {p2, p3}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    const-string p3, "034"

    invoke-virtual {p2, p1, p3}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lbr/com/topaz/heartbeat/sensors/b;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lbr/com/topaz/heartbeat/sensors/a;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lbr/com/topaz/heartbeat/sensors/a;->c:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lbr/com/topaz/heartbeat/sensors/a;->c:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lbr/com/topaz/heartbeat/sensors/a;->c:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/sensors/a;->b:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lbr/com/topaz/heartbeat/sensors/a;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbr/com/topaz/heartbeat/sensors/a;->d()V

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lbr/com/topaz/heartbeat/sensors/a;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lbr/com/topaz/heartbeat/sensors/a;->g:Z

    invoke-virtual {p0}, Lbr/com/topaz/heartbeat/sensors/a;->e()V

    sget-object v0, Lbr/com/topaz/heartbeat/sensors/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/sensors/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized e()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lbr/com/topaz/heartbeat/sensors/a;->f:Lbr/com/topaz/i0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v1, Lbr/com/topaz/heartbeat/sensors/a;->d:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lbr/com/topaz/heartbeat/utils/OFDException;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/sensors/a;->a:Lbr/com/topaz/l/f0;

    invoke-direct {v1, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    const-string v2, "035"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
