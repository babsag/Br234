.class final Lio/flutter/plugins/googlemaps/GoogleMapController;
.super Ljava/lang/Object;
.source "GoogleMapController.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding$OnSaveInstanceStateListener;
.implements Lio/flutter/plugins/googlemaps/h;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;
.implements Lio/flutter/plugins/googlemaps/g;
.implements Lio/flutter/plugin/platform/PlatformView;


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final a:I

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Lio/flutter/plugin/common/MethodChannel;

.field private final d:Lcom/google/android/gms/maps/MapView;

.field private e:Lcom/google/android/gms/maps/GoogleMap;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private final n:F

.field private o:Lio/flutter/plugin/common/MethodChannel$Result;

.field private final p:I

.field private final q:Landroidx/lifecycle/Lifecycle;

.field private final r:Landroid/content/Context;

.field private final s:Landroid/app/Application;

.field private final t:Lio/flutter/plugin/common/PluginRegistry$Registrar;

.field private final u:Lio/flutter/plugins/googlemaps/l;

.field private final v:Lio/flutter/plugins/googlemaps/p;

.field private final w:Lio/flutter/plugins/googlemaps/u;

.field private final x:Lio/flutter/plugins/googlemaps/d;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/util/concurrent/atomic/AtomicInteger;Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Application;Landroidx/lifecycle/Lifecycle;Lio/flutter/plugin/common/PluginRegistry$Registrar;ILcom/google/android/gms/maps/GoogleMapOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "activityState",
            "binaryMessenger",
            "application",
            "lifecycle",
            "registrar",
            "registrarActivityHashCode",
            "options"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->f:Z

    .line 3
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->g:Z

    .line 4
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->h:Z

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->i:Z

    .line 6
    iput-boolean v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->j:Z

    .line 7
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->k:Z

    .line 8
    iput-boolean v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->l:Z

    .line 9
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->m:Z

    .line 10
    iput p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->a:I

    .line 11
    iput-object p2, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->r:Landroid/content/Context;

    .line 12
    iput-object p3, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    new-instance p3, Lcom/google/android/gms/maps/MapView;

    invoke-direct {p3, p2, p9}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    iput-object p3, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    .line 14
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->n:F

    .line 15
    new-instance p3, Lio/flutter/plugin/common/MethodChannel;

    new-instance p9, Ljava/lang/StringBuilder;

    invoke-direct {p9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "plugins.flutter.io/google_maps_"

    invoke-virtual {p9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p4, p1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object p3, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->c:Lio/flutter/plugin/common/MethodChannel;

    .line 16
    invoke-virtual {p3, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 17
    iput-object p5, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->s:Landroid/app/Application;

    .line 18
    iput-object p6, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->q:Landroidx/lifecycle/Lifecycle;

    .line 19
    iput-object p7, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->t:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    .line 20
    iput p8, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->p:I

    .line 21
    new-instance p1, Lio/flutter/plugins/googlemaps/l;

    invoke-direct {p1, p3}, Lio/flutter/plugins/googlemaps/l;-><init>(Lio/flutter/plugin/common/MethodChannel;)V

    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->u:Lio/flutter/plugins/googlemaps/l;

    .line 22
    new-instance p1, Lio/flutter/plugins/googlemaps/p;

    invoke-direct {p1, p3, p2}, Lio/flutter/plugins/googlemaps/p;-><init>(Lio/flutter/plugin/common/MethodChannel;F)V

    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->v:Lio/flutter/plugins/googlemaps/p;

    .line 23
    new-instance p1, Lio/flutter/plugins/googlemaps/u;

    invoke-direct {p1, p3, p2}, Lio/flutter/plugins/googlemaps/u;-><init>(Lio/flutter/plugin/common/MethodChannel;F)V

    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->w:Lio/flutter/plugins/googlemaps/u;

    .line 24
    new-instance p1, Lio/flutter/plugins/googlemaps/d;

    invoke-direct {p1, p3, p2}, Lio/flutter/plugins/googlemaps/d;-><init>(Lio/flutter/plugin/common/MethodChannel;F)V

    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->x:Lio/flutter/plugins/googlemaps/d;

    return-void
.end method

.method private e(Lcom/google/android/gms/maps/CameraUpdate;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraUpdate"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void
.end method

.method private f(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permission"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->r:Landroid/content/Context;

    .line 2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 3
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "permission is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->t:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->t:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    invoke-interface {v0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->p:I

    return v0
.end method

.method private h()Landroid/app/Application;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->t:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->t:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    invoke-interface {v0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->s:Landroid/app/Application;

    return-object v0
.end method

.method private i()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private j()Z
    .locals 1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1
    invoke-direct {p0, v0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->f(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 2
    invoke-direct {p0, v0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->f(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private l(Lcom/google/android/gms/maps/CameraUpdate;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraUpdate"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void
.end method

.method private m(Lio/flutter/plugins/googlemaps/g;)V
    .locals 1
    .param p1    # Lio/flutter/plugins/googlemaps/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraMoveStartedListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveStartedListener;)V

    .line 2
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraMoveListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveListener;)V

    .line 3
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraIdleListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;)V

    .line 4
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 5
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    .line 6
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnPolygonClickListener(Lcom/google/android/gms/maps/GoogleMap$OnPolygonClickListener;)V

    .line 7
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnPolylineClickListener(Lcom/google/android/gms/maps/GoogleMap$OnPolylineClickListener;)V

    .line 8
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCircleClickListener(Lcom/google/android/gms/maps/GoogleMap$OnCircleClickListener;)V

    .line 9
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 10
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V

    return-void
.end method

.method private r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->x:Lio/flutter/plugins/googlemaps/d;

    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->B:Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemaps/d;->c(Ljava/util/List;)V

    return-void
.end method

.method private s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->u:Lio/flutter/plugins/googlemaps/l;

    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->y:Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemaps/l;->c(Ljava/util/List;)V

    return-void
.end method

.method private t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->v:Lio/flutter/plugins/googlemaps/p;

    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->z:Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemaps/p;->c(Ljava/util/List;)V

    return-void
.end method

.method private u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->w:Lio/flutter/plugins/googlemaps/u;

    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->A:Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemaps/u;->c(Ljava/util/List;)V

    return-void
.end method

.method private v()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    iget-boolean v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->g:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 3
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    iget-boolean v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->h:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "GoogleMapController"

    const-string v1, "Cannot enable MyLocation layer as location permissions are not granted"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
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
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->f:Z

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

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->resetMinMaxZoomPreference()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setMinZoomPreference(F)V

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->setMaxZoomPreference(F)V

    :cond_1
    return-void
.end method

.method public c(FFFF)V
    .locals 2
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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->n:F

    mul-float p2, p2, v1

    float-to-int p2, p2

    mul-float p1, p1, v1

    float-to-int p1, p1

    mul-float p4, p4, v1

    float-to-int p4, p4

    mul-float p3, p3, v1

    float-to-int p3, p3

    invoke-virtual {v0, p2, p1, p4, p3}, Lcom/google/android/gms/maps/GoogleMap;->setPadding(IIII)V

    :cond_0
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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setLatLngBoundsForCameraTarget(Lcom/google/android/gms/maps/model/LatLngBounds;)V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->m:Z

    .line 3
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->c:Lio/flutter/plugin/common/MethodChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 4
    invoke-direct {p0, v1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->m(Lio/flutter/plugins/googlemaps/g;)V

    .line 5
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->h()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    return-object v0
.end method

.method k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " as an activity state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :pswitch_0
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 5
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onStart()V

    .line 6
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    .line 7
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onPause()V

    .line 8
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onStop()V

    goto :goto_0

    .line 9
    :pswitch_1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 10
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onStart()V

    .line 11
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    .line 12
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onPause()V

    goto :goto_0

    .line 13
    :pswitch_2
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 14
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onStart()V

    .line 15
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    goto :goto_0

    .line 16
    :pswitch_3
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 17
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onStart()V

    goto :goto_0

    .line 18
    :pswitch_4
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 19
    :goto_0
    :pswitch_5
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->q:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_1

    .line 21
    :cond_0
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->h()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 22
    :goto_1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/MapView;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public n(Ljava/lang/Object;)V
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
    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->B:Ljava/util/List;

    .line 2
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->r()V

    :cond_0
    return-void
.end method

.method public o(Ljava/lang/Object;)V
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
    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->y:Ljava/util/List;

    .line 2
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->s()V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "savedInstanceState"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->g()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->g()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/MapView;->onDestroy()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->g()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/MapView;->onPause()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->g()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/MapView;->onResume()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "outState"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->g()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->g()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/MapView;->onStart()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->g()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/MapView;->onStop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCameraIdle()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->c:Lio/flutter/plugin/common/MethodChannel;

    iget v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "map"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "camera#onIdle"

    invoke-virtual {v0, v2, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCameraMove()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/e;->a(Lcom/google/android/gms/maps/model/CameraPosition;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "position"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->c:Lio/flutter/plugin/common/MethodChannel;

    const-string v2, "camera#onMove"

    invoke-virtual {v1, v2, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCameraMoveStarted(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "isGesture"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->c:Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "camera#onMoveStarted"

    invoke-virtual {p1, v1, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCircleClick(Lcom/google/android/gms/maps/model/Circle;)V
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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->x:Lio/flutter/plugins/googlemaps/d;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Circle;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/flutter/plugins/googlemaps/d;->g(Ljava/lang/String;)Z

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "owner"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->m:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "owner"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->m:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/MapView;->onDestroy()V

    return-void
.end method

.method public synthetic onFlutterViewAttached(Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lio/flutter/plugin/platform/d;->a(Lio/flutter/plugin/platform/PlatformView;Landroid/view/View;)V

    return-void
.end method

.method public synthetic onFlutterViewDetached()V
    .locals 0

    invoke-static {p0}, Lio/flutter/plugin/platform/d;->b(Lio/flutter/plugin/platform/PlatformView;)V

    return-void
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->u:Lio/flutter/plugins/googlemaps/l;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/flutter/plugins/googlemaps/l;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onInputConnectionLocked()V
    .locals 0

    return-void
.end method

.method public onInputConnectionUnlocked()V
    .locals 0

    return-void
.end method

.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "latLng"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    invoke-static {p1}, Lio/flutter/plugins/googlemaps/e;->j(Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "position"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->c:Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "map#onTap"

    invoke-virtual {p1, v1, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "latLng"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    invoke-static {p1}, Lio/flutter/plugins/googlemaps/e;->j(Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "position"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->c:Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "map#onLongPress"

    invoke-virtual {p1, v1, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "googleMap"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    .line 2
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->j:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setIndoorEnabled(Z)Z

    .line 3
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    iget-boolean v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->k:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setTrafficEnabled(Z)V

    .line 4
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    iget-boolean v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->l:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setBuildingsEnabled(Z)V

    .line 5
    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 6
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->o:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 7
    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 8
    iput-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->o:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 9
    :cond_0
    invoke-direct {p0, p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->m(Lio/flutter/plugins/googlemaps/g;)V

    .line 10
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->v()V

    .line 11
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->u:Lio/flutter/plugins/googlemaps/l;

    invoke-virtual {v0, p1}, Lio/flutter/plugins/googlemaps/l;->m(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 12
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->v:Lio/flutter/plugins/googlemaps/p;

    invoke-virtual {v0, p1}, Lio/flutter/plugins/googlemaps/p;->i(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 13
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->w:Lio/flutter/plugins/googlemaps/u;

    invoke-virtual {v0, p1}, Lio/flutter/plugins/googlemaps/u;->i(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 14
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->x:Lio/flutter/plugins/googlemaps/d;

    invoke-virtual {v0, p1}, Lio/flutter/plugins/googlemaps/d;->i(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 15
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->s()V

    .line 16
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->t()V

    .line 17
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->u()V

    .line 18
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->r()V

    return-void
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->u:Lio/flutter/plugins/googlemaps/l;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/flutter/plugins/googlemaps/l;->k(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "marker"
        }
    .end annotation

    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "marker"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->u:Lio/flutter/plugins/googlemaps/l;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/flutter/plugins/googlemaps/l;->j(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "marker"
        }
    .end annotation

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "result"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "camera#move"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "markers#showInfoWindow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "circles#update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "map#isTrafficEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "markers#update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "map#isZoomControlsEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "map#isCompassEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "map#isBuildingsEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "map#setStyle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "polylines#update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "map#getLatLng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "map#takeSnapshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "map#isMapToolbarEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "map#waitForMap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "map#isZoomGesturesEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "map#getMinMaxZoomLevels"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "map#getZoomLevel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "markers#hideInfoWindow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "map#isMyLocationButtonEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "map#isTiltGesturesEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "polygons#update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_15
    const-string v1, "markers#isInfoWindowShown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_16
    const-string v1, "camera#animate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_17
    const-string v1, "map#getScreenCoordinate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_18
    const-string v1, "map#update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_19
    const-string v1, "map#isRotateGesturesEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1a
    const-string v1, "map#isScrollGesturesEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_1b
    const-string v1, "map#getVisibleRegion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v3, 0x0

    :goto_0
    const-string v0, "cameraUpdate"

    const-string v1, "markerId"

    const-string v4, "GoogleMap uninitialized"

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    .line 2
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto/16 :goto_2

    .line 3
    :pswitch_0
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->n:F

    invoke-static {p1, v0}, Lio/flutter/plugins/googlemaps/e;->t(Ljava/lang/Object;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->l(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 5
    invoke-interface {p2, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 6
    :pswitch_1
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->u:Lio/flutter/plugins/googlemaps/l;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugins/googlemaps/l;->n(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_2

    :pswitch_2
    const-string v0, "circlesToAdd"

    .line 8
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->x:Lio/flutter/plugins/googlemaps/d;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lio/flutter/plugins/googlemaps/d;->c(Ljava/util/List;)V

    const-string v0, "circlesToChange"

    .line 10
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->x:Lio/flutter/plugins/googlemaps/d;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lio/flutter/plugins/googlemaps/d;->e(Ljava/util/List;)V

    const-string v0, "circleIdsToRemove"

    .line 12
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->x:Lio/flutter/plugins/googlemaps/d;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lio/flutter/plugins/googlemaps/d;->h(Ljava/util/List;)V

    .line 14
    invoke-interface {p2, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 15
    :pswitch_3
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->isTrafficEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_4
    const-string v0, "markersToAdd"

    .line 16
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->u:Lio/flutter/plugins/googlemaps/l;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lio/flutter/plugins/googlemaps/l;->c(Ljava/util/List;)V

    const-string v0, "markersToChange"

    .line 18
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->u:Lio/flutter/plugins/googlemaps/l;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lio/flutter/plugins/googlemaps/l;->e(Ljava/util/List;)V

    const-string v0, "markerIdsToRemove"

    .line 20
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 21
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->u:Lio/flutter/plugins/googlemaps/l;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lio/flutter/plugins/googlemaps/l;->l(Ljava/util/List;)V

    .line 22
    invoke-interface {p2, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 23
    :pswitch_5
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/UiSettings;->isZoomControlsEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 24
    :pswitch_6
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/UiSettings;->isCompassEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 25
    :pswitch_7
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->isBuildingsEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 26
    :pswitch_8
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1c

    .line 27
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, v5}, Lcom/google/android/gms/maps/GoogleMap;->setMapStyle(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z

    move-result p1

    goto :goto_1

    .line 28
    :cond_1c
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MapStyleOptions;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/MapStyleOptions;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapStyle(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z

    move-result p1

    .line 29
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_1d

    const-string p1, "Unable to set the map style. Please check console logs for errors."

    .line 31
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_1d
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_9
    const-string v0, "polylinesToAdd"

    .line 33
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->w:Lio/flutter/plugins/googlemaps/u;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lio/flutter/plugins/googlemaps/u;->c(Ljava/util/List;)V

    const-string v0, "polylinesToChange"

    .line 35
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->w:Lio/flutter/plugins/googlemaps/u;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lio/flutter/plugins/googlemaps/u;->e(Ljava/util/List;)V

    const-string v0, "polylineIdsToRemove"

    .line 37
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->w:Lio/flutter/plugins/googlemaps/u;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lio/flutter/plugins/googlemaps/u;->h(Ljava/util/List;)V

    .line 39
    invoke-interface {p2, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 40
    :pswitch_a
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_1e

    .line 41
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-static {p1}, Lio/flutter/plugins/googlemaps/e;->G(Ljava/lang/Object;)Landroid/graphics/Point;

    move-result-object p1

    .line 42
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    .line 43
    invoke-static {p1}, Lio/flutter/plugins/googlemaps/e;->j(Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1e
    const-string p1, "getLatLng called prior to map initialization"

    .line 44
    invoke-interface {p2, v4, p1, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 45
    :pswitch_b
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_1f

    .line 46
    new-instance v0, Lio/flutter/plugins/googlemaps/GoogleMapController$a;

    invoke-direct {v0, p0, p2}, Lio/flutter/plugins/googlemaps/GoogleMapController$a;-><init>(Lio/flutter/plugins/googlemaps/GoogleMapController;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->snapshot(Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V

    goto/16 :goto_2

    :cond_1f
    const-string p1, "takeSnapshot"

    .line 47
    invoke-interface {p2, v4, p1, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 48
    :pswitch_c
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/UiSettings;->isMapToolbarEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 49
    :pswitch_d
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_20

    .line 50
    invoke-interface {p2, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 51
    :cond_20
    iput-object p2, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->o:Lio/flutter/plugin/common/MethodChannel$Result;

    goto/16 :goto_2

    .line 52
    :pswitch_e
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/UiSettings;->isZoomGesturesEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 53
    :pswitch_f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getMinZoomLevel()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getMaxZoomLevel()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 57
    :pswitch_10
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 58
    :pswitch_11
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->u:Lio/flutter/plugins/googlemaps/l;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugins/googlemaps/l;->g(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_2

    .line 60
    :pswitch_12
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/UiSettings;->isMyLocationButtonEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 61
    :pswitch_13
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/UiSettings;->isTiltGesturesEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_14
    const-string v0, "polygonsToAdd"

    .line 62
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->v:Lio/flutter/plugins/googlemaps/p;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lio/flutter/plugins/googlemaps/p;->c(Ljava/util/List;)V

    const-string v0, "polygonsToChange"

    .line 64
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->v:Lio/flutter/plugins/googlemaps/p;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lio/flutter/plugins/googlemaps/p;->e(Ljava/util/List;)V

    const-string v0, "polygonIdsToRemove"

    .line 66
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->v:Lio/flutter/plugins/googlemaps/p;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lio/flutter/plugins/googlemaps/p;->h(Ljava/util/List;)V

    .line 68
    invoke-interface {p2, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 69
    :pswitch_15
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->u:Lio/flutter/plugins/googlemaps/l;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugins/googlemaps/l;->h(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_2

    .line 71
    :pswitch_16
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->n:F

    invoke-static {p1, v0}, Lio/flutter/plugins/googlemaps/e;->t(Ljava/lang/Object;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->e(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 73
    invoke-interface {p2, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 74
    :pswitch_17
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_21

    .line 75
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-static {p1}, Lio/flutter/plugins/googlemaps/e;->A(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object p1

    .line 77
    invoke-static {p1}, Lio/flutter/plugins/googlemaps/e;->m(Landroid/graphics/Point;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    :cond_21
    const-string p1, "getScreenCoordinate called prior to map initialization"

    .line 78
    invoke-interface {p2, v4, p1, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_18
    const-string v0, "options"

    .line 79
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p0}, Lio/flutter/plugins/googlemaps/e;->e(Ljava/lang/Object;Lio/flutter/plugins/googlemaps/h;)V

    .line 80
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->i()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p1

    invoke-static {p1}, Lio/flutter/plugins/googlemaps/e;->a(Lcom/google/android/gms/maps/model/CameraPosition;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 81
    :pswitch_19
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/UiSettings;->isRotateGesturesEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 82
    :pswitch_1a
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/UiSettings;->isScrollGesturesEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 83
    :pswitch_1b
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_22

    .line 84
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 85
    invoke-static {p1}, Lio/flutter/plugins/googlemaps/e;->k(Lcom/google/android/gms/maps/model/LatLngBounds;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    :cond_22
    const-string p1, "getVisibleRegion called prior to map initialization"

    .line 86
    invoke-interface {p2, v4, p1, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7b4b4569 -> :sswitch_1b
        -0x68801827 -> :sswitch_1a
        -0x63d6bc75 -> :sswitch_19
        -0x52ced230 -> :sswitch_18
        -0x51736f2d -> :sswitch_17
        -0x4b5fdc7d -> :sswitch_16
        -0x4ace63a1 -> :sswitch_15
        -0x41b409ed -> :sswitch_14
        -0x238d7a57 -> :sswitch_13
        -0x22657943 -> :sswitch_12
        -0x1e4cec96 -> :sswitch_11
        -0x1aefc77e -> :sswitch_10
        0xf9f8443 -> :sswitch_f
        0x10dca5d3 -> :sswitch_e
        0x11956b2f -> :sswitch_d
        0x174d4211 -> :sswitch_c
        0x19decb32 -> :sswitch_b
        0x25216d95 -> :sswitch_a
        0x26623c99 -> :sswitch_9
        0x2a7eadb6 -> :sswitch_8
        0x39fcc9d3 -> :sswitch_7
        0x41768de0 -> :sswitch_6
        0x45de59e7 -> :sswitch_5
        0x4edb3513 -> :sswitch_4
        0x5c275a95 -> :sswitch_3
        0x6fac67a9 -> :sswitch_2
        0x746e6365 -> :sswitch_1
        0x776bde6f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "owner"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->m:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/MapView;->onResume()V

    return-void
.end method

.method public onPolygonClick(Lcom/google/android/gms/maps/model/Polygon;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "polygon"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->v:Lio/flutter/plugins/googlemaps/p;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polygon;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/flutter/plugins/googlemaps/p;->g(Ljava/lang/String;)Z

    return-void
.end method

.method public onPolylineClick(Lcom/google/android/gms/maps/model/Polyline;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "polyline"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->w:Lio/flutter/plugins/googlemaps/u;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polyline;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/flutter/plugins/googlemaps/u;->g(Ljava/lang/String;)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "owner"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->m:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/MapView;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "owner"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->m:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/MapView;->onStart()V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "owner"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->m:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/MapView;->onStop()V

    return-void
.end method

.method public p(Ljava/lang/Object;)V
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
    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->z:Ljava/util/List;

    .line 2
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->t()V

    :cond_0
    return-void
.end method

.method public q(Ljava/lang/Object;)V
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
    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->A:Ljava/util/List;

    .line 2
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->u()V

    :cond_0
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
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->l:Z

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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

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
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->j:Z

    return-void
.end method

.method public setMapToolbarEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapToolbarEnabled"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setMapToolbarEnabled(Z)V

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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    return-void
.end method

.method public setMyLocationButtonEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "myLocationButtonEnabled"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->h:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->h:Z

    .line 3
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->v()V

    :cond_1
    return-void
.end method

.method public setMyLocationEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "myLocationEnabled"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->g:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->g:Z

    .line 3
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->v()V

    :cond_1
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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setScrollGesturesEnabled(Z)V

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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    return-void
.end method

.method public setTrafficEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trafficEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->k:Z

    .line 2
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setTrafficEnabled(Z)V

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
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->i:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->i:Z

    .line 3
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    :cond_1
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
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    return-void
.end method
