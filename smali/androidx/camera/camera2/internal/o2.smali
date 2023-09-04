.class final Landroidx/camera/camera2/internal/o2;
.super Ljava/lang/Object;
.source "Camera2CameraImpl.java"

# interfaces
.implements Landroidx/camera/core/impl/CameraInternal;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/o2$e;,
        Landroidx/camera/camera2/internal/o2$d;,
        Landroidx/camera/camera2/internal/o2$g;,
        Landroidx/camera/camera2/internal/o2$h;,
        Landroidx/camera/camera2/internal/o2$f;
    }
.end annotation


# instance fields
.field private A:Landroidx/camera/core/impl/SessionProcessor;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field B:Z

.field private final C:Landroidx/camera/camera2/internal/DisplayInfoManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final a:Landroidx/camera/core/impl/UseCaseAttachState;

.field private final b:Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Ljava/util/concurrent/ScheduledExecutorService;

.field volatile e:Landroidx/camera/camera2/internal/o2$f;

.field private final f:Landroidx/camera/core/impl/LiveDataObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/LiveDataObservable<",
            "Landroidx/camera/core/impl/CameraInternal$State;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroidx/camera/camera2/internal/v2;

.field private final h:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

.field private final i:Landroidx/camera/camera2/internal/o2$g;

.field final j:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field k:Landroid/hardware/camera2/CameraDevice;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field l:I

.field m:Landroidx/camera/camera2/internal/a3;

.field final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field o:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field p:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/internal/a3;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final r:Landroidx/camera/camera2/internal/o2$d;

.field private final s:Landroidx/camera/core/impl/CameraStateRegistry;

.field final t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/internal/z2;",
            ">;"
        }
    .end annotation
.end field

.field private u:Landroidx/camera/camera2/internal/g3;

