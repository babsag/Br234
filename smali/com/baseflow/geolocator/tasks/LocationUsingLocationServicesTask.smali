.class abstract Lcom/baseflow/geolocator/tasks/LocationUsingLocationServicesTask;
.super Lcom/baseflow/geolocator/tasks/Task;
.source "LocationUsingLocationServicesTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baseflow/geolocator/tasks/Task<",
        "Lcom/baseflow/geolocator/data/LocationOptions;",
        ">;"
    }
.end annotation


# instance fields
.field final mLocationOptions:Lcom/baseflow/geolocator/data/LocationOptions;


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
    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/tasks/Task;-><init>(Lcom/baseflow/geolocator/tasks/TaskContext;)V

    .line 2
    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/TaskContext;->getOptions()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baseflow/geolocator/data/LocationOptions;

    iput-object p1, p0, Lcom/baseflow/geolocator/tasks/LocationUsingLocationServicesTask;->mLocationOptions:Lcom/baseflow/geolocator/data/LocationOptions;

    return-void
.end method
