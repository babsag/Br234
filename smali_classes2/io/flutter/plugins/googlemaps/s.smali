.class Lio/flutter/plugins/googlemaps/s;
.super Ljava/lang/Object;
.source "PolylineController.java"

# interfaces
.implements Lio/flutter/plugins/googlemaps/t;


# instance fields
.field private final a:Lcom/google/android/gms/maps/model/Polyline;

.field private final b:Ljava/lang/String;

.field private c:Z

.field private final d:F


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/Polyline;ZF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "polyline",
            "consumeTapEvents",
            "density"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/s;->a:Lcom/google/android/gms/maps/model/Polyline;

    .line 3
    iput-boolean p2, p0, Lio/flutter/plugins/googlemaps/s;->c:Z

    .line 4
    iput p3, p0, Lio/flutter/plugins/googlemaps/s;->d:F

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polyline;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugins/googlemaps/s;->b:Ljava/lang/String;

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
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/s;->c:Z

    .line 2
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/s;->a:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setClickable(Z)V

    return-void
.end method

.method b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/s;->c:Z

    return v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/s;->b:Ljava/lang/String;

    return-object v0
.end method

.method d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/s;->a:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    return-void
.end method

.method public setColor(I)V
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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/s;->a:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setColor(I)V

    return-void
.end method

.method public setEndCap(Lcom/google/android/gms/maps/model/Cap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endCap"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/s;->a:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setEndCap(Lcom/google/android/gms/maps/model/Cap;)V

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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/s;->a:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setGeodesic(Z)V

    return-void
.end method

.method public setJointType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jointType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/s;->a:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setJointType(I)V

    return-void
.end method

.method public setPattern(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pattern"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/s;->a:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setPattern(Ljava/util/List;)V

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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/s;->a:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    return-void
.end method

.method public setStartCap(Lcom/google/android/gms/maps/model/Cap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startCap"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/s;->a:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setStartCap(Lcom/google/android/gms/maps/model/Cap;)V

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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/s;->a:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setVisible(Z)V

    return-void
.end method

.method public setWidth(F)V
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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/s;->a:Lcom/google/android/gms/maps/model/Polyline;

    iget v1, p0, Lio/flutter/plugins/googlemaps/s;->d:F

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setWidth(F)V

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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/s;->a:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setZIndex(F)V

    return-void
.end method
