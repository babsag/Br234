.class Lio/flutter/plugins/googlemaps/f;
.super Ljava/lang/Object;
.source "GoogleMapBuilder.java"

# interfaces
.implements Lio/flutter/plugins/googlemaps/h;


# instance fields
.field private final a:Lcom/google/android/gms/maps/GoogleMapOptions;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/googlemaps/f;->a:Lcom/google/android/gms/maps/GoogleMapOptions;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/f;->b:Z

    .line 4
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/f;->c:Z

    .line 5
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/f;->d:Z

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lio/flutter/plugins/googlemaps/f;->e:Z

    .line 7
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/f;->f:Z

    .line 8
    iput-boolean v1, p0, Lio/flutter/plugins/googlemaps/f;->g:Z

    .line 9
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lio/flutter/plugins/googlemaps/f;->l:Landroid/graphics/Rect;

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
            "trackCameraPosition"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/f;->b:Z

    return-void
.end method

.method public b(Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "min",
            "max"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/f;->a:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->minZoomPreference(F)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/f;->a:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->maxZoomPreference(F)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_1
    return-void
.end method

.method public c(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "top",
            "left",
            "bottom",
            "right"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    float-to-int p2, p2

    float-to-int p1, p1

    float-to-int p4, p4

    float-to-int p3, p3

    invoke-direct {v0, p2, p1, p4, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lio/flutter/plugins/googlemaps/f;->l:Landroid/graphics/Rect;

    return-void
.end method

.method public d(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/f;->a:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->latLngBoundsForCameraTarget(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method e(ILandroid/content/Context;Ljava/util/concurrent/atomic/AtomicInteger;Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Application;Landroidx/lifecycle/Lifecycle;Lio/flutter/plugin/common/PluginRegistry$Registrar;I)Lio/flutter/plugins/googlemaps/GoogleMapController;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "context",
            "state",
            "binaryMessenger",
            "application",
            "lifecycle",
            "registrar",
            "activityHashCode"
        }
    .end annotation

    move-object v0, p0

    .line 1
    new-instance v11, Lio/flutter/plugins/googlemaps/GoogleMapController;

    iget-object v10, v0, Lio/flutter/plugins/googlemaps/f;->a:Lcom/google/android/gms/maps/GoogleMapOptions;

    move-object v1, v11

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lio/flutter/plugins/googlemaps/GoogleMapController;-><init>(ILandroid/content/Context;Ljava/util/concurrent/atomic/AtomicInteger;Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Application;Landroidx/lifecycle/Lifecycle;Lio/flutter/plugin/common/PluginRegistry$Registrar;ILcom/google/android/gms/maps/GoogleMapOptions;)V

    .line 2
    invoke-virtual {v11}, Lio/flutter/plugins/googlemaps/GoogleMapController;->k()V

    .line 3
    iget-boolean v1, v0, Lio/flutter/plugins/googlemaps/f;->c:Z

    invoke-virtual {v11, v1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->setMyLocationEnabled(Z)V

    .line 4
    iget-boolean v1, v0, Lio/flutter/plugins/googlemaps/f;->d:Z

    invoke-virtual {v11, v1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->setMyLocationButtonEnabled(Z)V

    .line 5
    iget-boolean v1, v0, Lio/flutter/plugins/googlemaps/f;->e:Z

    invoke-virtual {v11, v1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->setIndoorEnabled(Z)V

    .line 6
    iget-boolean v1, v0, Lio/flutter/plugins/googlemaps/f;->f:Z

    invoke-virtual {v11, v1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->setTrafficEnabled(Z)V

    .line 7
    iget-boolean v1, v0, Lio/flutter/plugins/googlemaps/f;->g:Z

    invoke-virtual {v11, v1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->setBuildingsEnabled(Z)V

    .line 8
    iget-boolean v1, v0, Lio/flutter/plugins/googlemaps/f;->b:Z

    invoke-virtual {v11, v1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->a(Z)V

    .line 9
    iget-object v1, v0, Lio/flutter/plugins/googlemaps/f;->h:Ljava/lang/Object;

    invoke-virtual {v11, v1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->o(Ljava/lang/Object;)V

    .line 10
    iget-object v1, v0, Lio/flutter/plugins/googlemaps/f;->i:Ljava/lang/Object;

    invoke-virtual {v11, v1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->p(Ljava/lang/Object;)V

    .line 11
    iget-object v1, v0, Lio/flutter/plugins/googlemaps/f;->j:Ljava/lang/Object;

    invoke-virtual {v11, v1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->q(Ljava/lang/Object;)V

    .line 12
    iget-object v1, v0, Lio/flutter/plugins/googlemaps/f;->k:Ljava/lang/Object;

    invoke-virtual {v11, v1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->n(Ljava/lang/Object;)V

    .line 13
    iget-object v1, v0, Lio/flutter/plugins/googlemaps/f;->l:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-virtual {v11, v2, v3, v4, v1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->c(FFFF)V

    return-object v11
.end method

.method f(Lcom/google/android/gms/maps/model/CameraPosition;)V
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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/f;->a:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->camera(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialCircles"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/f;->k:Ljava/lang/Object;

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialMarkers"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/f;->h:Ljava/lang/Object;

    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialPolygons"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/f;->i:Ljava/lang/Object;

    return-void
.end method

.method public j(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialPolylines"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/f;->j:Ljava/lang/Object;

    return-void
.end method

.method public setBuildingsEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buildingsEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/f;->g:Z

    return-void
.end method

.method public setCompassEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compassEnabled"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/f;->a:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->compassEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method public setIndoorEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indoorEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/f;->e:Z

    return-void
.end method

.method public setMapToolbarEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "setMapToolbarEnabled"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/f;->a:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->mapToolbarEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method public setMapType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/f;->a:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->mapType(I)Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method public setMyLocationButtonEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "myLocationButtonEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/f;->d:Z

    return-void
.end method

.method public setMyLocationEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "myLocationEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/f;->c:Z

    return-void
.end method

.method public setRotateGesturesEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotateGesturesEnabled"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/f;->a:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->rotateGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method public setScrollGesturesEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollGesturesEnabled"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/f;->a:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->scrollGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method public setTiltGesturesEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tiltGesturesEnabled"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/f;->a:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->tiltGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method public setTrafficEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trafficEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/f;->f:Z

    return-void
.end method

.method public setZoomControlsEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomControlsEnabled"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/f;->a:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->zoomControlsEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method public setZoomGesturesEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomGesturesEnabled"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/f;->a:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->zoomGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method
