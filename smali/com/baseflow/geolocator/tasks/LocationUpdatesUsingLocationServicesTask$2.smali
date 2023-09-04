.class Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask$2;
.super Ljava/lang/Object;
.source "LocationUpdatesUsingLocationServicesTask.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;->startTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;


# direct methods
.method constructor <init>(Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask$2;->this$0:Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask$2;->this$0:Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;

    invoke-static {v0}, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;->access$400(Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    iget-object v1, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask$2;->this$0:Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;

    .line 4
    invoke-static {v1}, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;->access$200(Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask$2;->this$0:Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;

    .line 5
    invoke-static {v2}, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;->access$300(Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;)Lcom/google/android/gms/location/LocationCallback;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
