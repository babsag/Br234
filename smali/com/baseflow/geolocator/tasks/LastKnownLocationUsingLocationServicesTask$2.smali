.class Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask$2;
.super Ljava/lang/Object;
.source "LastKnownLocationUsingLocationServicesTask.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask;->startTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask;


# direct methods
.method constructor <init>(Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask;)V
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
    iput-object p1, p0, Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask$2;->this$0:Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/location/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/baseflow/geolocator/data/PositionMapper;->toHashMap(Landroid/location/Location;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask$2;->this$0:Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask;

    invoke-virtual {v0}, Lcom/baseflow/geolocator/tasks/Task;->getTaskContext()Lcom/baseflow/geolocator/tasks/TaskContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baseflow/geolocator/tasks/TaskContext;->getResult()Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;->success(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask$2;->this$0:Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask;

    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/Task;->stopTask()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "location"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask$2;->onSuccess(Landroid/location/Location;)V

    return-void
.end method
