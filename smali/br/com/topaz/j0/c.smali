.class public Lbr/com/topaz/j0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:Lbr/com/topaz/j0/c;


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:Lbr/com/topaz/l/f0;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/SensorEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/HandlerThread;

.field private e:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbr/com/topaz/l/f0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lbr/com/topaz/j0/c;->a:Landroid/hardware/SensorManager;

    iput-object p2, p0, Lbr/com/topaz/j0/c;->b:Lbr/com/topaz/l/f0;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/j0/c;->c:Ljava/util/HashMap;

    invoke-direct {p0}, Lbr/com/topaz/j0/c;->a()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lbr/com/topaz/l/f0;)Lbr/com/topaz/j0/c;
    .locals 2

    const-class v0, Lbr/com/topaz/j0/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbr/com/topaz/j0/c;->f:Lbr/com/topaz/j0/c;

    if-nez v1, :cond_0

    new-instance v1, Lbr/com/topaz/j0/c;

    invoke-direct {v1, p0, p1}, Lbr/com/topaz/j0/c;-><init>(Landroid/content/Context;Lbr/com/topaz/l/f0;)V

    sput-object v1, Lbr/com/topaz/j0/c;->f:Lbr/com/topaz/j0/c;

    :cond_0
    sget-object p0, Lbr/com/topaz/j0/c;->f:Lbr/com/topaz/j0/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "sensorThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbr/com/topaz/j0/c;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lbr/com/topaz/j0/c;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lbr/com/topaz/j0/c;->e:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/hardware/SensorEventListener;III)Z
    .locals 6

    iget-object v0, p0, Lbr/com/topaz/j0/c;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget-object v5, p0, Lbr/com/topaz/j0/c;->e:Landroid/os/Handler;

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/j0/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/j0/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/j0/c;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lbr/com/topaz/j0/c;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lbr/com/topaz/j0/c;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/j0/c;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/j0/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lbr/com/topaz/heartbeat/utils/OFDException;

    iget-object v1, p0, Lbr/com/topaz/j0/c;->b:Lbr/com/topaz/l/f0;

    invoke-direct {v0, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    const-string v1, "099"

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/hardware/SensorEventListener;III)Z
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/j0/c;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbr/com/topaz/j0/c;->a()V

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/j0/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lbr/com/topaz/j0/c;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorEventListener;

    invoke-direct {p0, p1, p3, p4, p5}, Lbr/com/topaz/j0/c;->a(Landroid/hardware/SensorEventListener;III)Z

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lbr/com/topaz/j0/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2, p3, p4, p5}, Lbr/com/topaz/j0/c;->a(Landroid/hardware/SensorEventListener;III)Z

    move-result p1

    return p1
.end method
