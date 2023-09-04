.class public Lcom/baseflow/geolocator/data/Coordinate;
.super Ljava/lang/Object;
.source "Coordinate.java"


# instance fields
.field private latitude:D

.field private longitude:D


# direct methods
.method constructor <init>(DD)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "latitude",
            "longitude"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/baseflow/geolocator/data/Coordinate;->latitude:D

    .line 3
    iput-wide p3, p0, Lcom/baseflow/geolocator/data/Coordinate;->longitude:D

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baseflow/geolocator/data/Coordinate;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baseflow/geolocator/data/Coordinate;->longitude:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "latitude"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/baseflow/geolocator/data/Coordinate;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "longitude"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/baseflow/geolocator/data/Coordinate;->longitude:D

    return-void
.end method
