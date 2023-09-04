.class Lcom/baseflow/geolocator/tasks/CalculateDistanceTask;
.super Lcom/baseflow/geolocator/tasks/Task;
.source "CalculateDistanceTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baseflow/geolocator/tasks/Task<",
        "Lcom/baseflow/geolocator/data/CalculateDistanceOptions;",
        ">;"
    }
.end annotation


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
            "Lcom/baseflow/geolocator/data/CalculateDistanceOptions;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/tasks/Task;-><init>(Lcom/baseflow/geolocator/tasks/TaskContext;)V

    return-void
.end method


# virtual methods
.method public startTask()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/baseflow/geolocator/tasks/Task;->getTaskContext()Lcom/baseflow/geolocator/tasks/TaskContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baseflow/geolocator/tasks/TaskContext;->getResult()Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/baseflow/geolocator/tasks/Task;->getTaskContext()Lcom/baseflow/geolocator/tasks/TaskContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baseflow/geolocator/tasks/TaskContext;->getOptions()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baseflow/geolocator/data/CalculateDistanceOptions;

    .line 3
    invoke-virtual {v1}, Lcom/baseflow/geolocator/data/CalculateDistanceOptions;->getSourceCoordinates()Lcom/baseflow/geolocator/data/Coordinate;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/baseflow/geolocator/data/CalculateDistanceOptions;->getDestinationCoordinates()Lcom/baseflow/geolocator/data/Coordinate;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "ERROR_CALCULATE_DISTANCE_INVALID_PARAMS"

    const-string v4, "Please supply start and end coordinates."

    .line 4
    invoke-virtual {v0, v2, v4, v3}, Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [F

    .line 5
    :try_start_0
    invoke-virtual {v1}, Lcom/baseflow/geolocator/data/CalculateDistanceOptions;->getSourceCoordinates()Lcom/baseflow/geolocator/data/Coordinate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baseflow/geolocator/data/Coordinate;->getLatitude()D

    move-result-wide v4

    .line 6
    invoke-virtual {v1}, Lcom/baseflow/geolocator/data/CalculateDistanceOptions;->getSourceCoordinates()Lcom/baseflow/geolocator/data/Coordinate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baseflow/geolocator/data/Coordinate;->getLongitude()D

    move-result-wide v6

    .line 7
    invoke-virtual {v1}, Lcom/baseflow/geolocator/data/CalculateDistanceOptions;->getDestinationCoordinates()Lcom/baseflow/geolocator/data/Coordinate;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baseflow/geolocator/data/Coordinate;->getLatitude()D

    move-result-wide v8

    .line 8
    invoke-virtual {v1}, Lcom/baseflow/geolocator/data/CalculateDistanceOptions;->getDestinationCoordinates()Lcom/baseflow/geolocator/data/Coordinate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baseflow/geolocator/data/Coordinate;->getLongitude()D

    move-result-wide v10

    move-object v12, v2

    .line 9
    invoke-static/range {v4 .. v12}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v1, 0x0

    .line 10
    aget v1, v2, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "ERROR_CALCULATE_DISTANCE_ILLEGAL_ARGUMENT"

    .line 11
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v2, v1, v3}, Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/baseflow/geolocator/tasks/Task;->stopTask()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/baseflow/geolocator/tasks/Task;->stopTask()V

    .line 14
    throw v0
.end method
