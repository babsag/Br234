.class public Lcom/baseflow/geolocator/data/CalculateDistanceOptions;
.super Ljava/lang/Object;
.source "CalculateDistanceOptions.java"


# instance fields
.field private mDestinationCoordinates:Lcom/baseflow/geolocator/data/Coordinate;

.field private mSourceCoordinates:Lcom/baseflow/geolocator/data/Coordinate;


# direct methods
.method private constructor <init>(Lcom/baseflow/geolocator/data/Coordinate;Lcom/baseflow/geolocator/data/Coordinate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceCoordinates",
            "destinationCoordinates"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/baseflow/geolocator/data/CalculateDistanceOptions;->mSourceCoordinates:Lcom/baseflow/geolocator/data/Coordinate;

    .line 3
    iput-object p2, p0, Lcom/baseflow/geolocator/data/CalculateDistanceOptions;->mDestinationCoordinates:Lcom/baseflow/geolocator/data/Coordinate;

    return-void
.end method

.method public static parseArguments(Ljava/lang/Object;)Lcom/baseflow/geolocator/data/CalculateDistanceOptions;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arguments"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    check-cast p0, Ljava/util/Map;

    .line 2
    new-instance v0, Lcom/baseflow/geolocator/data/Coordinate;

    const-string v1, "startLatitude"

    .line 3
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-string v3, "startLongitude"

    .line 4
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baseflow/geolocator/data/Coordinate;-><init>(DD)V

    .line 5
    new-instance v1, Lcom/baseflow/geolocator/data/Coordinate;

    const-string v2, "endLatitude"

    .line 6
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-string v4, "endLongitude"

    .line 7
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baseflow/geolocator/data/Coordinate;-><init>(DD)V

    .line 8
    new-instance p0, Lcom/baseflow/geolocator/data/CalculateDistanceOptions;

    invoke-direct {p0, v0, v1}, Lcom/baseflow/geolocator/data/CalculateDistanceOptions;-><init>(Lcom/baseflow/geolocator/data/Coordinate;Lcom/baseflow/geolocator/data/Coordinate;)V

    return-object p0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No coordinates supplied to calculate distance between."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDestinationCoordinates()Lcom/baseflow/geolocator/data/Coordinate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/data/CalculateDistanceOptions;->mDestinationCoordinates:Lcom/baseflow/geolocator/data/Coordinate;

    return-object v0
.end method

.method public getSourceCoordinates()Lcom/baseflow/geolocator/data/Coordinate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/data/CalculateDistanceOptions;->mSourceCoordinates:Lcom/baseflow/geolocator/data/Coordinate;

    return-object v0
.end method
