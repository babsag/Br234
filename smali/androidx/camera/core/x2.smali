.class final Landroidx/camera/core/x2;
.super Landroidx/camera/core/impl/DeferrableSurface;
.source "ProcessingSurface.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field final l:Ljava/lang/Object;

.field private final m:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

.field n:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final o:Landroid/util/Size;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final p:Landroidx/camera/core/MetadataImageReader;

.field private final q:Landroid/view/Surface;

.field private final r:Landroid/os/Handler;

.field final s:Landroidx/camera/core/impl/CaptureStage;

.field final t:Landroidx/camera/core/impl/CaptureProcessor;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final u:Landroidx/camera/core/impl/CameraCaptureCallback;

.field private final v:Landroidx/camera/core/impl/DeferrableSurface;

.field private w:Ljava/lang/String;


# direct methods
.method constructor <init>(IIILandroid/os/Handler;Landroidx/camera/core/impl/CaptureStage;Landroidx/camera/core/impl/CaptureProcessor;Landroidx/camera/core/impl/DeferrableSurface;Ljava/lang/String;)V
    .locals 4
    .param p4    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/camera/core/impl/CaptureStage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroidx/camera/core/impl/CaptureProcessor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroidx/camera/core/impl/DeferrableSurface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-direct {p0, v0, p3}, Landroidx/camera/core/impl/DeferrableSurface;-><init>(Landroid/util/Size;I)V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/x2;->l:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroidx/camera/core/d1;

    invoke-direct {v0, p0}, Landroidx/camera/core/d1;-><init>(Landroidx/camera/core/x2;)V

    iput-object v0, p0, Landroidx/camera/core/x2;->m:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Landroidx/camera/core/x2;->n:Z

    .line 5
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Landroidx/camera/core/x2;->o:Landroid/util/Size;

    if-eqz p4, :cond_0

    .line 6
    iput-object p4, p0, Landroidx/camera/core/x2;->r:Landroid/os/Handler;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 8
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Landroidx/camera/core/x2;->r:Landroid/os/Handler;

    .line 9
    :goto_0
    iget-object p4, p0, Landroidx/camera/core/x2;->r:Landroid/os/Handler;

    invoke-static {p4}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->newHandlerExecutor(Landroid/os/Handler;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p4

    .line 10
    new-instance v2, Landroidx/camera/core/MetadataImageReader;

    const/4 v3, 0x2

    invoke-direct {v2, p1, p2, p3, v3}, Landroidx/camera/core/MetadataImageReader;-><init>(IIII)V

    iput-object v2, p0, Landroidx/camera/core/x2;->p:Landroidx/camera/core/MetadataImageReader;

    .line 11
    invoke-virtual {v2, v0, p4}, Landroidx/camera/core/MetadataImageReader;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 12
    invoke-virtual {v2}, Landroidx/camera/core/MetadataImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/x2;->q:Landroid/view/Surface;

    .line 13
    invoke-virtual {v2}, Landroidx/camera/core/MetadataImageReader;->getCameraCaptureCallback()Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/x2;->u:Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 14
    iput-object p6, p0, Landroidx/camera/core/x2;->t:Landroidx/camera/core/impl/CaptureProcessor;

    .line 15
    invoke-interface {p6, v1}, Landroidx/camera/core/impl/CaptureProcessor;->onResolutionUpdate(Landroid/util/Size;)V

    .line 16
    iput-object p5, p0, Landroidx/camera/core/x2;->s:Landroidx/camera/core/impl/CaptureStage;

    .line 17
    iput-object p7, p0, Landroidx/camera/core/x2;->v:Landroidx/camera/core/impl/DeferrableSurface;

    .line 18
    iput-object p8, p0, Landroidx/camera/core/x2;->w:Ljava/lang/String;

    .line 19
    invoke-virtual {p7}, Landroidx/camera/core/impl/DeferrableSurface;->getSurface()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Landroidx/camera/core/x2$a;

    invoke-direct {p2, p0}, Landroidx/camera/core/x2$a;-><init>(Landroidx/camera/core/x2;)V

    .line 20
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 21
    invoke-static {p1, p2, p3}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 22
    invoke-virtual {p0}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Landroidx/camera/core/b1;

    invoke-direct {p2, p0}, Landroidx/camera/core/b1;-><init>(Landroidx/camera/core/x2;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Creating a ProcessingSurface requires a non-null Handler, or be created  on a thread with a Looper."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic h(Landroidx/camera/core/x2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/core/x2;->m()V

    return-void
.end method

.method private synthetic i(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/x2;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/camera/core/x2;->g(Landroidx/camera/core/impl/ImageReaderProxy;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic k(Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/camera/core/x2;->q:Landroid/view/Surface;

    return-object p1
.end method

.method private m()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/x2;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/x2;->n:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Landroidx/camera/core/x2;->p:Landroidx/camera/core/MetadataImageReader;

    invoke-virtual {v1}, Landroidx/camera/core/MetadataImageReader;->clearOnImageAvailableListener()V

    .line 5
    iget-object v1, p0, Landroidx/camera/core/x2;->p:Landroidx/camera/core/MetadataImageReader;

    invoke-virtual {v1}, Landroidx/camera/core/MetadataImageReader;->close()V

    .line 6
    iget-object v1, p0, Landroidx/camera/core/x2;->q:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 7
    iget-object v1, p0, Landroidx/camera/core/x2;->v:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v1}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Landroidx/camera/core/x2;->n:Z

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method f()Landroidx/camera/core/impl/CameraCaptureCallback;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/x2;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/x2;->n:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/camera/core/x2;->u:Landroidx/camera/core/impl/CameraCaptureCallback;

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ProcessingSurface already released!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method g(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 4
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    const-string v0, "ProcessingSurfaceTextur"

    .line 1
    iget-boolean v1, p0, Landroidx/camera/core/x2;->n:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireNextImage()Landroidx/camera/core/ImageProxy;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "Failed to acquire next image."

    .line 3
    invoke-static {v0, v2, p1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-interface {v1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object p1

    if-nez p1, :cond_2

    .line 5
    invoke-interface {v1}, Landroidx/camera/core/ImageProxy;->close()V

    return-void

    .line 6
    :cond_2
    invoke-interface {p1}, Landroidx/camera/core/ImageInfo;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object p1

    iget-object v2, p0, Landroidx/camera/core/x2;->w:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroidx/camera/core/impl/TagBundle;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_3

    .line 7
    invoke-interface {v1}, Landroidx/camera/core/ImageProxy;->close()V

    return-void

    .line 8
    :cond_3
    iget-object v2, p0, Landroidx/camera/core/x2;->s:Landroidx/camera/core/impl/CaptureStage;

    invoke-interface {v2}, Landroidx/camera/core/impl/CaptureStage;->getId()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageProxyBundle does not contain this id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-interface {v1}, Landroidx/camera/core/ImageProxy;->close()V

    goto :goto_1

    .line 11
    :cond_4
    new-instance p1, Landroidx/camera/core/impl/SingleImageProxyBundle;

    iget-object v2, p0, Landroidx/camera/core/x2;->w:Ljava/lang/String;

    invoke-direct {p1, v1, v2}, Landroidx/camera/core/impl/SingleImageProxyBundle;-><init>(Landroidx/camera/core/ImageProxy;Ljava/lang/String;)V

    .line 12
    :try_start_1
    invoke-virtual {p0}, Landroidx/camera/core/impl/DeferrableSurface;->incrementUseCount()V
    :try_end_1
    .catch Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 13
    iget-object v0, p0, Landroidx/camera/core/x2;->t:Landroidx/camera/core/impl/CaptureProcessor;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/CaptureProcessor;->process(Landroidx/camera/core/impl/ImageProxyBundle;)V

    .line 14
    invoke-virtual {p1}, Landroidx/camera/core/impl/SingleImageProxyBundle;->close()V

    .line 15
    invoke-virtual {p0}, Landroidx/camera/core/impl/DeferrableSurface;->decrementUseCount()V

    :goto_1
    return-void

    :catch_1
    const-string v1, "The ProcessingSurface has been closed. Don\'t process the incoming image."

    .line 16
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Landroidx/camera/core/impl/SingleImageProxyBundle;->close()V

    return-void
.end method

.method public synthetic j(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/x2;->i(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method

.method public synthetic l(Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/x2;->k(Landroid/view/Surface;)Landroid/view/Surface;

    move-result-object p1

    return-object p1
.end method

.method public provideSurface()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
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
    iget-object v0, p0, Landroidx/camera/core/x2;->v:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->getSurface()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/FutureChain;->from(Lcom/google/common/util/concurrent/ListenableFuture;)Landroidx/camera/core/impl/utils/futures/FutureChain;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/c1;

    invoke-direct {v1, p0}, Landroidx/camera/core/c1;-><init>(Landroidx/camera/core/x2;)V

    .line 2
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/utils/futures/FutureChain;->transform(Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Landroidx/camera/core/impl/utils/futures/FutureChain;

    move-result-object v0

    return-object v0
.end method
