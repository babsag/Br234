.class abstract Lcom/baseflow/geolocator/tasks/LocationUsingLocationManagerTask;
.super Lcom/baseflow/geolocator/tasks/Task;
.source "LocationUsingLocationManagerTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baseflow/geolocator/tasks/Task<",
        "Lcom/baseflow/geolocator/data/LocationOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final TWO_MINUTES:J = 0x1d4c0L


# instance fields
.field private final mAndroidContext:Landroid/content/Context;

.field final mLocationOptions:Lcom/baseflow/geolocator/data/LocationOptions;


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
            "Lcom/baseflow/geolocator/data/LocationOptions;",
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
    iput-object v0, p0, Lcom/baseflow/geolocator/tasks/LocationUsingLocationManagerTask;->mAndroidContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/TaskContext;->getOptions()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baseflow/geolocator/data/LocationOptions;

    iput-object p1, p0, Lcom/baseflow/geolocator/tasks/LocationUsingLocationManagerTask;->mLocationOptions:Lcom/baseflow/geolocator/data/LocationOptions;

    return-void
.end method

.method static isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "location",
            "bestLocation"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-lez v7, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v7, -0x1d4c0

    cmp-long v5, v3, v7

    if-gez v5, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 4
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v1, v4, v7

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v2, :cond_4

    return v0

    :cond_4
    if-eqz v3, :cond_5

    return v6

    .line 5
    :cond_5
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    cmpg-float v3, v2, v3

    if-gez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    const/high16 v5, 0x43480000    # 200.0f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_8

    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    .line 6
    :goto_5
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 7
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_6

    :cond_9
    const/4 p0, 0x0

    :goto_6
    if-eqz v3, :cond_a

    return v0

    :cond_a
    if-eqz v1, :cond_b

    if-nez v4, :cond_b

    return v0

    :cond_b
    if-eqz v1, :cond_c

    if-nez v2, :cond_c

    if-eqz p0, :cond_c

    return v0

    :cond_c
    return v6
.end method


# virtual methods
.method getLocationManager()Landroid/location/LocationManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/tasks/LocationUsingLocationManagerTask;->mAndroidContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    return-object v0
.end method

.method public abstract startTask()V
.end method
