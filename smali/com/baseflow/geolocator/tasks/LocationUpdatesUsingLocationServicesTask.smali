.class Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;
.super Lcom/baseflow/geolocator/tasks/LocationUsingLocationServicesTask;
.source "LocationUpdatesUsingLocationServicesTask.java"


# instance fields
.field private final mFusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private final mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

.field private final mStopAfterFirstLocationUpdate:Z


# direct methods
.method constructor <init>(Lcom/baseflow/geolocator/tasks/TaskContext;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskContext",
            "stopAfterFirstLocationUpdate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baseflow/geolocator/tasks/TaskContext<",
            "Lcom/baseflow/geolocator/data/LocationOptions;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/tasks/LocationUsingLocationServicesTask;-><init>(Lcom/baseflow/geolocator/tasks/TaskContext;)V

    .line 2
    iput-boolean p2, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;->mStopAfterFirstLocationUpdate:Z

    .line 3
    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/TaskContext;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object p1

    iput-object p1, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;->mFusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 4
    new-instance p1, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask$1;

    invoke-direct {p1, p0}, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask$1;-><init>(Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;)V

    iput-object p1, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;Landroid/location/Location;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;->reportLocationUpdate(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$100(Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;->mStopAfterFirstLocationUpdate:Z

    return p0
.end method

.method static synthetic access$200(Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;)Lcom/google/android/gms/location/LocationRequest;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;->createLocationRequest()Lcom/google/android/gms/location/LocationRequest;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;)Lcom/google/android/gms/location/LocationCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;)Lcom/google/android/gms/location/FusedLocationProviderClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;->mFusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    return-object p0
.end method

.method private createLocationRequest()Lcom/google/android/gms/location/LocationRequest;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/baseflow/geolocator/tasks/LocationUsingLocationServicesTask;->mLocationOptions:Lcom/baseflow/geolocator/data/LocationOptions;

    .line 3
    invoke-virtual {v1}, Lcom/baseflow/geolocator/data/LocationOptions;->getTimeInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/baseflow/geolocator/tasks/LocationUsingLocationServicesTask;->mLocationOptions:Lcom/baseflow/geolocator/data/LocationOptions;

    .line 4
    invoke-virtual {v2}, Lcom/baseflow/geolocator/data/LocationOptions;->getTimeInterval()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/baseflow/geolocator/tasks/LocationUsingLocationServicesTask;->mLocationOptions:Lcom/baseflow/geolocator/data/LocationOptions;

    .line 5
    invoke-virtual {v2}, Lcom/baseflow/geolocator/data/LocationOptions;->getDistanceFilter()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;

    .line 6
    iget-object v1, p0, Lcom/baseflow/geolocator/tasks/LocationUsingLocationServicesTask;->mLocationOptions:Lcom/baseflow/geolocator/data/LocationOptions;

    invoke-virtual {v1}, Lcom/baseflow/geolocator/data/LocationOptions;->getAccuracy()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    goto :goto_0

    :cond_1
    const/16 v1, 0x66

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    goto :goto_0

    :cond_2
    const/16 v1, 0x68

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    :goto_0
    return-object v0
.end method

.method private reportLocationUpdate(Landroid/location/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/baseflow/geolocator/data/PositionMapper;->toHashMap(Landroid/location/Location;)Ljava/util/Map;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/baseflow/geolocator/tasks/Task;->getTaskContext()Lcom/baseflow/geolocator/tasks/TaskContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baseflow/geolocator/tasks/TaskContext;->getResult()Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;->success(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public startTask()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;->mFusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v1, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask$2;

    invoke-direct {v1, p0}, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask$2;-><init>(Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public stopTask()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/baseflow/geolocator/tasks/Task;->stopTask()V

    .line 2
    iget-object v0, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;->mFusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v1, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
