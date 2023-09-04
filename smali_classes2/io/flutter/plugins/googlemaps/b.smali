.class Lio/flutter/plugins/googlemaps/b;
.super Ljava/lang/Object;
.source "CircleController.java"

# interfaces
.implements Lio/flutter/plugins/googlemaps/c;


# instance fields
.field private final a:Lcom/google/android/gms/maps/model/Circle;

.field private final b:Ljava/lang/String;

.field private final c:F

.field private d:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/Circle;ZF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "circle",
            "consumeTapEvents",
            "density"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/b;->a:Lcom/google/android/gms/maps/model/Circle;

    .line 3
    iput-boolean p2, p0, Lio/flutter/plugins/googlemaps/b;->d:Z

    .line 4
    iput p3, p0, Lio/flutter/plugins/googlemaps/b;->c:F

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Circle;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugins/googlemaps/b;->b:Ljava/lang/String;

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
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/b;->d:Z

    .line 2
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/b;->a:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Circle;->setClickable(Z)V

    return-void
.end method

.method b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/b;->d:Z

    return v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/b;->a:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    return-void
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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/b;->a:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Circle;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fillColor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/b;->a:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Circle;->setFillColor(I)V

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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/b;->a:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/maps/model/Circle;->setRadius(D)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strokeColor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/b;->a:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Circle;->setStrokeColor(I)V

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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/b;->a:Lcom/google/android/gms/maps/model/Circle;

    iget v1, p0, Lio/flutter/plugins/googlemaps/b;->c:F

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Circle;->setStrokeWidth(F)V

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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/b;->a:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Circle;->setVisible(Z)V

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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/b;->a:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Circle;->setZIndex(F)V

    return-void
.end method
