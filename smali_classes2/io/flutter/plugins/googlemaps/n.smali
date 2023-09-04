.class Lio/flutter/plugins/googlemaps/n;
.super Ljava/lang/Object;
.source "PolygonController.java"

# interfaces
.implements Lio/flutter/plugins/googlemaps/o;


# instance fields
.field private final a:Lcom/google/android/gms/maps/model/Polygon;

.field private final b:Ljava/lang/String;

.field private final c:F

.field private d:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/Polygon;ZF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "polygon",
            "consumeTapEvents",
            "density"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/n;->a:Lcom/google/android/gms/maps/model/Polygon;

    .line 3
    iput p3, p0, Lio/flutter/plugins/googlemaps/n;->c:F

    .line 4
    iput-boolean p2, p0, Lio/flutter/plugins/googlemaps/n;->d:Z

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polygon;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugins/googlemaps/n;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumeTapEvents"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/n;->d:Z

    .line 2
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/n;->a:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polygon;->setClickable(Z)V

    return-void
.end method

.method b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/n;->d:Z

    return v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/n;->a:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/n;->a:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polygon;->setFillColor(I)V

    return-void
.end method

.method public setGeodesic(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "geodesic"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/n;->a:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polygon;->setGeodesic(Z)V

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "points"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/n;->a:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polygon;->setPoints(Ljava/util/List;)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/n;->a:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polygon;->setStrokeColor(I)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/n;->a:Lcom/google/android/gms/maps/model/Polygon;

    iget v1, p0, Lio/flutter/plugins/googlemaps/n;->c:F

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polygon;->setStrokeWidth(F)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/n;->a:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polygon;->setVisible(Z)V

    return-void
.end method

.method public setZIndex(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zIndex"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/n;->a:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polygon;->setZIndex(F)V

    return-void
.end method
