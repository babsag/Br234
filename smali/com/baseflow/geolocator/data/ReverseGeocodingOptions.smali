.class public Lcom/baseflow/geolocator/data/ReverseGeocodingOptions;
.super Lcom/baseflow/geolocator/data/GeocodingOptions;
.source "ReverseGeocodingOptions.java"


# instance fields
.field private mCoordinate:Lcom/baseflow/geolocator/data/Coordinate;


# direct methods
.method private constructor <init>(Lcom/baseflow/geolocator/data/Coordinate;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "coordinate",
            "locale"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/baseflow/geolocator/data/GeocodingOptions;-><init>(Ljava/util/Locale;)V

    .line 2
    iput-object p1, p0, Lcom/baseflow/geolocator/data/ReverseGeocodingOptions;->mCoordinate:Lcom/baseflow/geolocator/data/Coordinate;

    return-void
.end method

.method public static parseArguments(Ljava/lang/Object;)Lcom/baseflow/geolocator/data/ReverseGeocodingOptions;
    .locals 5
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

    .line 2
    new-instance v0, Lcom/baseflow/geolocator/data/Coordinate;

    const-string v1, "latitude"

    .line 3
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-string v3, "longitude"

    .line 4
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baseflow/geolocator/data/Coordinate;-><init>(DD)V

    const-string v1, "localeIdentifier"

    .line 5
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/baseflow/geolocator/utils/LocaleConverter;->fromLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    new-instance v1, Lcom/baseflow/geolocator/data/ReverseGeocodingOptions;

    invoke-direct {v1, v0, p0}, Lcom/baseflow/geolocator/data/ReverseGeocodingOptions;-><init>(Lcom/baseflow/geolocator/data/Coordinate;Ljava/util/Locale;)V

    return-object v1
.end method


# virtual methods
.method public getCoordinate()Lcom/baseflow/geolocator/data/Coordinate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/data/ReverseGeocodingOptions;->mCoordinate:Lcom/baseflow/geolocator/data/Coordinate;

    return-object v0
.end method
