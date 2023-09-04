.class Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationManagerTask;
.super Lcom/baseflow/geolocator/tasks/LocationUsingLocationManagerTask;
.source "LastKnownLocationUsingLocationManagerTask.java"


# direct methods
.method constructor <init>(Lcom/baseflow/geolocator/tasks/TaskContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baseflow/geolocator/tasks/TaskContext<",
            "Lcom/baseflow/geolocator/data/LocationOptions;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/tasks/LocationUsingLocationManagerTask;-><init>(Lcom/baseflow/geolocator/tasks/TaskContext;)V

    return-void
.end method


# virtual methods
.method public startTask()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/baseflow/geolocator/tasks/LocationUsingLocationManagerTask;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4
    invoke-static {v4, v3}, Lcom/baseflow/geolocator/tasks/LocationUsingLocationManagerTask;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, v4

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/baseflow/geolocator/tasks/Task;->getTaskContext()Lcom/baseflow/geolocator/tasks/TaskContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baseflow/geolocator/tasks/TaskContext;->getResult()Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

    move-result-object v0

    if-nez v3, :cond_2

    .line 6
    invoke-virtual {v0, v2}, Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;->success(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/baseflow/geolocator/tasks/Task;->stopTask()V

    return-void

    .line 8
    :cond_2
    invoke-static {v3}, Lcom/baseflow/geolocator/data/PositionMapper;->toHashMap(Landroid/location/Location;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;->success(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Lcom/baseflow/geolocator/tasks/Task;->stopTask()V

    return-void
.end method
