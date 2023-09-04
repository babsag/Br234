.class Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask$1;
.super Lcom/google/android/gms/location/LocationCallback;
.source "LocationUpdatesUsingLocationServicesTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;-><init>(Lcom/baseflow/geolocator/tasks/TaskContext;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
    iput-object p1, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask$1;->this$0:Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;

    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locationResult"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLocations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask$1;->this$0:Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;

    invoke-static {v1, v0}, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;->access$000(Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;Landroid/location/Location;)V

    .line 3
    iget-object v0, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask$1;->this$0:Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;

    invoke-static {v0}, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;->access$100(Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask$1;->this$0:Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;

    invoke-static {p1}, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;->access$100(Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask$1;->this$0:Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;

    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;->stopTask()V

    :cond_3
    return-void
.end method
