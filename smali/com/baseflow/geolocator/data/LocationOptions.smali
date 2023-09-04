.class public Lcom/baseflow/geolocator/data/LocationOptions;
.super Ljava/lang/Object;
.source "LocationOptions.java"


# instance fields
.field private accuracy:I

.field private distanceFilter:J

.field private forceAndroidLocationManager:Z

.field private timeInterval:J


# direct methods
.method private constructor <init>(IJZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "accuracy",
            "distanceFilter",
            "forceAndroidLocationManager",
            "timeInterval"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/baseflow/geolocator/data/LocationOptions;->accuracy:I

    .line 3
    iput-wide p2, p0, Lcom/baseflow/geolocator/data/LocationOptions;->distanceFilter:J

    .line 4
    iput-boolean p4, p0, Lcom/baseflow/geolocator/data/LocationOptions;->forceAndroidLocationManager:Z

    .line 5
    iput-wide p5, p0, Lcom/baseflow/geolocator/data/LocationOptions;->timeInterval:J

    return-void
.end method

.method public static parseArguments(Ljava/lang/Object;)Lcom/baseflow/geolocator/data/LocationOptions;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arguments"
        }
    .end annotation

    .line 1
    check-cast p0, Ljava/util/Map;

    const-string v0, "accuracy"

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v0, "distanceFilter"

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    const-string v0, "forceAndroidLocationManager"

    .line 4
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v0, "timeInterval"

    .line 5
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v6, p0

    .line 6
    new-instance p0, Lcom/baseflow/geolocator/data/LocationOptions;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/baseflow/geolocator/data/LocationOptions;-><init>(IJZJ)V

    return-object p0
.end method


# virtual methods
.method public getAccuracy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baseflow/geolocator/data/LocationOptions;->accuracy:I

    return v0
.end method

.method public getDistanceFilter()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baseflow/geolocator/data/LocationOptions;->distanceFilter:J

    return-wide v0
.end method

.method public getTimeInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baseflow/geolocator/data/LocationOptions;->timeInterval:J

    return-wide v0
.end method

.method public isForceAndroidLocationManager()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/baseflow/geolocator/data/LocationOptions;->forceAndroidLocationManager:Z

    return v0
.end method
