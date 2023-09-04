.class Lio/flutter/plugins/googlemaps/a;
.super Ljava/lang/Object;
.source "CircleBuilder.java"

# interfaces
.implements Lio/flutter/plugins/googlemaps/c;


# instance fields
.field private final a:Lcom/google/android/gms/maps/model/CircleOptions;

.field private final b:F

.field private c:Z


# direct methods
.method constructor <init>(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "density"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/googlemaps/a;->a:Lcom/google/android/gms/maps/model/CircleOptions;

    .line 3
    iput p1, p0, Lio/flutter/plugins/googlemaps/a;->b:F

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
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/a;->c:Z

    .line 2
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/a;->a:Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/CircleOptions;->clickable(Z)Lcom/google/android/gms/maps/model/CircleOptions;

    return-void
.end method

.method b()Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/a;->a:Lcom/google/android/gms/maps/model/CircleOptions;

    return-object v0
.end method

.method c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/a;->c:Z

    return v0
.end method

.method public setCenter(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "center"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/a;->a:Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/a;->a:Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    return-void
.end method

.method public setRadius(D)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/a;->a:Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/a;->a:Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strokeWidth"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/a;->a:Lcom/google/android/gms/maps/model/CircleOptions;

    iget v1, p0, Lio/flutter/plugins/googlemaps/a;->b:F

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/a;->a:Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/CircleOptions;->visible(Z)Lcom/google/android/gms/maps/model/CircleOptions;

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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/a;->a:Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/CircleOptions;->zIndex(F)Lcom/google/android/gms/maps/model/CircleOptions;

    return-void
.end method
