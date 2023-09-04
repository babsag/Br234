.class public Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask;
.super Lcom/baseflow/geolocator/tasks/LocationUsingLocationManagerTask;
.source "LocationUpdatesUsingLocationManagerTask.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask$GeolocationAccuracy;
    }
.end annotation


# static fields
.field static final GEOLOCATION_ACCURACY_BEST:I = 0x4

.field static final GEOLOCATION_ACCURACY_BEST_FOR_NAVIGATION:I = 0x5

.field static final GEOLOCATION_ACCURACY_HIGH:I = 0x3

.field static final GEOLOCATION_ACCURACY_LOW:I = 0x1

.field static final GEOLOCATION_ACCURACY_LOWEST:I = 0x0

.field static final GEOLOCATION_ACCURACY_MEDIUM:I = 0x2


# instance fields
.field private mActiveProvider:Ljava/lang/String;

.field private mBestLocation:Landroid/location/Location;

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
            "context",
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
    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/tasks/LocationUsingLocationManagerTask;-><init>(Lcom/baseflow/geolocator/tasks/TaskContext;)V

    .line 2
    iput-boolean p2, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask;->mStopAfterFirstLocationUpdate:Z

    return-void
.end method

.method private accuracyToFloat(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accuracy"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/high16 p1, 0x42c80000    # 100.0f

    return p1

    :cond_0
    const/high16 p1, 0x42480000    # 50.0f

    return p1

    :cond_1
    const/high16 p1, 0x437a0000    # 250.0f

    return p1

    :cond_2
    const/high16 p1, 0x43fa0000    # 500.0f

    return p1
.end method

.method private getBestProvider(Landroid/location/LocationManager;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "locationManager",
            "accuracy"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    const/4 v3, 0x2

    if-eq p2, v2, :cond_2

    if-eq p2, v3, :cond_1

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    const/4 v4, 0x4

    if-eq p2, v4, :cond_0

    const/4 v4, 0x5

    if-eq p2, v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 6
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setHorizontalAccuracy(I)V

    .line 7
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 9
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setHorizontalAccuracy(I)V

    .line 10
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 12
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setHorizontalAccuracy(I)V

    .line 13
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setHorizontalAccuracy(I)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 17
    :goto_0
    invoke-virtual {p1, v0, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-static {p2}, Lcom/google/android/gms/common/util/Strings;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {p1, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 21
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_4
    return-object p2
.end method

.method private handleError()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/baseflow/geolocator/tasks/Task;->getTaskContext()Lcom/baseflow/geolocator/tasks/TaskContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baseflow/geolocator/tasks/TaskContext;->getResult()Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

    move-result-object v0

    const-string v1, "INVALID_LOCATION_SETTINGS"

    const-string v2, "Location settings are inadequate, check your location settings."

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
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
.method public declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/baseflow/geolocator/tasks/LocationUsingLocationManagerTask;->mLocationOptions:Lcom/baseflow/geolocator/data/LocationOptions;

    invoke-virtual {v0}, Lcom/baseflow/geolocator/data/LocationOptions;->getAccuracy()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask;->accuracyToFloat(I)F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask;->mBestLocation:Landroid/location/Location;

    invoke-static {p1, v1}, Lcom/baseflow/geolocator/tasks/LocationUsingLocationManagerTask;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask;->mBestLocation:Landroid/location/Location;

    .line 4
    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask;->reportLocationUpdate(Landroid/location/Location;)V

    .line 5
    iget-boolean p1, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask;->mStopAfterFirstLocationUpdate:Z

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask;->stopTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask;->mActiveProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/baseflow/geolocator/tasks/Task;->getTaskContext()Lcom/baseflow/geolocator/tasks/TaskContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/TaskContext;->getResult()Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "ERROR_UPDATING_LOCATION"

    const-string v2, "The active location provider was disabled. Check if the location services are enabled in the device settings."

    invoke-virtual {p1, v1, v2, v0}, Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "provider",
            "status",
            "bundle"
        }
    .end annotation

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask;->onProviderDisabled(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startTask()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/baseflow/geolocator/tasks/LocationUsingLocationManagerTask;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 3
    iget-object v1, p0, Lcom/baseflow/geolocator/tasks/LocationUsingLocationManagerTask;->mLocationOptions:Lcom/baseflow/geolocator/data/LocationOptions;

    invoke-virtual {v1}, Lcom/baseflow/geolocator/data/LocationOptions;->getAccuracy()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask;->getBestProvider(Landroid/location/LocationManager;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask;->mActiveProvider:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/common/util/Strings;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask;->handleError()V

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask;->mActiveProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask;->mBestLocation:Landroid/location/Location;

    .line 7
    iget-boolean v2, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask;->mStopAfterFirstLocationUpdate:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 8
    invoke-direct {p0, v1}, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask;->reportLocationUpdate(Landroid/location/Location;)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_2

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :cond_2
    move-object v6, v1

    .line 11
    iget-object v1, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask;->mActiveProvider:Ljava/lang/String;

    iget-object v2, p0, Lcom/baseflow/geolocator/tasks/LocationUsingLocationManagerTask;->mLocationOptions:Lcom/baseflow/geolocator/data/LocationOptions;

    .line 12
    invoke-virtual {v2}, Lcom/baseflow/geolocator/data/LocationOptions;->getTimeInterval()J

    move-result-wide v2

    iget-object v4, p0, Lcom/baseflow/geolocator/tasks/LocationUsingLocationManagerTask;->mLocationOptions:Lcom/baseflow/geolocator/data/LocationOptions;

    .line 13
    invoke-virtual {v4}, Lcom/baseflow/geolocator/data/LocationOptions;->getDistanceFilter()J

    move-result-wide v4

    long-to-float v4, v4

    move-object v5, p0

    .line 14
    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public stopTask()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/baseflow/geolocator/tasks/Task;->stopTask()V

    .line 2
    invoke-virtual {p0}, Lcom/baseflow/geolocator/tasks/LocationUsingLocationManagerTask;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method
