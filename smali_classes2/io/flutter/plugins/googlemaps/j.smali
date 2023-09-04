.class Lio/flutter/plugins/googlemaps/j;
.super Ljava/lang/Object;
.source "MarkerController.java"

# interfaces
.implements Lio/flutter/plugins/googlemaps/k;


# instance fields
.field private final a:Lcom/google/android/gms/maps/model/Marker;

.field private final b:Ljava/lang/String;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/Marker;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "marker",
            "consumeTapEvents"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/j;->a:Lcom/google/android/gms/maps/model/Marker;

    .line 3
    iput-boolean p2, p0, Lio/flutter/plugins/googlemaps/j;->c:Z

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugins/googlemaps/j;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumeTapEvents"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/j;->c:Z

    return-void
.end method

.method public b(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapDescriptor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/j;->a:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "snippet"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/j;->a:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/j;->a:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/Marker;->setSnippet(Ljava/lang/String;)V

    return-void
.end method

.method d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/j;->c:Z

    return v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/j;->a:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->hideInfoWindow()V

    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/j;->a:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->isInfoWindowShown()Z

    move-result v0

    return v0
.end method

.method h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/j;->a:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/j;->a:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/j;->a:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setAlpha(F)V

    return-void
.end method

.method public setAnchor(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "u",
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/j;->a:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    return-void
.end method

.method public setDraggable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "draggable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/j;->a:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    return-void
.end method

.method public setFlat(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flat"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/j;->a:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setFlat(Z)V

    return-void
.end method

.method public setInfoWindowAnchor(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "u",
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/j;->a:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/maps/model/Marker;->setInfoWindowAnchor(FF)V

    return-void
.end method

.method public setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/j;->a:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/j;->a:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setRotation(F)V

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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/j;->a:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setVisible(Z)V

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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/j;->a:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setZIndex(F)V

    return-void
.end method
