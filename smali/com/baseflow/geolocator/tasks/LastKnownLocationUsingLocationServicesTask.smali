.class Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask;
.super Lcom/baseflow/geolocator/tasks/LocationUsingLocationServicesTask;
.source "LastKnownLocationUsingLocationServicesTask.java"


# instance fields
.field private final mFusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;


# direct methods
.method constructor <init>(Lcom/baseflow/geolocator/tasks/TaskContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskContext"
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
    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/tasks/LocationUsingLocationServicesTask;-><init>(Lcom/baseflow/geolocator/tasks/TaskContext;)V

    .line 2
    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/TaskContext;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object p1

    iput-object p1, p0, Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask;->mFusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    return-void
.end method


# virtual methods
.method public startTask()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask;->mFusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask$2;

    invoke-direct {v1, p0}, Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask$2;-><init>(Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask$1;

    invoke-direct {v1, p0}, Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask$1;-><init>(Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
