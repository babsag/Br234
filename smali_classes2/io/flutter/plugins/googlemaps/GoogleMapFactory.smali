.class public Lio/flutter/plugins/googlemaps/GoogleMapFactory;
.super Lio/flutter/plugin/platform/PlatformViewFactory;
.source "GoogleMapFactory.java"


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Lio/flutter/plugin/common/BinaryMessenger;

.field private final d:Landroid/app/Application;

.field private final e:I

.field private final f:Landroidx/lifecycle/Lifecycle;

.field private final g:Lio/flutter/plugin/common/PluginRegistry$Registrar;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Application;Landroidx/lifecycle/Lifecycle;Lio/flutter/plugin/common/PluginRegistry$Registrar;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "state",
            "binaryMessenger",
            "application",
            "lifecycle",
            "registrar",
            "activityHashCode"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/flutter/plugin/common/StandardMessageCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/PlatformViewFactory;-><init>(Lio/flutter/plugin/common/MessageCodec;)V

    .line 2
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapFactory;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    iput-object p2, p0, Lio/flutter/plugins/googlemaps/GoogleMapFactory;->c:Lio/flutter/plugin/common/BinaryMessenger;

    .line 4
    iput-object p3, p0, Lio/flutter/plugins/googlemaps/GoogleMapFactory;->d:Landroid/app/Application;

    .line 5
    iput p6, p0, Lio/flutter/plugins/googlemaps/GoogleMapFactory;->e:I

    .line 6
    iput-object p4, p0, Lio/flutter/plugins/googlemaps/GoogleMapFactory;->f:Landroidx/lifecycle/Lifecycle;

    .line 7
    iput-object p5, p0, Lio/flutter/plugins/googlemaps/GoogleMapFactory;->g:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/PlatformView;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "id",
            "args"
        }
    .end annotation

    .line 1
    check-cast p3, Ljava/util/Map;

    .line 2
    new-instance v0, Lio/flutter/plugins/googlemaps/f;

    invoke-direct {v0}, Lio/flutter/plugins/googlemaps/f;-><init>()V

    const-string v1, "options"

    .line 3
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lio/flutter/plugins/googlemaps/e;->e(Ljava/lang/Object;Lio/flutter/plugins/googlemaps/h;)V

    const-string v1, "initialCameraPosition"

    .line 4
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/e;->s(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemaps/f;->f(Lcom/google/android/gms/maps/model/CameraPosition;)V

    :cond_0
    const-string v1, "markersToAdd"

    .line 7
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemaps/f;->h(Ljava/lang/Object;)V

    :cond_1
    const-string v1, "polygonsToAdd"

    .line 9
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemaps/f;->i(Ljava/lang/Object;)V

    :cond_2
    const-string v1, "polylinesToAdd"

    .line 11
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemaps/f;->j(Ljava/lang/Object;)V

    :cond_3
    const-string v1, "circlesToAdd"

    .line 13
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p3}, Lio/flutter/plugins/googlemaps/f;->g(Ljava/lang/Object;)V

    .line 15
    :cond_4
    iget-object v3, p0, Lio/flutter/plugins/googlemaps/GoogleMapFactory;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lio/flutter/plugins/googlemaps/GoogleMapFactory;->c:Lio/flutter/plugin/common/BinaryMessenger;

    iget-object v5, p0, Lio/flutter/plugins/googlemaps/GoogleMapFactory;->d:Landroid/app/Application;

    iget-object v6, p0, Lio/flutter/plugins/googlemaps/GoogleMapFactory;->f:Landroidx/lifecycle/Lifecycle;

    iget-object v7, p0, Lio/flutter/plugins/googlemaps/GoogleMapFactory;->g:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    iget v8, p0, Lio/flutter/plugins/googlemaps/GoogleMapFactory;->e:I

    move v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v8}, Lio/flutter/plugins/googlemaps/f;->e(ILandroid/content/Context;Ljava/util/concurrent/atomic/AtomicInteger;Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Application;Landroidx/lifecycle/Lifecycle;Lio/flutter/plugin/common/PluginRegistry$Registrar;I)Lio/flutter/plugins/googlemaps/GoogleMapController;

    move-result-object p1

    return-object p1
.end method
