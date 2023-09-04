.class Lcaf/io/T$a;
.super Ljava/lang/Object;
.source "SensorHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcaf/io/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcaf/io/T;


# direct methods
.method constructor <init>(Lcaf/io/T;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcaf/io/T$a;->a:Lcaf/io/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcaf/io/T$a;->a:Lcaf/io/T;

    invoke-static {v0}, Lcaf/io/T;->c(Lcaf/io/T;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcaf/io/T$a;->a:Lcaf/io/T;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcaf/io/T;->a(Lcaf/io/T;I)Lcaf/io/U;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1, p1}, Lcaf/io/U;->a([F)V

    .line 5
    iget-object p1, p0, Lcaf/io/T$a;->a:Lcaf/io/T;

    invoke-static {p1}, Lcaf/io/T;->g(Lcaf/io/T;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcaf/io/U;

    .line 6
    invoke-virtual {v1}, Lcaf/io/U;->b()[Lcaf/io/W;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 7
    invoke-virtual {v5}, Lcaf/io/W;->c()Z

    move-result v6

    if-nez v6, :cond_2

    .line 8
    iget-object p1, p0, Lcaf/io/T$a;->a:Lcaf/io/T;

    invoke-virtual {v5}, Lcaf/io/W;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcaf/io/T;->d(Lcaf/io/T;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lcaf/io/T$a;->a:Lcaf/io/T;

    invoke-static {p1, v3}, Lcaf/io/T;->f(Lcaf/io/T;Z)Z

    .line 10
    iget-object p1, p0, Lcaf/io/T$a;->a:Lcaf/io/T;

    invoke-virtual {v5}, Lcaf/io/W;->b()Lcaf/io/g0;

    move-result-object v1

    invoke-static {p1, v1}, Lcaf/io/T;->b(Lcaf/io/T;Lcaf/io/g0;)Lcaf/io/g0;

    .line 11
    monitor-exit v0

    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Lcaf/io/T$a;->a:Lcaf/io/T;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcaf/io/T;->f(Lcaf/io/T;Z)Z

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
