.class Lio/flutter/plugins/googlemaps/d;
.super Ljava/lang/Object;
.source "CirclesController.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/googlemaps/b;",
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

.field private final d:F

.field private e:Lcom/google/android/gms/maps/GoogleMap;


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/MethodChannel;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "methodChannel",
            "density"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/googlemaps/d;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/googlemaps/d;->b:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/d;->c:Lio/flutter/plugin/common/MethodChannel;

    .line 5
    iput p2, p0, Lio/flutter/plugins/googlemaps/d;->d:F

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "circle"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lio/flutter/plugins/googlemaps/a;

    iget v1, p0, Lio/flutter/plugins/googlemaps/d;->d:F

    invoke-direct {v0, v1}, Lio/flutter/plugins/googlemaps/a;-><init>(F)V

    .line 2
    invoke-static {p1, v0}, Lio/flutter/plugins/googlemaps/e;->d(Ljava/lang/Object;Lio/flutter/plugins/googlemaps/c;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0}, Lio/flutter/plugins/googlemaps/a;->b()Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lio/flutter/plugins/googlemaps/a;->c()Z

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lio/flutter/plugins/googlemaps/d;->b(Ljava/lang/String;Lcom/google/android/gms/maps/model/CircleOptions;Z)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/google/android/gms/maps/model/CircleOptions;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "circleId",
            "circleOptions",
            "consumeTapEvents"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/d;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object p2

    .line 2
    new-instance v0, Lio/flutter/plugins/googlemaps/b;

    iget v1, p0, Lio/flutter/plugins/googlemaps/d;->d:F

    invoke-direct {v0, p2, p3, v1}, Lio/flutter/plugins/googlemaps/b;-><init>(Lcom/google/android/gms/maps/model/Circle;ZF)V

    .line 3
    iget-object p3, p0, Lio/flutter/plugins/googlemaps/d;->a:Ljava/util/Map;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p3, p0, Lio/flutter/plugins/googlemaps/d;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Circle;->getId()Ljava/lang/String;

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
            "circle"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lio/flutter/plugins/googlemaps/d;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/d;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugins/googlemaps/b;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1, v0}, Lio/flutter/plugins/googlemaps/e;->d(Ljava/lang/Object;Lio/flutter/plugins/googlemaps/c;)Ljava/lang/String;

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
            "circle"
        }
    .end annotation

    .line 1
    check-cast p0, Ljava/util/Map;

    const-string v0, "circleId"

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
            "circlesToAdd"
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
    invoke-direct {p0, v0}, Lio/flutter/plugins/googlemaps/d;->a(Ljava/lang/Object;)V

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
            "circlesToChange"
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
    invoke-direct {p0, v0}, Lio/flutter/plugins/googlemaps/d;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method g(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "googleCircleId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/d;->c:Lio/flutter/plugin/common/MethodChannel;

    invoke-static {p1}, Lio/flutter/plugins/googlemaps/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "circle#onTap"

    invoke-virtual {v1, v3, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/d;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugins/googlemaps/b;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lio/flutter/plugins/googlemaps/b;->b()Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method h(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "circleIdsToRemove"
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
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/d;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugins/googlemaps/b;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lio/flutter/plugins/googlemaps/b;->d()V

    .line 5
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/d;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lio/flutter/plugins/googlemaps/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method i(Lcom/google/android/gms/maps/GoogleMap;)V
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
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/d;->e:Lcom/google/android/gms/maps/GoogleMap;

    return-void
.end method
