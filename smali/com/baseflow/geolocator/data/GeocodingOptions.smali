.class public abstract Lcom/baseflow/geolocator/data/GeocodingOptions;
.super Ljava/lang/Object;
.source "GeocodingOptions.java"


# instance fields
.field private mLocale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locale"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/baseflow/geolocator/data/GeocodingOptions;->mLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/data/GeocodingOptions;->mLocale:Ljava/util/Locale;

    return-object v0
.end method
