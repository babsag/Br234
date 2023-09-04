.class Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask;
.super Lcom/baseflow/geolocator/tasks/Task;
.source "ForwardGeocodingTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baseflow/geolocator/tasks/Task<",
        "Lcom/baseflow/geolocator/data/ForwardGeocodingOptions;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/baseflow/geolocator/tasks/TaskContext;)V
    .locals 1
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
            "Lcom/baseflow/geolocator/data/ForwardGeocodingOptions;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/tasks/Task;-><init>(Lcom/baseflow/geolocator/tasks/TaskContext;)V

    .line 2
    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/TaskContext;->getRegistrar()Lio/flutter/plugin/common/PluginRegistry$Registrar;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activeContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public startTask()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/baseflow/geolocator/tasks/Task;->getTaskContext()Lcom/baseflow/geolocator/tasks/TaskContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baseflow/geolocator/tasks/TaskContext;->getOptions()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baseflow/geolocator/data/ForwardGeocodingOptions;

    .line 2
    invoke-virtual {v0}, Lcom/baseflow/geolocator/data/GeocodingOptions;->getLocale()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/baseflow/geolocator/data/GeocodingOptions;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/baseflow/geolocator/tasks/Task;->getTaskContext()Lcom/baseflow/geolocator/tasks/TaskContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baseflow/geolocator/tasks/TaskContext;->getResult()Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

    move-result-object v2

    .line 6
    new-instance v3, Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask$1;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask$1;-><init>(Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask;Landroid/location/Geocoder;Lcom/baseflow/geolocator/data/ForwardGeocodingOptions;Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
