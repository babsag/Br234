.class Lcom/baseflow/geolocator/tasks/ReverseGeocodingTask;
.super Lcom/baseflow/geolocator/tasks/Task;
.source "ReverseGeocodingTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baseflow/geolocator/tasks/Task<",
        "Lcom/baseflow/geolocator/data/ReverseGeocodingOptions;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAndroidContext:Landroid/content/Context;

.field private mCoordinatesToLookup:Lcom/baseflow/geolocator/data/Coordinate;

.field private mLocale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/baseflow/geolocator/tasks/TaskContext;)V
    .locals 2
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
            "Lcom/baseflow/geolocator/data/ReverseGeocodingOptions;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/tasks/Task;-><init>(Lcom/baseflow/geolocator/tasks/TaskContext;)V

    .line 2
    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/TaskContext;->getRegistrar()Lio/flutter/plugin/common/PluginRegistry$Registrar;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activeContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/baseflow/geolocator/tasks/ReverseGeocodingTask;->mAndroidContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/TaskContext;->getOptions()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baseflow/geolocator/data/ReverseGeocodingOptions;

    invoke-virtual {v0}, Lcom/baseflow/geolocator/data/ReverseGeocodingOptions;->getCoordinate()Lcom/baseflow/geolocator/data/Coordinate;

    move-result-object v0

    iput-object v0, p0, Lcom/baseflow/geolocator/tasks/ReverseGeocodingTask;->mCoordinatesToLookup:Lcom/baseflow/geolocator/data/Coordinate;

    .line 5
    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/TaskContext;->getOptions()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baseflow/geolocator/data/ReverseGeocodingOptions;

    invoke-virtual {p1}, Lcom/baseflow/geolocator/data/GeocodingOptions;->getLocale()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/baseflow/geolocator/tasks/ReverseGeocodingTask;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method static synthetic access$000(Lcom/baseflow/geolocator/tasks/ReverseGeocodingTask;)Lcom/baseflow/geolocator/data/Coordinate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baseflow/geolocator/tasks/ReverseGeocodingTask;->mCoordinatesToLookup:Lcom/baseflow/geolocator/data/Coordinate;

    return-object p0
.end method


# virtual methods
.method public startTask()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/tasks/ReverseGeocodingTask;->mLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/baseflow/geolocator/tasks/ReverseGeocodingTask;->mAndroidContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baseflow/geolocator/tasks/ReverseGeocodingTask;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/baseflow/geolocator/tasks/ReverseGeocodingTask;->mAndroidContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/baseflow/geolocator/tasks/Task;->getTaskContext()Lcom/baseflow/geolocator/tasks/TaskContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baseflow/geolocator/tasks/TaskContext;->getResult()Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/baseflow/geolocator/tasks/ReverseGeocodingTask$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/baseflow/geolocator/tasks/ReverseGeocodingTask$1;-><init>(Lcom/baseflow/geolocator/tasks/ReverseGeocodingTask;Landroid/location/Geocoder;Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
