.class public Lbr/com/topaz/heartbeat/sensors/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Lbr/com/topaz/heartbeat/sensors/d;


# instance fields
.field private a:Lbr/com/topaz/heartbeat/sensors/a;

.field private b:Ljava/sql/Timestamp;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbr/com/topaz/heartbeat/sensors/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lbr/com/topaz/l/g;Lbr/com/topaz/heartbeat/sensors/a;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/heartbeat/sensors/d;->d:Ljava/util/HashMap;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/sensors/d;->a:Lbr/com/topaz/heartbeat/sensors/a;

    new-instance p2, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v2, p3

    add-long/2addr v0, v2

    invoke-direct {p2, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    iput-object p2, p0, Lbr/com/topaz/heartbeat/sensors/d;->b:Ljava/sql/Timestamp;

    invoke-virtual {p1}, Lbr/com/topaz/l/g;->P()Lbr/com/topaz/heartbeat/sensors/g;

    move-result-object p1

    invoke-virtual {p1}, Lbr/com/topaz/heartbeat/sensors/g;->b()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/heartbeat/sensors/d;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Lbr/com/topaz/l/g;Lbr/com/topaz/heartbeat/sensors/a;I)Lbr/com/topaz/heartbeat/sensors/d;
    .locals 1

    sget-object v0, Lbr/com/topaz/heartbeat/sensors/d;->e:Lbr/com/topaz/heartbeat/sensors/d;

    if-nez v0, :cond_0

    new-instance v0, Lbr/com/topaz/heartbeat/sensors/d;

    invoke-direct {v0, p0, p1, p2}, Lbr/com/topaz/heartbeat/sensors/d;-><init>(Lbr/com/topaz/l/g;Lbr/com/topaz/heartbeat/sensors/a;I)V

    sput-object v0, Lbr/com/topaz/heartbeat/sensors/d;->e:Lbr/com/topaz/heartbeat/sensors/d;

    :cond_0
    sget-object p0, Lbr/com/topaz/heartbeat/sensors/d;->e:Lbr/com/topaz/heartbeat/sensors/d;

    return-object p0
.end method

.method private a()Z
    .locals 3

    new-instance v0, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    iget-object v1, p0, Lbr/com/topaz/heartbeat/sensors/d;->b:Ljava/sql/Timestamp;

    invoke-virtual {v0, v1}, Ljava/sql/Timestamp;->before(Ljava/sql/Timestamp;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/hardware/SensorEvent;)Z
    .locals 6

    iget-object v0, p0, Lbr/com/topaz/heartbeat/sensors/d;->c:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    iget-object v2, p0, Lbr/com/topaz/heartbeat/sensors/d;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbr/com/topaz/heartbeat/sensors/g$a;

    invoke-virtual {v3}, Lbr/com/topaz/heartbeat/sensors/g$a;->a()I

    move-result v4

    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lbr/com/topaz/heartbeat/sensors/g$a;->b()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lbr/com/topaz/heartbeat/sensors/d;->d:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lbr/com/topaz/heartbeat/sensors/d;->d:Ljava/util/HashMap;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_1
    new-instance p1, Ljava/sql/Timestamp;

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-direct {p1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v0, p1}, Ljava/sql/Timestamp;->after(Ljava/sql/Timestamp;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method


# virtual methods
.method public declared-synchronized a(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    iput-object v0, p0, Lbr/com/topaz/heartbeat/sensors/d;->b:Ljava/sql/Timestamp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/hardware/SensorEvent;)V
    .locals 5

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/sensors/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/sensors/d;->b(Landroid/hardware/SensorEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbr/com/topaz/heartbeat/sensors/d;->d:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lbr/com/topaz/heartbeat/sensors/b;

    invoke-direct {v0}, Lbr/com/topaz/heartbeat/sensors/b;-><init>()V

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v1, v0, Lbr/com/topaz/heartbeat/sensors/b;->a:J

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lbr/com/topaz/heartbeat/sensors/b;->b:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lbr/com/topaz/heartbeat/sensors/d;->a:Lbr/com/topaz/heartbeat/sensors/a;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lbr/com/topaz/heartbeat/sensors/a;->a(Lbr/com/topaz/heartbeat/sensors/b;I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lbr/com/topaz/heartbeat/sensors/d;->a:Lbr/com/topaz/heartbeat/sensors/a;

    invoke-virtual {p1}, Lbr/com/topaz/heartbeat/sensors/a;->e()V

    :cond_2
    :goto_1
    return-void
.end method
