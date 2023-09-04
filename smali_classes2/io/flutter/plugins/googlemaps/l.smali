.class Lio/flutter/plugins/googlemaps/l;
.super Ljava/lang/Object;
.source "MarkersController.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/googlemaps/j;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lio/flutter/plugin/common/MethodChannel;

.field private d:Lcom/google/android/gms/maps/GoogleMap;


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/MethodChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "methodChannel"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/googlemaps/l;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/googlemaps/l;->b:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/l;->c:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "marker"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lio/flutter/plugins/googlemaps/i;

    invoke-direct {v0}, Lio/flutter/plugins/googlemaps/i;-><init>()V

    .line 2
    invoke-static {p1, v0}, Lio/flutter/plugins/googlemaps/e;->g(Ljava/lang/Object;Lio/flutter/plugins/googlemaps/k;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0}, Lio/flutter/plugins/googlemaps/i;->d()Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lio/flutter/plugins/googlemaps/i;->e()Z

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lio/flutter/plugins/googlemaps/l;->b(Ljava/lang/String;Lcom/google/android/gms/maps/model/MarkerOptions;Z)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/google/android/gms/maps/model/MarkerOptions;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "markerId",
            "markerOptions",
            "consumeTapEvents"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/l;->d:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p2

    .line 2
    new-instance v0, Lio/flutter/plugins/googlemaps/j;

    invoke-direct {v0, p2, p3}, Lio/flutter/plugins/googlemaps/j;-><init>(Lcom/google/android/gms/maps/model/Marker;Z)V

    .line 3
    iget-object p3, p0, Lio/flutter/plugins/googlemaps/l;->a:Ljava/util/Map;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p3, p0, Lio/flutter/plugins/googlemaps/l;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private d(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "marker"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lio/flutter/plugins/googlemaps/l;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/l;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugins/googlemaps/j;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1, v0}, Lio/flutter/plugins/googlemaps/e;->g(Ljava/lang/Object;Lio/flutter/plugins/googlemaps/k;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private static f(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "marker"
        }
    .end annotation

    .line 1
    check-cast p0, Ljava/util/Map;

    const-string v0, "markerId"

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "markersToAdd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lio/flutter/plugins/googlemaps/l;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method e(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "markersToChange"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lio/flutter/plugins/googlemaps/l;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method g(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "markerId",
            "result"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/l;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugins/googlemaps/j;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/flutter/plugins/googlemaps/j;->f()V

    .line 3
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "Invalid markerId"

    const-string v1, "hideInfoWindow called with invalid markerId"

    .line 4
    invoke-interface {p2, p1, v1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method h(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "markerId",
            "result"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/l;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugins/googlemaps/j;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/flutter/plugins/googlemaps/j;->g()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string v0, "Invalid markerId"

    const-string v1, "isInfoWindowShown called with invalid markerId"

    .line 3
    invoke-interface {p2, v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method i(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "googleMarkerId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/l;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/l;->c:Lio/flutter/plugin/common/MethodChannel;

    invoke-static {p1}, Lio/flutter/plugins/googlemaps/e;->l(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "infoWindow#onTap"

    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method j(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "googleMarkerId",
            "latLng"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/l;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "markerId"

    .line 3
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lio/flutter/plugins/googlemaps/e;->j(Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "position"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/l;->c:Lio/flutter/plugin/common/MethodChannel;

    const-string p2, "marker#onDragEnd"

    invoke-virtual {p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method k(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "googleMarkerId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/l;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/l;->c:Lio/flutter/plugin/common/MethodChannel;

    invoke-static {p1}, Lio/flutter/plugins/googlemaps/e;->l(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "marker#onTap"

    invoke-virtual {v1, v3, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/l;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugins/googlemaps/j;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lio/flutter/plugins/googlemaps/j;->d()Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method l(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "markerIdsToRemove"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 2
    :cond_2
    check-cast v0, Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/l;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugins/googlemaps/j;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lio/flutter/plugins/googlemaps/j;->h()V

    .line 5
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/l;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lio/flutter/plugins/googlemaps/j;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method m(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "googleMap"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/l;->d:Lcom/google/android/gms/maps/GoogleMap;

    return-void
.end method

.method n(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "markerId",
            "result"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/l;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugins/googlemaps/j;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/flutter/plugins/googlemaps/j;->i()V

    .line 3
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "Invalid markerId"

    const-string v1, "showInfoWindow called with invalid markerId"

    .line 4
    invoke-interface {p2, p1, v1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
