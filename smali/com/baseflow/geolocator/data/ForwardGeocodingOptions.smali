.class public Lcom/baseflow/geolocator/data/ForwardGeocodingOptions;
.super Lcom/baseflow/geolocator/data/GeocodingOptions;
.source "ForwardGeocodingOptions.java"


# instance fields
.field private mAddressToLookup:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "addressToLookup",
            "locale"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/baseflow/geolocator/data/GeocodingOptions;-><init>(Ljava/util/Locale;)V

    .line 2
    iput-object p1, p0, Lcom/baseflow/geolocator/data/ForwardGeocodingOptions;->mAddressToLookup:Ljava/lang/String;

    return-void
.end method

.method public static parseArguments(Ljava/lang/Object;)Lcom/baseflow/geolocator/data/ForwardGeocodingOptions;
    .locals 3
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

    const-string v0, "address"

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "localeIdentifier"

    .line 3
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/baseflow/geolocator/utils/LocaleConverter;->fromLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 5
    :goto_0
    new-instance v1, Lcom/baseflow/geolocator/data/ForwardGeocodingOptions;

    invoke-direct {v1, v0, p0}, Lcom/baseflow/geolocator/data/ForwardGeocodingOptions;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1
.end method


# virtual methods
.method public getAddressToLookup()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/data/ForwardGeocodingOptions;->mAddressToLookup:Ljava/lang/String;

    return-object v0
.end method
