.class final Landroidx/camera/camera2/internal/o3;
.super Ljava/lang/Object;
.source "ZoomControl.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/o3$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Landroidx/camera/camera2/internal/p3;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mCurrentZoomState"
    .end annotation
.end field

.field private final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroidx/camera/core/ZoomState;",
            ">;"
        }
    .end annotation
.end field

.field final e:Landroidx/camera/camera2/internal/o3$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private f:Z

.field private g:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControlImpl;Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Landroidx/camera/camera2/internal/Camera2CameraControlImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/o3;->f:Z

    .line 3
    new-instance v0, Landroidx/camera/camera2/internal/o3$a;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/o3$a;-><init>(Landroidx/camera/camera2/internal/o3;)V

    iput-object v0, p0, Landroidx/camera/camera2/internal/o3;->g:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    .line 4
    iput-object p1, p0, Landroidx/camera/camera2/internal/o3;->a:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 5
    iput-object p3, p0, Landroidx/camera/camera2/internal/o3;->b:Ljava/util/concurrent/Executor;

    .line 6
    invoke-static {p2}, Landroidx/camera/camera2/internal/o3;->b(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroidx/camera/camera2/internal/o3$b;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/internal/o3;->e:Landroidx/camera/camera2/internal/o3$b;

    .line 7
    new-instance p3, Landroidx/camera/camera2/internal/p3;

    invoke-interface {p2}, Landroidx/camera/camera2/internal/o3$b;->c()F

    move-result v0

    invoke-interface {p2}, Landroidx/camera/camera2/internal/o3$b;->d()F

    move-result p2

    invoke-direct {p3, v0, p2}, Landroidx/camera/camera2/internal/p3;-><init>(FF)V

    iput-object p3, p0, Landroidx/camera/camera2/internal/o3;->c:Landroidx/camera/camera2/internal/p3;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 8
    invoke-virtual {p3, p2}, Landroidx/camera/camera2/internal/p3;->d(F)V

    .line 9
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    invoke-static {p3}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/camera/camera2/internal/o3;->d:Landroidx/lifecycle/MutableLiveData;

    .line 10
    iget-object p2, p0, Landroidx/camera/camera2/internal/o3;->g:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->a(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;)V

    return-void
.end method

.method private static b(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroidx/camera/camera2/internal/o3$b;
    .locals 1
    .param p0    # Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Landroidx/camera/camera2/internal/o3;->g(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroidx/camera/camera2/internal/l2;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/l2;-><init>(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroidx/camera/camera2/internal/c3;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/c3;-><init>(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)V

    return-object v0
.end method

.method static d(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroidx/camera/core/ZoomState;
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/camera/camera2/internal/o3;->b(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroidx/camera/camera2/internal/o3$b;

    move-result-object p0

    .line 2
    new-instance v0, Landroidx/camera/camera2/internal/p3;

    invoke-interface {p0}, Landroidx/camera/camera2/internal/o3$b;->c()F

    move-result v1

    invoke-interface {p0}, Landroidx/camera/camera2/internal/o3$b;->d()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/camera/camera2/internal/p3;-><init>(FF)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {v0, p0}, Landroidx/camera/camera2/internal/p3;->d(F)V

    .line 4
    invoke-static {v0}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroid/util/Range;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1e
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_ZOOM_RATIO_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "ZoomControl"

    const-string v1, "AssertionError, fail to get camera characteristic."

    .line 2
    invoke-static {v0, v1, p0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static g(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/camera/camera2/internal/o3;->e(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroid/util/Range;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic h(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/o3;->s(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V

    return-void
.end method

.method private synthetic j(Landroidx/camera/core/ZoomState;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o3;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/h2;

    invoke-direct {v1, p0, p2, p1}, Landroidx/camera/camera2/internal/h2;-><init>(Landroidx/camera/camera2/internal/o3;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "setLinearZoom"

    return-object p1
.end method

.method private synthetic l(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/o3;->s(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V

    return-void
.end method

.method private synthetic n(Landroidx/camera/core/ZoomState;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o3;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/e2;

    invoke-direct {v1, p0, p2, p1}, Landroidx/camera/camera2/internal/e2;-><init>(Landroidx/camera/camera2/internal/o3;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "setZoomRatio"

    return-object p1
.end method

.method private s(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V
    .locals 2
    .param p1    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/ZoomState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;",
            "Landroidx/camera/core/ZoomState;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/o3;->f:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/camera/camera2/internal/o3;->c:Landroidx/camera/camera2/internal/p3;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object p2, p0, Landroidx/camera/camera2/internal/o3;->c:Landroidx/camera/camera2/internal/p3;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1}, Landroidx/camera/camera2/internal/p3;->d(F)V

    .line 4
    iget-object p2, p0, Landroidx/camera/camera2/internal/o3;->c:Landroidx/camera/camera2/internal/p3;

    invoke-static {p2}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    move-result-object p2

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-direct {p0, p2}, Landroidx/camera/camera2/internal/o3;->t(Landroidx/camera/core/ZoomState;)V

    .line 7
    new-instance p2, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v0, "Camera is not active."

    invoke-direct {p2, v0}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 9
    :cond_0
    invoke-direct {p0, p2}, Landroidx/camera/camera2/internal/o3;->t(Landroidx/camera/core/ZoomState;)V

    .line 10
    iget-object v0, p0, Landroidx/camera/camera2/internal/o3;->e:Landroidx/camera/camera2/internal/o3$b;

    invoke-interface {p2}, Landroidx/camera/core/ZoomState;->getZoomRatio()F

    move-result p2

    invoke-interface {v0, p2, p1}, Landroidx/camera/camera2/internal/o3$b;->b(FLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 11
    iget-object p1, p0, Landroidx/camera/camera2/internal/o3;->a:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->Q()J

    return-void
.end method

.method private t(Landroidx/camera/core/ZoomState;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/camera/camera2/internal/o3;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/o3;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method a(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;)V
    .locals 1
    .param p1    # Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o3;->e:Landroidx/camera/camera2/internal/o3$b;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/internal/o3$b;->a(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;)V

    return-void
.end method

.method c()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o3;->e:Landroidx/camera/camera2/internal/o3$b;

    invoke-interface {v0}, Landroidx/camera/camera2/internal/o3$b;->e()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method f()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/camera/core/ZoomState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o3;->d:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public synthetic i(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/o3;->h(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V

    return-void
.end method

.method public synthetic k(Landroidx/camera/core/ZoomState;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/o3;->j(Landroidx/camera/core/ZoomState;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic m(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/o3;->l(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V

    return-void
.end method

.method public synthetic o(Landroidx/camera/core/ZoomState;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/o3;->n(Landroidx/camera/core/ZoomState;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method p(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/o3;->f:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/o3;->f:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Landroidx/camera/camera2/internal/o3;->c:Landroidx/camera/camera2/internal/p3;

    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/o3;->c:Landroidx/camera/camera2/internal/p3;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/p3;->d(F)V

    .line 5
    iget-object v0, p0, Landroidx/camera/camera2/internal/o3;->c:Landroidx/camera/camera2/internal/p3;

    invoke-static {v0}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    move-result-object v0

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/o3;->t(Landroidx/camera/core/ZoomState;)V

    .line 8
    iget-object p1, p0, Landroidx/camera/camera2/internal/o3;->e:Landroidx/camera/camera2/internal/o3$b;

    invoke-interface {p1}, Landroidx/camera/camera2/internal/o3$b;->f()V

    .line 9
    iget-object p1, p0, Landroidx/camera/camera2/internal/o3;->a:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->Q()J

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method q(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o3;->c:Landroidx/camera/camera2/internal/p3;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/internal/o3;->c:Landroidx/camera/camera2/internal/p3;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/p3;->c(F)V

    .line 3
    iget-object p1, p0, Landroidx/camera/camera2/internal/o3;->c:Landroidx/camera/camera2/internal/p3;

    invoke-static {p1}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/o3;->t(Landroidx/camera/core/ZoomState;)V

    .line 6
    new-instance v0, Landroidx/camera/camera2/internal/g2;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/internal/g2;-><init>(Landroidx/camera/camera2/internal/o3;Landroidx/camera/core/ZoomState;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    :try_start_2
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 8
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method r(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o3;->c:Landroidx/camera/camera2/internal/p3;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/internal/o3;->c:Landroidx/camera/camera2/internal/p3;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/p3;->d(F)V

    .line 3
    iget-object p1, p0, Landroidx/camera/camera2/internal/o3;->c:Landroidx/camera/camera2/internal/p3;

    invoke-static {p1}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/o3;->t(Landroidx/camera/core/ZoomState;)V

    .line 6
    new-instance v0, Landroidx/camera/camera2/internal/f2;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/internal/f2;-><init>(Landroidx/camera/camera2/internal/o3;Landroidx/camera/core/ZoomState;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    :try_start_2
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 8
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