.field private final v:Landroidx/camera/camera2/internal/b3;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final w:Landroidx/camera/camera2/internal/l3$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroidx/camera/core/impl/CameraConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final z:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/compat/CameraManagerCompat;Ljava/lang/String;Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;Landroidx/camera/core/impl/CameraStateRegistry;Ljava/util/concurrent/Executor;Landroid/os/Handler;Landroidx/camera/camera2/internal/DisplayInfoManager;)V
    .locals 16
    .param p1    # Landroidx/camera/camera2/internal/compat/CameraManagerCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/core/impl/CameraStateRegistry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroidx/camera/camera2/internal/DisplayInfoManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/CameraUnavailableException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v5, Landroidx/camera/camera2/internal/o2$f;->INITIALIZED:Landroidx/camera/camera2/internal/o2$f;

    iput-object v5, v1, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    .line 3
    new-instance v5, Landroidx/camera/core/impl/LiveDataObservable;

    invoke-direct {v5}, Landroidx/camera/core/impl/LiveDataObservable;-><init>()V

    iput-object v5, v1, Landroidx/camera/camera2/internal/o2;->f:Landroidx/camera/core/impl/LiveDataObservable;

    const/4 v6, 0x0

    .line 4
    iput v6, v1, Landroidx/camera/camera2/internal/o2;->l:I

    .line 5
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v7, v1, Landroidx/camera/camera2/internal/o2;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v1, Landroidx/camera/camera2/internal/o2;->q:Ljava/util/Map;

    .line 7
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v1, Landroidx/camera/camera2/internal/o2;->t:Ljava/util/Set;

    .line 8
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v1, Landroidx/camera/camera2/internal/o2;->x:Ljava/util/Set;

    .line 9
    invoke-static {}, Landroidx/camera/core/impl/CameraConfigs;->emptyConfig()Landroidx/camera/core/impl/CameraConfig;

    move-result-object v7

    iput-object v7, v1, Landroidx/camera/camera2/internal/o2;->y:Landroidx/camera/core/impl/CameraConfig;

    .line 10
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, v1, Landroidx/camera/camera2/internal/o2;->z:Ljava/lang/Object;

    .line 11
    iput-boolean v6, v1, Landroidx/camera/camera2/internal/o2;->B:Z

    .line 12
    iput-object v0, v1, Landroidx/camera/camera2/internal/o2;->b:Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    .line 13
    iput-object v4, v1, Landroidx/camera/camera2/internal/o2;->s:Landroidx/camera/core/impl/CameraStateRegistry;

    .line 14
    invoke-static/range {p6 .. p6}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->newHandlerExecutor(Landroid/os/Handler;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    iput-object v6, v1, Landroidx/camera/camera2/internal/o2;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 15
    invoke-static/range {p5 .. p5}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->newSequentialExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v7

    iput-object v7, v1, Landroidx/camera/camera2/internal/o2;->c:Ljava/util/concurrent/Executor;

    .line 16
    new-instance v8, Landroidx/camera/camera2/internal/o2$g;

    invoke-direct {v8, v1, v7, v6}, Landroidx/camera/camera2/internal/o2$g;-><init>(Landroidx/camera/camera2/internal/o2;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v8, v1, Landroidx/camera/camera2/internal/o2;->i:Landroidx/camera/camera2/internal/o2$g;

    .line 17
    new-instance v8, Landroidx/camera/core/impl/UseCaseAttachState;

    invoke-direct {v8, v2}, Landroidx/camera/core/impl/UseCaseAttachState;-><init>(Ljava/lang/String;)V

    iput-object v8, v1, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    .line 18
    sget-object v8, Landroidx/camera/core/impl/CameraInternal$State;->CLOSED:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-virtual {v5, v8}, Landroidx/camera/core/impl/LiveDataObservable;->postValue(Ljava/lang/Object;)V

    .line 19
    new-instance v5, Landroidx/camera/camera2/internal/v2;

    invoke-direct {v5, v4}, Landroidx/camera/camera2/internal/v2;-><init>(Landroidx/camera/core/impl/CameraStateRegistry;)V

    iput-object v5, v1, Landroidx/camera/camera2/internal/o2;->g:Landroidx/camera/camera2/internal/v2;

    .line 20
    new-instance v14, Landroidx/camera/camera2/internal/b3;

    invoke-direct {v14, v7}, Landroidx/camera/camera2/internal/b3;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v14, v1, Landroidx/camera/camera2/internal/o2;->v:Landroidx/camera/camera2/internal/b3;

    move-object/from16 v8, p7

    .line 21
    iput-object v8, v1, Landroidx/camera/camera2/internal/o2;->C:Landroidx/camera/camera2/internal/DisplayInfoManager;

    .line 22
    invoke-direct/range {p0 .. p0}, Landroidx/camera/camera2/internal/o2;->Q()Landroidx/camera/camera2/internal/a3;

    move-result-object v8

    iput-object v8, v1, Landroidx/camera/camera2/internal/o2;->m:Landroidx/camera/camera2/internal/a3;

    .line 23
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->getCameraCharacteristicsCompat(Ljava/lang/String;)Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    move-result-object v9

    .line 24
    new-instance v15, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    new-instance v12, Landroidx/camera/camera2/internal/o2$e;

    invoke-direct {v12, v1}, Landroidx/camera/camera2/internal/o2$e;-><init>(Landroidx/camera/camera2/internal/o2;)V

    .line 25
    invoke-virtual/range {p3 .. p3}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->getCameraQuirks()Landroidx/camera/core/impl/Quirks;

    move-result-object v13

    move-object v8, v15

    move-object v10, v6

    move-object v11, v7

    invoke-direct/range {v8 .. v13}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;-><init>(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/CameraControlInternal$ControlUpdateCallback;Landroidx/camera/core/impl/Quirks;)V

    iput-object v15, v1, Landroidx/camera/camera2/internal/o2;->h:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 26
    iput-object v3, v1, Landroidx/camera/camera2/internal/o2;->j:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

    .line 27
    invoke-virtual {v3, v15}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->c(Landroidx/camera/camera2/internal/Camera2CameraControlImpl;)V

    .line 28
    invoke-virtual {v5}, Landroidx/camera/camera2/internal/v2;->a()Landroidx/lifecycle/LiveData;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->f(Landroidx/lifecycle/LiveData;)V
    :try_end_0
    .catch Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    new-instance v5, Landroidx/camera/camera2/internal/l3$a;

    .line 30
    invoke-virtual/range {p3 .. p3}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->getCameraQuirks()Landroidx/camera/core/impl/Quirks;

    move-result-object v13

    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/DeviceQuirks;->getAll()Landroidx/camera/core/impl/Quirks;

    move-result-object v3

    move-object v8, v5

    move-object v9, v7

    move-object v10, v6

    move-object/from16 v11, p6

    move-object v12, v14

    move-object v14, v3

    invoke-direct/range {v8 .. v14}, Landroidx/camera/camera2/internal/l3$a;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;Landroidx/camera/camera2/internal/b3;Landroidx/camera/core/impl/Quirks;Landroidx/camera/core/impl/Quirks;)V

    iput-object v5, v1, Landroidx/camera/camera2/internal/o2;->w:Landroidx/camera/camera2/internal/l3$a;

    .line 31
    new-instance v3, Landroidx/camera/camera2/internal/o2$d;

    invoke-direct {v3, v1, v2}, Landroidx/camera/camera2/internal/o2$d;-><init>(Landroidx/camera/camera2/internal/o2;Ljava/lang/String;)V

    iput-object v3, v1, Landroidx/camera/camera2/internal/o2;->r:Landroidx/camera/camera2/internal/o2$d;

    .line 32
    invoke-virtual {v4, v1, v7, v3}, Landroidx/camera/core/impl/CameraStateRegistry;->registerCamera(Landroidx/camera/core/Camera;Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;)V

    .line 33
    invoke-virtual {v0, v7, v3}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-void

    :catch_0
    move-exception v0

    .line 34
    invoke-static {v0}, Landroidx/camera/camera2/internal/CameraUnavailableExceptionHelper;->createFrom(Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;)Landroidx/camera/core/CameraUnavailableException;

    move-result-object v0

    throw v0
.end method

.method private synthetic B(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use case "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ACTIVE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/o2;->h(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/camera/core/impl/UseCaseAttachState;->setUseCaseActive(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;)V

    .line 3
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/camera/core/impl/UseCaseAttachState;->updateUseCase(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;)V

    .line 4
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/o2;->l0()V

    return-void
.end method

.method private synthetic D(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use case "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INACTIVE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/o2;->h(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/UseCaseAttachState;->setUseCaseInactive(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/o2;->l0()V

    return-void
.end method

.method private synthetic F(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use case "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " RESET"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/o2;->h(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/camera/core/impl/UseCaseAttachState;->updateUseCase(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/o2;->b0(Z)V

    .line 4
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/o2;->l0()V

    .line 5
    iget-object p1, p0, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    sget-object p2, Landroidx/camera/camera2/internal/o2$f;->OPENED:Landroidx/camera/camera2/internal/o2$f;

    if-ne p1, p2, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/o2;->U()V

    :cond_0
    return-void
.end method

.method private synthetic H(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use case "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/o2;->h(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/camera/core/impl/UseCaseAttachState;->updateUseCase(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;)V

    .line 3
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/o2;->l0()V

    return-void
.end method

.method static synthetic J(Landroidx/camera/core/impl/SessionConfig$ErrorListener;Landroidx/camera/core/impl/SessionConfig;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/camera/core/impl/SessionConfig$SessionError;->SESSION_ERROR_SURFACE_NEEDS_RESET:Landroidx/camera/core/impl/SessionConfig$SessionError;

    invoke-interface {p0, p1, v0}, Landroidx/camera/core/impl/SessionConfig$ErrorListener;->onError(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    return-void
.end method

.method private synthetic K(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/camera/camera2/internal/o2;->X()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->propagate(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method private synthetic M(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/p;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/p;-><init>(Landroidx/camera/camera2/internal/o2;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Release[request="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic O(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/o2;->B:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    sget-object v0, Landroidx/camera/camera2/internal/o2$f;->PENDING_OPEN:Landroidx/camera/camera2/internal/o2$f;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/o2;->j0(Z)V

    :cond_0
    return-void
.end method

.method private Q()Landroidx/camera/camera2/internal/a3;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->z:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/internal/o2;->A:Landroidx/camera/core/impl/SessionProcessor;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroidx/camera/camera2/internal/z2;

    invoke-direct {v1}, Landroidx/camera/camera2/internal/z2;-><init>()V

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    new-instance v1, Landroidx/camera/camera2/internal/h3;

    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->A:Landroidx/camera/core/impl/SessionProcessor;

    iget-object v3, p0, Landroidx/camera/camera2/internal/o2;->j:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

    iget-object v4, p0, Landroidx/camera/camera2/internal/o2;->c:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroidx/camera/camera2/internal/o2;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/camera/camera2/internal/h3;-><init>(Landroidx/camera/core/impl/SessionProcessor;Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private R(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/UseCase;

    .line 2
    invoke-static {v0}, Landroidx/camera/camera2/internal/o2;->n(Landroidx/camera/core/UseCase;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->x:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->x:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->onStateAttached()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private S(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/UseCase;

    .line 2
    invoke-static {v0}, Landroidx/camera/camera2/internal/o2;->n(Landroidx/camera/core/UseCase;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->x:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->onStateDetached()V

    .line 5
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->x:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private T(Z)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "Unable to open camera due to "

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Landroidx/camera/camera2/internal/o2;->i:Landroidx/camera/camera2/internal/o2$g;

    invoke-virtual {p1}, Landroidx/camera/camera2/internal/o2$g;->d()V

    .line 2
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/internal/o2;->i:Landroidx/camera/camera2/internal/o2$g;

    invoke-virtual {p1}, Landroidx/camera/camera2/internal/o2$g;->a()Z

    const-string p1, "Opening camera."

    .line 3
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/o2;->h(Ljava/lang/String;)V

    .line 4
    sget-object p1, Landroidx/camera/camera2/internal/o2$f;->OPENING:Landroidx/camera/camera2/internal/o2$f;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/o2;->c0(Landroidx/camera/camera2/internal/o2$f;)V

    .line 5
    :try_start_0
    iget-object p1, p0, Landroidx/camera/camera2/internal/o2;->b:Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    iget-object v1, p0, Landroidx/camera/camera2/internal/o2;->j:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->getCameraId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->c:Ljava/util/concurrent/Executor;

    .line 6
    invoke-direct {p0}, Landroidx/camera/camera2/internal/o2;->g()Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v3

    .line 7
    invoke-virtual {p1, v1, v2, v3}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->openCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    :try_end_0
    .catch Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/o2;->h(Ljava/lang/String;)V

    .line 9
    sget-object p1, Landroidx/camera/camera2/internal/o2$f;->REOPENING:Landroidx/camera/camera2/internal/o2$f;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/o2;->c0(Landroidx/camera/camera2/internal/o2$f;)V

    .line 10
    iget-object p1, p0, Landroidx/camera/camera2/internal/o2;->i:Landroidx/camera/camera2/internal/o2$g;

    invoke-virtual {p1}, Landroidx/camera/camera2/internal/o2$g;->e()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/o2;->h(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->getReason()I

    move-result v0

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    sget-object v0, Landroidx/camera/camera2/internal/o2$f;->INITIALIZED:Landroidx/camera/camera2/internal/o2$f;

    const/4 v1, 0x7

    invoke-static {v1, p1}, Landroidx/camera/core/CameraState$StateError;->create(ILjava/lang/Throwable;)Landroidx/camera/core/CameraState$StateError;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/camera/camera2/internal/o2;->d0(Landroidx/camera/camera2/internal/o2$f;Landroidx/camera/core/CameraState$StateError;)V

    :goto_0
    return-void
.end method

.method private V()V
    .locals 4

    .line 1
    sget-object v0, Landroidx/camera/camera2/internal/o2$c;->a:[I

    iget-object v1, p0, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open() ignored due to being in state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/o2;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Landroidx/camera/camera2/internal/o2$f;->REOPENING:Landroidx/camera/camera2/internal/o2$f;

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/o2;->c0(Landroidx/camera/camera2/internal/o2$f;)V

    .line 4
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/o2;->p()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/camera/camera2/internal/o2;->l:I

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->k:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v0, "Camera Device should be open if session close is not complete"

    invoke-static {v1, v0}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 6
    sget-object v0, Landroidx/camera/camera2/internal/o2$f;->OPENED:Landroidx/camera/camera2/internal/o2$f;

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/o2;->c0(Landroidx/camera/camera2/internal/o2$f;)V

    .line 7
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/o2;->U()V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/internal/o2;->j0(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private X()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/camera/camera2/internal/o2;->m()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 2
    sget-object v1, Landroidx/camera/camera2/internal/o2$c;->a:[I

    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release() ignored due to being in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/camera/camera2/internal/o2;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :pswitch_0
    sget-object v1, Landroidx/camera/camera2/internal/o2$f;->RELEASING:Landroidx/camera/camera2/internal/o2$f;

    invoke-virtual {p0, v1}, Landroidx/camera/camera2/internal/o2;->c0(Landroidx/camera/camera2/internal/o2$f;)V

    .line 5
    invoke-virtual {p0, v2}, Landroidx/camera/camera2/internal/o2;->d(Z)V

    goto :goto_0

    .line 6
    :pswitch_1
    iget-object v1, p0, Landroidx/camera/camera2/internal/o2;->i:Landroidx/camera/camera2/internal/o2$g;

    invoke-virtual {v1}, Landroidx/camera/camera2/internal/o2$g;->a()Z

    move-result v1

    .line 7
    sget-object v2, Landroidx/camera/camera2/internal/o2$f;->RELEASING:Landroidx/camera/camera2/internal/o2$f;

    invoke-virtual {p0, v2}, Landroidx/camera/camera2/internal/o2;->c0(Landroidx/camera/camera2/internal/o2$f;)V

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/o2;->p()Z

    move-result v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 9
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/o2;->k()V

    goto :goto_0

    .line 10
    :pswitch_2
    iget-object v1, p0, Landroidx/camera/camera2/internal/o2;->k:Landroid/hardware/camera2/CameraDevice;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 11
    sget-object v1, Landroidx/camera/camera2/internal/o2$f;->RELEASING:Landroidx/camera/camera2/internal/o2$f;

    invoke-virtual {p0, v1}, Landroidx/camera/camera2/internal/o2;->c0(Landroidx/camera/camera2/internal/o2$f;)V

    .line 12
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/o2;->p()Z

    move-result v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 13
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/o2;->k()V

    :cond_1
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->u:Landroidx/camera/camera2/internal/g3;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->u:Landroidx/camera/camera2/internal/g3;

    .line 3
    invoke-virtual {v2}, Landroidx/camera/camera2/internal/g3;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->u:Landroidx/camera/camera2/internal/g3;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->u:Landroidx/camera/camera2/internal/g3;

    .line 4
    invoke-virtual {v2}, Landroidx/camera/camera2/internal/g3;->d()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v2

    iget-object v3, p0, Landroidx/camera/camera2/internal/o2;->u:Landroidx/camera/camera2/internal/g3;

    .line 5
    invoke-virtual {v3}, Landroidx/camera/camera2/internal/g3;->e()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v3

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroidx/camera/core/impl/UseCaseAttachState;->setUseCaseAttached(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;)V

    .line 7
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->u:Landroidx/camera/camera2/internal/g3;

    .line 8
    invoke-virtual {v2}, Landroidx/camera/camera2/internal/g3;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->u:Landroidx/camera/camera2/internal/g3;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->u:Landroidx/camera/camera2/internal/g3;

    .line 9
    invoke-virtual {v2}, Landroidx/camera/camera2/internal/g3;->d()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v2

    iget-object v3, p0, Landroidx/camera/camera2/internal/o2;->u:Landroidx/camera/camera2/internal/g3;

    .line 10
    invoke-virtual {v3}, Landroidx/camera/camera2/internal/g3;->e()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v3

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Landroidx/camera/core/impl/UseCaseAttachState;->setUseCaseActive(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;)V

    :cond_0
    return-void
.end method

.method private a0()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->u:Landroidx/camera/camera2/internal/g3;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->u:Landroidx/camera/camera2/internal/g3;

    .line 3
    invoke-virtual {v2}, Landroidx/camera/camera2/internal/g3;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->u:Landroidx/camera/camera2/internal/g3;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/UseCaseAttachState;->setUseCaseDetached(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->u:Landroidx/camera/camera2/internal/g3;

    .line 6
    invoke-virtual {v2}, Landroidx/camera/camera2/internal/g3;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->u:Landroidx/camera/camera2/internal/g3;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/UseCaseAttachState;->setUseCaseInactive(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->u:Landroidx/camera/camera2/internal/g3;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/g3;->a()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/camera/camera2/internal/o2;->u:Landroidx/camera/camera2/internal/g3;

    :cond_0
    return-void
.end method

.method private b()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    invoke-virtual {v0}, Landroidx/camera/core/impl/UseCaseAttachState;->getAttachedBuilder()Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig;->getRepeatingCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroidx/camera/core/impl/CaptureConfig;->getSurfaces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 5
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    invoke-virtual {v1}, Landroidx/camera/core/impl/CaptureConfig;->getSurfaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->u:Landroidx/camera/camera2/internal/g3;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Landroidx/camera/camera2/internal/g3;

    iget-object v1, p0, Landroidx/camera/camera2/internal/o2;->j:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

    .line 10
    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->getCameraCharacteristicsCompat()Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->C:Landroidx/camera/camera2/internal/DisplayInfoManager;

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/internal/g3;-><init>(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;Landroidx/camera/camera2/internal/DisplayInfoManager;)V

    iput-object v0, p0, Landroidx/camera/camera2/internal/o2;->u:Landroidx/camera/camera2/internal/g3;

    .line 11
    :cond_0
    invoke-direct {p0}, Landroidx/camera/camera2/internal/o2;->a()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne v3, v0, :cond_2

    if-ne v2, v0, :cond_2

    .line 12
    invoke-direct {p0}, Landroidx/camera/camera2/internal/o2;->a0()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-lt v2, v0, :cond_3

    .line 13
    invoke-direct {p0}, Landroidx/camera/camera2/internal/o2;->a0()V

    goto :goto_0

    .line 14
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMeteringRepeating is ATTACHED, SessionConfig Surfaces: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CaptureConfig Surfaces: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2CameraImpl"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private c(Landroidx/camera/core/impl/CaptureConfig$Builder;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->getSurfaces()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Camera2CameraImpl"

    if-nez v0, :cond_0

    const-string p1, "The capture config builder already has surface inside."

    .line 2
    invoke-static {v2, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    invoke-virtual {v0}, Landroidx/camera/core/impl/UseCaseAttachState;->getActiveAndAttachedSessionConfigs()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/SessionConfig;

    .line 4
    invoke-virtual {v3}, Landroidx/camera/core/impl/SessionConfig;->getRepeatingCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/camera/core/impl/CaptureConfig;->getSurfaces()Ljava/util/List;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/impl/DeferrableSurface;

    .line 7
    invoke-virtual {p1, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->getSurfaces()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Unable to find a repeating surface to attach to CaptureConfig"

    .line 9
    invoke-static {v2, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private e()V
    .locals 3

    const-string v0, "Closing camera."

    .line 1
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/o2;->h(Ljava/lang/String;)V

    .line 2
    sget-object v0, Landroidx/camera/camera2/internal/o2$c;->a:[I

    iget-object v1, p0, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close() ignored due to being in state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/o2;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->i:Landroidx/camera/camera2/internal/o2$g;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/o2$g;->a()Z

    move-result v0

    .line 5
    sget-object v1, Landroidx/camera/camera2/internal/o2$f;->CLOSING:Landroidx/camera/camera2/internal/o2$f;

    invoke-virtual {p0, v1}, Landroidx/camera/camera2/internal/o2;->c0(Landroidx/camera/camera2/internal/o2$f;)V

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/o2;->p()Z

    move-result v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 7
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/o2;->k()V

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Landroidx/camera/camera2/internal/o2$f;->CLOSING:Landroidx/camera/camera2/internal/o2$f;

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/o2;->c0(Landroidx/camera/camera2/internal/o2$f;)V

    .line 9
    invoke-virtual {p0, v2}, Landroidx/camera/camera2/internal/o2;->d(Z)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->k:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 11
    sget-object v0, Landroidx/camera/camera2/internal/o2$f;->INITIALIZED:Landroidx/camera/camera2/internal/o2$f;

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/o2;->c0(Landroidx/camera/camera2/internal/o2$f;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private f(Z)V
    .locals 5

    .line 1
    new-instance v0, Landroidx/camera/camera2/internal/z2;

    invoke-direct {v0}, Landroidx/camera/camera2/internal/z2;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/camera/camera2/internal/o2;->t:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/o2;->b0(Z)V

    .line 4
    new-instance p1, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 6
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 7
    new-instance v2, Landroidx/camera/camera2/internal/a0;

    invoke-direct {v2, v1, p1}, Landroidx/camera/camera2/internal/a0;-><init>(Landroid/view/Surface;Landroid/graphics/SurfaceTexture;)V

    .line 8
    new-instance p1, Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-direct {p1}, Landroidx/camera/core/impl/SessionConfig$Builder;-><init>()V

    .line 9
    new-instance v3, Landroidx/camera/core/impl/ImmediateSurface;

    invoke-direct {v3, v1}, Landroidx/camera/core/impl/ImmediateSurface;-><init>(Landroid/view/Surface;)V

    .line 10
    invoke-virtual {p1, v3}, Landroidx/camera/core/impl/SessionConfig$Builder;->addNonRepeatingSurface(Landroidx/camera/core/impl/DeferrableSurface;)Landroidx/camera/core/impl/SessionConfig$Builder;

    const/4 v1, 0x1

    .line 11
    invoke-virtual {p1, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->setTemplateType(I)Landroidx/camera/core/impl/SessionConfig$Builder;

    const-string v1, "Start configAndClose."

    .line 12
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/internal/o2;->h(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p1

    iget-object v1, p0, Landroidx/camera/camera2/internal/o2;->k:Landroid/hardware/camera2/CameraDevice;

    .line 14
    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraDevice;

    iget-object v4, p0, Landroidx/camera/camera2/internal/o2;->w:Landroidx/camera/camera2/internal/l3$a;

    invoke-virtual {v4}, Landroidx/camera/camera2/internal/l3$a;->a()Landroidx/camera/camera2/internal/l3;

    move-result-object v4

    .line 15
    invoke-virtual {v0, p1, v1, v4}, Landroidx/camera/camera2/internal/z2;->f(Landroidx/camera/core/impl/SessionConfig;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/internal/l3;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 16
    new-instance v1, Landroidx/camera/camera2/internal/x;

    invoke-direct {v1, p0, v0, v3, v2}, Landroidx/camera/camera2/internal/x;-><init>(Landroidx/camera/camera2/internal/o2;Landroidx/camera/camera2/internal/z2;Landroidx/camera/core/impl/DeferrableSurface;Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private g()Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    invoke-virtual {v0}, Landroidx/camera/core/impl/UseCaseAttachState;->getAttachedBuilder()Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig;->getDeviceStateCallbacks()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->v:Landroidx/camera/camera2/internal/b3;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/b3;->c()Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->i:Landroidx/camera/camera2/internal/o2$g;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {v1}, Landroidx/camera/camera2/internal/CameraDeviceStateCallbacks;->createComboCallback(Ljava/util/List;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    return-object v0
.end method

.method private g0(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroidx/camera/camera2/internal/o2$h;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/UseCase;

    .line 3
    invoke-static {v1}, Landroidx/camera/camera2/internal/o2$h;->b(Landroidx/camera/core/UseCase;)Landroidx/camera/camera2/internal/o2$h;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private h0(Ljava/util/Collection;)V
    .locals 8
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/camera2/internal/o2$h;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    .line 2
    invoke-virtual {v0}, Landroidx/camera/core/impl/UseCaseAttachState;->getAttachedSessionConfigs()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/internal/o2$h;

    .line 5
    iget-object v4, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    invoke-virtual {v3}, Landroidx/camera/camera2/internal/o2$h;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/UseCaseAttachState;->isUseCaseAttached(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    iget-object v4, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    invoke-virtual {v3}, Landroidx/camera/camera2/internal/o2$h;->f()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v3}, Landroidx/camera/camera2/internal/o2$h;->c()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v6

    invoke-virtual {v3}, Landroidx/camera/camera2/internal/o2$h;->e()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v7

    .line 8
    invoke-virtual {v4, v5, v6, v7}, Landroidx/camera/core/impl/UseCaseAttachState;->setUseCaseAttached(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;)V

    .line 9
    invoke-virtual {v3}, Landroidx/camera/camera2/internal/o2$h;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v3}, Landroidx/camera/camera2/internal/o2$h;->g()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Landroidx/camera/core/Preview;

    if-ne v4, v5, :cond_0

    .line 11
    invoke-virtual {v3}, Landroidx/camera/camera2/internal/o2$h;->d()Landroid/util/Size;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 12
    new-instance v2, Landroid/util/Rational;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 13
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/util/Rational;-><init>(II)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 15
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use cases ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] now ATTACHED"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/o2;->h(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 16
    iget-object p1, p0, Landroidx/camera/camera2/internal/o2;->h:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->M(Z)V

    .line 17
    iget-object p1, p0, Landroidx/camera/camera2/internal/o2;->h:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->n()V

    .line 18
    :cond_3
    invoke-direct {p0}, Landroidx/camera/camera2/internal/o2;->b()V

    .line 19
    invoke-direct {p0}, Landroidx/camera/camera2/internal/o2;->m0()V

    .line 20
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/o2;->l0()V

    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/o2;->b0(Z)V

    .line 22
    iget-object p1, p0, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    sget-object v0, Landroidx/camera/camera2/internal/o2$f;->OPENED:Landroidx/camera/camera2/internal/o2$f;

    if-ne p1, v0, :cond_4

    .line 23
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/o2;->U()V

    goto :goto_1

    .line 24
    :cond_4
    invoke-direct {p0}, Landroidx/camera/camera2/internal/o2;->V()V

    :goto_1
    if-eqz v2, :cond_5

    .line 25
    iget-object p1, p0, Landroidx/camera/camera2/internal/o2;->h:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p1, v2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->setPreviewAspectRatio(Landroid/util/Rational;)V

    :cond_5
    return-void
.end method

.method private i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/o2;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "{%s} %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Camera2CameraImpl"

    .line 2
    invoke-static {v0, p1, p2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private i0(Ljava/util/Collection;)V
    .locals 6
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/camera2/internal/o2$h;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/internal/o2$h;

    .line 3
    iget-object v4, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    invoke-virtual {v3}, Landroidx/camera/camera2/internal/o2$h;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/UseCaseAttachState;->isUseCaseAttached(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    iget-object v4, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    invoke-virtual {v3}, Landroidx/camera/camera2/internal/o2$h;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/UseCaseAttachState;->removeUseCase(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3}, Landroidx/camera/camera2/internal/o2$h;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v3}, Landroidx/camera/camera2/internal/o2$h;->g()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroidx/camera/core/Preview;

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use cases ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] now DETACHED for camera"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/o2;->h(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    .line 9
    iget-object p1, p0, Landroidx/camera/camera2/internal/o2;->h:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->setPreviewAspectRatio(Landroid/util/Rational;)V

    .line 10
    :cond_3
    invoke-direct {p0}, Landroidx/camera/camera2/internal/o2;->b()V

    .line 11
    iget-object p1, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    invoke-virtual {p1}, Landroidx/camera/core/impl/UseCaseAttachState;->getAttachedUseCaseConfigs()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Landroidx/camera/camera2/internal/o2;->h:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p1, v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->setZslDisabledByUserCaseConfig(Z)V

    goto :goto_1

    .line 13
    :cond_4
    invoke-direct {p0}, Landroidx/camera/camera2/internal/o2;->m0()V

    .line 14
    :goto_1
    iget-object p1, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    invoke-virtual {p1}, Landroidx/camera/core/impl/UseCaseAttachState;->getAttachedSessionConfigs()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 15
    iget-object p1, p0, Landroidx/camera/camera2/internal/o2;->h:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->c()V

    .line 16
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/internal/o2;->b0(Z)V

    .line 17
    iget-object p1, p0, Landroidx/camera/camera2/internal/o2;->h:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p1, v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->M(Z)V

    .line 18
    invoke-direct {p0}, Landroidx/camera/camera2/internal/o2;->Q()Landroidx/camera/camera2/internal/a3;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/internal/o2;->m:Landroidx/camera/camera2/internal/a3;

    .line 19
    invoke-direct {p0}, Landroidx/camera/camera2/internal/o2;->e()V

    goto :goto_2

    .line 20
    :cond_5
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/o2;->l0()V

    .line 21
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/internal/o2;->b0(Z)V

    .line 22
    iget-object p1, p0, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    sget-object v0, Landroidx/camera/camera2/internal/o2$f;->OPENED:Landroidx/camera/camera2/internal/o2$f;

    if-ne p1, v0, :cond_6

    .line 23
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/o2;->U()V

    :cond_6
    :goto_2
    return-void
.end method

.method static l(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN ERROR"

    return-object p0

    :cond_0
    const-string p0, "ERROR_CAMERA_SERVICE"

    return-object p0

    :cond_1
    const-string p0, "ERROR_CAMERA_DEVICE"

    return-object p0

    :cond_2
    const-string p0, "ERROR_CAMERA_DISABLED"

    return-object p0

    :cond_3
    const-string p0, "ERROR_MAX_CAMERAS_IN_USE"

    return-object p0

    :cond_4
    const-string p0, "ERROR_CAMERA_IN_USE"

    return-object p0

    :cond_5
    const-string p0, "ERROR_NONE"

    return-object p0
.end method

.method private m()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->o:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    sget-object v1, Landroidx/camera/camera2/internal/o2$f;->RELEASED:Landroidx/camera/camera2/internal/o2$f;

    if-eq v0, v1, :cond_0

    .line 3
    new-instance v0, Landroidx/camera/camera2/internal/u;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/u;-><init>(Landroidx/camera/camera2/internal/o2;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/internal/o2;->o:Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/internal/o2;->o:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->o:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method private m0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    invoke-virtual {v0}, Landroidx/camera/core/impl/UseCaseAttachState;->getAttachedUseCaseConfigs()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/UseCaseConfig;

    .line 2
    invoke-interface {v3, v1}, Landroidx/camera/core/impl/UseCaseConfig;->isZslDisabled(Z)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->h:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v0, v2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->setZslDisabledByUserCaseConfig(Z)V

    return-void
.end method

.method static n(Landroidx/camera/core/UseCase;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private o()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/o2;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

    .line 2
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic q(Landroidx/camera/camera2/internal/o2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/internal/o2;->V()V

    return-void
.end method

.method private synthetic r(Ljava/util/List;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/o2;->h0(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object p1, p0, Landroidx/camera/camera2/internal/o2;->h:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->c()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->h:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->c()V

    .line 3
    throw p1
.end method

.method public static synthetic t(Landroidx/camera/camera2/internal/o2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/internal/o2;->e()V

    return-void
.end method

.method static synthetic u(Landroid/view/Surface;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    return-void
.end method

.method private synthetic v(Landroidx/camera/camera2/internal/z2;Landroidx/camera/core/impl/DeferrableSurface;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/internal/o2;->Y(Landroidx/camera/camera2/internal/z2;Landroidx/camera/core/impl/DeferrableSurface;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic x(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/o2;->i0(Ljava/util/Collection;)V

    return-void
.end method

.method private synthetic z(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->p:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Camera can only be released once, so release completer should be null on creation."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 2
    iput-object p1, p0, Landroidx/camera/camera2/internal/o2;->p:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Release[camera="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public synthetic A(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/o2;->z(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic C(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/internal/o2;->B(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;)V

    return-void
.end method

.method public synthetic E(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/o2;->D(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic G(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/internal/o2;->F(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;)V

    return-void
.end method

.method public synthetic I(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/internal/o2;->H(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;)V

    return-void
.end method

.method public synthetic L(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/o2;->K(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method public synthetic N(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/o2;->M(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic P(Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/o2;->O(Z)V

    return-void
.end method

.method U()V
    .locals 5
    .annotation build Landroidx/annotation/OptIn;
        markerClass = {
            Landroidx/camera/camera2/interop/ExperimentalCamera2Interop;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    sget-object v1, Landroidx/camera/camera2/internal/o2$f;->OPENED:Landroidx/camera/camera2/internal/o2$f;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 2
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    invoke-virtual {v0}, Landroidx/camera/core/impl/UseCaseAttachState;->getAttachedBuilder()Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "Unable to create capture session due to conflicting configurations"

    .line 4
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/o2;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v1

    sget-object v2, Landroidx/camera/camera2/impl/Camera2ImplConfig;->STREAM_USE_CASE_OPTION:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v1, v2}, Landroidx/camera/core/impl/Config;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    .line 7
    invoke-virtual {v1}, Landroidx/camera/core/impl/UseCaseAttachState;->getAttachedUseCaseConfigs()Ljava/util/Collection;

    move-result-object v1

    iget-object v3, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    .line 8
    invoke-virtual {v3}, Landroidx/camera/core/impl/UseCaseAttachState;->getAttachedSessionConfigs()Ljava/util/Collection;

    move-result-object v3

    .line 9
    invoke-static {v1, v3}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->getStreamUseCaseFromUseCaseConfigs(Ljava/util/Collection;Ljava/util/Collection;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v2, v1}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->addImplementationOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 11
    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/internal/o2;->m:Landroidx/camera/camera2/internal/a3;

    .line 12
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v0

    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->k:Landroid/hardware/camera2/CameraDevice;

    .line 13
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraDevice;

    iget-object v3, p0, Landroidx/camera/camera2/internal/o2;->w:Landroidx/camera/camera2/internal/l3$a;

    invoke-virtual {v3}, Landroidx/camera/camera2/internal/l3$a;->a()Landroidx/camera/camera2/internal/l3;

    move-result-object v3

    .line 14
    invoke-interface {v1, v0, v2, v3}, Landroidx/camera/camera2/internal/a3;->f(Landroidx/camera/core/impl/SessionConfig;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/internal/l3;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 15
    new-instance v1, Landroidx/camera/camera2/internal/o2$b;

    invoke-direct {v1, p0}, Landroidx/camera/camera2/internal/o2$b;-><init>(Landroidx/camera/camera2/internal/o2;)V

    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method W(Landroidx/camera/core/impl/SessionConfig;)V
    .locals 4
    .param p1    # Landroidx/camera/core/impl/SessionConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getErrorListeners()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/SessionConfig$ErrorListener;

    .line 5
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "Posting surface closed"

    invoke-direct {p0, v3, v2}, Landroidx/camera/camera2/internal/o2;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    new-instance v2, Landroidx/camera/camera2/internal/z;

    invoke-direct {v2, v1, p1}, Landroidx/camera/camera2/internal/z;-><init>(Landroidx/camera/core/impl/SessionConfig$ErrorListener;Landroidx/camera/core/impl/SessionConfig;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method Y(Landroidx/camera/camera2/internal/z2;Landroidx/camera/core/impl/DeferrableSurface;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Landroidx/camera/camera2/internal/z2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/DeferrableSurface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->t:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/internal/o2;->Z(Landroidx/camera/camera2/internal/a3;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/common/util/concurrent/ListenableFuture;

    aput-object p1, v1, v0

    .line 4
    invoke-virtual {p2}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->successfulAsList(Ljava/util/Collection;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 6
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 7
    invoke-interface {p1, p3, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method Z(Landroidx/camera/camera2/internal/a3;Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1    # Landroidx/camera/camera2/internal/a3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/internal/a3;",
            "Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Landroidx/camera/camera2/internal/a3;->close()V

    .line 2
    invoke-interface {p1, p2}, Landroidx/camera/camera2/internal/a3;->b(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Releasing session in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/o2;->h(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->q:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Landroidx/camera/camera2/internal/o2$a;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/internal/o2$a;-><init>(Landroidx/camera/camera2/internal/o2;Landroidx/camera/camera2/internal/a3;)V

    .line 6
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 7
    invoke-static {p2, v0, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-object p2
.end method

.method public attachUseCases(Ljava/util/Collection;)V
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/internal/o2;->h:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->n()V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/o2;->R(Ljava/util/List;)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/o2;->g0(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/y;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/y;-><init>(Landroidx/camera/camera2/internal/o2;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Unable to attach use cases."

    .line 7
    invoke-direct {p0, v0, p1}, Landroidx/camera/camera2/internal/o2;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iget-object p1, p0, Landroidx/camera/camera2/internal/o2;->h:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->c()V

    :goto_0
    return-void
.end method

.method b0(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->m:Landroidx/camera/camera2/internal/a3;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    const-string v0, "Resetting Capture Session"

    .line 2
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/o2;->h(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->m:Landroidx/camera/camera2/internal/a3;

    .line 4
    invoke-interface {v0}, Landroidx/camera/camera2/internal/a3;->getSessionConfig()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v1

    .line 5
    invoke-interface {v0}, Landroidx/camera/camera2/internal/a3;->c()Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-direct {p0}, Landroidx/camera/camera2/internal/o2;->Q()Landroidx/camera/camera2/internal/a3;

    move-result-object v3

    iput-object v3, p0, Landroidx/camera/camera2/internal/o2;->m:Landroidx/camera/camera2/internal/a3;

    .line 7
    invoke-interface {v3, v1}, Landroidx/camera/camera2/internal/a3;->e(Landroidx/camera/core/impl/SessionConfig;)V

    .line 8
    iget-object v1, p0, Landroidx/camera/camera2/internal/o2;->m:Landroidx/camera/camera2/internal/a3;

    invoke-interface {v1, v2}, Landroidx/camera/camera2/internal/a3;->d(Ljava/util/List;)V

    .line 9
    invoke-virtual {p0, v0, p1}, Landroidx/camera/camera2/internal/o2;->Z(Landroidx/camera/camera2/internal/a3;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method c0(Landroidx/camera/camera2/internal/o2$f;)V
    .locals 1
    .param p1    # Landroidx/camera/camera2/internal/o2$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/internal/o2;->d0(Landroidx/camera/camera2/internal/o2$f;Landroidx/camera/core/CameraState$StateError;)V

    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/v;

    invoke-direct {v1, p0}, Landroidx/camera/camera2/internal/v;-><init>(Landroidx/camera/camera2/internal/o2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method d(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    sget-object v1, Landroidx/camera/camera2/internal/o2$f;->CLOSING:Landroidx/camera/camera2/internal/o2$f;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    sget-object v1, Landroidx/camera/camera2/internal/o2$f;->RELEASING:Landroidx/camera/camera2/internal/o2$f;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    sget-object v1, Landroidx/camera/camera2/internal/o2$f;->REOPENING:Landroidx/camera/camera2/internal/o2$f;

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/camera/camera2/internal/o2;->l:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeCamera should only be called in a CLOSING, RELEASING or REOPENING (with error) state. Current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/camera/camera2/internal/o2;->l:I

    .line 2
    invoke-static {v2}, Landroidx/camera/camera2/internal/o2;->l(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_2

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_2

    .line 5
    invoke-direct {p0}, Landroidx/camera/camera2/internal/o2;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/camera/camera2/internal/o2;->l:I

    if-nez v0, :cond_2

    .line 6
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/o2;->f(Z)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/o2;->b0(Z)V

    .line 8
    :goto_2
    iget-object p1, p0, Landroidx/camera/camera2/internal/o2;->m:Landroidx/camera/camera2/internal/a3;

    invoke-interface {p1}, Landroidx/camera/camera2/internal/a3;->a()V

    return-void
.end method

.method d0(Landroidx/camera/camera2/internal/o2$f;Landroidx/camera/core/CameraState$StateError;)V
    .locals 1
    .param p1    # Landroidx/camera/camera2/internal/o2$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/CameraState$StateError;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroidx/camera/camera2/internal/o2;->e0(Landroidx/camera/camera2/internal/o2$f;Landroidx/camera/core/CameraState$StateError;Z)V

    return-void
.end method

.method public detachUseCases(Ljava/util/Collection;)V
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/o2;->g0(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1}, Landroidx/camera/camera2/internal/o2;->S(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/d0;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/d0;-><init>(Landroidx/camera/camera2/internal/o2;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method e0(Landroidx/camera/camera2/internal/o2$f;Landroidx/camera/core/CameraState$StateError;Z)V
    .locals 2
    .param p1    # Landroidx/camera/camera2/internal/o2$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/CameraState$StateError;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transitioning camera internal state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/o2;->h(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    .line 3
    sget-object v0, Landroidx/camera/camera2/internal/o2$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown state: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5
    :pswitch_0
    sget-object p1, Landroidx/camera/core/impl/CameraInternal$State;->RELEASED:Landroidx/camera/core/impl/CameraInternal$State;

    goto :goto_0

    .line 6
    :pswitch_1
    sget-object p1, Landroidx/camera/core/impl/CameraInternal$State;->RELEASING:Landroidx/camera/core/impl/CameraInternal$State;

    goto :goto_0

    .line 7
    :pswitch_2
    sget-object p1, Landroidx/camera/core/impl/CameraInternal$State;->OPENING:Landroidx/camera/core/impl/CameraInternal$State;

    goto :goto_0

    .line 8
    :pswitch_3
    sget-object p1, Landroidx/camera/core/impl/CameraInternal$State;->OPEN:Landroidx/camera/core/impl/CameraInternal$State;

    goto :goto_0

    .line 9
    :pswitch_4
    sget-object p1, Landroidx/camera/core/impl/CameraInternal$State;->CLOSING:Landroidx/camera/core/impl/CameraInternal$State;

    goto :goto_0

    .line 10
    :pswitch_5
    sget-object p1, Landroidx/camera/core/impl/CameraInternal$State;->PENDING_OPEN:Landroidx/camera/core/impl/CameraInternal$State;

    goto :goto_0

    .line 11
    :pswitch_6
    sget-object p1, Landroidx/camera/core/impl/CameraInternal$State;->CLOSED:Landroidx/camera/core/impl/CameraInternal$State;

    .line 12
    :goto_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->s:Landroidx/camera/core/impl/CameraStateRegistry;

    invoke-virtual {v0, p0, p1, p3}, Landroidx/camera/core/impl/CameraStateRegistry;->markCameraState(Landroidx/camera/core/Camera;Landroidx/camera/core/impl/CameraInternal$State;Z)V

    .line 13
    iget-object p3, p0, Landroidx/camera/camera2/internal/o2;->f:Landroidx/camera/core/impl/LiveDataObservable;

    invoke-virtual {p3, p1}, Landroidx/camera/core/impl/LiveDataObservable;->postValue(Ljava/lang/Object;)V

    .line 14
    iget-object p3, p0, Landroidx/camera/camera2/internal/o2;->g:Landroidx/camera/camera2/internal/v2;

    invoke-virtual {p3, p1, p2}, Landroidx/camera/camera2/internal/v2;->c(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method f0(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/CaptureConfig;

    .line 3
    invoke-static {v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->from(Landroidx/camera/core/impl/CaptureConfig;)Landroidx/camera/core/impl/CaptureConfig$Builder;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 5
    invoke-virtual {v1}, Landroidx/camera/core/impl/CaptureConfig;->getCameraCaptureResult()Landroidx/camera/core/impl/CameraCaptureResult;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v1}, Landroidx/camera/core/impl/CaptureConfig;->getCameraCaptureResult()Landroidx/camera/core/impl/CameraCaptureResult;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setCameraCaptureResult(Landroidx/camera/core/impl/CameraCaptureResult;)V

    .line 7
    :cond_0
    invoke-virtual {v1}, Landroidx/camera/core/impl/CaptureConfig;->getSurfaces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroidx/camera/core/impl/CaptureConfig;->isUseRepeatingSurface()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-direct {p0, v2}, Landroidx/camera/camera2/internal/o2;->c(Landroidx/camera/core/impl/CaptureConfig$Builder;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p1, "Issue capture request"

    .line 10
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/o2;->h(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Landroidx/camera/camera2/internal/o2;->m:Landroidx/camera/camera2/internal/a3;

    invoke-interface {p1, v0}, Landroidx/camera/camera2/internal/a3;->d(Ljava/util/List;)V

    return-void
.end method

.method public synthetic getCameraControl()Landroidx/camera/core/CameraControl;
    .locals 1

    invoke-static {p0}, Landroidx/camera/core/impl/m0;->a(Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/CameraControl;

    move-result-object v0

    return-object v0
.end method

.method public getCameraControlInternal()Landroidx/camera/core/impl/CameraControlInternal;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->h:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    return-object v0
.end method

.method public synthetic getCameraInfo()Landroidx/camera/core/CameraInfo;
    .locals 1

    invoke-static {p0}, Landroidx/camera/core/impl/m0;->b(Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/CameraInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->j:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

    return-object v0
.end method

.method public synthetic getCameraInternals()Ljava/util/LinkedHashSet;
    .locals 1

    invoke-static {p0}, Landroidx/camera/core/impl/m0;->c(Landroidx/camera/core/impl/CameraInternal;)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method public getCameraState()Landroidx/camera/core/impl/Observable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/impl/Observable<",
            "Landroidx/camera/core/impl/CameraInternal$State;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->f:Landroidx/camera/core/impl/LiveDataObservable;

    return-object v0
.end method

.method public getExtendedConfig()Landroidx/camera/core/impl/CameraConfig;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->y:Landroidx/camera/core/impl/CameraConfig;

    return-object v0
.end method

.method h(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/internal/o2;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs synthetic isUseCasesCombinationSupported([Landroidx/camera/core/UseCase;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/core/k2;->a(Landroidx/camera/core/Camera;[Landroidx/camera/core/UseCase;)Z

    move-result p1

    return p1
.end method

.method j(Landroidx/camera/core/impl/DeferrableSurface;)Landroidx/camera/core/impl/SessionConfig;
    .locals 3
    .param p1    # Landroidx/camera/core/impl/DeferrableSurface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    invoke-virtual {v0}, Landroidx/camera/core/impl/UseCaseAttachState;->getAttachedSessionConfigs()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/SessionConfig;

    .line 2
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method j0(Z)V
    .locals 1

    const-string v0, "Attempting to force open the camera."

    .line 1
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/o2;->h(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->s:Landroidx/camera/core/impl/CameraStateRegistry;

    invoke-virtual {v0, p0}, Landroidx/camera/core/impl/CameraStateRegistry;->tryOpenCamera(Landroidx/camera/core/Camera;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "No cameras available. Waiting for available camera before opening camera."

    .line 3
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/o2;->h(Ljava/lang/String;)V

    .line 4
    sget-object p1, Landroidx/camera/camera2/internal/o2$f;->PENDING_OPEN:Landroidx/camera/camera2/internal/o2$f;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/o2;->c0(Landroidx/camera/camera2/internal/o2$f;)V

    return-void

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/o2;->T(Z)V

    return-void
.end method

.method k()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    sget-object v1, Landroidx/camera/camera2/internal/o2$f;->RELEASING:Landroidx/camera/camera2/internal/o2$f;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    sget-object v1, Landroidx/camera/camera2/internal/o2$f;->CLOSING:Landroidx/camera/camera2/internal/o2$f;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 2
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/camera/camera2/internal/o2;->k:Landroid/hardware/camera2/CameraDevice;

    .line 4
    iget-object v1, p0, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    sget-object v2, Landroidx/camera/camera2/internal/o2$f;->CLOSING:Landroidx/camera/camera2/internal/o2$f;

    if-ne v1, v2, :cond_2

    .line 5
    sget-object v0, Landroidx/camera/camera2/internal/o2$f;->INITIALIZED:Landroidx/camera/camera2/internal/o2$f;

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/o2;->c0(Landroidx/camera/camera2/internal/o2$f;)V

    goto :goto_2

    .line 6
    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/internal/o2;->b:Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->r:Landroidx/camera/camera2/internal/o2$d;

    invoke-virtual {v1, v2}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 7
    sget-object v1, Landroidx/camera/camera2/internal/o2$f;->RELEASED:Landroidx/camera/camera2/internal/o2$f;

    invoke-virtual {p0, v1}, Landroidx/camera/camera2/internal/o2;->c0(Landroidx/camera/camera2/internal/o2$f;)V

    .line 8
    iget-object v1, p0, Landroidx/camera/camera2/internal/o2;->p:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 10
    iput-object v0, p0, Landroidx/camera/camera2/internal/o2;->p:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    :cond_3
    :goto_2
    return-void
.end method

.method k0(Z)V
    .locals 1

    const-string v0, "Attempting to open the camera."

    .line 1
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/o2;->h(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->r:Landroidx/camera/camera2/internal/o2$d;

    .line 3
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/o2$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->s:Landroidx/camera/core/impl/CameraStateRegistry;

    invoke-virtual {v0, p0}, Landroidx/camera/core/impl/CameraStateRegistry;->tryOpenCamera(Landroidx/camera/core/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string p1, "No cameras available. Waiting for available camera before opening camera."

    .line 4
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/o2;->h(Ljava/lang/String;)V

    .line 5
    sget-object p1, Landroidx/camera/camera2/internal/o2$f;->PENDING_OPEN:Landroidx/camera/camera2/internal/o2$f;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/o2;->c0(Landroidx/camera/camera2/internal/o2$f;)V

    return-void

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/o2;->T(Z)V

    return-void
.end method

.method l0()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->a:Landroidx/camera/core/impl/UseCaseAttachState;

    invoke-virtual {v0}, Landroidx/camera/core/impl/UseCaseAttachState;->getActiveAndAttachedBuilder()Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v1

    .line 4
    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->h:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->getTemplateType()I

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->N(I)V

    .line 5
    iget-object v1, p0, Landroidx/camera/camera2/internal/o2;->h:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getSessionConfig()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->add(Landroidx/camera/core/impl/SessionConfig;)V

    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/camera/camera2/internal/o2;->m:Landroidx/camera/camera2/internal/a3;

    invoke-interface {v1, v0}, Landroidx/camera/camera2/internal/a3;->e(Landroidx/camera/core/impl/SessionConfig;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->h:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->L()V

    .line 9
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->m:Landroidx/camera/camera2/internal/a3;

    iget-object v1, p0, Landroidx/camera/camera2/internal/o2;->h:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getSessionConfig()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/camera/camera2/internal/a3;->e(Landroidx/camera/core/impl/SessionConfig;)V

    :goto_0
    return-void
.end method

.method public onUseCaseActive(Landroidx/camera/core/UseCase;)V
    .locals 4
    .param p1    # Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Landroidx/camera/camera2/internal/o2;->n(Landroidx/camera/core/UseCase;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroidx/camera/core/UseCase;->getSessionConfig()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p1

    .line 5
    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->c:Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/camera/camera2/internal/c0;

    invoke-direct {v3, p0, v0, v1, p1}, Landroidx/camera/camera2/internal/c0;-><init>(Landroidx/camera/camera2/internal/o2;Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUseCaseInactive(Landroidx/camera/core/UseCase;)V
    .locals 2
    .param p1    # Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Landroidx/camera/camera2/internal/o2;->n(Landroidx/camera/core/UseCase;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/t;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/t;-><init>(Landroidx/camera/camera2/internal/o2;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUseCaseReset(Landroidx/camera/core/UseCase;)V
    .locals 4
    .param p1    # Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Landroidx/camera/camera2/internal/o2;->n(Landroidx/camera/core/UseCase;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroidx/camera/core/UseCase;->getSessionConfig()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p1

    .line 5
    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->c:Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/camera/camera2/internal/r;

    invoke-direct {v3, p0, v0, v1, p1}, Landroidx/camera/camera2/internal/r;-><init>(Landroidx/camera/camera2/internal/o2;Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUseCaseUpdated(Landroidx/camera/core/UseCase;)V
    .locals 4
    .param p1    # Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Landroidx/camera/camera2/internal/o2;->n(Landroidx/camera/core/UseCase;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroidx/camera/core/UseCase;->getSessionConfig()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p1

    .line 5
    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->c:Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/camera/camera2/internal/o;

    invoke-direct {v3, p0, v0, v1, p1}, Landroidx/camera/camera2/internal/o;-><init>(Landroidx/camera/camera2/internal/o2;Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public open()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/q;

    invoke-direct {v1, p0}, Landroidx/camera/camera2/internal/q;-><init>(Landroidx/camera/camera2/internal/o2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->t:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/camera2/internal/w;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/w;-><init>(Landroidx/camera/camera2/internal/o2;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public synthetic s(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/o2;->r(Ljava/util/List;)V

    return-void
.end method

.method public setActiveResumingMode(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/b0;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/b0;-><init>(Landroidx/camera/camera2/internal/o2;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setExtendedConfig(Landroidx/camera/core/impl/CameraConfig;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/CameraConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/CameraConfigs;->emptyConfig()Landroidx/camera/core/impl/CameraConfig;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Landroidx/camera/core/impl/CameraConfig;->getSessionProcessor(Landroidx/camera/core/impl/SessionProcessor;)Landroidx/camera/core/impl/SessionProcessor;

    move-result-object v0

    .line 3
    iput-object p1, p0, Landroidx/camera/camera2/internal/o2;->y:Landroidx/camera/core/impl/CameraConfig;

    .line 4
    iget-object p1, p0, Landroidx/camera/camera2/internal/o2;->z:Ljava/lang/Object;

    monitor-enter p1

    .line 5
    :try_start_0
    iput-object v0, p0, Landroidx/camera/camera2/internal/o2;->A:Landroidx/camera/core/impl/SessionProcessor;

    .line 6
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroidx/camera/camera2/internal/o2;->j:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

    .line 2
    invoke-virtual {v2}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->getCameraId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Camera@%x[id=%s]"

    .line 3
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic w(Landroidx/camera/camera2/internal/z2;Landroidx/camera/core/impl/DeferrableSurface;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/internal/o2;->v(Landroidx/camera/camera2/internal/z2;Landroidx/camera/core/impl/DeferrableSurface;Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic y(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/o2;->x(Ljava/util/List;)V

    return-void
.end method
