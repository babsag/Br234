.class public Landroidx/camera/core/processing/SettableSurface;
.super Landroidx/camera/core/impl/DeferrableSurface;
.source "SettableSurface.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation


# instance fields
.field private final l:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field m:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Landroid/graphics/Matrix;

.field private final o:Z

.field private final p:Landroid/graphics/Rect;

.field private final q:Z

.field private final r:I

.field private s:I

.field private t:Landroidx/camera/core/processing/y;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:Z

.field private v:Z

.field private w:Landroidx/camera/core/SurfaceRequest;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/util/Size;ILandroid/graphics/Matrix;ZLandroid/graphics/Rect;IZ)V
    .locals 0
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2, p3}, Landroidx/camera/core/impl/DeferrableSurface;-><init>(Landroid/util/Size;I)V

    const/4 p3, 0x0

    .line 2
    iput-boolean p3, p0, Landroidx/camera/core/processing/SettableSurface;->u:Z

    .line 3
    iput-boolean p3, p0, Landroidx/camera/core/processing/SettableSurface;->v:Z

    .line 4
    iput p1, p0, Landroidx/camera/core/processing/SettableSurface;->r:I

    .line 5
    iput-object p4, p0, Landroidx/camera/core/processing/SettableSurface;->n:Landroid/graphics/Matrix;

    .line 6
    iput-boolean p5, p0, Landroidx/camera/core/processing/SettableSurface;->o:Z

    .line 7
    iput-object p6, p0, Landroidx/camera/core/processing/SettableSurface;->p:Landroid/graphics/Rect;

    .line 8
    iput p7, p0, Landroidx/camera/core/processing/SettableSurface;->s:I

    .line 9
    iput-boolean p8, p0, Landroidx/camera/core/processing/SettableSurface;->q:Z

    .line 10
    new-instance p1, Landroidx/camera/core/processing/m;

    invoke-direct {p1, p0, p2}, Landroidx/camera/core/processing/m;-><init>(Landroidx/camera/core/processing/SettableSurface;Landroid/util/Size;)V

    invoke-static {p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/processing/SettableSurface;->l:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method private synthetic f()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SettableSurface;->t:Landroidx/camera/core/processing/y;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/camera/core/processing/y;->g()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/camera/core/processing/SettableSurface;->t:Landroidx/camera/core/processing/y;

    :cond_0
    return-void
.end method

.method private synthetic h(Landroidx/camera/core/SurfaceOutput$GlTransformOptions;Landroid/util/Size;Landroid/graphics/Rect;IZLandroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v1, p0

    .line 1
    invoke-static/range {p6 .. p6}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroidx/camera/core/impl/DeferrableSurface;->incrementUseCount()V
    :try_end_0
    .catch Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    new-instance v0, Landroidx/camera/core/processing/y;

    .line 4
    invoke-virtual {p0}, Landroidx/camera/core/processing/SettableSurface;->getTargets()I

    move-result v4

    invoke-virtual {p0}, Landroidx/camera/core/processing/SettableSurface;->getFormat()I

    move-result v5

    invoke-virtual {p0}, Landroidx/camera/core/processing/SettableSurface;->getSize()Landroid/util/Size;

    move-result-object v6

    move-object v2, v0

    move-object/from16 v3, p6

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v2 .. v11}, Landroidx/camera/core/processing/y;-><init>(Landroid/view/Surface;IILandroid/util/Size;Landroidx/camera/core/SurfaceOutput$GlTransformOptions;Landroid/util/Size;Landroid/graphics/Rect;IZ)V

    .line 5
    invoke-virtual {v0}, Landroidx/camera/core/processing/y;->b()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    new-instance v3, Landroidx/camera/core/processing/t;

    invoke-direct {v3, p0}, Landroidx/camera/core/processing/t;-><init>(Landroidx/camera/core/processing/SettableSurface;)V

    .line 6
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 7
    invoke-interface {v2, v3, v4}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 8
    iput-object v0, v1, Landroidx/camera/core/processing/SettableSurface;->t:Landroidx/camera/core/processing/y;

    .line 9
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 10
    invoke-static {v2}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private synthetic j(Landroid/util/Size;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p2, p0, Landroidx/camera/core/processing/SettableSurface;->m:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SettableFuture size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " hashCode: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic l(Landroidx/camera/core/impl/DeferrableSurface;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/impl/DeferrableSurface;->decrementUseCount()V

    .line 2
    invoke-virtual {p0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    return-void
.end method

.method private m()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SettableSurface;->w:Landroidx/camera/core/SurfaceRequest;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/camera/core/processing/SettableSurface;->p:Landroid/graphics/Rect;

    iget v2, p0, Landroidx/camera/core/processing/SettableSurface;->s:I

    const/4 v3, -0x1

    .line 3
    invoke-static {v1, v2, v3}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->of(Landroid/graphics/Rect;II)Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/camera/core/SurfaceRequest;->updateTransformationInfo(Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 2
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/processing/j;

    invoke-direct {v1, p0}, Landroidx/camera/core/processing/j;-><init>(Landroidx/camera/core/processing/SettableSurface;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createSurfaceOutputFuture(Landroidx/camera/core/SurfaceOutput$GlTransformOptions;Landroid/util/Size;Landroid/graphics/Rect;IZ)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9
    .param p1    # Landroidx/camera/core/SurfaceOutput$GlTransformOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/SurfaceOutput$GlTransformOptions;",
            "Landroid/util/Size;",
            "Landroid/graphics/Rect;",
            "IZ)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/SurfaceOutput;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    iget-boolean v0, p0, Landroidx/camera/core/processing/SettableSurface;->v:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Consumer can only be linked once."

    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 3
    iput-boolean v1, p0, Landroidx/camera/core/processing/SettableSurface;->v:Z

    .line 4
    invoke-virtual {p0}, Landroidx/camera/core/impl/DeferrableSurface;->getSurface()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v8, Landroidx/camera/core/processing/l;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Landroidx/camera/core/processing/l;-><init>(Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/SurfaceOutput$GlTransformOptions;Landroid/util/Size;Landroid/graphics/Rect;IZ)V

    .line 5
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 6
    invoke-static {v0, v8, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public createSurfaceRequest(Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/SurfaceRequest;
    .locals 1
    .param p1    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/camera/core/processing/SettableSurface;->createSurfaceRequest(Landroidx/camera/core/impl/CameraInternal;Landroid/util/Range;)Landroidx/camera/core/SurfaceRequest;

    move-result-object p1

    return-object p1
.end method

.method public createSurfaceRequest(Landroidx/camera/core/impl/CameraInternal;Landroid/util/Range;)Landroidx/camera/core/SurfaceRequest;
    .locals 3
    .param p1    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Range;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CameraInternal;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/camera/core/SurfaceRequest;"
        }
    .end annotation

    .line 2
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 3
    new-instance v0, Landroidx/camera/core/SurfaceRequest;

    invoke-virtual {p0}, Landroidx/camera/core/processing/SettableSurface;->getSize()Landroid/util/Size;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2, p2}, Landroidx/camera/core/SurfaceRequest;-><init>(Landroid/util/Size;Landroidx/camera/core/impl/CameraInternal;ZLandroid/util/Range;)V

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroidx/camera/core/SurfaceRequest;->getDeferrableSurface()Landroidx/camera/core/impl/DeferrableSurface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/core/processing/SettableSurface;->setProvider(Landroidx/camera/core/impl/DeferrableSurface;)V
    :try_end_0
    .catch Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    iput-object v0, p0, Landroidx/camera/core/processing/SettableSurface;->w:Landroidx/camera/core/SurfaceRequest;

    .line 6
    invoke-direct {p0}, Landroidx/camera/core/processing/SettableSurface;->m()V

    return-object v0

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Ljava/lang/AssertionError;

    const-string v0, "Surface is somehow already closed"

    invoke-direct {p2, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public synthetic g()V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/core/processing/SettableSurface;->f()V

    return-void
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SettableSurface;->p:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFormat()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/impl/DeferrableSurface;->getPrescribedStreamFormat()I

    move-result v0

    return v0
.end method

.method public getMirroring()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/processing/SettableSurface;->q:Z

    return v0
.end method

.method public getRotationDegrees()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/processing/SettableSurface;->s:I

    return v0
.end method

.method public getSensorToBufferTransform()Landroid/graphics/Matrix;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SettableSurface;->n:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/impl/DeferrableSurface;->getPrescribedSize()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getTargets()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/processing/SettableSurface;->r:I

    return v0
.end method

.method public hasEmbeddedTransform()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/processing/SettableSurface;->o:Z

    return v0
.end method

.method public synthetic i(Landroidx/camera/core/SurfaceOutput$GlTransformOptions;Landroid/util/Size;Landroid/graphics/Rect;IZLandroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/camera/core/processing/SettableSurface;->h(Landroidx/camera/core/SurfaceOutput$GlTransformOptions;Landroid/util/Size;Landroid/graphics/Rect;IZLandroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public synthetic k(Landroid/util/Size;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/core/processing/SettableSurface;->j(Landroid/util/Size;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected provideSurface()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SettableSurface;->l:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public setProvider(Landroidx/camera/core/impl/DeferrableSurface;)V
    .locals 2
    .param p1    # Landroidx/camera/core/impl/DeferrableSurface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException;
        }
    .end annotation

    .line 5
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 6
    invoke-virtual {p1}, Landroidx/camera/core/impl/DeferrableSurface;->getSurface()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/core/processing/SettableSurface;->setProvider(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 7
    invoke-virtual {p1}, Landroidx/camera/core/impl/DeferrableSurface;->incrementUseCount()V

    .line 8
    invoke-virtual {p0}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/processing/k;

    invoke-direct {v1, p1}, Landroidx/camera/core/processing/k;-><init>(Landroidx/camera/core/impl/DeferrableSurface;)V

    .line 9
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 10
    invoke-interface {v0, v1, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public setProvider(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 3
    .param p1    # Lcom/google/common/util/concurrent/ListenableFuture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    iget-boolean v0, p0, Landroidx/camera/core/processing/SettableSurface;->u:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Provider can only be linked once."

    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 3
    iput-boolean v1, p0, Landroidx/camera/core/processing/SettableSurface;->u:Z

    .line 4
    iget-object v0, p0, Landroidx/camera/core/processing/SettableSurface;->m:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {p1, v0}, Landroidx/camera/core/impl/utils/futures/Futures;->propagate(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method public setRotationDegrees(I)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    iget v0, p0, Landroidx/camera/core/processing/SettableSurface;->s:I

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput p1, p0, Landroidx/camera/core/processing/SettableSurface;->s:I

    .line 4
    invoke-direct {p0}, Landroidx/camera/core/processing/SettableSurface;->m()V

    return-void
.end method
